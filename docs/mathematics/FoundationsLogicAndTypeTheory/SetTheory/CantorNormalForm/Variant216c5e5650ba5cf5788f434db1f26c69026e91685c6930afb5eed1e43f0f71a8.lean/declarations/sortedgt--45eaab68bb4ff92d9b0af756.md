# sortedGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f94eb798f7e5c846dfcf66dbb9beed4796241382",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ebc9502-fad3-9c40-3603-6af2492d8e17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d1131b8-5f2b-c15c-081d-926c360df743",
  "kind": "theorem",
  "lexical_name": "sortedGT",
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
  "slug": "sortedgt--45eaab68bb4ff92d9b0af756",
  "source": {
    "blob": "f94eb798f7e5c846dfcf66dbb9beed4796241382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45eaab68bb4ff92d9b0af756fdf51f7072cdf2acace42de7cb2ade23bb77ec67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d1131b8-5f2b-c15c-081d-926c360df743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem sortedGT (b o : Ordinal) : ((CNF b o).map Prod.fst).SortedGT := by
  simp_rw [sortedGT_iff_pairwise]
  refine CNF.rec b ?_ (fun o ho IH ↦ ?_) o
  · rw [zero_right]
    exact .nil
  · rcases le_or_gt b 1 with hb | hb
    · rw [CNF.of_le_one hb ho]
      exact pairwise_singleton _ _
    · obtain hob | hbo := lt_or_ge o b
      · rw [CNF.of_lt ho hob]
        exact pairwise_singleton _ _
      · rw [CNF.ne_zero ho, map_cons, pairwise_cons]
        refine ⟨fun a H ↦ ?_, IH⟩
        rw [mem_map] at H
        rcases H with ⟨⟨a, a'⟩, H, rfl⟩
        exact (fst_le_log H).trans_lt (log_mod_opow_log_lt_log_self hb hbo)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant216c5e5650ba5cf5788f434db1f26c69026e91685c6930afb5eed1e43f0f71a8.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f94eb798f7e5c846dfcf66dbb9beed4796241382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
