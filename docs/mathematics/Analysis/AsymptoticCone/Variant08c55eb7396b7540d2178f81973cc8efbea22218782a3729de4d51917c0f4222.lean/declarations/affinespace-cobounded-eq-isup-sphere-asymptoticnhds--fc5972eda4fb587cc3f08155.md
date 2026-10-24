# AffineSpace.cobounded_eq_iSup_sphere_asymptoticNhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "142e7f13eeb9e2be5beadf5df379d8d25b64a690",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd1ea7e5-c218-b172-01fe-a45bb21740d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7459553-5429-ed62-0eed-0c4f6a6f5bd1",
  "kind": "theorem",
  "lexical_name": "AffineSpace.cobounded_eq_iSup_sphere_asymptoticNhds",
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
  "slug": "affinespace-cobounded-eq-isup-sphere-asymptoticnhds--fc5972eda4fb587cc3f08155",
  "source": {
    "blob": "142e7f13eeb9e2be5beadf5df379d8d25b64a690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 47,
    "path": "GRWTSK/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc5972eda4fb587cc3f081557e6cdc9b603e8d4f5b66071019096c4e101c41b4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7459553-5429-ed62-0eed-0c4f6a6f5bd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineSpace.cobounded_eq_iSup_sphere_asymptoticNhds :
    cobounded P = ⨆ v ∈ Metric.sphere 0 1, asymptoticNhds ℝ P v := by
  refine le_antisymm ?_ <| iSup₂_le fun _ h => asymptoticNhds_le_cobounded <|
    Metric.ne_of_mem_sphere h one_ne_zero
  intro s hs
  have ⟨p⟩ : Nonempty P := inferInstance
  simp_rw [mem_iSup, asymptoticNhds_eq_smul_vadd _ p, vadd_pure] at hs
  choose! t ht u hu smul_subset_s using hs
  have ⟨cover, h₁, h₂⟩ := (isCompact_sphere 0 1).elim_nhds_subcover u hu
  rw [← Metric.comap_dist_left_atTop p]
  refine ⟨Set.Ioi 0 ∩ ⋂ x ∈ cover, t x, inter_mem (Ioi_mem_atTop 0)
    (cover.iInter_mem_sets.mpr fun x hx => ht x (h₁ x hx)), fun x hx => ?_⟩
  rw [Set.mem_preimage, dist_eq_norm_vsub'] at hx
  let x' := ‖x -ᵥ p‖⁻¹ • (x -ᵥ p)
  have x'_mem : x' ∈ Metric.sphere 0 1 := by
    rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ hx.1.ne']
  have ⟨y, y_mem, hy⟩ := Set.mem_iUnion₂.mp (h₂ x'_mem)
  rw [← vsub_vadd x p, ← show ‖x -ᵥ p‖ • x' = x -ᵥ p from smul_inv_smul₀ hx.1.ne' (x -ᵥ p)]
  exact smul_subset_s y (h₁ y y_mem) <| Set.smul_mem_smul (Set.biInter_subset_of_mem y_mem hx.2) hy

/-- In a finite dimensional normed affine space over `ℝ`, a set is bounded if and only if its
asymptotic cone is trivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticCone/Variant08c55eb7396b7540d2178f81973cc8efbea22218782a3729de4d51917c0f4222.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142e7f13eeb9e2be5beadf5df379d8d25b64a690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
