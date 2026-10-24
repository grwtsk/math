# Complete source: GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.Characters.FiniteCharacterAndArithmeticInterfaces.Variant200984f72047f72f.FiniteCharacterCoordinatesAndRegularAverage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e9ae6e3b5aa1b38a8e38f114df6c24ca8b67980` · SHA-256 `e4c71f464dab43138c2de0ffb3f36c8d65fa6f31934f8121de0f46184435dc38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FiniteCharacterCoordinatesAndRegularAverage - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 200984f72047f72f8dfa683a2d7b37ceaf5d3bdbb2343ef7cd2adeb147c9c461
Organized SHA-256: 817106477681689250de01e5b15a004d934845775b24fe9a90d3b2e2914ca124
PMD: 510.1.090.010.030 characters (editorial navigation only).
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

abbrev CharacterIndex (chi : PrimitiveDirichletCharacter) :=
  (ZMod chi.conductor)ˣ

noncomputable instance characterIndexFintype
    (chi : PrimitiveDirichletCharacter) : Fintype (CharacterIndex chi) :=
  Fintype.ofFinite _

abbrev CharacterHilbert (chi : PrimitiveDirichletCharacter) :=
  Hilbert.FiniteHilbert (CharacterIndex chi)

/-- The right-regular action matrix, with
`(R_g f)(x) = f(xg)`. -/
def rightRegularMatrix
    (chi : PrimitiveDirichletCharacter)
    (g : CharacterIndex chi) :
    Matrix (CharacterIndex chi) (CharacterIndex chi) ℂ :=
  fun x y ↦ if y = x * g then 1 else 0

@[simp]
theorem rightRegularMatrix_apply
    (chi : PrimitiveDirichletCharacter)
    (g x y : CharacterIndex chi) :
    rightRegularMatrix chi g x y = if y = x * g then 1 else 0 :=
  rfl

/-- The exact regular-representation average
`|G_q|⁻¹ ∑_g conj(χ(g)) R_g`. -/
def characterRegularAverageMatrix
    (chi : PrimitiveDirichletCharacter) :
    Matrix (CharacterIndex chi) (CharacterIndex chi) ℂ :=
  (((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) •
    ∑ g : CharacterIndex chi,
      conj (chi.character g) • rightRegularMatrix chi g

namespace PrimitiveDirichletCharacter

end PrimitiveDirichletCharacter

end DAF.Arithmetic
```
