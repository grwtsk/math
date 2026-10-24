# roots_C_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c394a85828a95d774f8f4de42c8c6b79a4029b05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5eb10fe105ae021fed9b536df6e4df270c9c5834c66088934a8d739e82d34e7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4b58508-2147-c175-2d58-53ea6341d563",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:753797d1-0e08-f9d0-5c99-dc7e36521dba",
  "kind": "theorem",
  "lexical_name": "roots_C_mul",
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
  "slug": "roots-c-mul--1ce435c0a609bae8afc666d2",
  "source": {
    "blob": "c394a85828a95d774f8f4de42c8c6b79a4029b05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 187,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant5eb10fe105ae021fed9b536df6e4df270c9c5834c66088934a8d739e82d34e7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ce435c0a609bae8afc666d23cf089fc28bc20c4cc3d652aa58db9e45eb2481e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Roots/Variant5eb10fe105ae021fed9b536df6e4df270c9c5834c66088934a8d739e82d34e7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:753797d1-0e08-f9d0-5c99-dc7e36521dba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roots_C_mul (p : R[X]) (ha : a ≠ 0) : (C a * p).roots = p.roots := by
  by_cases hp : p = 0 <;>
    simp only [roots_mul, *, Ne, mul_eq_zero, C_eq_zero, or_self_iff, not_false_iff, roots_C,
      zero_add, mul_zero]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Roots/Variant5eb10fe105ae021fed9b536df6e4df270c9c5834c66088934a8d739e82d34e7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant5eb10fe105ae021fed9b536df6e4df270c9c5834c66088934a8d739e82d34e7c.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c394a85828a95d774f8f4de42c8c6b79a4029b05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
