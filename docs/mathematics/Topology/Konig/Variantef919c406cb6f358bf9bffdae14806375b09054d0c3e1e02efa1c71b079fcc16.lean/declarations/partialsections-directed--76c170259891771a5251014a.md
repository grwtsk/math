# partialSections.directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "768f8f8d15389149f97065d52fd23914dd0f01f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab4252c7-8302-90d8-6731-9a0805a811ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3de9470a-87ad-bbfe-d3b8-0df009e463a1",
  "kind": "theorem",
  "lexical_name": "partialSections.directed",
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
  "slug": "partialsections-directed--76c170259891771a5251014a",
  "source": {
    "blob": "768f8f8d15389149f97065d52fd23914dd0f01f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 74,
    "path": "GRWTSK/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76c170259891771a5251014a19ae2d22280522daaf05d0bf48ea4b9d526a79b7",
  "verification": {
    "reference": "docs/verification/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3de9470a-87ad-bbfe-d3b8-0df009e463a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialSections.directed :
    Directed Superset fun G : FiniteDiagram J => partialSections F G.2 := by
  classical
  intro A B
  let ιA : FiniteDiagramArrow A.1 → FiniteDiagramArrow (A.1 ⊔ B.1) := fun f =>
    ⟨f.1, f.2.1, Finset.mem_union_left _ f.2.2.1, Finset.mem_union_left _ f.2.2.2.1, f.2.2.2.2⟩
  let ιB : FiniteDiagramArrow B.1 → FiniteDiagramArrow (A.1 ⊔ B.1) := fun f =>
    ⟨f.1, f.2.1, Finset.mem_union_right _ f.2.2.1, Finset.mem_union_right _ f.2.2.2.1, f.2.2.2.2⟩
  refine ⟨⟨A.1 ⊔ B.1, A.2.image ιA ⊔ B.2.image ιB⟩, ?_, ?_⟩
  · rintro u hu f hf
    have : ιA f ∈ A.2.image ιA ⊔ B.2.image ιB := by
      apply Finset.mem_union_left
      rw [Finset.mem_image]
      exact ⟨f, hf, rfl⟩
    exact hu this
  · rintro u hu f hf
    have : ιB f ∈ A.2.image ιA ⊔ B.2.image ιB := by
      apply Finset.mem_union_right
      rw [Finset.mem_image]
      exact ⟨f, hf, rfl⟩
    exact hu this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768f8f8d15389149f97065d52fd23914dd0f01f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
