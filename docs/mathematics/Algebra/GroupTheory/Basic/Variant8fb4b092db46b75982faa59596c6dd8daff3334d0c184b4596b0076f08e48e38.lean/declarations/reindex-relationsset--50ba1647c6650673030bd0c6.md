# reindex_relationsSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9750f70a-2185-f4dc-3c14-3ebbaaa77dc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:886b2205-94e5-afb8-fe95-f11e09541f3c",
  "kind": "theorem",
  "lexical_name": "reindex_relationsSet",
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
  "slug": "reindex-relationsset--50ba1647c6650673030bd0c6",
  "source": {
    "blob": "235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 114,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50ba1647c6650673030bd0c69e14af085cab33776d4af28d29943b41f4598b62",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:886b2205-94e5-afb8-fe95-f11e09541f3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reindex_relationsSet :
    (M.reindex e).relationsSet =
    FreeGroup.freeGroupCongr e '' M.relationsSet := let M' := M.reindex e; calc
  Set.range (uncurry M'.relation)
  _ = Set.range (uncurry M'.relation ∘ Prod.map e e) := by simp [Set.range_comp]
  _ = Set.range (FreeGroup.freeGroupCongr e ∘ uncurry M.relation) := by
      apply congrArg Set.range
      ext ⟨i, i'⟩
      simp [relation, reindex_apply, M']
  _ = _ := by simp [Set.range_comp, relationsSet]

/-- The isomorphism between the Coxeter group associated to the reindexed matrix `M.reindex e` and
the Coxeter group associated to `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8fb4b092db46b75982faa59596c6dd8daff3334d0c184b4596b0076f08e48e38.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235e643ecdd0817ebd5e4e90dfd2ec7618a83fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
