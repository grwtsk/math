# Complete source: GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.OrthogonalProjections.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.OrthogonalCharacterProjector

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3db1c06485b240ba7f6cceadba441518726200e4` · SHA-256 `496e84529c26486160365aead45e59075c034b448e7139ab1a5e82aef344d34d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
OrthogonalCharacterProjector - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 200984f72047f72f8dfa683a2d7b37ceaf5d3bdbb2343ef7cd2adeb147c9c461
Organized SHA-256: 817106477681689250de01e5b15a004d934845775b24fe9a90d3b2e2914ca124
PMD: 510.5.050.040.020 orthogonal projections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Exact finite character coordinates and regular average, exact cardinality-normalized character vector, and the complete orthogonal rank-one projector construction and three-field public package. All primitive-character/positive-cardinality premises and original finite Hilbert providers remain unchanged. No infinite-dimensional spectral projector, numerical approximation or analytic promotion is inferred. All original namespace and control blocks are copied unchanged. Only listed same-source public companion imports are added; original imported providers remain literal and unreplayed.
-/

import DAF.Arithmetic.DirichletCharacterProfile
import DAF.Hilbert.Finite
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.Dual
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.Characters.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.FiniteCharacterCoordinatesAndRegularAverage
import GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.NormalizedCharacterVector

/-!
# Exact finite character projector

For a primitive Dirichlet character, its values on `(ZMod q)ˣ` form a
unit vector after exact cardinality normalization.  The associated rank-one
operator is the orthogonal projector onto the character channel.  This is an
exact finite construction, not a numerical approximation to a spectral
projector.
-/

noncomputable section

namespace DAF.Arithmetic

open scoped BigOperators
open scoped ComplexConjugate
open Complex

namespace PrimitiveDirichletCharacter

/-- Unitarity turns the conjugate value at `x⁻¹y` into the matrix
coefficient `χ(x) conj(χ(y))`. -/
theorem conj_character_inv_mul
    (chi : PrimitiveDirichletCharacter)
    (x y : CharacterIndex chi) :
    conj (chi.character (x⁻¹ * y)) =
      chi.character x * conj (chi.character y) := by
  simp only [map_mul]
  have mapInv :
      chi.character (↑(x⁻¹) : ZMod chi.conductor) =
        (chi.character (↑x : ZMod chi.conductor))⁻¹ := by
    simpa only [MulChar.coe_equivToUnitHom, Units.val_inv_eq_inv_val] using
      congrArg Units.val ((MulChar.equivToUnitHom chi.character).map_inv x)
  rw [mapInv]
  rw [Complex.inv_eq_conj (chi.character.unit_norm_eq_one x)]
  simp

/-- Entry formula for the regular average. -/
theorem characterRegularAverageMatrix_apply
    (chi : PrimitiveDirichletCharacter)
    (x y : CharacterIndex chi) :
    characterRegularAverageMatrix chi x y =
      (((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) *
        (chi.character x * conj (chi.character y)) := by
  classical
  unfold characterRegularAverageMatrix
  simp only [Matrix.smul_apply, Matrix.sum_apply, rightRegularMatrix_apply,
    smul_eq_mul]
  rw [Finset.sum_eq_single (x⁻¹ * y)]
  · rw [if_pos]
    · simp only [mul_one]
      exact congrArg
        (((((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) * ·))
        (chi.conj_character_inv_mul x y)
    · simp
  · intro g _ different
    rw [if_neg]
    · simp
    · intro equality
      apply different
      calc
        g = x⁻¹ * (x * g) := by simp
        _ = x⁻¹ * y := by rw [equality]
  · simp

/-- The regular average is exactly the outer-product matrix of the normalized
character vector. -/
theorem characterRegularAverageMatrix_eq_outer
    (chi : PrimitiveDirichletCharacter) :
    characterRegularAverageMatrix chi =
      Matrix.vecMulVec chi.characterVector (star chi.characterVector) := by
  classical
  ext x y
  rw [characterRegularAverageMatrix_apply]
  simp only [Matrix.vecMulVec_apply, characterVector_apply, Pi.star_apply,
    map_mul, Complex.star_def]
  have normalizationReal :
      conj (chi.characterNormalization : ℂ) =
        (chi.characterNormalization : ℂ) := by simp
  rw [normalizationReal]
  have normalizationProduct :
      (chi.characterNormalization : ℂ) *
          (chi.characterNormalization : ℂ) =
        (((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) := by
    exact_mod_cast (by
      simpa [pow_two, one_div] using chi.characterNormalization_sq)
  rw [← normalizationProduct]
  ring

/-- The orthogonal rank-one projector onto the character channel. -/
def characterProjector (chi : PrimitiveDirichletCharacter) :
    CharacterHilbert chi →L[ℂ] CharacterHilbert chi :=
  InnerProductSpace.rankOne ℂ chi.characterVector chi.characterVector

/-- The rank-one channel projector is the required right-regular
representation average. -/
theorem characterProjector_eq_regularAverage
    (chi : PrimitiveDirichletCharacter) :
    chi.characterProjector =
      (Matrix.toEuclideanCLM
        (n := CharacterIndex chi) (𝕜 := ℂ))
        (characterRegularAverageMatrix chi) := by
  have matrixIdentity :
      Matrix.toEuclideanLin.symm chi.characterProjector.toLinearMap =
        Matrix.vecMulVec chi.characterVector (star chi.characterVector) := by
    exact InnerProductSpace.symm_toEuclideanLin_rankOne
      chi.characterVector chi.characterVector
  have linearIdentity := congrArg Matrix.toEuclideanLin matrixIdentity
  rw [LinearEquiv.apply_symm_apply] at linearIdentity
  rw [characterRegularAverageMatrix_eq_outer]
  exact ContinuousLinearMap.coe_injective linearIdentity

/-- The character projector is idempotent. -/
theorem characterProjector_idempotent (chi : PrimitiveDirichletCharacter) :
    IsIdempotentElem chi.characterProjector :=
  InnerProductSpace.isIdempotentElem_rankOne_self chi.characterVector_norm

/-- The character projector equals its Hilbert adjoint. -/
theorem characterProjector_selfAdjoint (chi : PrimitiveDirichletCharacter) :
    chi.characterProjector.adjoint = chi.characterProjector := by
  simp [characterProjector]

/-- Combined orthogonal-projection law. -/
theorem characterProjector_orthogonal (chi : PrimitiveDirichletCharacter) :
    IsStarProjection chi.characterProjector :=
  InnerProductSpace.isStarProjection_rankOne_self chi.characterVector_norm

end PrimitiveDirichletCharacter

/-- Public proof-carrying projector package used by finite runtimes. -/
structure CharacterProjector (chi : PrimitiveDirichletCharacter) where
  op : CharacterHilbert chi →L[ℂ] CharacterHilbert chi
  idempotent : IsIdempotentElem op
  selfAdjoint : op.adjoint = op

def canonicalCharacterProjector
    (chi : PrimitiveDirichletCharacter) : CharacterProjector chi where
  op := chi.characterProjector
  idempotent := chi.characterProjector_idempotent
  selfAdjoint := chi.characterProjector_selfAdjoint

end DAF.Arithmetic
```
