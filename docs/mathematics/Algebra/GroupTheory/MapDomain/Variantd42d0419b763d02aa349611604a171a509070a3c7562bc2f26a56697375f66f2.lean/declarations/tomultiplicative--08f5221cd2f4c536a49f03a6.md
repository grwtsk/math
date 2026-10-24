# toMultiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:872d8ad8031c2819104b35a36720c8862cf0fe627a00c92df747bc26c726e567",
  "kind": "def",
  "lexical_name": "toMultiplicative",
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
  "slug": "tomultiplicative--08f5221cd2f4c536a49f03a6",
  "source": {
    "blob": "faf6cfb353a298df796c5c685cf9d8e9b3aa34a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 481,
    "path": "GRWTSK/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08f5221cd2f4c536a49f03a6b5d08a1cb81f91c6fade4fcb052620cc114278b9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:872d8ad8031c2819104b35a36720c8862cf0fe627a00c92df747bc26c726e567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toMultiplicative : AddMonoidAlgebra R M ≃+* MonoidAlgebra R (Multiplicative M) where
  toFun x := .ofCoeff <| x.coeff.mapDomain .ofAdd
  invFun x := .ofCoeff <| x.coeff.mapDomain Multiplicative.toAdd
  left_inv x := by ext; simp
  right_inv x := by ext; simp
  map_add' x y := by simp [Finsupp.mapDomain_add]
  map_mul' x y := by
    classical
    ext
    simp [MonoidAlgebra.coeff_mul, coeff_mul, sum_mapDomain_index, add_mul, mul_add, ite_add_zero,
      Multiplicative.ext_iff]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MapDomain/Variantd42d0419b763d02aa349611604a171a509070a3c7562bc2f26a56697375f66f2.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faf6cfb353a298df796c5c685cf9d8e9b3aa34a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
