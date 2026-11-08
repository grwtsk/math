/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPivotResidual
import Mathlib.Algebra.Ring.GeomSum

/-!
# A finite centered Cauchy expansion with its exact source-entry error

The existing structured Schur source reconstructs an off-diagonal entry as
`numerator (V i) (U i) (V j) (U j) / (node i-node j)`.
Its two skew pairs in the radius-two seed describe a displacement structure;
they do not make the whole matrix rank four. No rank theorem is proved here.

For separated real nodes a<b and a center c<b, the finite geometric identity
returns the EXACT remainder after p terms:
  1/(b-a) - sum_(k<p) (a-c)^k/(b-c)^(k+1)
    = ((a-c)/(b-c))^p/(b-a).
If c<=a, the remainder is nonnegative. If in addition the ratio is at most
rho and b-a is at least a positive gap, its absolute value is at most
rho^p/gap. A future application obtains decay by choosing rho<1; the
inequality itself holds for any rho above the nonnegative actual ratio.

The final theorem applies this identity directly to the existing literal
`cauchyMatrix`. It retains the signed skew numerator and the NEGATIVE sign
from 1/(a-b), then bounds the exact entry error by the actual numerator's
absolute value times rho^p/gap. It supplies no arbitrary replacement matrix
positivity hypothesis. An actual cluster cover, uniform generator bounds,
matrix/operator remainder budget and positive block certificate remain
separate work. No compressed positivity, complete recurrence, HighFloor,
cofinal sign, RH or Dirichlet GRH follows.

Boundary probes: p=0 is the zero approximation with the full reciprocal
remainder; a=b is excluded; c=b is excluded by the center hypothesis.
Adjacent clusters with ratio close to one need larger p or another center.
A pairwise entry bound alone does not pay a many-entry operator norm.

Mathematical comparison is the standard finite geometric sum identity,
implemented by Mathlib's geom_sum_mul_neg, on the unchanged Cauchy source.
No theorem-level novelty or independent analytical review is asserted.
Automated assistance constructed this source and its proof wrappers. Exact
source/build/kernel/axiom assurance is recorded separately in grwtsk/noeaaeue
docs/verification.md; imported dependency closure is not thereby replayed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Algebra.LinearAlgebra.StructuredSchurCauchyBlockApproximation

open StructuredSchurPivotResidual

/-- Finite approximation to the positive reciprocal kernel at a center c. -/
def kernelApproximation (a b c : ℝ) (p : ℕ) : ℝ :=
  (∑ k ∈ Finset.range p, ((a-c)/(b-c))^k) / (b-c)

/-- The ratio form is exactly the separated finite-power expansion. -/
theorem kernelApproximation_eq_sum (a b c : ℝ) (p : ℕ) :
    kernelApproximation a b c p =
      ∑ k ∈ Finset.range p, (a-c)^k/(b-c)^(k+1) := by
  unfold kernelApproximation
  rw [Finset.sum_div]
  apply Finset.sum_congr rfl
  intro k _
  rw [div_pow, div_div, pow_succ]

/-- Exact finite remainder; no infinite series or limiting exchange is used. -/
theorem kernel_remainder_eq (a b c : ℝ) (p : ℕ)
    (hab : a < b) (hcb : c < b) :
    1/(b-a) - kernelApproximation a b c p =
      ((a-c)/(b-c))^p/(b-a) := by
  have hba : b-a ≠ 0 := (sub_pos.mpr hab).ne'
  have hbc : b-c ≠ 0 := (sub_pos.mpr hcb).ne'
  have hRatio : 1-(a-c)/(b-c) = (b-a)/(b-c) := by
    field_simp [hbc] <;> ring
  have hGeom := geom_sum_mul_neg ((a-c)/(b-c)) p
  rw [hRatio] at hGeom
  have hCharged : kernelApproximation a b c p * (b-a) =
      1-((a-c)/(b-c))^p := by
    unfold kernelApproximation
    calc
      _ = (∑ k ∈ Finset.range p, ((a-c)/(b-c))^k) * ((b-a)/(b-c)) := by ring
      _ = _ := hGeom
  apply (eq_div_iff hba).2
  calc
    _ = 1-kernelApproximation a b c p * (b-a) := by
      rw [sub_mul, div_mul_cancel₀ _ hba]
    _ = _ := by rw [hCharged]; ring

/-- A center on the left makes the omitted positive reciprocal terms nonnegative. -/
theorem kernel_remainder_nonneg (a b c : ℝ) (p : ℕ)
    (hca : c ≤ a) (hab : a < b) :
    0 ≤ 1/(b-a)-kernelApproximation a b c p := by
  have hcb : c < b := hca.trans_lt hab
  rw [kernel_remainder_eq a b c p hab hcb]
  exact div_nonneg (pow_nonneg
    (div_nonneg (sub_nonneg.mpr hca) (sub_pos.mpr hcb).le) _) (sub_pos.mpr hab).le

/-- Quantitative scalar norm bound from actual ratio and gap inequalities.
The statement does not assume that a future family of clusters satisfies them. -/
theorem abs_kernel_remainder_le (a b c ρ gap : ℝ) (p : ℕ)
    (hca : c ≤ a) (hab : a < b) (hgap : 0 < gap) (hGap : gap ≤ b-a)
    (hRatio : (a-c)/(b-c) ≤ ρ) :
    |1/(b-a)-kernelApproximation a b c p| ≤ ρ^p/gap := by
  have hcb : c < b := hca.trans_lt hab
  have hq : 0 ≤ (a-c)/(b-c) :=
    div_nonneg (sub_nonneg.mpr hca) (sub_pos.mpr hcb).le
  have hρ : 0 ≤ ρ := hq.trans hRatio
  rw [abs_of_nonneg (kernel_remainder_nonneg a b c p hca hab),
    kernel_remainder_eq a b c p hab hcb]
  calc
    _ ≤ ρ^p/(b-a) := div_le_div_of_nonneg_right
      (pow_le_pow_left₀ hq hRatio p) (sub_pos.mpr hab).le
    _ ≤ ρ^p/gap := div_le_div_of_nonneg_left (pow_nonneg hρ p) hgap hGap

/-- Directed far-block approximation, retaining the original signed numerator.
The off-diagonal source theorem below requires node i<node j. -/
def cauchyApproxEntry {ι σ : Type*} [Fintype σ]
    (node : ι → ℝ) (V U : ι → σ → ℝ) (c : ℝ) (p : ℕ) (i j : ι) : ℝ :=
  -numerator (V i) (U i) (V j) (U j) * kernelApproximation (node i) (node j) c p

/-- Actual structured-source entry error, with exact sign and all skew pairs.
This is an entry estimate, not a global quadratic or positive-block assertion. -/
theorem abs_cauchyMatrix_sub_approx_le {ι σ : Type*} [DecidableEq ι] [Fintype σ]
    (node diag : ι → ℝ) (V U : ι → σ → ℝ) (c ρ gap : ℝ) (p : ℕ) (i j : ι)
    (hca : c ≤ node i) (hab : node i < node j)
    (hgap : 0 < gap) (hGap : gap ≤ node j-node i)
    (hRatio : (node i-c)/(node j-c) ≤ ρ) :
    |cauchyMatrix node diag V U i j-cauchyApproxEntry node V U c p i j| ≤
      |numerator (V i) (U i) (V j) (U j)| * ρ^p/gap := by
  have hij : i ≠ j := by intro h; subst j; exact (lt_irrefl _ hab)
  let num := numerator (V i) (U i) (V j) (U j)
  have hExact : num/(node i-node j) -
      (-num * kernelApproximation (node i) (node j) c p) =
      -num * (1/(node j-node i)-kernelApproximation (node i) (node j) c p) := by
    rw [show node i-node j = -(node j-node i) by ring, div_neg]
    ring
  simp only [cauchyMatrix, hij, ite_false, cauchyApproxEntry]
  change |num/(node i-node j)-(-num*kernelApproximation (node i) (node j) c p)| ≤ _
  rw [hExact, abs_mul, abs_neg]
  calc
    _ ≤ |num| * (ρ^p/gap) :=
      mul_le_mul_of_nonneg_left
        (abs_kernel_remainder_le (node i) (node j) c ρ gap p hca hab hgap hGap hRatio)
        (abs_nonneg num)
    _ = _ := by ring

end GRWTSK.Algebra.LinearAlgebra.StructuredSchurCauchyBlockApproximation
