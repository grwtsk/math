# union_indep_iff_indep_of_subset_coloops

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcf7e9059d809d4e63a545cea5365fcaf9c4bd9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 725,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36975822730ffbf6337a02f97719336c4b902dc316deb0c3a700db2df400b4f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a931fb74-318f-472a-7833-e8d52113bf23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a47c34fc-3961-2510-6808-7be0fa5f04a7",
  "kind": "lemma",
  "lexical_name": "union_indep_iff_indep_of_subset_coloops",
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
  "slug": "union-indep-iff-indep-of-subset-coloops--6e8498825eec48c02e98894d",
  "source": {
    "blob": "fcf7e9059d809d4e63a545cea5365fcaf9c4bd9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 725,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant36975822730ffbf6337a02f97719336c4b902dc316deb0c3a700db2df400b4f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e8498825eec48c02e98894d10033ca25a0e1efc7a4d48994ff429189009ac80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant36975822730ffbf6337a02f97719336c4b902dc316deb0c3a700db2df400b4f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a47c34fc-3961-2510-6808-7be0fa5f04a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 725–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma union_indep_iff_indep_of_subset_coloops (hK : K ⊆ M.coloops) :
    M.Indep (I ∪ K) ↔ M.Indep I := by
  refine ⟨fun h ↦ h.subset subset_union_left, fun h ↦ ?_⟩
  obtain ⟨B, hB, hIB⟩ := h.exists_isBase_superset
  exact hB.indep.subset (union_subset hIB (hK.trans fun e he ↦ IsColoop.mem_of_isBase he hB))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant36975822730ffbf6337a02f97719336c4b902dc316deb0c3a700db2df400b4f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant36975822730ffbf6337a02f97719336c4b902dc316deb0c3a700db2df400b4f0.lean#L725).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf7e9059d809d4e63a545cea5365fcaf9c4bd9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
