# isScalarTower_restriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:237673449bfeea92e985e06a999caa996349708dcb1be122c9b2d3dae293a4d5",
  "kind": "def",
  "lexical_name": "isScalarTower_restriction",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "isscalartower-restriction--a394b52da6d180839b80fc38",
  "source": {
    "blob": "93ff994a1cb4e44c774e1307bec09c3627c9bb82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 107,
    "path": "GRWTSK/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a394b52da6d180839b80fc38f55805335223fccaeff552a7c865579cd89504a4",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:237673449bfeea92e985e06a999caa996349708dcb1be122c9b2d3dae293a4d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isScalarTower_restriction {A : Type*} [CommRing A] [Algebra R A] [Algebra A S]
    [IsScalarTower R A S] (hinj : Function.Injective (algebraMap A S)) (f : AlgebraNorm R S) :
    AlgebraNorm R A where
  toFun x     := f (algebraMap A S x)
  map_zero'   := by simp only [map_zero]
  add_le' x y := by simp only [map_add, map_add_le_add]
  neg' x      := by simp only [map_neg, map_neg_eq_map]
  mul_le' x y := by simp only [map_mul, map_mul_le_mul]
  eq_zero_of_map_eq_zero' x hx := by
    rw [← map_eq_zero_iff (algebraMap A S) hinj]
    exact eq_zero_of_map_eq_zero f hx
  smul' r x := by
    simp only [Algebra.smul_def, map_mul, ← IsScalarTower.algebraMap_apply]
    simp only [← smul_eq_mul, algebraMap_smul, map_smul_eq_mul]

end AlgebraNorm

/-- A multiplicative algebra norm on an `R`-algebra norm `S` is a multiplicative ring norm on `S`
  compatible with the action of `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraNorm/Variantca189056210a2d4690f98f9c331a85677270141cbc13894c6cedbd441d1721b9.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93ff994a1cb4e44c774e1307bec09c3627c9bb82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
