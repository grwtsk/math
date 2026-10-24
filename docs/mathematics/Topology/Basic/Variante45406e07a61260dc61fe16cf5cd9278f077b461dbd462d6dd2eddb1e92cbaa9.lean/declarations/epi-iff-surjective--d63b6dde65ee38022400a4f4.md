# epi_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33329dc29183a147bda5f16322814cd720709912",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a36e2e50-3525-388d-501e-88f93f601447",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:837df01c-5417-9d35-420d-9ce7bde055fd",
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
  "slug": "epi-iff-surjective--d63b6dde65ee38022400a4f4",
  "source": {
    "blob": "33329dc29183a147bda5f16322814cd720709912",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 362,
    "path": "GRWTSK/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d63b6dde65ee38022400a4f406c25a918ee790bee1df4f73dcc1c776d8a2f3d1",
  "verification": {
    "reference": "docs/verification/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:837df01c-5417-9d35-420d-9ce7bde055fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_iff_surjective {X Y : Profinite.{u}} (f : X ⟶ Y) : Epi f ↔ Function.Surjective f := by
  constructor
  · -- Porting note: in mathlib3 `contrapose` saw through `Function.Surjective`.
    dsimp [Function.Surjective]
    contrapose!
    rintro ⟨y, hy⟩ hf
    skip
    let C := Set.range f
    have hC : IsClosed C := (isCompact_range f.continuous).isClosed
    let U := Cᶜ
    have hyU : y ∈ U := by
      refine' Set.mem_compl _
      rintro ⟨y', hy'⟩
      exact hy y' hy'
    have hUy : U ∈ 𝓝 y := hC.compl_mem_nhds hyU
    obtain ⟨V, hV, hyV, hVU⟩ := isTopologicalBasis_clopen.mem_nhds_iff.mp hUy
    classical
      let Z := of (ULift.{u} <| Fin 2)
      let g : Y ⟶ Z := ⟨(LocallyConstant.ofClopen hV).map ULift.up, LocallyConstant.continuous _⟩
      let h : Y ⟶ Z := ⟨fun _ => ⟨1⟩, continuous_const⟩
      have H : h = g := by
        rw [← cancel_epi f]
        ext x
        apply ULift.ext
        dsimp [LocallyConstant.ofClopen]
        rw [comp_apply, ContinuousMap.coe_mk, comp_apply, ContinuousMap.coe_mk,
          Function.comp_apply, if_neg]
        refine' mt (fun α => hVU α) _
        simp only [Set.mem_range_self, not_true, not_false_iff, Set.mem_compl_iff]
      apply_fun fun e => (e y).down at H
      dsimp [LocallyConstant.ofClopen] at H
      rw [ContinuousMap.coe_mk, ContinuousMap.coe_mk, Function.comp_apply, if_pos hyV] at H
      exact top_ne_bot H
  · rw [← CategoryTheory.epi_iff_surjective]
    apply (forget Profinite).epi_of_epi_map
#align Profinite.epi_iff_surjective Profinite.epi_iff_surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Basic/Variante45406e07a61260dc61fe16cf5cd9278f077b461dbd462d6dd2eddb1e92cbaa9.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33329dc29183a147bda5f16322814cd720709912` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
