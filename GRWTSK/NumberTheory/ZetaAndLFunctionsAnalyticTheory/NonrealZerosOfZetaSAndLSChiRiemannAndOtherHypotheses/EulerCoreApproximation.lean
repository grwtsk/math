/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.FunctionsOfAComplexVariable.BoundedMellinTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalStripCores
import Mathlib.Tactic.FieldSimp

/-!
# Finite Euler approximants and explicit core-dependent truncation budgets

Write H_M(s,a) = sum_{j=0}^M (j+a)^(-s) + (M+a)^(1-s)/(s-1).
For 0<a<=1 and Re(s)>0, s!=1, Euler summation gives the complete remainder
-s*integral_{M+a}^infinity frac(x-a)*x^(-s-1) dx. Its norm is at most
|s|*(M+a)^(-Re(s))/Re(s). The source is DLMF 25.11.5, attributed there to
Tom M. Apostol, Introduction to Analytic Number Theory (1976), (25), p.269.
The change of variable x=t+a is explicit in the kernel below.

Analytic derivation of the cited source identity: on every [j,j+1], integration
by parts gives integral(f)+integral((x-j)*f')=f(j+1). Sum from j=M to K-1
with f(x)=(x+a)^(-s), add the first M+1 terms, and let K tend to infinity in
Re(s)>1. The endpoint (K+a)^(1-s) vanishes there. On compact subsets of
Re(s)>0 the remainder and its s-derivatives are dominated by constant multiples
of x^(-delta-1)*(1+log(x)^r), with delta>0 and finite r; these are integrable.
Thus the remainder is holomorphic there, and analytic uniqueness extends the
identity from Re(s)>1 to Re(s)>0, s!=1. For residue zero, use a=1 and the exact
upstream hurwitzZeta_zero identity. These analytic steps identify the intended
objects but are NOT a Lean implementation of SourceComparison.

For a character modulo N we use the EXACT upstream finite Hurwitz decomposition.
The residue zero uses the positive representative a=1, not the singular a=0.
On the n-th off-line core, sigma>=1/(n+1) and |s|<=n. Triangle inequality,
|chi(j)|<=1 and |N^(-s)|<=1 give the deliberately coarse uniform budget

  E(N,n,M) = N*n*(n+1)*M^(-1/(n+1)).

The integer cutoff M=(N*n*(n+1)*2^k+1)^(n+1) makes this STRICTLY less than
2^(-k). This is an explicit finite approximation-accuracy choice for EVERY
positive modulus, EVERY character and EVERY core. It is not a zero-free bound:
one still has to establish a strict inverse-residual test on covering cells.

FORMAL SOURCE BOUNDARY: the improper-integral estimates and integer-cutoff
algebra are proved below. The classical Euler identity has NOT been connected
to Mathlib's theta-integral definition of hurwitzZeta in this increment.
`SourceComparison` names that exact outstanding equality; it is a parameter,
never an axiom or a fabricated proof. The source-specific theorems expose it.
It contains no RH, GRH, reciprocal, lower bound or zero-free premise. The finite
model and its error estimates do not depend on this comparison. Mathematical
use of DLMF's identity and formal acceptance of that source comparison remain
separate. No claim that all-core strict certificates have been supplied.

Primary argument: a bounded Mellin tail, finite linearity and integer powers.
No theorem-level novelty claimed. AI-assisted formalization. Compilation,
fresh kernel checking, transitive axiom audit, independent review: NOT_RUN.
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; repository source inspected at
7bc6fe38019589284aa5b2d12833c7cae4cecfa4. No dependency/root changes.
-/

set_option autoImplicit false
noncomputable section
open Set Metric
open scoped BigOperators

namespace GRWTSK.NumberTheory.Conditional.EulerApproximation

open GRWTSK.Analysis.MellinRemainder

/-- The bounded periodic kernel, with the shift retained. -/
def fractionalKernel (a x : ℝ) : ℂ :=
  ((x - a - (Int.floor (x - a) : ℝ) : ℝ) : ℂ)

theorem fractionalKernel_norm_le (a x : ℝ) : ‖fractionalKernel a x‖ ≤ 1 := by
  have hlow := Int.floor_le (x - a)
  have hhigh := Int.lt_floor_add_one (x - a)
  have hnonneg : 0 ≤ x - a - (Int.floor (x - a) : ℝ) := by linarith
  simpa only [fractionalKernel, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg hnonneg] using
    (show x - a - (Int.floor (x - a) : ℝ) ≤ 1 by linarith)

/-- M+1 summands: the terminal term at M+a must not be dropped. -/
def hurwitzApprox (a : ℝ) (M : ℕ) (s : ℂ) : ℂ :=
  (∑ j ∈ Finset.range (M + 1), ((j : ℂ) + a) ^ (-s)) +
    ((M : ℂ) + a) ^ (1 - s) / (s - 1)

/-- An explicitly represented function, not a redefinition of hurwitzZeta. -/
def hurwitzModel (a : ℝ) (M : ℕ) (s : ℂ) : ℂ :=
  hurwitzApprox a M s - s * tail (fractionalKernel a) ((M : ℝ) + a) s

theorem hurwitz_model_error {a α T : ℝ} {M : ℕ} {s : ℂ}
    (ha : 0 ≤ a) (hM : 1 ≤ M) (hα : 0 < α)
    (hσ : α ≤ s.re) (hT : ‖s‖ ≤ T) :
    ‖hurwitzModel a M s - hurwitzApprox a M s‖ ≤
      (T / α) * (M : ℝ) ^ (-α) := by
  have hMreal : (1 : ℝ) ≤ M := by exact_mod_cast hM
  have hMpos : (0 : ℝ) < M := zero_lt_one.trans_le hMreal
  have hTnonneg : 0 ≤ T := (norm_nonneg s).trans hT
  have hbase : (1 : ℝ) ≤ (M : ℝ) + a := by linarith
  have ht := scaled_tail_uniform (b := fractionalKernel a) hbase
    (B := 1) zero_le_one hα hσ hT
    (fun x _ => fractionalKernel_norm_le a x)
  have hp : ((M : ℝ) + a) ^ (-α) ≤ (M : ℝ) ^ (-α) :=
    Real.rpow_le_rpow_of_nonpos hMpos (by linarith) (neg_nonpos.mpr hα.le)
  calc
    ‖hurwitzModel a M s - hurwitzApprox a M s‖ =
        ‖s * tail (fractionalKernel a) ((M : ℝ) + a) s‖ := by
      have heq : hurwitzModel a M s - hurwitzApprox a M s =
          -(s * tail (fractionalKernel a) ((M : ℝ) + a) s) := by
        unfold hurwitzModel
        ring
      rw [heq, norm_neg]
    _ ≤ (T / α) * ((M : ℝ) + a) ^ (-α) := by simpa only [mul_one] using ht
    _ ≤ (T / α) * (M : ℝ) ^ (-α) :=
      mul_le_mul_of_nonneg_left hp (div_nonneg hTnonneg hα.le)

/-- Positive representative of a residue; residue zero corresponds to Hurwitz a=1. -/
def positiveShift {N : ℕ} [NeZero N] (j : ZMod N) : ℝ :=
  if j.val = 0 then 1 else (j.val : ℝ) / N

theorem positiveShift_pos {N : ℕ} [NeZero N] (j : ZMod N) :
    0 < positiveShift j := by
  unfold positiveShift
  split_ifs with h
  · exact zero_lt_one
  · exact div_pos (Nat.cast_pos.mpr (Nat.pos_of_ne_zero h))
      (Nat.cast_pos.mpr (NeZero.pos N))

theorem positiveShift_le_one {N : ℕ} [NeZero N] (j : ZMod N) :
    positiveShift j ≤ 1 := by
  unfold positiveShift
  split_ifs with h
  · exact le_refl _
  · apply (div_le_one (Nat.cast_pos.mpr (NeZero.pos N))).mpr
    exact_mod_cast (ZMod.val_lt j).le

/-- Literal finite expression, with no evaluation of an L-function inverse. -/
def dirichletApprox {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N)
    (M : ℕ) (s : ℂ) : ℂ :=
  (N : ℂ) ^ (-s) * ∑ j : ZMod N, χ j * hurwitzApprox (positiveShift j) M s

def dirichletModel {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N)
    (M : ℕ) (s : ℂ) : ℂ :=
  (N : ℂ) ^ (-s) * ∑ j : ZMod N, χ j * hurwitzModel (positiveShift j) M s

/-- Exact source-comparison obligations; no proof of these fields is asserted here. -/
structure SourceComparison : Prop where
  hurwitz : ∀ (N : ℕ) [NeZero N] (j : ZMod N) (M : ℕ), 1 ≤ M →
    ∀ s : ℂ, 0 < s.re → s ≠ 1 →
      HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s =
        hurwitzModel (positiveShift j) M s
  zeta_first : ∀ s : ℂ, 0 < s.re → s ≠ 1 →
    riemannZeta s = firstEuler (fractionalKernel 1) s

theorem dirichlet_source_eq (comparison : SourceComparison)
    {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N) {M : ℕ}
    (hM : 1 ≤ M) {s : ℂ} (hs : 0 < s.re) (hp : s ≠ 1) :
    χ.LFunction s = dirichletModel χ M s := by
  change (N : ℂ) ^ (-s) *
      (∑ j : ZMod N, χ j * HurwitzZeta.hurwitzZeta (ZMod.toAddCircle j) s) = _
  unfold dirichletModel
  congr 1
  apply Finset.sum_congr rfl
  intro j hj
  rw [comparison.hurwitz N j M hM s hs hp]

/-- Uniform in the character; all N residues are retained in the error estimate. -/
theorem dirichlet_model_error {N : ℕ} [NeZero N] (χ : DirichletCharacter ℂ N)
    {M : ℕ} {α T : ℝ} {s : ℂ} (hM : 1 ≤ M)
    (hα : 0 < α) (hσ : α ≤ s.re) (hT : ‖s‖ ≤ T) :
    ‖dirichletModel χ M s - dirichletApprox χ M s‖ ≤
      (N : ℝ) * (T / α) * (M : ℝ) ^ (-α) := by
  have hTnonneg : 0 ≤ T := (norm_nonneg s).trans hT
  have hNreal : (1 : ℝ) ≤ N := by
    exact_mod_cast (Nat.one_le_iff_ne_zero.mpr (NeZero.ne N))
  have hfactor : ‖(N : ℂ) ^ (-s)‖ ≤ 1 := by
    rw [← Complex.ofReal_natCast,
      Complex.norm_cpow_eq_rpow_re_of_pos (zero_lt_one.trans_le hNreal)]
    simp only [Complex.neg_re]
    exact Real.rpow_le_one_of_one_le_of_nonpos hNreal (by linarith)
  let E : ℝ := (T / α) * (M : ℝ) ^ (-α)
  have hE : 0 ≤ E := by dsimp [E]; positivity
  have heach (j : ZMod N) :
      ‖χ j * (hurwitzModel (positiveShift j) M s -
        hurwitzApprox (positiveShift j) M s)‖ ≤ E := by
    rw [norm_mul]
    calc
      ‖χ j‖ * ‖hurwitzModel (positiveShift j) M s -
          hurwitzApprox (positiveShift j) M s‖ ≤ 1 * E :=
        mul_le_mul (χ.norm_le_one j)
          (hurwitz_model_error (positiveShift_pos j).le hM hα hσ hT)
          (norm_nonneg _) zero_le_one
      _ = E := one_mul _
  have identity : dirichletModel χ M s - dirichletApprox χ M s =
      (N : ℂ) ^ (-s) * ∑ j : ZMod N,
        χ j * (hurwitzModel (positiveShift j) M s -
          hurwitzApprox (positiveShift j) M s) := by
    simp only [dirichletModel, dirichletApprox, mul_sub, Finset.sum_sub_distrib]
  rw [identity, norm_mul]
  calc
    ‖(N : ℂ) ^ (-s)‖ * ‖∑ j : ZMod N,
        χ j * (hurwitzModel (positiveShift j) M s -
          hurwitzApprox (positiveShift j) M s)‖ ≤
      1 * (∑ j : ZMod N, E) := by
        apply mul_le_mul hfactor _ (norm_nonneg _) zero_le_one
        exact (norm_sum_le _ _).trans (Finset.sum_le_sum (fun j _ => heach j))
    _ = (N : ℝ) * (T / α) * (M : ℝ) ^ (-α) := by
      simp [E, ZMod.card, mul_assoc]

/-- A rationally controlled majorant, deliberately independent of character values. -/
def coreBudget (N n M : ℕ) : ℝ :=
  (N : ℝ) * n * ((n : ℝ) + 1) * (M : ℝ) ^ (-coreGap n)

/-- Explicit cutoff: accuracy is constructible without a nonvanishing premise. -/
def cutoff (N n k : ℕ) : ℕ := (N * n * (n + 1) * 2 ^ k + 1) ^ (n + 1)

theorem cutoff_pos (N n k : ℕ) : 0 < cutoff N n k := by
  unfold cutoff
  positivity

lemma power_neg_gap (B n : ℕ) :
    ((B ^ (n + 1) : ℕ) : ℝ) ^ (-coreGap n) = (B : ℝ)⁻¹ := by
  rw [Nat.cast_pow, ← Real.rpow_natCast, ← Real.rpow_mul (Nat.cast_nonneg B)]
  have hden : (n : ℝ) + 1 ≠ 0 := by positivity
  have exponent : ((n + 1 : ℕ) : ℝ) * (-coreGap n) = -1 := by
    simp only [coreGap, Nat.cast_add, Nat.cast_one]
    field_simp <;> ring
  rw [exponent, Real.rpow_neg_one]

/-- Strict dyadic accuracy holds at the concrete integer cutoff, not just eventually. -/
theorem cutoff_budget_lt (N n k : ℕ) :
    coreBudget N n (cutoff N n k) < 1 / (2 : ℝ) ^ k := by
  have htwo : 0 < (2 : ℝ) ^ k := by positivity
  let C : ℝ := (N : ℝ) * n * ((n : ℝ) + 1)
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hden : 0 < C * (2 : ℝ) ^ k + 1 := by positivity
  have identity : coreBudget N n (cutoff N n k) =
      C / (C * (2 : ℝ) ^ k + 1) := by
    unfold coreBudget cutoff
    rw [power_neg_gap]
    push_cast
    simp only [C, div_eq_mul_inv]
  rw [identity]
  apply (div_lt_div_iff₀ hden htwo).mpr
  nlinarith

/-- The approximation theorem covers all points of the specified core, not a sample mesh. -/
theorem dirichlet_core_error (comparison : SourceComparison)
    (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (n M : ℕ)
    (hM : 1 ≤ M) {s : ℂ} (hs : s ∈ offCore n) :
    ‖χ.LFunction s - dirichletApprox χ M s‖ ≤ coreBudget N n M := by
  have hdomain := offCore_subset n hs
  have hnorm : ‖s‖ ≤ (n : ℝ) := by
    simpa only [Metric.mem_closedBall, dist_zero_right] using hs.1
  rw [dirichlet_source_eq comparison χ hM hdomain.1 (strip_ne_one hdomain.2.1)]
  have h := dirichlet_model_error χ hM (coreGap_pos n) hs.2.1 hnorm
  simpa only [coreBudget, coreGap, div_div, div_one, one_div, div_inv_eq_mul, mul_assoc] using h

/-- The full modulus and character binders occur in the theorem itself. -/
theorem all_characters_dyadic_error (comparison : SourceComparison)
    (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (n k : ℕ)
    {s : ℂ} (hs : s ∈ offCore n) :
    ‖χ.LFunction s - dirichletApprox χ (cutoff N n k) s‖ < 1 / (2 : ℝ) ^ k :=
  (dirichlet_core_error comparison N χ n _
    (Nat.succ_le_of_lt (cutoff_pos N n k)) hs).trans_lt (cutoff_budget_lt N n k)

/-- Right-strip cores are included in the off-line core at the same index. -/
theorem rightCore_subset_offCore (n : ℕ) : rightCore n ⊆ offCore n := by
  intro s hs
  have hg := coreGap_pos n
  refine ⟨hs.1, ?_, hs.2.2, ?_⟩
  · linarith [hs.2.1]
  · rw [abs_of_nonneg (by linarith [hs.2.1] : 0 ≤ s.re - (1 / 2 : ℝ))]
    linarith [hs.2.1]

/-- Zeta is the actual modulus-one L-function, not a surrogate function. -/
theorem zeta_core_dyadic_error (comparison : SourceComparison) (n k : ℕ)
    {s : ℂ} (hs : s ∈ rightCore n) :
    ‖riemannZeta s - dirichletApprox (1 : DirichletCharacter ℂ 1)
      (cutoff 1 n k) s‖ < 1 / (2 : ℝ) ^ k := by
  simpa only [DirichletCharacter.LFunction_modOne_eq] using
    all_characters_dyadic_error comparison 1 (1 : DirichletCharacter ℂ 1) n k
      (rightCore_subset_offCore n hs)

end GRWTSK.NumberTheory.Conditional.EulerApproximation
