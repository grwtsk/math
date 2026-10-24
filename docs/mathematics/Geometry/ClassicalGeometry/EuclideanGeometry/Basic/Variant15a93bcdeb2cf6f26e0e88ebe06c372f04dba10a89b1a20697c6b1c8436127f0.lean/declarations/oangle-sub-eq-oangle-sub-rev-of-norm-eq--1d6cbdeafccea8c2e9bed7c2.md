# oangle_sub_eq_oangle_sub_rev_of_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bc0d9634945618886a128bea12d94846765271a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 493,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/15a93bcdeb2cf6f26e0e88ebe06c372f04dba10a89b1a20697c6b1c8436127f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec47254c-6a54-c29a-2035-fb88b6f0f37b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b5db131-3069-4c37-af79-c53999be236e",
  "kind": "theorem",
  "lexical_name": "oangle_sub_eq_oangle_sub_rev_of_norm_eq",
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
  "slug": "oangle-sub-eq-oangle-sub-rev-of-norm-eq--1d6cbdeafccea8c2e9bed7c2",
  "source": {
    "blob": "7bc0d9634945618886a128bea12d94846765271a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 493,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant15a93bcdeb2cf6f26e0e88ebe06c372f04dba10a89b1a20697c6b1c8436127f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d6cbdeafccea8c2e9bed7c278bf2fae27ec5469038db223cf0646f5c55f1868",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant15a93bcdeb2cf6f26e0e88ebe06c372f04dba10a89b1a20697c6b1c8436127f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b5db131-3069-4c37-af79-c53999be236e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_sub_eq_oangle_sub_rev_of_norm_eq {x y : V} (h : ‖x‖ = ‖y‖) :
    o.oangle x (x - y) = o.oangle (y - x) y := by simp [oangle, h]

/-- The angle at the apex of an isosceles triangle is `π` minus twice a base angle, oriented
vector angle form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant15a93bcdeb2cf6f26e0e88ebe06c372f04dba10a89b1a20697c6b1c8436127f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant15a93bcdeb2cf6f26e0e88ebe06c372f04dba10a89b1a20697c6b1c8436127f0.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bc0d9634945618886a128bea12d94846765271a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
