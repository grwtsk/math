import FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
import FormalResearch.RiemannHypothesis.Conversation.SupplierTerminalSource
import FormalResearch.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence
import FormalResearch.RiemannHypothesis.Conversation.SupplierLandauReturn
import Mathlib.MeasureTheory.Measure.OpenPos
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Adapters back to the original signed supplier

The endpoint adapter uses a genuine incident positive sector and continuity,
while the zero sector remains silent. The reset is retained and bounded using
the actual closed Möbius recording. All scales and starting times are real.

Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
These conditional results do not prove `SupplierEstimate` or RH.
-/

set_option autoImplicit false

noncomputable section
namespace FormalResearch.RiemannHypothesis.Conversation.SupplierOriginalAdapters

open MeasureTheory Set Filter
open scoped Topology
open OriginalSignedSupplier SupplierTerminalSource
open GRWTSK.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence
open GRWTSK.RiemannHypothesis.Conversation.SupplierLandauReturn

theorem positiveEnvelope_eq (T : ℝ) :
    positiveEnvelope T = runningPositiveMaximum pickup T := rfl

theorem positiveEnvelope_nonneg (T : ℝ) : 0 ≤ positiveEnvelope T :=
  runningPositiveMaximum_nonneg pickup_continuous T

/-- Agreement with the original `max (0, sup W([0,T]))` convention. -/
theorem positiveEnvelope_eq_original {T : ℝ} (hT : 0 ≤ T) :
    positiveEnvelope T = max 0 (sSup (pickup '' Icc 0 T)) := by
  have hb : BddAbove (pickup '' Icc 0 T) := (isCompact_Icc.image pickup_continuous).bddAbove
  have hz : (0 : ℝ) ∈ pickup '' Icc 0 T := by
    refine ⟨0, ⟨le_rfl, hT⟩, ?_⟩
    exact pickup_eq_zero le_rfl
  have hs : 0 ≤ sSup (pickup '' Icc 0 T) := le_csSup hb hz
  simp only [positiveEnvelope, insert_eq_of_mem hz, max_eq_right hs]

theorem literalKernel_eq_terminal {A : ℝ} (hA : 1 ≤ A) :
    literalKernel A = terminalLiteralKernel A := by
  funext t
  simp only [literalKernel, integerCutoff, prescribedCorrelation_eq A hA,
    terminalLiteralKernel]

/-- Strict positive polarity in the original terminal strip, with the original
integer cutoff and source integral normalization. -/
theorem literalKernel_terminal_pos {A t : ℝ} (hA : 1 ≤ A)
    (hl : 2 * A - Real.log 2 - 1 / 8 < t) (hr : t < 2 * A - Real.log 2) :
    0 < literalKernel A t := by
  rw [literalKernel_eq_terminal hA]
  exact terminalLiteralKernel_pos hA hl hr

/-- An a.e. upper bound on an incident open interval controls its limiting
endpoint. The endpoint itself need not belong to the strict sector. -/
theorem endpoint_le_of_ae_interval {f : ℝ → ℝ} {a b L : ℝ}
    (hf : Continuous f) (hab : a < b)
    (hae : ∀ᵐ t ∂volume, t ∈ Ioo a b → f t ≤ L) : f b ≤ L := by
  have heq : f =ᵐ[volume.restrict (Ioo a b)] (fun t => min (f t) L) := by
    filter_upwards [ae_restrict_of_ae hae, ae_restrict_mem measurableSet_Ioo] with t ht hm
    exact (min_eq_left (ht hm)).symm
  have hpoint : EqOn f (fun t => min (f t) L) (Ioo a b) :=
    Measure.eqOn_open_of_ae_eq heq isOpen_Ioo hf.continuousOn
      (hf.min continuous_const).continuousOn
  have hs : Ioo a b ⊆ {t | f t ≤ L} := by
    intro t ht
    calc
      f t = min (f t) L := hpoint ht
      _ ≤ L := min_le_right _ _
  have hc : IsClosed {t | f t ≤ L} := isClosed_le hf continuous_const
  have hcl := hc.closure_subset_iff.mpr hs
  apply hcl
  rw [closure_Ioo hab.ne]
  exact ⟨hab.le, le_rfl⟩

/-- The limiting reading is controlled through the actual positive sector.
No point value at the zero sector is added to the meter. -/
theorem terminal_reading_le_of_signedMeter {A L : ℝ} (hA : 1 ≤ A) (hL : 0 ≤ L)
    (hb : signedMeter A ≤ (L : EReal)) :
    pickup (2 * A - Real.log 2) - pickup (2 * Real.log A) ≤ L := by
  have hp := ((signedMeter_le_iff A L hL).mp hb).1
  apply endpoint_le_of_ae_interval (a := 2 * A - Real.log 2 - 1 / 8)
    (centeredPickup_continuous A) (by linarith)
  filter_upwards [hp] with t ht hm
  apply ht
  refine ⟨terminal_strip_reading hA hm.1 hm.2, ?_⟩
  simpa only [one_mul] using literalKernel_terminal_pos hA hm.1 hm.2

/-- The reset is bounded by the actual elementary Möbius estimate. -/
theorem pickup_abs_le {t : ℝ} (ht : 0 ≤ t) :
    |pickup t| ≤ 2 * (Real.exp (t / 2) - 1) := by
  have he : (∫ u in (0 : ℝ)..t, Real.exp (u / 2)) =
      2 * (Real.exp (t / 2) - 1) := by
    have hd (u : ℝ) : HasDerivAt (fun v : ℝ => 2 * Real.exp (v / 2))
        (Real.exp (u / 2)) u := by
      convert (((hasDerivAt_id u).div_const 2).exp).const_mul 2 using 1
      all_goals try dsimp only [id_eq, Function.comp_apply]
      all_goals first | rfl | ring
    have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hd u)
      ((Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable 0 t)
    simpa only [zero_div, Real.exp_zero, mul_sub, mul_one] using hf
  rw [pickup_eq_integral ht]
  calc
    _ ≤ ∫ u in (0 : ℝ)..t, |pickupDensity u| :=
      intervalIntegral.abs_integral_le_integral_abs ht
    _ ≤ ∫ u in (0 : ℝ)..t, Real.exp (u / 2) :=
      intervalIntegral.integral_mono_on ht (pickupDensity_intervalIntegrable 0 t).abs
        ((Real.continuous_exp.comp (continuous_id.div_const 2)).intervalIntegrable 0 t)
        (fun u _ => pickupDensity_abs_le u)
    _ = _ := he

theorem reset_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |pickup (2 * Real.log A)| ≤ 2 * (A - 1) := by
  have hp : 0 < A := by linarith
  have ht : 0 ≤ 2 * Real.log A := mul_nonneg (by norm_num) (Real.log_nonneg hA)
  have h := pickup_abs_le ht
  have he : Real.exp ((2 * Real.log A) / 2) = A := by
    rw [show (2 * Real.log A) / 2 = Real.log A by ring, Real.exp_log hp]
  simpa only [he] using h

theorem supplierAllowance_nonneg {K D p A : ℝ} (hK : 0 ≤ K) (hD : 0 ≤ D)
    (hA : 1 ≤ A) : 0 ≤ supplierAllowance K D p A := by
  unfold supplierAllowance
  have he := positiveEnvelope_nonneg (2 * A)
  have ha : 0 < A := by linarith
  positivity

/-- The exact moving scale returns the original supplier to the original
pickup, including its original reset. -/
theorem delayedPickup_of_supplier {K D p R : ℝ} (hK : 0 ≤ K) (hD : 0 ≤ D)
    (hp : 0 ≤ p) (hR : max 1 (4 * K) ≤ R)
    (hsupplier : ∀ A : ℝ, R ≤ A → signedMeter A ≤ (supplierAllowance K D p A : EReal))
    {T : ℝ} (hT : 2 * R ≤ T) :
    pickup T ≤ supplierCoefficient K (T + Real.log 2) * positiveEnvelope (T + Real.log 2) +
      (D + 1) * (1 + T) ^ max p 1 := by
  have hl0 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hl1 : Real.log 2 ≤ 1 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h
    exact h
  have hR1 : 1 ≤ R := (le_max_left _ _).trans hR
  have ht0 : 0 ≤ T := by linarith
  let A : ℝ := (T + Real.log 2) / 2
  have hra : R ≤ A := by dsimp [A]; linarith
  have ha : 1 ≤ A := hR1.trans hra
  have hapos : 0 < A := by linarith
  have hx : 0 < T + Real.log 2 := by linarith
  have hbudget := terminal_reading_le_of_signedMeter ha
    (supplierAllowance_nonneg hK hD ha) (hsupplier A hra)
  have he : 2 * A = T + Real.log 2 := by dsimp [A]; ring
  have he' : 2 * A - Real.log 2 = T := by rw [he]; ring
  rw [he'] at hbudget
  have hc : (1 + K / A) / Real.sqrt 2 = supplierCoefficient K (T + Real.log 2) := by
    unfold supplierCoefficient A
    congr 1
    field_simp
  have hb1 : 1 ≤ 1 + T := by linarith
  have hale : A ≤ 1 + T := by dsimp [A]; linarith
  have hpa : A ^ p ≤ (1 + T) ^ max p 1 :=
    (Real.rpow_le_rpow hapos.le hale hp).trans
      (Real.rpow_le_rpow_of_exponent_le hb1 (le_max_left _ _))
  have hlin : 1 + T ≤ (1 + T) ^ max p 1 := by
    simpa only [Real.rpow_one] using
      Real.rpow_le_rpow_of_exponent_le hb1 (le_max_right p 1)
  have hreset : pickup (2 * Real.log A) ≤ 2 * (A - 1) :=
    (le_abs_self _).trans (reset_abs_le ha)
  have hreset' : 2 * (A - 1) ≤ (1 + T) ^ max p 1 := by
    apply le_trans _ hlin
    dsimp [A]
    linarith
  have hallow := mul_le_mul_of_nonneg_left hpa hD
  unfold supplierAllowance at hbudget
  rw [he, hc] at hbudget
  nlinarith

/-- The continuous original pickup makes the original two-sector meter finite,
before any supplier estimate is assumed. -/
theorem signedMeter_bounded (A : ℝ) :
    ∃ L : ℝ, 0 ≤ L ∧ signedMeter A ≤ (L : EReal) := by
  obtain ⟨L, hL⟩ :=
    (isCompact_Icc.image (centeredPickup_continuous A).abs).bddAbove
  have hbound (t : ℝ) (ht : t ∈ readingWindow A) :
      |centeredPickup A t| ≤ max 0 L :=
    (hL ⟨t, ht, rfl⟩).trans (le_max_right _ _)
  refine ⟨max 0 L, le_max_left _ _, (signedMeter_le_iff _ _ (le_max_left _ _)).mpr ⟨?_, ?_⟩⟩
  · exact ae_of_all _ fun t ht => (le_abs_self _).trans (hbound t ht.1)
  · exact ae_of_all _ fun t ht => (neg_le_abs _).trans (hbound t ht.1)

theorem signedMeter_ne_top (A : ℝ) : signedMeter A ≠ ⊤ := by
  obtain ⟨L, _, hL⟩ := signedMeter_bounded A
  exact ne_of_lt (hL.trans_lt (by simp))

theorem signedMeter_ne_bot (A : ℝ) : signedMeter A ≠ ⊥ := by
  have hz : (0 : EReal) ≤ signedMeter A := le_max_left _ _
  exact ne_of_gt ((by simp : (⊥ : EReal) < 0).trans_le hz)

/-- The critical tail is recorded as a separate analytic bridge, on the actual
arithmetic envelope and exact delayed coefficient products. It is not assumed
as an axiom and is not part of the supplier proposition. -/
def CriticalPickupTail : Prop :=
  ∀ K : ℝ, 0 ≤ K → ∀ T : ℝ, 0 < T →
    Tendsto (fun n : ℕ =>
      coefficientProduct (fun j => supplierCoefficient K (T + (j : ℝ) * Real.log 2)) n *
        positiveEnvelope (T + (n : ℝ) * Real.log 2)) atTop (𝓝 0)

/-- The exact original initial pickup transform is exposed as a separate bridge.
`SupplierInitialTransform` discharges it in the downstream return module.
The half-plane here is a sub-half-plane of the paper's `Re z > 1/2`, sufficient
for the proved positive-Laplace continuation theorem. -/
def DirectPickupInitialIdentity : Prop :=
  ∀ z : ℂ, 1 < z.re →
    (∫ t : ℝ, Complex.exp (-z * t) * (pickup t : ℂ) ∂pickupTimeMeasure) = pickupTransform z

/-- Assuming the signed supplier and its separately stated critical tail,
the original positive envelope has exactly the paper's real exponent. -/
theorem polynomialEnvelope_of_originalSupplier_and_tail
    {K D p R : ℝ} (hK : 0 ≤ K) (hD : 0 ≤ D) (hp : 0 ≤ p)
    (hR : max 1 (4 * K) ≤ R)
    (hsupplier : ∀ A : ℝ, R ≤ A → signedMeter A ≤ (supplierAllowance K D p A : EReal))
    (htail : CriticalPickupTail) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ T : ℝ, 0 ≤ T → positiveEnvelope T ≤ C * (1 + T) ^ max p 1 := by
  have hR1 : 1 ≤ R := (le_max_left _ _).trans hR
  have hRK : 4 * K ≤ R := (le_max_right _ _).trans hR
  have hS : 0 < 2 * R := by linarith
  have hKS : 8 * K ≤ 2 * R := by linarith
  have hh : 0 ≤ Real.log 2 := (Real.log_pos (by norm_num)).le
  have hr : 0 ≤ max p 1 := hp.trans (le_max_left _ _)
  have hs : ∀ s : ℝ, 2 * R ≤ s →
      pickup s ≤ supplierCoefficient K (s + Real.log 2) * runningPositiveMaximum pickup
        (s + Real.log 2) + (D + 1) * (1 + s) ^ max p 1 := by
    intro s hs
    exact delayedPickup_of_supplier hK hD hp hR hsupplier hs
  obtain ⟨C, hC, hbound⟩ := polynomialEnvelope_of_supplier_and_tail
    pickup_continuous hK hS hKS hh (by linarith : 0 ≤ D + 1) hr hs
    (fun T hT => htail K hK T (by linarith))
  exact globalPolynomialEnvelope_of_eventual pickup_continuous hC hr hbound

/-- A complete consumer of the current explicit interfaces. This is not the
unconditional one-way implication: its two analytic bridges remain visible. -/
theorem riemann_hypothesis_of_supplier_and_analytic_bridges
    (hsupplier : SupplierEstimate) (htail : CriticalPickupTail)
    (hidentity : DirectPickupInitialIdentity) : _root_.RiemannHypothesis := by
  obtain ⟨K, D, p, R, hK, hD, hp, hR, hs⟩ := hsupplier
  obtain ⟨C, hC, hbound⟩ :=
    polynomialEnvelope_of_originalSupplier_and_tail hK hD hp hR hs htail
  apply riemann_hypothesis_of_real_polynomial_pickup_and_direct_identity
    pickup C hC (max p 1) pickup_continuous ?_ ?_ hidentity
  · intro t ht
    exact (le_runningPositiveMaximum pickup_continuous ⟨ht, le_rfl⟩).trans (hbound t ht)
  · intro t ht
    have h := pickup_abs_le ht
    linarith

end FormalResearch.RiemannHypothesis.Conversation.SupplierOriginalAdapters
