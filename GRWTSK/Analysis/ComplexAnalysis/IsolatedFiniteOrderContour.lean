/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.IsolatedSimpleZeroContour
import Mathlib.Analysis.Analytic.Order

set_option autoImplicit false

/-!
# An isolated zero contributes its actual finite analytic order

Distinct-root isolation is not simplicity. For an actual order m>0, patch
f(z)/(z-root)^m at the root with the value of its local analytic factor.
The analytic-order theorem supplies that local factor. Its neighborhood
identity proves the patch analytic at the root; quotient analyticity handles
other points. No global selection of roots or factors is introduced.

The resulting nonvanishing factor on the SAME closed disk gives residue m,
not residue one. Boundary integrability, a strictly interior root and absence
of other zeros are retained. This removes the simplicity premise from the
contour theorem, NOT from the earlier Newton/contraction certificate. It
constructs no isolation region or numerical source-acceptance proof.
The patch uses classical equality; upstream analytic order also uses classical
choice. No choice-free Lean dependency claim is made.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.IsolatedFiniteOrderContour

open Set Metric Filter
open scoped Topology
open GRWTSK.Analysis.ComplexAnalysis.IsolatedSimpleZeroContour

noncomputable section

/-- The value at the root is supplied by an actual local factor, not an arbitrary zero. -/
def filledFactor (f : ℂ → ℂ) (root : ℂ) (m : ℕ) (anchor z : ℂ) : ℂ := by
  classical
  exact if z = root then anchor else f z / (z - root) ^ m

theorem filledFactor_of_ne (f : ℂ → ℂ) (root z anchor : ℂ) (m : ℕ)
    (different : z ≠ root) : filledFactor f root m anchor z = f z / (z - root) ^ m := by
  classical
  simp [filledFactor, different]

/-- Positive order and actual vanishing make the factorization valid also at the root. -/
theorem filledFactor_factorization (f : ℂ → ℂ) (root anchor : ℂ) (m : ℕ)
    (positiveOrder : 0 < m) (rootZero : f root = 0) (z : ℂ) :
    (z - root) ^ m * filledFactor f root m anchor z = f z := by
  classical
  by_cases same : z = root
  · subst z
    simp [filledFactor, Nat.ne_of_gt positiveOrder, rootZero]
  · rw [filledFactor_of_ne f root z anchor m same]
    field_simp [pow_ne_zero m (sub_ne_zero.mpr same)] <;> ring

/-- The order is linked to the actual source germ; a caller's integer label is insufficient.
Only one local existential factor is eliminated, with no family-choice construction. -/
theorem exists_nonvanishing_factor (f : ℂ → ℂ) (root : ℂ) (m : ℕ) (region : Set ℂ)
    (positiveOrder : 0 < m) (analytic : AnalyticOnNhd ℂ f region)
    (rootMember : root ∈ region) (rootZero : f root = 0)
    (actualOrder : analyticOrderAt f root = (m : ℕ∞))
    (nonzeroAway : ∀ z ∈ region, z ≠ root → f z ≠ 0) :
    ∃ g : ℂ → ℂ, AnalyticOnNhd ℂ g region ∧
      (∀ z ∈ region, g z ≠ 0) ∧ ∀ z, (z - root) ^ m * g z = f z := by
  classical
  obtain ⟨localFactor, localAnalytic, localNonzero, localIdentity⟩ :=
    (analytic root rootMember).analyticOrderAt_eq_natCast.mp actualOrder
  let g := filledFactor f root m (localFactor root)
  have near : g =ᶠ[𝓝 root] localFactor := by
    filter_upwards [localIdentity] with z hz
    by_cases same : z = root
    · subst z
      simp [g, filledFactor]
    · change filledFactor f root m (localFactor root) z = localFactor z
      rw [filledFactor_of_ne f root z (localFactor root) m same]
      simp only [smul_eq_mul] at hz
      rw [hz]
      field_simp [pow_ne_zero m (sub_ne_zero.mpr same)] <;> ring
  have identity : ∀ z, (z - root) ^ m * g z = f z :=
    filledFactor_factorization f root (localFactor root) m positiveOrder rootZero
  refine ⟨g, ?_, ?_, identity⟩
  · intro z hz
    by_cases same : z = root
    · subst z
      exact localAnalytic.congr near.symm
    · have quotient : AnalyticAt ℂ (fun w : ℂ => f w / (w - root) ^ m) z :=
        (analytic z hz).div ((analyticAt_id.sub analyticAt_const).pow m)
          (pow_ne_zero m (sub_ne_zero.mpr same))
      apply quotient.congr
      filter_upwards [isOpen_ne.mem_nhds same] with w hw
      exact (filledFactor_of_ne f root w (localFactor root) m hw).symm
  · intro z hz
    by_cases same : z = root
    · subst z
      simpa [g, filledFactor] using localNonzero
    · intro vanishes
      have h := identity z
      rw [vanishes, mul_zero] at h
      exact nonzeroAway z hz same h.symm

/-- Differentiate the complete order-m factorization before any denominator is cancelled. -/
theorem log_derivative_split (f g : ℂ → ℂ) (root z : ℂ) (m : ℕ)
    (positiveOrder : 0 < m) (identity : ∀ w, (w - root) ^ m * g w = f w)
    (factorAnalytic : AnalyticAt ℂ g z) (factorNonzero : g z ≠ 0)
    (different : z ≠ root) :
    deriv f z / f z = (m : ℂ) / (z - root) + deriv g z / g z := by
  cases m with
  | zero => omega
  | succ k =>
      have derivative : HasDerivAt (fun w : ℂ => (w - root) ^ (k + 1) * g w)
          (((k + 1 : ℕ) : ℂ) * (z - root) ^ k * g z +
            (z - root) ^ (k + 1) * deriv g z) z := by
        simpa only [Nat.add_sub_cancel, mul_one] using
          (((hasDerivAt_id z).sub_const root).pow (k + 1)).mul
            factorAnalytic.differentiableAt.hasDerivAt
      have functionsEqual : (fun w : ℂ => (w - root) ^ (k + 1) * g w) = f :=
        funext identity
      rw [functionsEqual] at derivative
      rw [derivative.deriv, ← identity z]
      simp only [pow_succ]
      field_simp [factorNonzero, sub_ne_zero.mpr different,
        pow_ne_zero k (sub_ne_zero.mpr different)] <;> ring

/-- The regular part has an analytic extension only after the FULL multiplicity is removed. -/
theorem exists_regular_extension (f : ℂ → ℂ) (root : ℂ) (m : ℕ) (region : Set ℂ)
    (positiveOrder : 0 < m) (analytic : AnalyticOnNhd ℂ f region)
    (rootMember : root ∈ region) (rootZero : f root = 0)
    (actualOrder : analyticOrderAt f root = (m : ℕ∞))
    (nonzeroAway : ∀ z ∈ region, z ≠ root → f z ≠ 0) :
    ∃ H : ℂ → ℂ, AnalyticOnNhd ℂ H region ∧
      ∀ z ∈ region, z ≠ root → H z = deriv f z / f z - (m : ℂ) / (z - root) := by
  obtain ⟨g, analyticG, nonzeroG, identity⟩ := exists_nonvanishing_factor
    f root m region positiveOrder analytic rootMember rootZero actualOrder nonzeroAway
  refine ⟨fun z => deriv g z / g z, ?_, ?_⟩
  · intro z hz
    exact (analyticG z hz).deriv.div (analyticG z hz) (nonzeroG z hz)
  · intro z hz different
    rw [log_derivative_split f g root z m positiveOrder identity
      (analyticG z hz) (nonzeroG z hz) different]
    ring

/-- The exact circle integral is 2*pi*i*m. No derivative-nonvanishing premise is imposed. -/
theorem log_derivative_circleIntegral_of_order (f : ℂ → ℂ) (c root : ℂ) (r : ℝ) (m : ℕ)
    (positiveOrder : 0 < m) (analytic : AnalyticOnNhd ℂ f (closedBall c r))
    (inside : root ∈ ball c r) (rootZero : f root = 0)
    (actualOrder : analyticOrderAt f root = (m : ℕ∞))
    (nonzeroAway : ∀ z ∈ closedBall c r, z ≠ root → f z ≠ 0) :
    CircleIntegrable (fun z => deriv f z / f z) c r ∧
      (∮ z in C(c, r), deriv f z / f z) = (m : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) := by
  have positive : 0 < r := lt_of_le_of_lt dist_nonneg inside
  obtain ⟨H, analyticH, agrees⟩ := exists_regular_extension f root m (closedBall c r)
    positiveOrder analytic (ball_subset_closedBall inside) rootZero actualOrder nonzeroAway
  have regular : DiffContOnCl ℂ H (ball c r) :=
    DiffContOnCl.mk_ball
      (fun z hz => (analyticH z (ball_subset_closedBall hz)).differentiableAt.differentiableWithinAt)
      (fun z hz => (analyticH z hz).continuousAt.continuousWithinAt)
  have zeroIntegral : (∮ z in C(c, r), H z) = 0 :=
    DiffContOnCl.circleIntegral_eq_zero positive.le regular
  have regularIntegrable : CircleIntegrable H c r := by
    apply ContinuousOn.circleIntegrable positive.le
    intro z hz
    exact (analyticH z (sphere_subset_closedBall hz)).continuousAt.continuousWithinAt
  have poleIntegrable : CircleIntegrable (fun z : ℂ => (m : ℂ) * (z - root)⁻¹) c r := by
    apply ContinuousOn.circleIntegrable positive.le
    intro z hz
    exact (continuousAt_const.mul ((continuousAt_id.sub continuousAt_const).inv₀
      (sub_ne_zero.mpr (boundary_ne_root c root z r inside hz)))).continuousWithinAt
  constructor
  · apply ContinuousOn.circleIntegrable positive.le
    intro z hz
    have member := sphere_subset_closedBall hz
    exact ((analytic z member).deriv.div (analytic z member)
      (nonzeroAway z member (boundary_ne_root c root z r inside hz))).continuousAt.continuousWithinAt
  · calc
      (∮ z in C(c, r), deriv f z / f z) =
          ∮ z in C(c, r), (m : ℂ) * (z - root)⁻¹ + H z := by
        apply circleIntegral.integral_congr positive.le
        intro z hz
        rw [agrees z (sphere_subset_closedBall hz) (boundary_ne_root c root z r inside hz)]
        simp only [div_eq_mul_inv]
        ring
      _ = (∮ z in C(c, r), (m : ℂ) * (z - root)⁻¹) + ∮ z in C(c, r), H z :=
        circleIntegral.integral_add poleIntegrable regularIntegrable
      _ = (m : ℂ) * (2 * (Real.pi : ℂ) * Complex.I) := by
        rw [circleIntegral.integral_const_mul, circleIntegral.integral_sub_inv_of_mem_ball inside,
          zeroIntegral, add_zero]

/-- One distinct root can have order two and a zero derivative. This is not zeta data. -/
theorem double_zero_isolation_fixture :
    (∀ z : ℂ, z ^ 2 = 0 → z = 0) ∧
      deriv (fun z : ℂ => z ^ 2) 0 = 0 ∧
      analyticOrderAt (fun z : ℂ => z ^ 2) 0 = (2 : ℕ∞) := by
  refine ⟨?_, ?_, ?_⟩
  · intro z zero
    by_contra nonzero
    exact pow_ne_zero 2 nonzero zero
  · simpa using (hasDerivAt_pow 2 (0 : ℂ)).deriv
  · have analytic : AnalyticAt ℂ (fun z : ℂ => z ^ 2) 0 := analyticAt_id.pow 2
    apply analytic.analyticOrderAt_eq_natCast.mpr
    refine ⟨fun _ => (1 : ℂ), analyticAt_const, one_ne_zero, ?_⟩
    exact Filter.Eventually.of_forall (fun z => by simp [smul_eq_mul])

/-- A pure multiplicity-two control: subtracting residue one leaves a genuine pole. -/
theorem wrong_unit_residue_fixture (z root : ℂ) (different : z ≠ root) :
    (2 : ℂ) / (z - root) - 1 / (z - root) = 1 / (z - root) ∧
      (1 : ℂ) / (z - root) ≠ 0 := by
  constructor
  · ring
  · exact div_ne_zero one_ne_zero (sub_ne_zero.mpr different)

end

end GRWTSK.Analysis.ComplexAnalysis.IsolatedFiniteOrderContour
