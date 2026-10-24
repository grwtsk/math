# rnDeriv_measure_compProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ed38c66297f4c38d695c17c1c931c722c5c5398",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c22365bf-9866-be5b-d44c-9573bb5754fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d733b255-3e91-c8e6-ce94-b5ed1fbd60da",
  "kind": "lemma",
  "lexical_name": "rnDeriv_measure_compProd",
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
  "slug": "rnderiv-measure-compprod--cff1b37e0bc07d25fbe37e8c",
  "source": {
    "blob": "3ed38c66297f4c38d695c17c1c931c722c5c5398",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 129,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cff1b37e0bc07d25fbe37e8cb8027f0a694400d9419c4bd637fc34c050624905",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d733b255-3e91-c8e6-ce94-b5ed1fbd60da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_measure_compProd (μ ν : Measure α) (κ η : Kernel α β)
    [IsFiniteMeasure μ] [IsFiniteMeasure ν] [IsFiniteKernel κ] [IsFiniteKernel η] :
    (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ η) =ᵐ[ν ⊗ₘ η] fun p ↦ μ.rnDeriv ν p.1 * κ.rnDeriv η p.1 p.2 := by
  have h_add : μ ⊗ₘ κ = μ ⊗ₘ κ.singularPart η + μ ⊗ₘ η.withDensity (κ.rnDeriv η) := by
    conv_lhs => rw [← Kernel.rnDeriv_add_singularPart κ η]
    rw [Measure.compProd_add_right, add_comm]
  have h_sing : (μ ⊗ₘ κ.singularPart η).rnDeriv (ν ⊗ₘ η) =ᵐ[ν ⊗ₘ η] 0 :=
    Measure.rnDeriv_eq_zero_of_mutuallySingular
      (Measure.MutuallySingular.compProd_of_right μ ν
        (.of_forall <| Kernel.mutuallySingular_singularPart κ η)) .rfl
  have h_ne_top : ∀ᵐ p ∂(μ ⊗ₘ η), κ.rnDeriv η p.1 p.2 ≠ ∞ := by
    refine Measure.ae_compProd_of_ae_ae (p := fun p ↦ κ.rnDeriv η p.1 p.2 ≠ ∞)
      (Kernel.measurable_rnDeriv κ η (measurableSet_singleton ∞)).compl ?_
    exact ae_of_all _ fun _ ↦ Kernel.rnDeriv_ne_top κ η
  have h_wd : (μ ⊗ₘ η.withDensity (κ.rnDeriv η)).rnDeriv (ν ⊗ₘ η)
      =ᵐ[ν ⊗ₘ η] fun p ↦ κ.rnDeriv η p.1 p.2 * (μ ⊗ₘ η).rnDeriv (ν ⊗ₘ η) p := by
    rw [Measure.compProd_withDensity (Kernel.measurable_rnDeriv κ η)]
    exact Measure.rnDeriv_withDensity_left (Kernel.measurable_rnDeriv κ η).aemeasurable h_ne_top
  rw [h_add]
  have h_add' := Measure.rnDeriv_add' (μ ⊗ₘ κ.singularPart η)
    (μ ⊗ₘ η.withDensity (κ.rnDeriv η)) (ν ⊗ₘ η)
  filter_upwards [h_add', h_sing, h_wd, rnDeriv_measure_compProd_left μ ν η]
    with p h1 h2 h3 h4
  rw [h1, Pi.add_apply, h2, Pi.zero_apply, zero_add, h3, h4, mul_comm]

/-- The Radon-Nikodym derivative `∂(μ ⊗ₘ κ)/∂(μ ⊗ₘ η)` (with the same measure)
equals `∂κ/∂η`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed38c66297f4c38d695c17c1c931c722c5c5398` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
