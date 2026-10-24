# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceReflectedOnePrefix.Variant95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58a39237e1ae3a43092dc50248b13e75573813db` · SHA-256 `95b33d35346cb64a608c800bba391d1fe4de21f734ee33d353886bc9fa1bbb16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCausalEnergy
import FormalResearch.RiemannHypothesis.SourceFractionalQuadrature
import FormalResearch.RiemannHypothesis.SourceSamplingTaylor
import
  FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel

/-!
# The actual coefficient-one reflected row and its below-one primitive

UNCOMPILED preparation. The proof text retains the actual normalized q, the
positive-axis zero extension, the n=1 deletion, and the literal N+1 endpoint.
The two signed pieces are not estimates. No covariance, baseline, D/R or RH
bound is supplied as a premise or concluded here.
The coefficient-one reflected row is distinct from the original centered
beta state. Its unit column, raw diagonal and independent baseline must
remain explicit in any later cutoff-one/Vaughan reconstruction.

AI attribution: developed with OpenAI Codex; native statement/axiom audits,
independent review and the unchanged complete verifier remain required.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceReflectedOnePrefix

open MeasureTheory Set Filter Function
open scoped BigOperators Topology
open SourcePairing SourceCausalEnergy SourceFractionalQuadrature SourceSamplingTaylor
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment EstimateSourceMobiusKernel

noncomputable section

/-- The original normalized source test, including both zero-extension seams. -/
def actualQ (A x : ℝ) : ℝ := normalizedTest explicitSecondDerivative A x

/-- The positive-input reflected sample is explicitly zero at nonpositive inputs. -/
def reflectedSample (A x u : ℝ) : ℝ :=
  if 0 < u then Real.exp (-Real.log u / 2) * actualQ A (x + Real.log u) else 0

/-- The literal strict reflected coefficient-one inventory deletes only n=1. -/
def strictReflectedOne (A x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc 1 (sourceKernelCutoff A), reflectedSample A x (n : ℝ)

/-- The positive-pole compact prefix uses the minus sign at the actual pole. -/
def polePrefix (A x : ℝ) : ℝ :=
  deriv (normalizedPrimitiveBump A) x - normalizedPrimitiveBump A x / 2

/-- The above-one fractional remainder retains its actual q and q-prime sectors. -/
def fractionalAboveOne (A x : ℝ) : ℝ :=
  ∫ u in (1 : ℝ)..((sourceKernelCutoff A + 1 : ℕ) : ℝ),
    Int.fract u * Real.exp (-3 * Real.log u / 2) *
      (deriv (actualQ A) (x + Real.log u) - actualQ A (x + Real.log u) / 2)

/-- The original forward Mangoldt profile; no second square-root weight is inserted. -/
def strictMangoldtProfile (A x : ℝ) : ℝ :=
  ∑ m ∈ Finset.Ioc 1 (sourceKernelCutoff A),
    ArithmeticFunction.vonMangoldt m / Real.sqrt (m : ℝ) * actualQ A (x - Real.log m)

/-- This explicit positive-pole primitive uses the already owned bump derivatives. -/
def positivePolePrimitive (A x : ℝ) : ℝ := Real.exp (x / 2) * polePrefix A x

/-- The material extension retains the actual source expression on positive inputs. -/
theorem reflectedSample_eq_of_pos (A x : ℝ) {u : ℝ} (hu : 0 < u) :
    reflectedSample A x u = Real.exp (-Real.log u / 2) * actualQ A (x + Real.log u) := by
  simp only [reflectedSample, if_pos hu]

/-- Nonpositive inputs are zero by definition, not by an unextended logarithm convention. -/
theorem reflectedSample_eq_zero_of_nonpos (A x : ℝ) {u : ℝ} (hu : u ≤ 0) :
    reflectedSample A x u = 0 := by
  simp only [reflectedSample, if_neg (not_lt.mpr hu)]

/-- The origin's deleted-log convention does not alter the actual unit sample. -/
theorem reflectedSample_at_one (A x : ℝ) : reflectedSample A x 1 = actualQ A x := by
  simp [reflectedSample]

/-- Actual lower support gives a whole zero neighborhood of the positive-axis seam. -/
theorem reflectedSample_zero_below {A : ℝ} (hA : 0 < A) (x : ℝ) {u : ℝ}
    (hu : u ≤ Real.exp (-A - x)) : reflectedSample A x u = 0 := by
  by_cases hu0 : 0 < u
  · have hl := Real.log_le_log hu0 hu
    rw [Real.log_exp] at hl
    have hs : A ≤ |x + Real.log u| := by
      linarith [neg_le_abs (x + Real.log u)]
    rw [reflectedSample_eq_of_pos A x hu0, actualQ,
      normalizedTest_zero_of_le_abs A _ hA hs, mul_zero]
  · exact reflectedSample_eq_zero_of_nonpos A x (not_lt.mp hu0)

/-- Actual upper support vanishes at equality as well as beyond the endpoint. -/
theorem reflectedSample_zero_above {A : ℝ} (hA : 0 < A) (x : ℝ) {u : ℝ}
    (hu : Real.exp (A - x) ≤ u) : reflectedSample A x u = 0 := by
  have hu0 : 0 < u := (Real.exp_pos _).trans_le hu
  have hl := Real.log_le_log (Real.exp_pos (A - x)) hu
  rw [Real.log_exp] at hl
  have hs : A ≤ |x + Real.log u| := by linarith [le_abs_self (x + Real.log u)]
  rw [reflectedSample_eq_of_pos A x hu0, actualQ,
    normalizedTest_zero_of_le_abs A _ hA hs, mul_zero]

/-- The actual extension has compact support without replacing its domain by [1,infinity). -/
theorem reflectedSample_hasCompactSupport {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasCompactSupport (reflectedSample A x) := by
  refine exists_compact_iff_hasCompactSupport.mp
    ⟨Icc 0 (Real.exp (A - x)), isCompact_Icc, ?_⟩
  intro u hu
  by_cases h0 : u ≤ 0
  · exact reflectedSample_eq_zero_of_nonpos A x h0
  · have hup : Real.exp (A - x) ≤ u := by
      have hp : 0 ≤ u := le_of_lt (lt_of_not_ge h0)
      by_contra h
      exact hu ⟨hp, le_of_lt (lt_of_not_ge h)⟩
    exact reflectedSample_zero_above hA x hup

private theorem reflectedSample_contDiffOn_pos {A : ℝ} (hA : 0 < A) (x : ℝ) :
    ContDiffOn ℝ 1
      (fun u : ℝ => Real.exp (-Real.log u / 2) * actualQ A (x + Real.log u)) (Ioi 0) := by
  have hl : ContDiffOn ℝ 1 Real.log (Ioi (0 : ℝ)) :=
    Real.contDiffOn_log.mono (fun u hu => by simpa using ne_of_gt hu)
  exact ((hl.neg.div_const 2).exp).mul
    ((normalizedTest_contDiff A hA).comp_contDiffOn (contDiffOn_const.add hl))

/-- Existing source C1 and the actual zero neighborhood make the extension globally C1. -/
theorem reflectedSample_contDiff {A : ℝ} (hA : 0 < A) (x : ℝ) :
    ContDiff ℝ 1 (reflectedSample A x) := by
  rw [contDiff_iff_contDiffAt]
  intro u
  by_cases hu : 0 < u
  · apply ((reflectedSample_contDiffOn_pos hA x).contDiffAt
      (isOpen_Ioi.mem_nhds hu)).congr_of_eventuallyEq
    filter_upwards [isOpen_Ioi.mem_nhds hu] with v hv
    exact reflectedSample_eq_of_pos A x hv
  · have huδ : u < Real.exp (-A - x) := (not_lt.mp hu).trans_lt (Real.exp_pos _)
    apply (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq
    filter_upwards [isOpen_Iio.mem_nhds huδ] with v hv
    exact reflectedSample_zero_below hA x (le_of_lt hv)

/-- Compact C1 regularity supplies genuine source-sample integrability. -/
theorem reflectedSample_integrable {A : ℝ} (hA : 0 < A) (x : ℝ) :
    Integrable (reflectedSample A x) :=
  (reflectedSample_contDiff hA x).continuous.integrable_of_hasCompactSupport
    (reflectedSample_hasCompactSupport hA x)

/-- Positive-input differentiation retains the actual q-prime minus one-half q sector. -/
theorem reflectedSample_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) {u : ℝ} (hu : 0 < u) :
    HasDerivAt (reflectedSample A x)
      (Real.exp (-3 * Real.log u / 2) *
        (deriv (actualQ A) (x + Real.log u) - actualQ A (x + Real.log u) / 2)) u := by
  have hl := Real.hasDerivAt_log hu.ne'
  have hq := ((normalizedTest_contDiff A hA).differentiable one_ne_zero
    (x + Real.log u)).hasDerivAt.comp u (hl.const_add x)
  have hd := (((hl.neg.div_const 2).exp).mul hq)
  have hw : Real.exp (-Real.log u / 2) / u = Real.exp (-3 * Real.log u / 2) := by
    rw [div_eq_mul_inv, show u⁻¹ = Real.exp (-Real.log u) by
      rw [Real.exp_neg, Real.exp_log hu], ← Real.exp_add]
    congr 1
    ring
  have hraw : HasDerivAt
      (fun v : ℝ => Real.exp (-Real.log v / 2) * actualQ A (x + Real.log v))
      (Real.exp (-3 * Real.log u / 2) *
        (deriv (actualQ A) (x + Real.log u) - actualQ A (x + Real.log u) / 2)) u := by
    apply hd.congr_deriv
    change (-u⁻¹ / 2 * Real.exp (-Real.log u / 2)) * actualQ A (x + Real.log u) +
      Real.exp (-Real.log u / 2) * (deriv (actualQ A) (x + Real.log u) * u⁻¹) = _
    rw [← hw]
    ring
  apply hraw.congr_of_eventuallyEq
  filter_upwards [isOpen_Ioi.mem_nhds hu] with v hv
  exact reflectedSample_eq_of_pos A x hv

/-- The positive-axis full integral cancels by the actual q pole moment. -/
theorem reflectedSample_positive_integral_zero (A x : ℝ) (hA : 1 ≤ A) :
    (∫ u in Ioi (0 : ℝ), reflectedSample A x u) = 0 := by
  rw [integral_comp_exp_univ]
  have he : (fun r : ℝ => Real.exp r * reflectedSample A x (Real.exp r)) =
      fun r => Real.exp (-x / 2) * (Real.exp ((r + x) / 2) * actualQ A (r + x)) := by
    funext r
    simp only [reflectedSample, if_pos (Real.exp_pos r), Real.log_exp]
    have hw : Real.exp r * Real.exp (-r / 2) =
        Real.exp (-x / 2) * Real.exp ((r + x) / 2) := by
      rw [← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    rw [show x + r = r + x by ring, ← mul_assoc, hw]
    ring
  rw [he, integral_const_mul, integral_add_right_eq_self
    (fun t => Real.exp (t / 2) * actualQ A t) x]
  have hz : (∫ t : ℝ, Real.exp (t / 2) * actualQ A t) = 0 := by
    simpa only [actualQ, show ∀ t : ℝ, (1 / 2 : ℝ) * t = t / 2 by intro t; ring] using
      weighted_normalizedTest_integral_zero A (1 / 2) hA (by norm_num)
  rw [hz, mul_zero]

/-- The actual floor endpoint N+1 is included in the vanishing tail. -/
theorem reflectedSample_actual_upper_tail (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 - A ≤ x) (u : ℝ)
    (hu : ((sourceKernelCutoff A + 1 : ℕ) : ℝ) ≤ u) : reflectedSample A x u = 0 := by
  have hp : 0 < A := by linarith
  apply reflectedSample_zero_above hp x
  have hlog : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have he : Real.exp (A - x) ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr (by linarith)
  have hfloor : Real.exp (2 * A) ≤ ((sourceKernelCutoff A + 1 : ℕ) : ℝ) := by
    simpa only [sourceKernelCutoff, EstimateMertensAbel.sourceUpper,
      Nat.cast_add, Nat.cast_one] using (Nat.lt_floor_add_one (Real.exp (2 * A))).le
  exact he.trans (hfloor.trans hu)

/-- The closed samples equal the full positive-axis fractional integral with no unit deletion. -/
theorem reflected_closed_row_fractional_identity (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 - A ≤ x) :
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), reflectedSample A x (n : ℝ)) =
      ∫ u in Ioi (0 : ℝ), Int.fract u * deriv (reflectedSample A x) u := by
  have hp : 0 < A := by linarith
  have h := positive_axis_quadrature (reflectedSample A x)
    (reflectedSample_contDiff hp x) (reflectedSample_hasCompactSupport hp x)
    (sourceKernelCutoff A) (fun u hu => reflectedSample_eq_zero_of_nonpos A x hu)
    (fun u hu => reflectedSample_actual_upper_tail A x hA hx u (by
      simpa only [Nat.cast_add, Nat.cast_one] using hu))
  rw [reflectedSample_positive_integral_zero A x hA, sub_zero] at h
  exact h

/-- The positive-pole prefix is genuinely C1 by the existing C2 bump interface. -/
theorem polePrefix_contDiff {A : ℝ} (hA : 0 < A) : ContDiff ℝ 1 (polePrefix A) :=
  (normalizedPrimitiveBump_contDiff hA).deriv'.sub
    (((normalizedPrimitiveBump_contDiff hA).of_le (by norm_num)).div_const 2)

/-- The exact first-order prefix equation is derived from the owned second-derivative law. -/
theorem polePrefix_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (polePrefix A) (actualQ A x - polePrefix A x / 2) x := by
  have hb := normalizedPrimitiveBump_hasDerivAt hA x
  have hb' := normalizedPrimitiveBump_deriv_hasDerivAt hA x
  change HasDerivAt
    (fun y => deriv (normalizedPrimitiveBump A) y - normalizedPrimitiveBump A y / 2)
    (normalizedTest explicitSecondDerivative A x -
      (deriv (normalizedPrimitiveBump A) x - normalizedPrimitiveBump A x / 2) / 2) x
  apply (hb'.sub (hb.div_const 2)).congr_deriv
  rw [← hb'.deriv, ← hb.deriv, ← normalizedPrimitiveBump_second_sub_quarter hA x]
  ring

/-- The actual source seams remain zero for the positive-pole prefix. -/
theorem polePrefix_endpoints {A : ℝ} (hA : 0 < A) :
    polePrefix A (-A) = 0 ∧ polePrefix A A = 0 := by
  simp only [polePrefix, (normalizedPrimitiveBump_endpoints hA).1,
    (normalizedPrimitiveBump_endpoints hA).2,
    (normalizedPrimitiveBump_deriv_endpoints hA).1,
    (normalizedPrimitiveBump_deriv_endpoints hA).2, zero_div, sub_zero]

/-- The positive-pole prefix uses the actual zero extensions away from the source interval. -/
theorem polePrefix_zero_of_not_mem {A : ℝ} (hA : 0 < A) {x : ℝ}
    (hx : x ∉ Icc (-A) A) : polePrefix A x = 0 := by
  simp only [polePrefix, normalizedPrimitiveBump_zero_of_not_mem hA hx,
    normalizedPrimitiveBump_deriv_zero_of_not_mem hA hx, zero_div, sub_zero]

/-- The positive-pole multiplier does not create a noncompact raw interior primitive. -/
theorem positivePolePrimitive_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (positivePolePrimitive A) := by
  refine exists_compact_iff_hasCompactSupport.mp ⟨Icc (-A) A, isCompact_Icc, ?_⟩
  intro x hx
  rw [positivePolePrimitive, polePrefix_zero_of_not_mem hA hx, mul_zero]

/-- Existing bump regularity suffices for this global weighted primitive. -/
theorem positivePolePrimitive_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (positivePolePrimitive A) :=
  ((contDiff_id.div_const 2).exp).mul (polePrefix_contDiff hA)

/-- The weighted prefix differentiates to the literal positive-pole q integrand. -/
theorem positivePolePrimitive_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (positivePolePrimitive A) (Real.exp (x / 2) * actualQ A x) x := by
  have hd := (((hasDerivAt_id x).div_const 2).exp).mul (polePrefix_hasDerivAt hA x)
  apply hd.congr_deriv
  dsimp only [id_eq]
  ring

/-- The independent half-line weighted integral evaluates to the compact positive prefix. -/
theorem weighted_q_prefix_integral (A x : ℝ) (hA : 0 < A) :
    (∫ t in Iio x, Real.exp (t / 2) * actualQ A t) = positivePolePrimitive A x := by
  have hi := HasCompactSupport.integral_Iic_deriv_eq
    (positivePolePrimitive_contDiff hA) (positivePolePrimitive_hasCompactSupport hA) x
  have he : deriv (positivePolePrimitive A) = fun t => Real.exp (t / 2) * actualQ A t :=
    funext fun t => (positivePolePrimitive_hasDerivAt hA t).deriv
  rw [he, integral_Iic_eq_integral_Iio] at hi
  exact hi

/-- Exponential substitution retains the whole interval below one and its sign. -/
theorem reflected_below_one_eq_polePrefix (A x : ℝ) (hA : 1 ≤ A) :
    (∫ u in Ioo (0 : ℝ) 1, reflectedSample A x u) = polePrefix A x := by
  have hp : 0 < A := by linarith
  have himage : (fun t : ℝ => Real.exp (t - x)) '' Iio x = Ioo (0 : ℝ) 1 := by
    ext u
    constructor
    · rintro ⟨t, ht, rfl⟩
      exact ⟨Real.exp_pos _, Real.exp_lt_one_iff.mpr (by linarith)⟩
    · intro hu
      refine ⟨x + Real.log u, ?_, ?_⟩
      · dsimp only [mem_Iio]
        linarith [Real.log_neg hu.1 hu.2]
      · rw [add_sub_cancel_left, Real.exp_log hu.1]
  have h := integral_image_eq_integral_abs_deriv_smul measurableSet_Iio
    (fun t _ => (((hasDerivAt_id t).sub_const x).exp).hasDerivWithinAt)
    (fun a _ b _ hab => sub_right_inj.mp (Real.exp_injective hab)) (reflectedSample A x)
  rw [himage] at h
  simp only [abs_of_pos (Real.exp_pos _), smul_eq_mul] at h
  rw [h]
  have he : (fun t : ℝ => Real.exp (t - x) * reflectedSample A x (Real.exp (t - x))) =
      fun t => Real.exp (-x / 2) * (Real.exp (t / 2) * actualQ A t) := by
    funext t
    simp only [reflectedSample, if_pos (Real.exp_pos _), Real.log_exp,
      show x + (t - x) = t by ring]
    have hw : Real.exp (t - x) * Real.exp (-(t - x) / 2) =
        Real.exp (-x / 2) * Real.exp (t / 2) := by
      rw [← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    rw [← mul_assoc, hw]
    ring
  rw [he, integral_const_mul, weighted_q_prefix_integral A x hp, positivePolePrimitive,
    show -x / 2 = -(x / 2) by ring, Real.exp_neg, ← mul_assoc,
    inv_mul_cancel₀ (Real.exp_ne_zero (x / 2)), one_mul]

/-- The unit right-sampling remainder retains q(x) minus the exact below-one prefix. -/
theorem reflected_below_one_fractional_identity (A x : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..1, Int.fract u * deriv (reflectedSample A x) u) =
      actualQ A x - polePrefix A x := by
  have hp : 0 < A := by linarith
  have hu := unit_right_sampling_identity (reflectedSample A x)
    (reflectedSample_contDiff hp x) 0
  have hi : (∫ u in (0 : ℝ)..1, reflectedSample A x u) = polePrefix A x := by
    rw [intervalIntegral.integral_of_le (by norm_num), integral_Ioc_eq_integral_Ioo]
    exact reflected_below_one_eq_polePrefix A x hA
  simpa only [Nat.cast_zero, zero_add, reflectedSample_at_one, hi] using hu.symm

/-- The fixed inventory is nonempty at the source scale domain used by the prefix split. -/
theorem actual_cutoff_one_le (A : ℝ) (hA : 1 ≤ A) : 1 ≤ sourceKernelCutoff A := by
  have he : 1 ≤ Real.exp (2 * A) := Real.one_le_exp_iff.mpr (by linarith)
  simpa only [sourceKernelCutoff, EstimateMertensAbel.sourceUpper] using
    (Nat.one_le_floor_iff (Real.exp (2 * A))).mpr he

/-- This finite-quadrature integral still includes the entire cell below one. -/
theorem reflectedSample_actual_finite_integral_zero (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 - A ≤ x) :
    (∫ u in (0 : ℝ)..((sourceKernelCutoff A + 1 : ℕ) : ℝ), reflectedSample A x u) = 0 := by
  have hs : support (reflectedSample A x) ⊆ Ioc 0 ((sourceKernelCutoff A + 1 : ℕ) : ℝ) := by
    intro u hu
    constructor
    · by_contra h
      exact hu (reflectedSample_eq_zero_of_nonpos A x (le_of_not_gt h))
    · by_contra h
      exact hu (reflectedSample_actual_upper_tail A x hA hx u (le_of_lt (lt_of_not_ge h)))
  have he : (∫ u : ℝ, reflectedSample A x u) =
      ∫ u in Ioi (0 : ℝ), reflectedSample A x u :=
    (setIntegral_eq_integral_of_forall_compl_eq_zero
      (fun u hu => reflectedSample_eq_zero_of_nonpos A x (le_of_not_gt hu))).symm
  rw [intervalIntegral.integral_eq_integral_of_support_subset hs, he,
    reflectedSample_positive_integral_zero A x hA]

/-- Above-one quadrature is exactly the declared actual q-prime fractional remainder. -/
theorem above_one_fractional_eq (A x : ℝ) (hA : 1 ≤ A) :
    (∫ u in (1 : ℝ)..((sourceKernelCutoff A + 1 : ℕ) : ℝ),
      Int.fract u * deriv (reflectedSample A x) u) = fractionalAboveOne A x := by
  have hp : 0 < A := by linarith
  unfold fractionalAboveOne
  apply intervalIntegral.integral_congr_Ioo_of_le
    (by exact_mod_cast Nat.le_add_left 1 (sourceKernelCutoff A))
  intro u hu
  rw [(reflectedSample_hasDerivAt hp x (lt_trans (by norm_num) hu.1)).deriv]
  ring

/-- The actual strict reflected row is minus the prefix plus the signed fractional remainder. -/
theorem strict_reflected_one_eq_prefix_and_fractional (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 - A ≤ x) :
    strictReflectedOne A x = -polePrefix A x + fractionalAboveOne A x := by
  have hp : 0 < A := by linarith
  have hN := actual_cutoff_one_le A hA
  have hc := finite_quadrature_of_endpoint_zero (reflectedSample A x)
    (reflectedSample_contDiff hp x) (sourceKernelCutoff A)
    (reflectedSample_actual_upper_tail A x hA hx _ (by
      simp only [Nat.cast_add, Nat.cast_one]; exact le_rfl))
  simp only [Nat.cast_add, Nat.cast_one] at hc
  have hi := reflectedSample_actual_finite_integral_zero A x hA hx
  simp only [Nat.cast_add, Nat.cast_one] at hi
  rw [hi, sub_zero] at hc
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (fract_deriv_intervalIntegrable (reflectedSample A x) (reflectedSample_contDiff hp x) 0 1)
    (fract_deriv_intervalIntegrable (reflectedSample A x) (reflectedSample_contDiff hp x)
      1 ((sourceKernelCutoff A + 1 : ℕ) : ℝ))
  rw [reflected_below_one_fractional_identity A x hA, above_one_fractional_eq A x hA] at hsplit
  simp only [Nat.cast_add, Nat.cast_one] at hsplit
  have hsum := Finset.add_sum_Ioc_eq_sum_Icc
    (f := fun n : ℕ => reflectedSample A x (n : ℝ)) hN
  rw [Nat.cast_one, reflectedSample_at_one] at hsum
  unfold strictReflectedOne
  linarith

/-- Strict samples vanish when every shifted q lies at or beyond its true upper seam. -/
theorem strictReflectedOne_zero_on_upper_region (A x : ℝ) (hA : 1 ≤ A)
    (hx : A - Real.log 2 ≤ x) : strictReflectedOne A x = 0 := by
  have hp : 0 < A := by linarith
  unfold strictReflectedOne
  apply Finset.sum_eq_zero
  intro n hn
  have hn1 : 1 < n := (Finset.mem_Ioc.mp hn).1
  have hn2 : 2 ≤ n := by omega
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have hl : Real.log (2 : ℝ) ≤ Real.log (n : ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hn2)
  have hs : A ≤ |x + Real.log (n : ℝ)| := by linarith [le_abs_self (x + Real.log (n : ℝ))]
  rw [reflectedSample_eq_of_pos A x hn0, actualQ,
    normalizedTest_zero_of_le_abs A _ hp hs, mul_zero]

/-- The two signed pieces cancel in the region where the actual strict row is empty. -/
theorem fractionalAboveOne_eq_prefix_on_empty_reflected_region (A x : ℝ) (hA : 1 ≤ A)
    (hx : A - Real.log 2 ≤ x) : fractionalAboveOne A x = polePrefix A x := by
  have hl : Real.log (2 : ℝ) ≤ 1 := by
    simpa using Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  have hlo : Real.log 2 - A ≤ x := by linarith
  have he := strict_reflected_one_eq_prefix_and_fractional A x hA hlo
  rw [strictReflectedOne_zero_on_upper_region A x hA hx] at he
  linarith

end
end FormalResearch.RiemannHypothesis.SourceReflectedOnePrefix
```
