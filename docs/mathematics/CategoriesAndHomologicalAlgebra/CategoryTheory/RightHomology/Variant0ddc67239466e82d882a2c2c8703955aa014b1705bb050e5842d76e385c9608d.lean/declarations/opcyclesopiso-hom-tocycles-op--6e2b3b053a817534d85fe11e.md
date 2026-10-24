# opcyclesOpIso_hom_toCycles_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0189cfb6236cfa1f436490338f4297f7d6cd5bf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 971,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0ddc67239466e82d882a2c2c8703955aa014b1705bb050e5842d76e385c9608d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0c2071a-87aa-9f00-c3ab-4ba7c37c38e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d9883fa-be23-9c6c-514c-d8370e4af6f1",
  "kind": "lemma",
  "lexical_name": "opcyclesOpIso_hom_toCycles_op",
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
  "slug": "opcyclesopiso-hom-tocycles-op--6e2b3b053a817534d85fe11e",
  "source": {
    "blob": "0189cfb6236cfa1f436490338f4297f7d6cd5bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 978,
    "line": 971,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant0ddc67239466e82d882a2c2c8703955aa014b1705bb050e5842d76e385c9608d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e2b3b053a817534d85fe11e1f2338967182e2b335e92408fef2317a555e385a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant0ddc67239466e82d882a2c2c8703955aa014b1705bb050e5842d76e385c9608d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d9883fa-be23-9c6c-514c-d8370e4af6f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 971–978.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opcyclesOpIso_hom_toCycles_op [S.HasLeftHomology] :
    S.opcyclesOpIso.hom ≫ S.toCycles.op = S.op.fromOpcycles := by
  dsimp [opcyclesOpIso, toCycles]
  rw [← cancel_epi S.op.pOpcycles, p_fromOpcycles,
    RightHomologyData.pOpcycles_comp_opcyclesIso_hom_assoc,
    LeftHomologyData.op_p, ← op_comp, LeftHomologyData.f'_i, op_g]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant0ddc67239466e82d882a2c2c8703955aa014b1705bb050e5842d76e385c9608d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant0ddc67239466e82d882a2c2c8703955aa014b1705bb050e5842d76e385c9608d.lean#L971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0189cfb6236cfa1f436490338f4297f7d6cd5bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
