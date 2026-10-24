# IsUnit.of_mul_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6508defd-406c-17a3-cbdb-235177e29d2a",
  "kind": "theorem",
  "lexical_name": "IsUnit.of_mul_eq_one",
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
  "slug": "isunit-of-mul-eq-one--e9e636bdc0767dd877adbe4c",
  "source": {
    "blob": "20db8400f68e2ae2f7051a5dee38dde33454b795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 400,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant2e475f85bb1bfafbf357431432e0082d4c6376ec52169d694e303c75aa9a5a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9e636bdc0767dd877adbe4c56d3ac5c2549830946be78a429cff038132a9f94",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant2e475f85bb1bfafbf357431432e0082d4c6376ec52169d694e303c75aa9a5a12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6508defd-406c-17a3-cbdb-235177e29d2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUnit.of_mul_eq_one [Monoid M] [IsDedekindFiniteMonoid M] {a : M} (b : M) (h : a * b = 1) :
    IsUnit a :=
  ⟨.mkOfMulEqOne a b h, rfl⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant2e475f85bb1bfafbf357431432e0082d4c6376ec52169d694e303c75aa9a5a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant2e475f85bb1bfafbf357431432e0082d4c6376ec52169d694e303c75aa9a5a12.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20db8400f68e2ae2f7051a5dee38dde33454b795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
