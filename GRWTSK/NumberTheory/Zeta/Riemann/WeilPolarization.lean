/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimit

set_option autoImplicit false

/-!
# Pointwise Weil polarization with the same stage family

The two historical convergence records are separate packages, not strictly different
convergence strengths at their exact all-vector Hermitian scope. This leaf supplies
the explicit converse and both record round trips. No automatic coercion is installed.
The four diagonal inputs lie in the same complex submodule. Positivity is not needed
for polarization, and no finite sample set replaces the all-vector quantifier.

The quantitative bound is pointwise in the two fixed test vectors. It constructs no
arithmetic Gram family, zeta criterion, uniform error, operator topology, or RH proof.
All declarations here are source proof scripts pending exact-head elaboration/replay.
-/

noncomputable section

namespace GRWTSK.RiemannHypothesis

open Filter
open scoped Topology

namespace WeilPolarization

/-- Conjugate-linearity in the FIRST argument fixes the minus sign before I. -/
def combine (a b c d : ℝ) : ℂ :=
  (((a : ℂ) - (b : ℂ)) - Complex.I * ((c : ℂ) - (d : ℂ))) / 4

/-- Algebraic reconstruction for a sesquilinear map with real diagonal.
Realness is an actual identity, not an omitted imaginary component. -/
theorem of_real_diagonal
    {V : Type*} [AddCommGroup V] [Module ℂ V]
    (B : V → V → ℂ) (q : V → ℝ)
    (haddL : ∀ x y z, B (x + y) z = B x z + B y z)
    (hsmulL : ∀ c x y, B (c • x) y = star c * B x y)
    (haddR : ∀ x y z, B x (y + z) = B x y + B x z)
    (hsmulR : ∀ c x y, B x (c • y) = c * B x y)
    (hdiag : ∀ x, (q x : ℂ) = B x x) (f g : V) :
    B f g = combine (q (f + g)) (q (f - g))
      (q (f + Complex.I • g)) (q (f - Complex.I • g)) := by
  have hnegL (x y : V) : B (-x) y = -B x y := by
    simpa only [neg_one_smul, star_neg, star_one, neg_mul, one_mul] using
      hsmulL (-1) x y
  have hnegR (x y : V) : B x (-y) = -B x y := by
    simpa only [neg_one_smul, neg_mul, one_mul] using hsmulR (-1) x y
  have hI : star Complex.I = -Complex.I := by simp
  unfold combine
  rw [hdiag, hdiag, hdiag, hdiag]
  apply (eq_div_iff (by norm_num : (4 : ℂ) ≠ 0)).mpr
  simp only [sub_eq_add_neg, haddL, haddR, hnegL, hnegR, hsmulL, hsmulR, hI]
  ring_nf <;> simp only [Complex.I_sq] <;> ring

/-- The same four-term formula respects subtraction, retaining all error channels. -/
theorem combine_sub (a b c d a' b' c' d' : ℝ) :
    combine a b c d - combine a' b' c' d' =
      combine (a - a') (b - b') (c - c') (d - d') := by
  unfold combine
  push_cast
  ring

/-- An absolute bound for the four diagonal errors; no cancellation is assumed. -/
theorem norm_combine_le (a b c d : ℝ) :
    ‖combine a b c d‖ ≤ (|a| + |b| + |c| + |d|) / 4 := by
  have hab := norm_sub_le (a : ℂ) (b : ℂ)
  have hcd := norm_sub_le (c : ℂ) (d : ℂ)
  have hnum := norm_sub_le ((a : ℂ) - (b : ℂ))
    (Complex.I * ((c : ℂ) - (d : ℂ)))
  rw [norm_mul, Complex.norm_I, one_mul] at hnum
  have hbound :
      ‖((a : ℂ) - (b : ℂ)) - Complex.I * ((c : ℂ) - (d : ℂ))‖ ≤
        |a| + |b| + |c| + |d| := by
    simpa only [Complex.norm_real, Real.norm_eq_abs, add_assoc] using
      hnum.trans (add_le_add hab hcd)
  unfold combine
  rw [norm_div]
  have hfour : ‖(4 : ℂ)‖ = (4 : ℝ) := by norm_num
  rw [hfour]
  exact div_le_div_of_nonneg_right hbound (by norm_num)

end WeilPolarization

namespace WeilHermitianForm

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T}

/-- The stored diagonal is the entire complex diagonal, not merely its real part. -/
theorem ofReal_diagonal (form : WeilHermitianForm space) (f : space.Vector) :
    (form.diagonal f : ℂ) = form.toFun f f := by
  apply Complex.ext
  · rfl
  · exact (form.diagonal_im_zero f).symm

/-- Exact polarization for the independently specified target form. -/
theorem polarization (form : WeilHermitianForm space) (f g : space.Vector) :
    form.toFun f g = WeilPolarization.combine
      (form.diagonal (f + g)) (form.diagonal (f - g))
      (form.diagonal (f + Complex.I • g)) (form.diagonal (f - Complex.I • g)) :=
  WeilPolarization.of_real_diagonal form.toFun form.diagonal
    form.map_add_left form.map_smul_left form.map_add_right form.map_smul_right
    form.ofReal_diagonal f g

end WeilHermitianForm

namespace PositiveGramFamily

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T} {H : ℕ → Type*}
variable [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]

/-- The SAME linear stage map supplies all four diagonal inputs. -/
theorem gram_polarization (family : PositiveGramFamily space H)
    (n : ℕ) (f g : space.Vector) :
    family.gram n f g = WeilPolarization.combine
      (family.diagonal n (f + g)) (family.diagonal n (f - g))
      (family.diagonal n (f + Complex.I • g))
      (family.diagonal n (f - Complex.I • g)) := by
  apply WeilPolarization.of_real_diagonal (family.gram n) (family.diagonal n)
  · intro x y z
    simp only [gram, map_add, inner_add_left]
  · intro c x y
    simp only [gram, map_smul, inner_smul_left, starRingEnd_apply]
  · intro x y z
    simp only [gram, map_add, inner_add_right]
  · intro c x y
    simp only [gram, map_smul, inner_smul_right]
  · intro x
    simpa only [diagonal, gram, RCLike.re_to_complex,
      RCLike.ofReal_eq_complex_ofReal] using
      (inner_self_ofReal_re (𝕜 := ℂ) (family.map n x))

end PositiveGramFamily

namespace DiagonalPositiveGramLimit

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T} {form : WeilHermitianForm space} {H : ℕ → Type*}
variable [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]

/-- Every fixed pair uses only four convergent diagonals. The original universal
vector quantifier supplies these diagonals without a uniform-in-vector premise. -/
theorem tendsto_polarized (limit : DiagonalPositiveGramLimit form H)
    (f g : space.Vector) :
    Tendsto (fun n => limit.family.gram n f g) atTop (𝓝 (form.toFun f g)) := by
  have hcast (v : space.Vector) :
      Tendsto (fun n => (limit.family.diagonal n v : ℂ)) atTop
        (𝓝 (form.diagonal v : ℂ)) := (limit.tendsto_diagonal v).ofReal
  have h : Tendsto (fun n => WeilPolarization.combine
      (limit.family.diagonal n (f + g)) (limit.family.diagonal n (f - g))
      (limit.family.diagonal n (f + Complex.I • g))
      (limit.family.diagonal n (f - Complex.I • g))) atTop
      (𝓝 (WeilPolarization.combine
        (form.diagonal (f + g)) (form.diagonal (f - g))
        (form.diagonal (f + Complex.I • g)) (form.diagonal (f - Complex.I • g)))) :=
    (((hcast (f + g)).sub (hcast (f - g))).sub
      (((hcast (f + Complex.I • g)).sub (hcast (f - Complex.I • g))).const_mul
        Complex.I)).div_const (4 : ℂ)
  simpa only [← PositiveGramFamily.gram_polarization,
    ← WeilHermitianForm.polarization] using h

/-- Explicit record conversion: no new family, source, comparison ID or criterion. -/
def toPolarized (limit : DiagonalPositiveGramLimit form H) :
    PolarizedPositiveGramLimit form H where
  family := limit.family
  comparisonId := limit.comparisonId
  form_revision_eq := limit.form_revision_eq
  form_normalization_eq := limit.form_normalization_eq
  tendsto_polarized := limit.tendsto_polarized

@[simp] theorem toPolarized_family (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.family = limit.family := rfl

@[simp] theorem toPolarized_comparisonId (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.comparisonId = limit.comparisonId := rfl

/-- Proof fields are propositions; the actual family and identifiers round-trip. -/
@[simp] theorem toPolarized_toDiagonal (limit : DiagonalPositiveGramLimit form H) :
    limit.toPolarized.toDiagonal = limit := by
  cases limit
  rfl

end DiagonalPositiveGramLimit

namespace PolarizedPositiveGramLimit

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T} {form : WeilHermitianForm space} {H : ℕ → Type*}
variable [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]

@[simp] theorem toDiagonal_toPolarized (limit : PolarizedPositiveGramLimit form H) :
    limit.toDiagonal.toPolarized = limit := by
  cases limit
  rfl

end PolarizedPositiveGramLimit

namespace WeilPolarization

/-- Equivalence of the exact pointwise records, not an operator-convergence upgrade. -/
def limitEquiv
    {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} (form : WeilHermitianForm space) (H : ℕ → Type*)
    [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)] :
    DiagonalPositiveGramLimit form H ≃ PolarizedPositiveGramLimit form H where
  toFun := DiagonalPositiveGramLimit.toPolarized
  invFun := PolarizedPositiveGramLimit.toDiagonal
  left_inv := DiagonalPositiveGramLimit.toPolarized_toDiagonal
  right_inv := PolarizedPositiveGramLimit.toDiagonal_toPolarized

end WeilPolarization

namespace DiagonalErrorBound

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T} {form : WeilHermitianForm space} {H : ℕ → Type*}
variable [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]

/-- The four actual diagonal errors, retaining their vectors and stage index. -/
def polarizedError (bound : DiagonalErrorBound form H) (n : ℕ)
    (f g : space.Vector) : ℝ :=
  (bound.error n (f + g) + bound.error n (f - g) +
    bound.error n (f + Complex.I • g) + bound.error n (f - Complex.I • g)) / 4

theorem polarizedError_nonnegative (bound : DiagonalErrorBound form H)
    (n : ℕ) (f g : space.Vector) : 0 ≤ bound.polarizedError n f g :=
  div_nonneg (add_nonneg (add_nonneg (add_nonneg
    (bound.error_nonnegative n (f + g)) (bound.error_nonnegative n (f - g)))
    (bound.error_nonnegative n (f + Complex.I • g)))
    (bound.error_nonnegative n (f - Complex.I • g))) (by norm_num)

/-- A complete complex residual estimate derived from the same diagonal comparison. -/
theorem polarized_comparison (bound : DiagonalErrorBound form H)
    (n : ℕ) (f g : space.Vector) :
    ‖form.toFun f g - bound.family.gram n f g‖ ≤ bound.polarizedError n f g := by
  rw [form.polarization f g, bound.family.gram_polarization n f g,
    WeilPolarization.combine_sub]
  apply (WeilPolarization.norm_combine_le _ _ _ _).trans
  exact div_le_div_of_nonneg_right (add_le_add (add_le_add (add_le_add
    (bound.comparison n (f + g)) (bound.comparison n (f - g)))
    (bound.comparison n (f + Complex.I • g)))
    (bound.comparison n (f - Complex.I • g))) (by norm_num)

/-- The majorant tends to zero for each fixed pair, with no supremum over vectors. -/
theorem polarizedError_tendsto_zero (bound : DiagonalErrorBound form H)
    (f g : space.Vector) :
    Tendsto (fun n => bound.polarizedError n f g) atTop (𝓝 0) := by
  simpa only [polarizedError, add_zero, zero_div] using
    ((((bound.error_tendsto_zero (f + g)).add
      (bound.error_tendsto_zero (f - g))).add
      (bound.error_tendsto_zero (f + Complex.I • g))).add
      (bound.error_tendsto_zero (f - Complex.I • g))).div_const (4 : ℝ)

/-- The historical error-to-diagonal map followed by the explicit converse. -/
def toPolarized (bound : DiagonalErrorBound form H) :
    PolarizedPositiveGramLimit form H := bound.toLimit.toPolarized

@[simp] theorem toPolarized_family (bound : DiagonalErrorBound form H) :
    bound.toPolarized.family = bound.family := rfl

end DiagonalErrorBound

end GRWTSK.RiemannHypothesis
