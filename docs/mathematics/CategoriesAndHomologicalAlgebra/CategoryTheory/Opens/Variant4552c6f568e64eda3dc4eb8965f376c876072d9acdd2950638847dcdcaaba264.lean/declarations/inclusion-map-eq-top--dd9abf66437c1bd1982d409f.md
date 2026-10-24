# inclusion'_map_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb3c5f7df494eff18e1f8dcc020a181fecc01e1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 374,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e4bad4f-83da-356d-b664-84f7f3e43567",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aff14584-d3b3-d612-9db4-e702810fd28e",
  "kind": "theorem",
  "lexical_name": "inclusion'_map_eq_top",
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
  "slug": "inclusion-map-eq-top--dd9abf66437c1bd1982d409f",
  "source": {
    "blob": "eb3c5f7df494eff18e1f8dcc020a181fecc01e1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 374,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd9abf66437c1bd1982d409f17b412a7d943d7e2d72f0b009a03856fe37c03c8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aff14584-d3b3-d612-9db4-e702810fd28e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inclusion'_map_eq_top {X : TopCat} (U : Opens X) : (Opens.map U.inclusion').obj U = ⊤ := by
  ext1
  exact Subtype.coe_preimage_self _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opens/Variant4552c6f568e64eda3dc4eb8965f376c876072d9acdd2950638847dcdcaaba264.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb3c5f7df494eff18e1f8dcc020a181fecc01e1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
