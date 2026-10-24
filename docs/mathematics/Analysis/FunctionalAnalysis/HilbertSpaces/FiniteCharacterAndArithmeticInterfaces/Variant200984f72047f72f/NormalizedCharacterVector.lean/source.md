# Complete source: GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.NormalizedCharacterVector

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1317b37a014a659f23663a41c763213285c77439` · SHA-256 `d3596d2e40b9bfb9efa02d015e3586cb7a8d9c11b24eb01334aaa08b9271ff9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
NormalizedCharacterVector - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 200984f72047f72f8dfa683a2d7b37ceaf5d3bdbb2343ef7cd2adeb147c9c461
Organized SHA-256: 817106477681689250de01e5b15a004d934845775b24fe9a90d3b2e2914ca124
PMD: 510.5.050.040 hilbert spaces (editorial navigation only).
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

/-- Exact normalization scalar `1 / √|G_q|`. -/
def characterNormalization (chi : PrimitiveDirichletCharacter) : ℝ :=
  1 / Real.sqrt (Fintype.card (CharacterIndex chi))

theorem characterIndex_card_pos (chi : PrimitiveDirichletCharacter) :
    0 < Fintype.card (CharacterIndex chi) :=
  Fintype.card_pos

theorem characterNormalization_nonnegative
    (chi : PrimitiveDirichletCharacter) :
    0 ≤ chi.characterNormalization := by
  exact div_nonneg zero_le_one (Real.sqrt_nonneg _)

theorem characterNormalization_sq
    (chi : PrimitiveDirichletCharacter) :
    chi.characterNormalization ^ 2 =
      1 / Fintype.card (CharacterIndex chi) := by
  have card_nonnegative :
      (0 : ℝ) ≤ Fintype.card (CharacterIndex chi) := by positivity
  rw [characterNormalization, div_pow, one_pow,
    Real.sq_sqrt card_nonnegative]

/-- Normalized character-value vector on the unit group. -/
def characterVector (chi : PrimitiveDirichletCharacter) :
    CharacterHilbert chi :=
  WithLp.toLp 2 fun unit ↦
    ((chi.characterNormalization : ℝ) : ℂ) * chi.character unit

@[simp]
theorem characterVector_apply
    (chi : PrimitiveDirichletCharacter)
    (unit : CharacterIndex chi) :
    chi.characterVector unit =
      ((chi.characterNormalization : ℝ) : ℂ) * chi.character unit :=
  rfl

/-- The normalized character vector has exact squared norm one. -/
theorem characterVector_norm_sq (chi : PrimitiveDirichletCharacter) :
    ‖chi.characterVector‖ ^ 2 = 1 := by
  rw [EuclideanSpace.norm_sq_eq]
  simp_rw [characterVector_apply, norm_mul, Complex.norm_real,
    Real.norm_eq_abs, abs_of_nonneg chi.characterNormalization_nonnegative,
    chi.character.unit_norm_eq_one, mul_one]
  rw [Finset.sum_const, Finset.card_univ, nsmul_eq_mul,
    chi.characterNormalization_sq]
  have card_ne_zero :
      (Fintype.card (CharacterIndex chi) : ℝ) ≠ 0 := by
    exact_mod_cast ne_of_gt chi.characterIndex_card_pos
  field_simp

/-- The normalized character vector has norm one. -/
theorem characterVector_norm (chi : PrimitiveDirichletCharacter) :
    ‖chi.characterVector‖ = 1 := by
  have square := chi.characterVector_norm_sq
  nlinarith [norm_nonneg chi.characterVector]

end PrimitiveDirichletCharacter

end DAF.Arithmetic
```
