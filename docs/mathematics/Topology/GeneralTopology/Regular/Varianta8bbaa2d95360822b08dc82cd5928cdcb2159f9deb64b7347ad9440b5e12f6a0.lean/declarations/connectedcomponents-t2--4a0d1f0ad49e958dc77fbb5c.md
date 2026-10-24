# ConnectedComponents.t2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:317d59351f337d0a8a2ee1d0d8e30afaa6d7435efc82044d51b31d74c68d1164",
  "kind": "instance",
  "lexical_name": "ConnectedComponents.t2",
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
  "slug": "connectedcomponents-t2--4a0d1f0ad49e958dc77fbb5c",
  "source": {
    "blob": "a8b9bb6a7ff7df35d51aee4dba345015529b15de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 673,
    "line": 652,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a0d1f0ad49e958dc77fbb5ccec6c58ababc6431911fab9924f36e973b8033e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:317d59351f337d0a8a2ee1d0d8e30afaa6d7435efc82044d51b31d74c68d1164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–673.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ConnectedComponents.t2 [T2Space X] [CompactSpace X] : T2Space (ConnectedComponents X) := by
  -- Fix 2 distinct connected components, with points a and b
  refine ⟨ConnectedComponents.surjective_coe.forall₂.2 fun a b ne => ?_⟩
  rw [ConnectedComponents.coe_ne_coe] at ne
  have h := connectedComponent_disjoint ne
  -- write ↑b as the intersection of all clopen subsets containing it
  rw [connectedComponent_eq_iInter_isClopen b, disjoint_iff_inter_eq_empty] at h
  -- Now we show that this can be reduced to some clopen containing `↑b` being disjoint to `↑a`
  obtain ⟨U, V, hU, ha, hb, rfl⟩ : ∃ (U : Set X) (V : Set (ConnectedComponents X)),
      IsClopen U ∧ connectedComponent a ∩ U = ∅ ∧ connectedComponent b ⊆ U ∧ (↑) ⁻¹' V = U := by
    have h :=
      (isClosed_connectedComponent (α := X)).isCompact.elim_finite_subfamily_closed
        _ (fun s : { s : Set X // IsClopen s ∧ b ∈ s } => s.2.1.1) h
    obtain ⟨fin_a, ha⟩ := h
    -- This clopen and its complement will separate the connected components of `a` and `b`
    set U : Set X := ⋂ (i : { s // IsClopen s ∧ b ∈ s }) (_ : i ∈ fin_a), i
    have hU : IsClopen U := isClopen_biInter_finset fun i _ => i.2.1
    exact ⟨U, (↑) '' U, hU, ha, subset_iInter₂ fun s _ => s.2.1.connectedComponent_subset s.2.2,
      (connectedComponents_preimage_image U).symm ▸ hU.biUnion_connectedComponent_eq⟩
  rw [ConnectedComponents.isQuotientMap_coe.isClopen_preimage] at hU
  refine ⟨Vᶜ, V, hU.compl.isOpen, hU.isOpen, ?_, hb mem_connectedComponent, disjoint_compl_left⟩
  exact fun h => flip Set.Nonempty.ne_empty ha ⟨a, mem_connectedComponent, h⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b9bb6a7ff7df35d51aee4dba345015529b15de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
