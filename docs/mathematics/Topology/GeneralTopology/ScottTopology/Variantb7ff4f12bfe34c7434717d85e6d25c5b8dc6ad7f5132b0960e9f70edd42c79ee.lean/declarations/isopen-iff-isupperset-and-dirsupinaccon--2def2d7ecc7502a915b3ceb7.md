# isOpen_iff_isUpperSet_and_dirSupInaccOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a6d170ab3f18670812898173cd0806c7ad333ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03d9bf55-a722-2ebe-1c91-8db7c7a95e67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42c7775b-4a26-60b5-8f6a-56924cfd9127",
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
  "slug": "isopen-iff-isupperset-and-dirsupinaccon--2def2d7ecc7502a915b3ceb7",
  "source": {
    "blob": "4a6d170ab3f18670812898173cd0806c7ad333ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2def2d7ecc7502a915b3ceb7fb403c1e9428ef1d33c56993f7dee8d409b3fdeb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42c7775b-4a26-60b5-8f6a-56924cfd9127`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_iff_isUpperSet_and_dirSupInaccOn [IsScott α D] :
    IsOpen s ↔ IsUpperSet s ∧ DirSupInaccOn D s := by
  rw [isOpen_iff_isUpperSet_and_scottHausdorff_open (D := D)]
  refine and_congr_right fun h ↦
    ⟨IsScottHausdorff.dirSupInaccOn_of_isOpen (t := scottHausdorff α D),
      fun h' d d₀ d₁ d₂ _ d₃ ha ↦ ?_⟩
  obtain ⟨b, hbd, hbu⟩ := h' d₀ d₁ d₂ d₃ ha
  exact ⟨b, hbd, Subset.trans inter_subset_left (h.Ici_subset hbu)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScottTopology/Variantb7ff4f12bfe34c7434717d85e6d25c5b8dc6ad7f5132b0960e9f70edd42c79ee.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6d170ab3f18670812898173cd0806c7ad333ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
