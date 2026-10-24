# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fef650858fbcd5db6a85ffffa36ddf02145d888aa875cac56366c4f454e5232e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ec5734bcce541ae81ea8f56d",
  "source": {
    "blob": "a97878108d96ca1fc58d3170e3968bf0ba1b08d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec5734bcce541ae81ea8f56d3c09b5f2a1462d88a8adac82342d44b12a22b5b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fef650858fbcd5db6a85ffffa36ddf02145d888aa875cac56366c4f454e5232e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : SemilatticeInf (Graph α β) where
  inf G H := {
    vertexSet := V(G) ∩ V(H)
    edgeSet := {e ∈ E(G) ∩ E(H) | ∀ x y, G.IsLink e x y ↔ H.IsLink e x y}
    IsLink e x y := G.IsLink e x y ∧ H.IsLink e x y
    isLink_symm _ _ := { symm _ _ h := ⟨h.1.symm, h.2.symm⟩ }
    eq_or_eq_of_isLink_of_isLink _ _ _ _ _ h h' := h.1.left_eq_or_eq h'.1
    edge_mem_iff_exists_isLink e := by
      simp only [edgeSet_eq_setOfPred_exists_isLink, mem_inter_iff, mem_ofPred_eq]
      exact ⟨fun ⟨⟨⟨x, y, hexy⟩, ⟨z, w, hezw⟩⟩, h⟩ ↦ ⟨x, y, hexy, by rwa [← h]⟩,
        fun ⟨x, y, hfG, hfH⟩ ↦ ⟨⟨⟨_, _, hfG⟩, ⟨_, _, hfH⟩⟩,
        fun z w ↦ by rw [hfG.isLink_iff_sym2_eq, hfH.isLink_iff_sym2_eq]⟩⟩
    left_mem_of_isLink e x y h := ⟨h.1.left_mem, h.2.left_mem⟩}
  inf_le_left G H := {
    vertexSet_mono := inter_subset_left
    isLink_mono := by simp +contextual}
  inf_le_right G H := {
    vertexSet_mono := inter_subset_right
    isLink_mono := by simp +contextual}
  le_inf H G₁ G₂ h₁ h₂ := {
    vertexSet_mono := subset_inter h₁.vertexSet_mono h₂.vertexSet_mono
    isLink_mono e x y h := by simp [h₁.isLink_mono h, h₂.isLink_mono h]}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a97878108d96ca1fc58d3170e3968bf0ba1b08d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
