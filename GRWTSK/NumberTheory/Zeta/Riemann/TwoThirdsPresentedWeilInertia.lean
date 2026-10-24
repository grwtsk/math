/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical reference:
Levent Alpöge and Ralph Furman (2026),
"More than two thirds of the zeta zeros are simple and on the critical line",
arXiv:2608.13637, Section 3, inertia under Hermitian pullback.
Independent upstream Lean formalization: Claude (Anthropic), Apache-2.0,
anthropics/formal-math@e1a4e6508154ea59f030480661590a9fe3018011,
zeta23/Zeta23/LinAlg/Inertia.lean,
RHLinalg.posIndex_conj_le, blob 0d1de40376288d80e4938f69d81479c62835bf16.
This is an independent conditional real-source specialization, not
an import of the Anthropic formalization or proof of zeta-zero density.
-/

import GRWTSK.NumberTheory.Zeta.Riemann.WeilCriterion
import GRWTSK.Algebra.LinearAlgebra.TwoThirdsCongruenceInertia
import Mathlib.Tactic

/-!
# An exact presented signed form and an actual typed Weil consumer

If Q = Cᵀ J C for the existing GRWTSK sign-mask fundamental
symmetry J, an independent rectangular compression B satisfies

  Bᵀ Q B = (C B)ᵀ J (C B).

C and B need not commute or be invertible. Consequently, every
subspace on which Bᵀ Q B is strictly positive has real dimension
at most the number of positive directions of the sign mask.

The Weil-facing theorem uses the ACTUAL typed
`GRWTSK.RiemannHypothesis.WeilHermitianForm.diagonal` rather than
renaming a Gram quadratic form "Weil". Its `realize` map,
whole-error comparison, and strict positivity margin are genuine
explicit hypotheses still to be provided by the analytic source.

A representation Q = Cᵀ J C is also a HYPOTHESIS/FINITE PRESENTATION,
not a theorem that an arbitrary Hermitian Weil form admits such a
presentation. This module neither computes general complex spectral
positive indices nor proves a two-thirds zero-density bound, an
explicit-formula identity, a finite-compression limit, or RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.TwoThirdsPresentedWeilInertia

open scoped BigOperators
open GRWTSK.Algebra.LinearAlgebra.TwoThirdsCongruenceInertia
open GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge
open Matrix

variable {ι ν κ : Type*}
variable [Fintype ι] [Fintype ν] [Fintype κ] [DecidableEq ι]

/-- A real symmetric form with an explicit signed-congruence
presentation: Q = Cᵀ J C. This is a *witnessed class of forms*,
not the full set of real or complex Hermitian forms. -/
def presentedSymmetricMatrix
    (mask : ι → Bool) (C : Matrix ι ν ℝ) :
    Matrix ν ν ℝ :=
  compressedSignedMatrix mask C

/-- Apply another, arbitrary real compression B after the
presentation C. No commuting assumption is made. -/
def compressPresentedMatrix
    (mask : ι → Bool) (C : Matrix ι ν ℝ)
    (B : Matrix ν κ ℝ) : Matrix κ κ ℝ :=
  Bᵀ * presentedSymmetricMatrix mask C * B

/-- Signed congruences compose exactly:
Bᵀ(CᵀJC)B=(CB)ᵀJ(CB), without requiring any
invertibility, self-adjointness, or commutation of B and C. -/
theorem compressPresentedMatrix_eq
    (mask : ι → Bool) (C : Matrix ι ν ℝ)
    (B : Matrix ν κ ℝ) :
    compressPresentedMatrix mask C B =
      compressedSignedMatrix mask (C * B) := by
  simp only [compressPresentedMatrix, presentedSymmetricMatrix,
    compressedSignedMatrix, Matrix.transpose_mul, Matrix.mul_assoc]

/-- The quadratic form of the *independent two-stage matrix*
agrees with the existing signed Hodge energy after both maps.
This is the exact algebraic identity required by subsequent
source comparisons. -/
theorem compressPresentedMatrix_quadratic
    (mask : ι → Bool) (C : Matrix ι ν ℝ)
    (B : Matrix ν κ ℝ) (x : κ → ℝ) :
    x ⬝ᵥ (compressPresentedMatrix mask C B *ᵥ x) =
      signedEnergy mask (C *ᵥ (B *ᵥ x)) := by
  rw [compressPresentedMatrix_eq,
    compressedSignedMatrix_quadratic]
  rw [Matrix.mulVec_mulVec]

/-- Generalized real congruence-transferred inertia bound, with
an *explicit* signed presentation Q=CᵀJC and arbitrary B.

The positively-definite subspace W is quantified explicitly.
No simultaneous diagonalization of B and Q is assumed. -/
theorem positive_subspace_finrank_le_of_presentation
    (mask : ι → Bool) (C : Matrix ι ν ℝ)
    (B : Matrix ν κ ℝ)
    (W : Submodule ℝ (κ → ℝ))
    (hpositive :
      ∀ x : κ → ℝ, x ∈ W → x ≠ 0 →
        0 < x ⬝ᵥ (compressPresentedMatrix mask C B *ᵥ x)) :
    Module.finrank ℝ W ≤
      Fintype.card (PositiveCoordinates mask) := by
  apply compressedSignedMatrix_positive_subspace_finrank_le_mask
    mask (C * B) W
  intro x hx hxne
  rw [← compressPresentedMatrix_eq]
  exact hpositive x hx hxne

/-- An independent source quadratic form may be compared with the
presented matrix only with the FULL, pointwise comparison error
and an error-strictly-smaller-than-source margin on the entire
candidate positive subspace. -/
theorem source_positive_subspace_finrank_le_of_presentation
    (mask : ι → Bool) (C : Matrix ι ν ℝ)
    (B : Matrix ν κ ℝ)
    (source error : (κ → ℝ) → ℝ)
    (hcomparison :
      ∀ x : κ → ℝ,
        |source x -
          x ⬝ᵥ (compressPresentedMatrix mask C B *ᵥ x)| ≤ error x)
    (W : Submodule ℝ (κ → ℝ))
    (hmargin : ∀ x : κ → ℝ, x ∈ W → x ≠ 0 →
        error x < source x) :
    Module.finrank ℝ W ≤
      Fintype.card (PositiveCoordinates mask) := by
  apply positive_subspace_finrank_le_of_presentation mask C B W
  intro x hx hxne
  have hupper := (abs_le.mp (hcomparison x)).2
  have hstrict := hmargin x hx hxne
  linarith

/-! ## The exact declared Weil form is the source, not the model -/

universe u

/-- An auditable finite real-coefficient comparison of the actual
WeilHermitianForm diagonal on an admitted test class to one explicit
signed congruence matrix.

The `realize` function gives vectors from finite coordinates in the
same exact `space.Vector` used by `form`. It is NOT built here from a
Weil explicit formula. The hypothesis `comparison` must be supplied
over ALL real coordinate vectors; the form is not defined to equal the
matrix. A spectral or arithmetic proof must eventually provide this
certificate with all normalization, transform, and truncation data.

No injectivity, isometry or cohomological equivalence of `realize`
is inferred. Such assumptions, if needed for a later density result,
must be supplied independently. -/
structure PresentedWeilComparison
    {T : Type u} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T}
    (form : WeilHermitianForm space)
    (ι ν κ : Type*) [Fintype ι] [Fintype ν] [Fintype κ]
    [DecidableEq ι] where
  mask : ι → Bool
  presentation : Matrix ι ν ℝ
  compression : Matrix ν κ ℝ
  realize : (κ → ℝ) → space.Vector
  error : (κ → ℝ) → ℝ
  comparison : ∀ x : κ → ℝ,
    |form.diagonal (realize x) -
      x ⬝ᵥ (compressPresentedMatrix mask presentation compression *ᵥ x)| ≤
      error x

/-- Strongest bounded Weil-facing result: a positive subspace of
the actual typed Weil-form diagonal has finite dimension at most
the original number of positive sign directions, PROVIDED the
true Weil diagonal is compared to the presented matrix on every
coordinate vector and its strict margin beats the entire error.

This does NOT construct such a certificate, prove the Weil
criterion or infer any global zeta-zero counting inequality. -/
theorem weil_positive_subspace_finrank_le_of_strict_margin
    {T : Type u} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space}
    (P : PresentedWeilComparison form ι ν κ)
    (W : Submodule ℝ (κ → ℝ))
    (hmargin : ∀ x : κ → ℝ, x ∈ W → x ≠ 0 →
      P.error x < form.diagonal (P.realize x)) :
    Module.finrank ℝ W ≤ Fintype.card (PositiveCoordinates P.mask) := by
  apply positive_subspace_finrank_le_of_presentation
    P.mask P.presentation P.compression W
  intro x hx hxne
  have hupper := (abs_le.mp (P.comparison x)).2
  have hstrict := hmargin x hx hxne
  linarith

end GRWTSK.RiemannHypothesis.TwoThirdsPresentedWeilInertia
