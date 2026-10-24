# isOpen_iff_isUpperSet_and_dirSupInaccOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e70ba6638b52955640391a74b81ec8d17a97e53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bbd8f0a9-08ee-8177-654c-69733eb61596",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e875551c-3033-f00c-d955-d484d7380d50",
  "kind": "lemma",
  "lexical_name": "isOpen_iff_isUpperSet_and_dirSupInaccOn",
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
  "slug": "isopen-iff-isupperset-and-dirsupinaccon--b6118f4b1266971421acc1a2",
  "source": {
    "blob": "0e70ba6638b52955640391a74b81ec8d17a97e53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6118f4b1266971421acc1a27f3b2a6c1931b887372a2b6acdd5e7b83c1e7632",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e875551c-3033-f00c-d955-d484d7380d50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_iff_isUpperSet_and_dirSupInaccOn [IsScott α D] :
    IsOpen s ↔ IsUpperSet s ∧ DirSupInaccOn D s := by
  rw [isOpen_iff_isUpperSet_and_scottHausdorff_open (D := D)]
  refine and_congr_right fun h ↦
    ⟨@IsScottHausdorff.dirSupInaccOn_of_isOpen _ _ _ (scottHausdorff α D) _ _,
      fun h' d d₀ d₁ d₂ _ d₃ ha ↦ ?_⟩
  obtain ⟨b, hbd, hbu⟩ := h' d₀ d₁ d₂ d₃ ha
  exact ⟨b, hbd, Subset.trans inter_subset_left (h.Ici_subset hbu)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScottTopology/Variant8968fda935475a08df824834e8ad0907a33f5f03729c58136b7825e9bafc005d.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e70ba6638b52955640391a74b81ec8d17a97e53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
