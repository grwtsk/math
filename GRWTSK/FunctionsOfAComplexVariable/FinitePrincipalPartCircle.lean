/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteRemovablePatching
import Mathlib.Analysis.Complex.CauchyIntegral

set_option autoImplicit false

/-!
# Finite principal parts, removable germs, and circle integrals

The chain is local analytic removal -> the existing finite patch -> a genuine
holomorphic function on the closed disk -> Mathlib's Cauchy theorem -> the exact
finite principal-part integral. The source function is not assumed continuous at
its assigned pole values. Those values are never used on the integration circle.

The finite family is indexed independently of its set of centers. Repeated
centers are permitted and their coefficients are not deduplicated. Each term has
a positive natural pole order. Only order one contributes to the integral;
higher orders are handled by the upstream integer-power primitive theorem.
No general meromorphic-to-Laurent extraction is asserted by the data type.

Reuse: FiniteRemovablePatching.LocalRemovalData; Mathlib circleIntegral APIs.
Base source: grwtsk/math@7d33cee521e3f1c27ffce510a6894bf15b42c89b.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612 (Lean v4.34.1).
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No RH/GRH estimate is asserted.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.FinitePrincipalPartCircle

open Set Metric Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.ComplexAnalysis.FiniteRemovablePatching

noncomputable section

/-- Positive-orientation normalization; kept as the actual complex number. -/
def period : ℂ := 2 * (Real.pi : ℂ) * Complex.I

theorem period_ne_zero : period ≠ 0 := by
  unfold period
  exact mul_ne_zero (mul_ne_zero (by norm_num)
    (Complex.ofReal_ne_zero.mpr Real.pi_ne_zero)) Complex.I_ne_zero

/-- A boundary point cannot be an interior pole center. -/
theorem boundary_ne_center {c a z : ℂ} {r : ℝ}
    (ha : a ∈ ball c r) (hz : z ∈ sphere c r) : z ≠ a := by
  intro h
  subst z
  exact (Metric.mem_ball.mp ha).ne (Metric.mem_sphere.mp hz)

/-- A finite list of Laurent terms with their actual centers and positive orders.
The label type need not be a type of distinct pole locations. -/
structure Family (ι : Type*) where
  support : Finset ι
  center : ι → ℂ
  order : ι → ℕ
  coefficient : ι → ℂ
  positive_order : ∀ i ∈ support, 0 < order i

namespace Family

variable {ι : Type*}

/-- Integer powers avoid an extra choice of a value at a singular center. -/
def term (A : Family ι) (i : ι) (z : ℂ) : ℂ :=
  A.coefficient i * (z - A.center i) ^ (-(A.order i : ℤ))

def value (A : Family ι) (z : ℂ) : ℂ := ∑ i ∈ A.support, A.term i z

/-- Repeated locations are merged only for the removable-point inventory. -/
def centers (A : Family ι) : Finset ℂ := by
  classical
  exact A.support.image A.center

/-- Coefficients are summed over labels, not over distinct locations. -/
def residueSum (A : Family ι) : ℂ :=
  ∑ i ∈ A.support, if A.order i = 1 then A.coefficient i else 0

theorem mem_centers (A : Family ι) (a : ℂ) :
    a ∈ A.centers ↔ ∃ i ∈ A.support, A.center i = a := by
  classical
  simp only [centers, Finset.mem_image]

theorem boundary_not_mem_centers (A : Family ι) {c z : ℂ} {r : ℝ}
    (inside : ∀ i ∈ A.support, A.center i ∈ ball c r)
    (hz : z ∈ sphere c r) : z ∉ A.centers := by
  intro hzA
  obtain ⟨i, hi, he⟩ := (A.mem_centers z).mp hzA
  exact boundary_ne_center (inside i hi) hz he.symm

theorem term_circleIntegrable (A : Family ι) {c : ℂ} {r : ℝ}
    (hr : 0 ≤ r) (i : ι) (inside : A.center i ∈ ball c r) :
    CircleIntegrable (A.term i) c r := by
  apply ContinuousOn.circleIntegrable hr
  intro z hz
  have hn : z - A.center i ≠ 0 :=
    sub_ne_zero.mpr (boundary_ne_center inside hz)
  have hc : ContinuousAt
      (fun w : ℂ => A.coefficient i * ((w - A.center i) ^ A.order i)⁻¹) z :=
    continuousAt_const.mul
      (((continuousAt_id.sub continuousAt_const).pow (A.order i)).inv₀
        (pow_ne_zero (A.order i) hn))
  simpa only [term, zpow_neg, zpow_natCast] using hc.continuousWithinAt

/-- Order-one normalization is supplied by Mathlib, not assumed in the family. -/
theorem integral_term (A : Family ι) (c : ℂ) (r : ℝ) (i : ι)
    (inside : A.center i ∈ ball c r) :
    (∮ z in C(c, r), A.term i z) =
      (if A.order i = 1 then A.coefficient i else 0) * period := by
  unfold term
  rw [circleIntegral.integral_const_mul]
  by_cases hm : A.order i = 1
  · simp only [hm, Nat.cast_one, zpow_neg_one, if_true]
    rw [circleIntegral.integral_sub_inv_of_mem_ball inside]
    rfl
  · have hn : -(A.order i : ℤ) ≠ -1 := by
      intro h
      have h' : (A.order i : ℤ) = 1 := by linarith
      exact hm (by exact_mod_cast h')
    rw [circleIntegral.integral_sub_zpow_of_ne hn c (A.center i) r]
    simp [hm]

theorem value_circleIntegrable (A : Family ι) {c : ℂ} {r : ℝ}
    (hr : 0 ≤ r) (inside : ∀ i ∈ A.support, A.center i ∈ ball c r) :
    CircleIntegrable A.value c r := by
  simpa only [value, Finset.sum_apply] using
    (CircleIntegrable.sum A.support (fun i hi => A.term_circleIntegrable hr i (inside i hi)))

/-- The finite principal-part circle formula includes every order and label. -/
theorem integral_value (A : Family ι) {c : ℂ} {r : ℝ}
    (hr : 0 ≤ r) (inside : ∀ i ∈ A.support, A.center i ∈ ball c r) :
    (∮ z in C(c, r), A.value z) = A.residueSum * period := by
  calc
    (∮ z in C(c, r), A.value z) =
        ∑ i ∈ A.support, ∮ z in C(c, r), A.term i z :=
      circleIntegral.integral_fun_sum (fun i hi => A.term_circleIntegrable hr i (inside i hi))
    _ = ∑ i ∈ A.support,
        (if A.order i = 1 then A.coefficient i else 0) * period := by
      apply Finset.sum_congr rfl
      intro i hi
      exact A.integral_term c r i (inside i hi)
    _ = A.residueSum * period := by rw [← Finset.sum_mul]; rfl

/-- The order-one family used by the existing logarithmic-principal-part API. -/
def simple (S : Finset ℂ) (b : ℂ → ℂ) : Family ℂ where
  support := S
  center := id
  order := fun _ => 1
  coefficient := b
  positive_order := fun _ _ => Nat.zero_lt_one

@[simp] theorem simple_centers (S : Finset ℂ) (b : ℂ → ℂ) :
    (simple S b).centers = S := by
  classical
  simp [centers, simple]

@[simp] theorem simple_value (S : Finset ℂ) (b : ℂ → ℂ) (z : ℂ) :
    (simple S b).value z = ∑ a ∈ S, b a / (z - a) := by
  simp [value, term, simple, div_eq_mul_inv]

@[simp] theorem simple_residueSum (S : Finset ℂ) (b : ℂ → ℂ) :
    (simple S b).residueSum = ∑ a ∈ S, b a := by
  simp [residueSum, simple]

/-- An empty inventory does not create a pole or a residue. -/
theorem residueSum_eq_zero_of_support_empty (A : Family ι) (h : A.support = ∅) :
    A.residueSum = 0 := by simp [residueSum, h]

/-- A family consisting solely of higher-order terms has zero circle integral. -/
theorem integral_value_eq_zero_of_no_simple_terms (A : Family ι) {c : ℂ} {r : ℝ}
    (hr : 0 ≤ r) (inside : ∀ i ∈ A.support, A.center i ∈ ball c r)
    (higher : ∀ i ∈ A.support, A.order i ≠ 1) :
    (∮ z in C(c, r), A.value z) = 0 := by
  rw [A.integral_value hr inside]
  have hz : A.residueSum = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    simp [higher i hi]
  rw [hz, zero_mul]

/-- Repeated labels at one location are retained, not collapsed to one residue. -/
def repeatedSimple (a : ℂ) (n : ℕ) : Family (Fin n) where
  support := Finset.univ
  center := fun _ => a
  order := fun _ => 1
  coefficient := fun _ => 1
  positive_order := fun _ _ => Nat.zero_lt_one

@[simp] theorem repeatedSimple_residueSum (a : ℂ) (n : ℕ) :
    (repeatedSimple a n).residueSum = (n : ℂ) := by
  simp [residueSum, repeatedSimple]

theorem repeatedSimple_integral (a c : ℂ) (r : ℝ) (n : ℕ)
    (hr : 0 ≤ r) (ha : a ∈ ball c r) :
    (∮ z in C(c, r), (repeatedSimple a n).value z) = (n : ℂ) * period := by
  have hi : ∀ i ∈ (repeatedSimple a n).support,
      (repeatedSimple a n).center i ∈ ball c r := fun _ _ => ha
  simpa only [repeatedSimple_residueSum] using
    (repeatedSimple a n).integral_value hr hi

end Family

/-- Local removal data for the actual pole-subtracted function. No global
holomorphic remainder or contour identity is postulated in this type. -/
structure Data (ι : Type*) (f : ℂ → ℂ) (c : ℂ) (r : ℝ) where
  parts : Family ι
  positive_radius : 0 < r
  inside : ∀ i ∈ parts.support, parts.center i ∈ ball c r
  removal : LocalRemovalData (fun z => f z - parts.value z) parts.centers
  regular : ∀ z ∈ closedBall c r, z ∉ parts.centers →
    AnalyticAt ℂ (fun w => f w - parts.value w) z

namespace Data

variable {ι : Type*} {f : ℂ → ℂ} {c : ℂ} {r : ℝ}

/-- Reuse the canonical finite patch, rather than selecting a new remainder. -/
def remainder (data : Data ι f c r) : ℂ → ℂ := data.removal.filled

theorem analytic_remainder (data : Data ι f c r) :
    AnalyticOnNhd ℂ data.remainder (closedBall c r) :=
  data.removal.analyticOnNhd_filled (closedBall c r) data.regular

theorem boundary_decomposition (data : Data ι f c r) :
    EqOn f (fun z => data.remainder z + data.parts.value z) (sphere c r) := by
  intro z hz
  have he : data.remainder z = f z - data.parts.value z :=
    data.removal.filled_eq_raw (data.parts.boundary_not_mem_centers data.inside hz)
  rw [he]
  ring

theorem remainder_circleIntegrable (data : Data ι f c r) :
    CircleIntegrable data.remainder c r := by
  apply ContinuousOn.circleIntegrable data.positive_radius.le
  intro z hz
  exact (data.analytic_remainder z (sphere_subset_closedBall hz)).continuousAt.continuousWithinAt

theorem integral_remainder (data : Data ι f c r) :
    (∮ z in C(c, r), data.remainder z) = 0 := by
  apply Complex.circleIntegral_eq_zero_of_differentiable_on_off_countable
    data.positive_radius.le Set.countable_empty
  · intro z hz
    exact (data.analytic_remainder z hz).continuousAt.continuousWithinAt
  · intro z hz
    exact (data.analytic_remainder z (ball_subset_closedBall hz.1)).differentiableAt

theorem circleIntegrable (data : Data ι f c r) : CircleIntegrable f c r := by
  have hs : CircleIntegrable (fun z => data.remainder z + data.parts.value z) c r :=
    data.remainder_circleIntegrable.add
      (data.parts.value_circleIntegrable data.positive_radius.le data.inside)
  apply (circleIntegrable_congr (c := c) (R := r) ?_).mpr hs
  simpa only [abs_of_pos data.positive_radius] using data.boundary_decomposition

/-- Local analytic germs now produce an actual finite contour equality. -/
theorem integral_eq (data : Data ι f c r) :
    (∮ z in C(c, r), f z) = data.parts.residueSum * period := by
  calc
    (∮ z in C(c, r), f z) =
        ∮ z in C(c, r), data.remainder z + data.parts.value z :=
      circleIntegral.integral_congr data.positive_radius.le data.boundary_decomposition
    _ = (∮ z in C(c, r), data.remainder z) +
        (∮ z in C(c, r), data.parts.value z) :=
      circleIntegral.integral_add data.remainder_circleIntegrable
        (data.parts.value_circleIntegrable data.positive_radius.le data.inside)
    _ = data.parts.residueSum * period := by
      rw [data.integral_remainder,
        data.parts.integral_value data.positive_radius.le data.inside, zero_add]

theorem normalized_integral_eq (data : Data ι f c r) :
    (∮ z in C(c, r), f z) / period = data.parts.residueSum := by
  rw [data.integral_eq, mul_div_cancel_right₀ _ period_ne_zero]

/-- Two fully justified principal-part inventories for the same boundary source
have the same coefficient sum. Similarity of their labels is not used. -/
theorem residueSum_eq_of_boundary_eq {κ : Type*} {g : ℂ → ℂ}
    (data : Data ι f c r) (other : Data κ g c r)
    (he : EqOn f g (sphere c r)) :
    data.parts.residueSum = other.parts.residueSum := by
  apply mul_right_cancel₀ period_ne_zero
  exact data.integral_eq.symm.trans
    ((circleIntegral.integral_congr data.positive_radius.le he).trans other.integral_eq)

/-- Exact transport is a special case of a quantitative source comparison.
The error is measured on the actual circle; no interior proxy is substituted. -/
theorem norm_residueSum_sub_le {κ : Type*} {g : ℂ → ℂ}
    (data : Data ι f c r) (other : Data κ g c r) (ε : ℝ)
    (he : ∀ z ∈ sphere c r, ‖f z - g z‖ ≤ ε) :
    ‖data.parts.residueSum - other.parts.residueSum‖ ≤ r * ε := by
  have hn := circleIntegral.norm_two_pi_i_inv_smul_integral_le_of_norm_le_const
    (f := fun z => f z - g z) data.positive_radius.le he
  change ‖period⁻¹ • (∮ z in C(c, r), f z - g z)‖ ≤ r * ε at hn
  have hid : period⁻¹ • (∮ z in C(c, r), f z - g z) =
      data.parts.residueSum - other.parts.residueSum := by
    rw [circleIntegral.integral_sub data.circleIntegrable other.circleIntegrable,
      data.integral_eq, other.integral_eq]
    simp only [smul_eq_mul]
    calc
      period⁻¹ * (data.parts.residueSum * period - other.parts.residueSum * period) =
          (period⁻¹ * period) * (data.parts.residueSum - other.parts.residueSum) := by ring
      _ = _ := by rw [inv_mul_cancel₀ period_ne_zero, one_mul]
  rwa [hid] at hn

/-- Adapt a constructed global regular decomposition to the local-germ interface.
The local germ values come from the actual remainder, not arbitrary pole values. -/
def ofRegularDecomposition (A : Family ι) (hr : 0 < r)
    (inside : ∀ i ∈ A.support, A.center i ∈ ball c r)
    (g : ℂ → ℂ) (hg : AnalyticOnNhd ℂ g (closedBall c r))
    (he : ∀ z, z ∉ A.centers → f z = g z + A.value z) : Data ι f c r where
  parts := A
  positive_radius := hr
  inside := inside
  removal :=
    { germ := fun _ => g
      germ_analytic := by
        intro a ha
        obtain ⟨i, hi, rfl⟩ := (A.mem_centers a).mp ha
        exact hg _ (ball_subset_closedBall (inside i hi))
      germ_agrees := by
        classical
        intro a ha
        have hopen : IsOpen (((A.centers.erase a : Finset ℂ) : Set ℂ)ᶜ) :=
          (A.centers.erase a).isClosed.isOpen_compl
        have hmem : a ∈ (((A.centers.erase a : Finset ℂ) : Set ℂ)ᶜ) := by simp
        have havoid : ∀ᶠ z in 𝓝[≠] a, z ∉ A.centers.erase a :=
          (hopen.mem_nhds hmem).filter_mono nhdsWithin_le_nhds
        filter_upwards [havoid, self_mem_nhdsWithin] with z hz hza
        have hne : z ≠ a := by simpa using hza
        have hnot : z ∉ A.centers := by
          intro hs
          exact hz (Finset.mem_erase.mpr ⟨hne, hs⟩)
        rw [he z hnot]
        ring }
  regular := by
    classical
    intro z hz hnot
    have hopen : IsOpen (((A.centers : Set ℂ)ᶜ)) := A.centers.isClosed.isOpen_compl
    have hmem : z ∈ (((A.centers : Set ℂ)ᶜ)) := hnot
    apply (hg z hz).congr
    filter_upwards [hopen.mem_nhds hmem] with w hw
    rw [he w hw]
    ring

end Data

end
end GRWTSK.Analysis.ComplexAnalysis.FinitePrincipalPartCircle
