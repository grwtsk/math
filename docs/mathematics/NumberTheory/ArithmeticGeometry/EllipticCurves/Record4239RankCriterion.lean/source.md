# Complete source: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239RankCriterion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9927da14fd9caf04f7a833f35cc0761490887504` · SHA-256 `00b228127f62e42a12fd25cd9c8708fa5d0f04f21b1b68839bb4cbffad9e61d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Original elliptic-curve record and points: Noam D. Elkies,
Zev Klagsbrun, Samuel Li, ICARM #4239, submitted 2026-10-15.
Quadratic-character 2-descent: John Cremona and Armand Brumer.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
The arguments below are conditional theorems. In particular, the
homomorphisms "characters" are *hypotheses*, not constructions.
No rank >= 32 theorem about the real record curve is asserted.
-/
import GRWTSK.LinearAlgebra.ModTwoIndependenceDescent
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239FiniteCharacterMatrix

/-!
# ICARM record #4239: exact character-to-independence criterion

The finite matrix and its left inverse were introduced in
Record4239FiniteCharacterMatrix.lean. A source-faithful supplier must
construct a genuine family of 32 additive characters on the Mathlib
point group of the nonsingular rational elliptic curve. The
characters must have the 1024 actual evaluations recorded in the
finite source matrix; equality of arbitrarily chosen bit tables
alone does NOT construct these group homomorphisms.

The theorem below discharges the entire *group-theoretic* passage
from the exact matrix inverse and such characters to Z-independence.
Its remaining hypotheses are named, not silently inferred:
  - noTwoTorsion: doubling has trivial kernel on the real point group;
  - characterValues: actual additive character homomorphisms
    evaluate on the 32 actual points as the finite source matrix.

Binding the actual point group, 32 coordinates, true local
Cremona-Brumer character maps, and the negation fixed-point
obstruction in PR #1051 remains the next open construction.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

open GRWTSK.LinearAlgebra.ModTwoIndependenceDescent

/-- A source-faithful, conditional proof that exact rank-32 character
data forces integral linear independence. Nothing in this statement
constructs its group, its points, or its homomorphisms. -/
theorem linearIndependent_of_characterValues
    {G : Type*} [AddCommGroup G]
    (points : Fin 32 → G)
    (characters : Fin 32 → G →+ ZMod 2)
    (noTwoTorsion : ∀ x : G, (2 : ℤ) • x = 0 → x = 0)
    (characterValues : ∀ i j : Fin 32,
      characters i (points j) = characterMatrix i j) :
    LinearIndependent ℤ points := by
  classical
  apply linearIndependent_of_even_relations points noTwoTorsion
  intro c hc i
  let coeff : Fin 32 → ZMod 2 := fun j => (c j : ZMod 2)
  have hzero : characterMatrix.mulVec coeff = 0 := by
    funext j
    have hchar : characters j (∑ k, c k • points k) = 0 := by
      rw [hc]
      exact map_zero _
    simp only [map_sum, map_zsmul, zsmul_eq_mul, characterValues] at hchar
    simpa only [Matrix.mulVec_apply_eq_sum, coeff, mul_comm, Pi.zero_apply] using hchar
  have hcoeff : coeff = 0 := by
    apply characterMatrix_mulVec_injective
    simpa using hzero
  have hi := congrArg (fun f : Fin 32 → ZMod 2 => f i) hcoeff
  exact (ZMod.intCast_zmod_eq_zero_iff_dvd (c i) 2).mp (by
    simpa [coeff] using hi)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
```
