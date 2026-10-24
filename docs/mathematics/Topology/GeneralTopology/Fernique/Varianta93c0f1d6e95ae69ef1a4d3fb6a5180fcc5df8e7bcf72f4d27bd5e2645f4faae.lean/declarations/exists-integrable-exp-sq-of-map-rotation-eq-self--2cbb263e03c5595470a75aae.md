# exists_integrable_exp_sq_of_map_rotation_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c45def94-dc76-689b-1487-e5b04ef8ab1d",
  "kind": "theorem",
  "lexical_name": "exists_integrable_exp_sq_of_map_rotation_eq_self",
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
  "slug": "exists-integrable-exp-sq-of-map-rotation-eq-self--2cbb263e03c5595470a75aae",
  "source": {
    "blob": "559e64cf17d595dbfc07c9242084a40ca67adfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 606,
    "path": "GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cbb263e03c5595470a75aae7439bb9e75747f0360eee448eee734d5df9bc3ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c45def94-dc76-689b-1487-e5b04ef8ab1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 606–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_integrable_exp_sq_of_map_rotation_eq_self [IsFiniteMeasure μ]
    (h_rot : (μ.prod μ).map (ContinuousLinearMap.rotation (-(π / 4))) = μ.prod μ) :
    ∃ C, 0 < C ∧ Integrable (fun x ↦ rexp (C * ‖x‖ ^ 2)) μ := by
  by_cases hμ_zero : μ = 0
  · exact ⟨1, by positivity, by simp [hμ_zero]⟩
  let μ' := cond μ .univ
  have hμ'_eq : μ' = (μ .univ)⁻¹ • μ := by simp [μ', cond]
  have hμ' : IsProbabilityMeasure μ' := cond_isProbabilityMeasure <| by simp [hμ_zero]
  have h_rot : (μ'.prod μ').map (ContinuousLinearMap.rotation (-(π / 4))) = μ'.prod μ' := by
    calc (μ'.prod μ').map (ContinuousLinearMap.rotation (-(π / 4)))
    _ = ((μ Set.univ)⁻¹ * (μ Set.univ)⁻¹)
        • (μ.prod μ).map (ContinuousLinearMap.rotation (-(π / 4))) := by
      simp [hμ'_eq, Measure.prod_smul_left, Measure.prod_smul_right, smul_smul,
        (ContinuousLinearMap.rotation (-(π / 4))).continuous.aemeasurable]
    _ = ((μ Set.univ)⁻¹ * (μ Set.univ)⁻¹) • (μ.prod μ) := by rw [h_rot]
    _ = μ'.prod μ' := by
      simp [hμ'_eq, Measure.prod_smul_left, Measure.prod_smul_right, smul_smul]
  obtain ⟨C, hC_pos, hC⟩ :=
    exists_integrable_exp_sq_of_map_rotation_eq_self_of_isProbabilityMeasure (μ := μ') h_rot
  refine ⟨C, hC_pos, ?_⟩
  rwa [hμ'_eq, integrable_smul_measure] at hC
  · simp
  · simp [hμ_zero]

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Fernique/Varianta93c0f1d6e95ae69ef1a4d3fb6a5180fcc5df8e7bcf72f4d27bd5e2645f4faae.lean#L606).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559e64cf17d595dbfc07c9242084a40ca67adfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
