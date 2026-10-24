# _root_.GRWTSK.Topology.GeneralTopology.Vietoris.Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.TopologicalSpace.IsTopologicalBasis.vietoris

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c965f21a-3b9c-ebdd-9b12-9b2d265407f5",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Vietoris.Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.TopologicalSpace.IsTopologicalBasis.vietoris",
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
  "slug": "root-grwtsk-topology-generaltopology-vietoris-variantd65aacf45a577081e04--4d54c9b202c77132b9de5447",
  "source": {
    "blob": "524bba0218c9cea79b453a081dfae042d893f368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d54c9b202c77132b9de5447387923bb72ddc8b1a20f7b8f3841084bf911b420",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c965f21a-3b9c-ebdd-9b12-9b2d265407f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.Vietoris.Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.TopologicalSpace.IsTopologicalBasis.vietoris
    {B : Set (Set α)} (hB : IsTopologicalBasis B) :
    IsTopologicalBasis <|
      (fun p => {s ⊆ p.1 | ∀ U ∈ p.2, (s ∩ U).Nonempty}) ''
      {p : Set α × Set (Set α) | IsOpen p.1 ∧ p.2.Finite ∧ p.2 ⊆ B ∧ (∀ U ∈ p.2, U ⊆ p.1)} := by
  refine isTopologicalBasis.isTopologicalBasis_of_exists_subset ?_ ?_ <;>
    rw [forall_mem_image]
  · intro ⟨V, u⟩ ⟨hV, hu, huB, _⟩
    simp_rw [ofPred_and, ofPred_forall]
    exact hV.powerset_vietoris.inter <|
      hu.isOpen_biInter fun V hV => isOpen_inter_nonempty_of_isOpen <| hB.isOpen <| huB hV
  · intro u ⟨hu₁, hu₂⟩ s ⟨hs₁, hs₂⟩
    choose! f hfB hfU hfs using show ∀ U ∈ u, ∃ W ∈ B, W ⊆ U ∧ (s ∩ W).Nonempty by
      intro U hU
      obtain ⟨x, hxs, hxU⟩ := hs₂ U hU
      obtain ⟨W, hWB, hxW, hW⟩ := hB.exists_subset_of_mem_open hxU <| hu₂ U hU
      exact ⟨W, hWB, hW, x, hxs, hxW⟩
    rw [exists_mem_image]
    refine ⟨⟨⋃₀ u, f '' u⟩, ⟨isOpen_sUnion hu₂, hu₁.image _, by grind⟩, by grind,
      fun t ⟨ht₁, ht₂⟩ => ⟨ht₁, fun U hU => ?_⟩⟩
    rw [forall_mem_image] at ht₂
    grw [← hfU U hU]
    exact ht₂ hU

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VietorisTopology/Variant69b35ca003822cc9708ac8e8489adda0c26cbc1aad0166659dc2b8e293531c29.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `524bba0218c9cea79b453a081dfae042d893f368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
