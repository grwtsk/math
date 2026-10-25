# CNF_sorted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "617745775dbff2cc60f740d5cab1a64bb40b2e1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:488ae5bb-f52b-83f6-a1a6-2cd99a24ce2f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62c002c6-345b-e0a7-816f-e6f624a87343",
  "kind": "theorem",
  "lexical_name": "CNF_sorted",
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
  "slug": "cnf-sorted--3f1d507a43a7f649a941f74f",
  "source": {
    "blob": "617745775dbff2cc60f740d5cab1a64bb40b2e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f1d507a43a7f649a941f74f82eb3397fdae0dd80394fa94ffff079cb55cd11d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62c002c6-345b-e0a7-816f-e6f624a87343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CNF_sorted (b o : Ordinal) : ((CNF b o).map Prod.fst).Sorted (· > ·) := by
  refine CNFRec b ?_ (fun o ho IH ↦ ?_) o
  · rw [CNF_zero]
    exact sorted_nil
  · rcases le_or_lt b 1 with hb | hb
    · rw [CNF_of_le_one hb ho]
      exact sorted_singleton _
    · obtain hob | hbo := lt_or_le o b
      · rw [CNF_of_lt ho hob]
        exact sorted_singleton _
      · rw [CNF_ne_zero ho, map_cons, sorted_cons]
        refine ⟨fun a H ↦ ?_, IH⟩
        rw [mem_map] at H
        rcases H with ⟨⟨a, a'⟩, H, rfl⟩
        exact (CNF_fst_le_log H).trans_lt (log_mod_opow_log_lt_log_self hb hbo)

end Ordinal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant099faa7164ef6644d3f43f142d7c5a9d5c7b3cd11d16df8cfe081279ec875d56.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `617745775dbff2cc60f740d5cab1a64bb40b2e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
