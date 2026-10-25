# boundary_le_boundary_sup_sup_boundary_inf_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ace2bc241fcd01d465032c7e0c30a77dba600617",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a025d3f4c9605e77d3cdfa4b25ae022be99d208580898a147c02b38c9e26ea11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a73d00a-008e-a8a5-e206-c018c1c2f8f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8459d238-357b-878b-42d1-c6d7b3b03789",
  "kind": "theorem",
  "lexical_name": "boundary_le_boundary_sup_sup_boundary_inf_left",
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
  "slug": "boundary-le-boundary-sup-sup-boundary-inf-left--1b19a9731666e19afa00bc36",
  "source": {
    "blob": "ace2bc241fcd01d465032c7e0c30a77dba600617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Varianta025d3f4c9605e77d3cdfa4b25ae022be99d208580898a147c02b38c9e26ea11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b19a9731666e19afa00bc36db5f4dca3e56364c297579dc2954b7558ae36532",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Varianta025d3f4c9605e77d3cdfa4b25ae022be99d208580898a147c02b38c9e26ea11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8459d238-357b-878b-42d1-c6d7b3b03789`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_le_boundary_sup_sup_boundary_inf_left : ∂ a ≤ ∂ (a ⊔ b) ⊔ ∂ (a ⊓ b) := by
  simp only [boundary, sup_inf_left, sup_inf_right, sup_right_idem, le_inf_iff, sup_assoc,
    sup_comm _ a]
  refine ⟨⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩, ?_, ?_⟩ <;> try { exact le_sup_of_le_left inf_le_left } <;>
    refine inf_le_of_right_le ?_
  · rw [hnot_le_iff_codisjoint_right, codisjoint_left_comm]
    exact codisjoint_hnot_left
  · refine le_sup_of_le_right ?_
    rw [hnot_le_iff_codisjoint_right]
    exact codisjoint_hnot_right.mono_right (hnot_anti inf_le_left)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Varianta025d3f4c9605e77d3cdfa4b25ae022be99d208580898a147c02b38c9e26ea11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Varianta025d3f4c9605e77d3cdfa4b25ae022be99d208580898a147c02b38c9e26ea11.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace2bc241fcd01d465032c7e0c30a77dba600617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
