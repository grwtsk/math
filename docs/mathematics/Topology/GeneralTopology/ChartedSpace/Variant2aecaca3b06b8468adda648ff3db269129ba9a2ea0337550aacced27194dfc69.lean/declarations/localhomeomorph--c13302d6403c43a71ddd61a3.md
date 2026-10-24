# localHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f046a5938c5a9a494fe1cc0ca170e3f438601b816a988f14f6a95369fd3245d0",
  "kind": "def",
  "lexical_name": "localHomeomorph",
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
  "slug": "localhomeomorph--c13302d6403c43a71ddd61a3",
  "source": {
    "blob": "91624ebdd0ed1f3a60f24e3887b77235ae23ecb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 856,
    "line": 823,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c13302d6403c43a71ddd61a33a60f7f6e394e16e69e65c5a2b3e24924d347649",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f046a5938c5a9a494fe1cc0ca170e3f438601b816a988f14f6a95369fd3245d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 823–856.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def localHomeomorph (e : LocalEquiv M H) (he : e ∈ c.atlas) :
    @LocalHomeomorph M H c.toTopologicalSpace _ :=
  { c.toTopologicalSpace, e with
    open_source := by convert c.open_source' he
    open_target := by convert c.open_target he
    continuous_toFun := by
      letI : TopologicalSpace M := c.toTopologicalSpace
      rw [continuousOn_open_iff (c.open_source' he)]
      intro s s_open
      rw [inter_comm]
      apply TopologicalSpace.GenerateOpen.basic
      simp only [exists_prop, mem_iUnion, mem_singleton_iff]
      exact ⟨e, he, ⟨s, s_open, rfl⟩⟩
    continuous_invFun := by
      letI : TopologicalSpace M := c.toTopologicalSpace
      apply continuousOn_open_of_generateFrom
      intro t ht
      simp only [exists_prop, mem_iUnion, mem_singleton_iff] at ht
      rcases ht with ⟨e', e'_atlas, s, s_open, ts⟩
      rw [ts]
      let f := e.symm.trans e'
      have : IsOpen (f ⁻¹' s ∩ f.source) := by
        simpa [inter_comm] using (continuousOn_open_iff (c.open_source e e' he e'_atlas)).1
          (c.continuous_toFun e e' he e'_atlas) s s_open
      have A : e' ∘ e.symm ⁻¹' s ∩ (e.target ∩ e.symm ⁻¹' e'.source) =
          e.target ∩ (e' ∘ e.symm ⁻¹' s ∩ e.symm ⁻¹' e'.source) := by
        rw [← inter_assoc, ← inter_assoc]
        congr 1
        exact inter_comm _ _
      simpa [LocalEquiv.trans_source, preimage_inter, preimage_comp.symm, A] using this }
#align charted_space_core.local_homeomorph ChartedSpaceCore.localHomeomorph

/-- Given a charted space without topology, endow it with a genuine charted space structure with
respect to the topology constructed from the atlas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean#L823).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91624ebdd0ed1f3a60f24e3887b77235ae23ecb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
