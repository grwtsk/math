# liftPropWithinAt_indep_chart_source_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64b8757c-7229-305b-c2db-ef0d551c90a6",
  "kind": "theorem",
  "lexical_name": "liftPropWithinAt_indep_chart_source_aux",
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
  "slug": "liftpropwithinat-indep-chart-source-aux--02e0cb274b9301934a5a05bc",
  "source": {
    "blob": "6dcc53297ebed1d4c965f142c8ee950d34ac461b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantaa14f5887aaec18830419a054a9394dfcd986089d4b56617c3aaafec7bcdb090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02e0cb274b9301934a5a05bc7819c36a65343f4f60fdc4d668791c2f4b5805dd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variantaa14f5887aaec18830419a054a9394dfcd986089d4b56617c3aaafec7bcdb090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64b8757c-7229-305b-c2db-ef0d551c90a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftPropWithinAt_indep_chart_source_aux (g : M → H') (he : e ∈ G.maximalAtlas M)
    (xe : x ∈ e.source) (he' : e' ∈ G.maximalAtlas M) (xe' : x ∈ e'.source) :
    P (g ∘ e.symm) (e.symm ⁻¹' s) (e x) ↔ P (g ∘ e'.symm) (e'.symm ⁻¹' s) (e' x) := by
  rw [← hG.right_invariance (compatible_of_mem_maximalAtlas he he')]
  swap; · simp only [xe, xe', mfld_simps]
  simp_rw [LocalHomeomorph.trans_apply, e.left_inv xe]
  rw [hG.congr_iff]
  · refine' hG.congr_set _
    refine' (eventually_of_mem _ fun y (hy : y ∈ e'.symm ⁻¹' e.source) ↦ _).set_eq
    · refine' (e'.symm.continuousAt <| e'.mapsTo xe').preimage_mem_nhds (e.open_source.mem_nhds _)
      simp_rw [e'.left_inv xe', xe]
    simp_rw [mem_preimage, LocalHomeomorph.coe_trans_symm, LocalHomeomorph.symm_symm,
      Function.comp_apply, e.left_inv hy]
  · refine' ((e'.eventually_nhds' _ xe').mpr <| e.eventually_left_inverse xe).mono fun y hy ↦ _
    simp only [mfld_simps]
    rw [hy]
#align structure_groupoid.local_invariant_prop.lift_prop_within_at_indep_chart_source_aux StructureGroupoid.LocalInvariantProp.liftPropWithinAt_indep_chart_source_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variantaa14f5887aaec18830419a054a9394dfcd986089d4b56617c3aaafec7bcdb090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantaa14f5887aaec18830419a054a9394dfcd986089d4b56617c3aaafec7bcdb090.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dcc53297ebed1d4c965f142c8ee950d34ac461b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
