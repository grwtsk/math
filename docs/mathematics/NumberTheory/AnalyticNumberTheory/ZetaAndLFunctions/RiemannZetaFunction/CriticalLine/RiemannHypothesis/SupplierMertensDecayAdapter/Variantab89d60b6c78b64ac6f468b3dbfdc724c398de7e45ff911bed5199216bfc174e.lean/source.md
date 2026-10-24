# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SupplierMertensDecayAdapter.Variantab89d60b6c78b64ac6f468b3dbfdc724c398de7e45ff911bed5199216bfc174e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55bede3243c949d4be1266489f670985bdb33070` · SHA-256 `ab89d60b6c78b64ac6f468b3dbfdc724c398de7e45ff911bed5199216bfc174e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier
import FormalResearch.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence
import FormalResearch.RiemannHypothesis.Conversation.SupplierCriticalDecay

/-!
# Classical Mertens decay returns to the actual pickup envelope

The arithmetic premise below concerns the original closed Möbius recording.
It is an explicit proposition, not an axiom. This module proves its quantitative
return to the original continuous pickup and its closed running positive maximum.
The constants are uniform over every real reading time. No classical Mertens
theorem is claimed to have been proved here.

Human research direction: grwtsk contributors. Lean implementation and adapter
proof: OpenAI Codex. Mathlib interval integrals and elementary real analysis
retain upstream attribution.
-/

set_option autoImplicit false

noncomputable section

namespace FormalResearch.RiemannHypothesis.Conversation.SupplierMertensDecayAdapter

open MeasureTheory Set Filter
open scoped Topology
open OriginalSignedSupplier
open GRWTSK.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence
open GRWTSK.RiemannHypothesis.Conversation.SupplierCriticalDecay

/-- A concrete classical decay input on the actual closed Möbius recording. -/
def MertensDecayBound (C c : ℝ) : Prop :=
  ∀ u : ℝ, 0 ≤ u → |arithmeticRecording (Real.exp u)| ≤
    C * Real.exp (u - c * Real.sqrt u)

/-- The classical arithmetic leaf is exposed as an ordinary proposition. -/
def ClassicalMertensDecay : Prop :=
  ∃ C c : ℝ, 0 < C ∧ 0 < c ∧ MertensDecayBound C c

theorem sqrt_ratio_le {u T : ℝ} (hu : 0 ≤ u) (hT : 0 < T) (huT : u ≤ T) :
    u / Real.sqrt T ≤ Real.sqrt u := by
  apply (div_le_iff₀ (Real.sqrt_pos.mpr hT)).mpr
  have hm := mul_le_mul_of_nonneg_left (Real.sqrt_le_sqrt huT) (Real.sqrt_nonneg u)
  simpa only [← pow_two, Real.sq_sqrt hu] using hm

theorem pickupDensity_le_exponential_of_mertensDecay {C c T : ℝ}
    (hC : 0 < C) (hc : 0 < c) (hM : MertensDecayBound C c) (hT : 0 < T)
    {u : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    |pickupDensity u| ≤ C * Real.exp ((1 / 2 - c / Real.sqrt T) * u) := by
  have hr := mul_le_mul_of_nonneg_left (sqrt_ratio_le hu hT huT) hc.le
  have hmul : c * (u / Real.sqrt T) = (c / Real.sqrt T) * u := by ring
  rw [hmul] at hr
  have he : u / 2 - c * Real.sqrt u ≤ (1 / 2 - c / Real.sqrt T) * u := by
    nlinarith
  have hexp : Real.exp (-u / 2) * Real.exp (u - c * Real.sqrt u) =
      Real.exp (u / 2 - c * Real.sqrt u) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    |pickupDensity u| = Real.exp (-u / 2) * |arithmeticRecording (Real.exp u)| := by
      simp [pickupDensity, abs_mul]
    _ ≤ Real.exp (-u / 2) * (C * Real.exp (u - c * Real.sqrt u)) :=
      mul_le_mul_of_nonneg_left (hM u hu) (Real.exp_pos _).le
    _ = C * Real.exp (u / 2 - c * Real.sqrt u) := by
      rw [← hexp]
      ring
    _ ≤ C * Real.exp ((1 / 2 - c / Real.sqrt T) * u) :=
      mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr he) hC.le

/-- The same decay estimate controls every original pickup value in the full
closed reading interval, including negative excursions. -/
theorem pickup_abs_decay_of_mertensDecay {C c T : ℝ}
    (hC : 0 < C) (hc : 0 < c) (hM : MertensDecayBound C c)
    (hT : max 1 (16 * c ^ 2) ≤ T) {s : ℝ} (hs : s ∈ Icc 0 T) :
    |pickup s| ≤ 4 * C * Real.exp (T / 2 - c * Real.sqrt T) := by
  have hT1 : 1 ≤ T := (le_max_left _ _).trans hT
  have hTc : 16 * c ^ 2 ≤ T := (le_max_right _ _).trans hT
  have hT₀ : 0 < T := by linarith
  have hsqrt : 0 < Real.sqrt T := Real.sqrt_pos.mpr hT₀
  have hsq : Real.sqrt T ^ 2 = T := Real.sq_sqrt hT₀.le
  have hfour : 4 * c ≤ Real.sqrt T := by nlinarith
  have hcdiv : c / Real.sqrt T ≤ (1 / 4 : ℝ) := by
    apply (div_le_iff₀ hsqrt).mpr
    linarith
  let β : ℝ := 1 / 2 - c / Real.sqrt T
  have hβ₁ : (1 / 4 : ℝ) ≤ β := by dsimp [β]; linarith
  have hβ : 0 < β := by linarith
  have hCβ : 0 ≤ C / β := (div_pos hC hβ).le
  have hg (a b : ℝ) : IntervalIntegrable (fun u : ℝ => C * Real.exp (β * u)) volume a b :=
    (by fun_prop : Continuous (fun u : ℝ => C * Real.exp (β * u))).intervalIntegrable a b
  have hder (u : ℝ) : HasDerivAt (fun v : ℝ => C / β * Real.exp (β * v))
      (C * Real.exp (β * u)) u := by
    have heq : C / β * (Real.exp (β * u) * β) = C * Real.exp (β * u) := by
      calc
        _ = (C / β * β) * Real.exp (β * u) := by ring
        _ = _ := by rw [div_mul_cancel₀ _ hβ.ne']
    convert (((hasDerivAt_id u).const_mul β).exp).const_mul (C / β) using 1 <;>
      first | rfl | simpa only [id_eq, mul_one] using heq.symm
  have hint : (∫ u in (0 : ℝ)..s, C * Real.exp (β * u)) =
      C / β * (Real.exp (β * s) - 1) := by
    have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => hder u) (hg 0 s)
    simpa only [mul_zero, Real.exp_zero, mul_one, mul_sub] using hi
  have hdensity : ∀ u ∈ Icc 0 s, |pickupDensity u| ≤ C * Real.exp (β * u) := by
    intro u hu
    exact pickupDensity_le_exponential_of_mertensDecay hC hc hM hT₀ hu.1 (hu.2.trans hs.2)
  have hpre : |pickup s| ≤ C / β * Real.exp (β * T) := by
    rw [pickup_eq_integral hs.1]
    calc
      _ ≤ ∫ u in (0 : ℝ)..s, |pickupDensity u| :=
        intervalIntegral.abs_integral_le_integral_abs hs.1
      _ ≤ ∫ u in (0 : ℝ)..s, C * Real.exp (β * u) :=
        intervalIntegral.integral_mono_on hs.1 (pickupDensity_intervalIntegrable 0 s).abs
          (hg 0 s) hdensity
      _ = C / β * (Real.exp (β * s) - 1) := hint
      _ ≤ C / β * Real.exp (β * s) := by nlinarith
      _ ≤ C / β * Real.exp (β * T) :=
        mul_le_mul_of_nonneg_left
          (Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left hs.2 hβ.le)) hCβ
  have hcoeff : C / β ≤ 4 * C := by
    apply (div_le_iff₀ hβ).mpr
    nlinarith
  have hdiv : T / Real.sqrt T = Real.sqrt T := by
    apply (div_eq_iff hsqrt.ne').mpr
    simpa only [pow_two] using hsq.symm
  have hβT : β * T = T / 2 - c * Real.sqrt T := by
    dsimp [β]
    rw [sub_mul, show c / Real.sqrt T * T = c * (T / Real.sqrt T) by ring, hdiv]
    ring
  exact hpre.trans (by
    rw [← hβT]
    exact mul_le_mul_of_nonneg_right hcoeff (Real.exp_pos _).le)

/-- Quantitative decay of the actual positive envelope on every admissible
real time, obtained without replacing the closed arithmetic recording. -/
theorem positiveEnvelope_decay_of_mertensDecay {C c : ℝ}
    (hC : 0 < C) (hc : 0 < c) (hM : MertensDecayBound C c) :
    ∀ T : ℝ, max 1 (16 * c ^ 2) ≤ T →
      positiveEnvelope T ≤ 4 * C * Real.exp (T / 2 - c * Real.sqrt T) := by
  intro T hT
  apply csSup_le ⟨0, mem_insert 0 _⟩
  intro y hy
  rcases mem_insert_iff.mp hy with rfl | hy
  · positivity
  · obtain ⟨s, hs, rfl⟩ := hy
    exact (le_abs_self _).trans (pickup_abs_decay_of_mertensDecay hC hc hM hT hs)

/-- The named classical premise supplies fixed envelope-decay constants. -/
theorem positiveEnvelope_decay_of_classicalMertensDecay (hM : ClassicalMertensDecay) :
    ∃ C c : ℝ, 0 < C ∧ 0 < c ∧ ∀ T : ℝ, max 1 (16 * c ^ 2) ≤ T →
      positiveEnvelope T ≤ 4 * C * Real.exp (T / 2 - c * Real.sqrt T) := by
  obtain ⟨C, c, hC, hc, hbound⟩ := hM
  exact ⟨C, c, hC, hc, positiveEnvelope_decay_of_mertensDecay hC hc hbound⟩

/-- The actual critical pickup tail follows from the separately named classical
Mertens premise. The conclusion has exactly the body of `CriticalPickupTail`
without importing its downstream consumer and creating an import cycle. -/
theorem criticalPickupTail_of_classicalMertensDecay (hM : ClassicalMertensDecay) :
    ∀ K : ℝ, 0 ≤ K → ∀ T : ℝ, 0 < T →
      Tendsto (fun n : ℕ =>
        coefficientProduct (fun j => supplierCoefficient K (T + (j : ℝ) * Real.log 2)) n *
          positiveEnvelope (T + (n : ℝ) * Real.log 2)) atTop (𝓝 0) := by
  obtain ⟨C, c, hC, hc, hdecay⟩ := positiveEnvelope_decay_of_classicalMertensDecay hM
  intro K hK T hT
  simpa only [criticalStep, positiveEnvelope, runningPositiveMaximum] using
    runningMaximum_critical_weighted_tail_tendsto_zero (W := pickup)
      (S₀ := max 1 (16 * c ^ 2)) pickup_continuous hK hT
      (by positivity : 0 < 4 * C) hc hdecay

end FormalResearch.RiemannHypothesis.Conversation.SupplierMertensDecayAdapter
```
