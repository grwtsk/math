# rnDeriv_measure_compProd_left

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
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2afac41-a4ce-06aa-0773-45f05e108f65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11142edd-d107-ae13-cc38-2535f33b2450",
  "kind": "lemma",
  "lexical_name": "rnDeriv_measure_compProd_left",
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
  "slug": "rnderiv-measure-compprod-left--1e61dd8cd7960f5734943d8a",
  "source": {
    "blob": "3ed38c66297f4c38d695c17c1c931c722c5c5398",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 96,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e61dd8cd7960f5734943d8a82c766c85f56842a3d4b92dd7c42c53ca98bcb8c",
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

Occurrence: `result:11142edd-d107-ae13-cc38-2535f33b2450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_measure_compProd_left (μ ν : Measure α) (κ : Kernel α β)
    [IsFiniteMeasure μ] [IsFiniteMeasure ν] [IsFiniteKernel κ] :
    (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ κ) =ᵐ[ν ⊗ₘ κ] fun p ↦ (μ.rnDeriv ν) p.1 := by
  calc (μ ⊗ₘ κ).rnDeriv (ν ⊗ₘ κ)
  _ =ᵐ[ν ⊗ₘ κ] (ν.withDensity (μ.rnDeriv ν) ⊗ₘ κ).rnDeriv (ν ⊗ₘ κ) :=
    (rnDeriv_compProd_withDensity_rnDeriv μ ν κ κ).symm
  _ =ᵐ[ν ⊗ₘ κ] (fun p ↦ (ν.withDensity (μ.rnDeriv ν)).rnDeriv ν p.1) :=
    rnDeriv_measure_compProd_left_of_ac
      (MeasureTheory.withDensity_absolutelyContinuous ν (μ.rnDeriv ν)) κ
  _ =ᵐ[ν ⊗ₘ κ] fun p ↦ μ.rnDeriv ν p.1 :=
    Measure.ae_eq_compProd_of_ae_eq_fst _ (by fun_prop) (by fun_prop)
      (Measure.rnDeriv_withDensity ν (by fun_prop))

/-- The Radon-Nikodym derivative `∂(μ ⊗ₘ κ)/∂(ν ⊗ₘ η)` equals the product of `∂μ/∂ν` and
`∂(μ ⊗ₘ κ)/∂(μ ⊗ₘ η)`.

See `rnDeriv_measure_compProd` for a version that replaces `∂(μ ⊗ₘ κ)/∂(μ ⊗ₘ η)` by `∂κ/∂η`
and does not require the absolute continuity hypothesis, assuming that `α` is countable or `β` is
countably generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/RadonNikodym/Variant90baf9c537ee862e37dc1f4688e47db12a26d33e6017a480c89c58d8a39eb86a.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed38c66297f4c38d695c17c1c931c722c5c5398` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
