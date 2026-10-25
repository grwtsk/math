# CNF_sorted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ce02e0b9ead4504882a213bc32a023afb0ba288",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39e15a96-d594-4ca1-4ed9-a717967cb6cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa95efa8-ad03-477c-b26b-4d93690aae4d",
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
  "slug": "cnf-sorted--ae0034d0ecf1282aacfc9908",
  "source": {
    "blob": "0ce02e0b9ead4504882a213bc32a023afb0ba288",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae0034d0ecf1282aacfc99080054bd503f7b12406eed36001009216cbbcc15e8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa95efa8-ad03-477c-b26b-4d93690aae4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CNF_sorted (b o : Ordinal) : ((CNF b o).map Prod.fst).Sorted (· > ·) := by
  refine' CNFRec b _ (fun o ho IH ↦ _) o
  · simp only [CNF_zero]
  · cases' le_or_lt b 1 with hb hb
    · simp only [CNF_of_le_one hb ho, map]
    · cases' lt_or_le o b with hob hbo
      · simp only [CNF_of_lt ho hob, map]
      · rw [CNF_ne_zero ho, map_cons, sorted_cons]
        refine' ⟨fun a H ↦ _, IH⟩
        rw [mem_map] at H
        rcases H with ⟨⟨a, a'⟩, H, rfl⟩
        exact (CNF_fst_le_log H).trans_lt (log_mod_opow_log_lt_log_self hb ho hbo)
set_option linter.uppercaseLean3 false in
#align ordinal.CNF_sorted Ordinal.CNF_sorted

end Ordinal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CantorNormalForm/Variant4c08d2b6623afcb438ad5776caec10f237073defad9a91a4155c864f621716bb.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ce02e0b9ead4504882a213bc32a023afb0ba288` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
