# epi_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee48b384-5c08-4422-894a-a6c6f7fa63a3",
  "kind": "theorem",
  "lexical_name": "epi_iff_surjective",
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
  "slug": "epi-iff-surjective--1dd8ad2b8e4bb3325b12609f",
  "source": {
    "blob": "5ac81d74729e7b88f3f16d4831455073a412292f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 242,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf7935a1f5fb89f3e5bad33c5302dcca8a5748636b0624cc0a9a52c955ec06743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dd8ad2b8e4bb3325b12609f0d78e6fef44a4b9e5735f51faf7acf080ca02ede",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf7935a1f5fb89f3e5bad33c5302dcca8a5748636b0624cc0a9a52c955ec06743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee48b384-5c08-4422-894a-a6c6f7fa63a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_iff_surjective {X Y : Profinite.{u}} (f : X ⟶ Y) : Epi f ↔ Function.Surjective f := by
  constructor
  · dsimp [Function.Surjective]
    contrapose!
    rintro ⟨y, hy⟩ hf
    let C := Set.range f
    have hC : IsClosed C := (isCompact_range f.hom.hom.continuous).isClosed
    let U := Cᶜ
    have hyU : y ∈ U := by
      refine Set.mem_compl ?_
      rintro ⟨y', hy'⟩
      exact hy y' hy'
    have hUy : U ∈ 𝓝 y := hC.compl_mem_nhds hyU
    obtain ⟨V, hV, hyV, hVU⟩ := isTopologicalBasis_isClopen.mem_nhds_iff.mp hUy
    classical
      let Z := of (ULift.{u} <| Fin 2)
      let g : Y ⟶ Z := ofHom _
        ⟨(LocallyConstant.ofIsClopen hV).map ULift.up, LocallyConstant.continuous _⟩
      let h : Y ⟶ Z := ofHom _ ⟨fun _ => ⟨1⟩, continuous_const⟩
      have H : h = g := by
        rw [← cancel_epi f]
        ext x
        dsimp [g, LocallyConstant.ofIsClopen]
        rw [ContinuousMap.coe_mk, ContinuousMap.coe_mk, ConcreteCategory.hom_ofHom,
          ContinuousMap.coe_mk, Function.comp_apply, ite_eq_right]
        refine mt (fun α => hVU α) ?_
        simp [U, C]
      apply_fun fun e => (e y).down at H
      dsimp [g, LocallyConstant.ofIsClopen] at H
      rw [ContinuousMap.coe_mk, ContinuousMap.coe_mk, Function.comp_apply, ite_eq_left hyV] at H
      exact top_ne_bot H
  · rw [← CategoryTheory.ofHom_epi_iff_surjective]
    apply (forget Profinite).epi_of_epi_map

/-- The pi-type of profinite spaces is profinite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf7935a1f5fb89f3e5bad33c5302dcca8a5748636b0624cc0a9a52c955ec06743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf7935a1f5fb89f3e5bad33c5302dcca8a5748636b0624cc0a9a52c955ec06743.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac81d74729e7b88f3f16d4831455073a412292f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
