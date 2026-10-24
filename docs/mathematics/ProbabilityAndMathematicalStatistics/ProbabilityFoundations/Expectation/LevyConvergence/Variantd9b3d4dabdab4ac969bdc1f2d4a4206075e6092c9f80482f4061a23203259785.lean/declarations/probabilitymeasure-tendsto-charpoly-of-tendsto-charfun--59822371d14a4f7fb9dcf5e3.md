# ProbabilityMeasure.tendsto_charPoly_of_tendsto_charFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c78ea355-597e-c06a-b024-66c016b2ef47",
  "kind": "lemma",
  "lexical_name": "ProbabilityMeasure.tendsto_charPoly_of_tendsto_charFun",
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
  "slug": "probabilitymeasure-tendsto-charpoly-of-tendsto-charfun--59822371d14a4f7fb9dcf5e3",
  "source": {
    "blob": "f2366cf31c9f8f13bcedff96ebf62714c1826958",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 188,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59822371d14a4f7fb9dcf5e3903420d838c34d43443ff7d4e645ba839d5551b9",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c78ea355-597e-c06a-b024-66c016b2ef47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ProbabilityMeasure.tendsto_charPoly_of_tendsto_charFun {μ : ι → ProbabilityMeasure E}
    (h : ∀ t : E, Tendsto (fun n ↦ charFun (μ n) t) 𝓕 (𝓝 (charFun μ₀ t)))
    {g : E →ᵇ ℂ} (hg : g ∈ charPoly continuous_probChar (L := innerₗ E) continuous_inner) :
    Tendsto (fun n ↦ ∫ x, g x ∂(μ n)) 𝓕 (𝓝 (∫ x, g x ∂μ₀)) := by
  rw [mem_charPoly] at hg
  obtain ⟨w, hw⟩ := hg
  have h_eq (μ : Measure E) (hμ : IsProbabilityMeasure μ) :
      ∫ x, g x ∂μ = w.coeff.sum (fun a z ↦ z * ∫ x, (probChar (innerₗ E x a) : ℂ) ∂μ) := by
    simp_rw [hw, Finsupp.sum]
    rw [integral_finsetSum]
    · congr with y
      rw [integral_const_mul]
    · refine fun i hi ↦ Integrable.const_mul ?_ _
      change Integrable (innerProbChar i) μ
      exact BoundedContinuousFunction.integrable μ _
  simp_rw [h_eq (μ _), h_eq μ₀]
  refine tendsto_finsetSum _ fun y hy ↦ Tendsto.const_mul _ ?_
  simpa [← charFun_eq_integral_probChar] using h y

variable {μ : ℕ → ProbabilityMeasure E}

/-- If the characteristic functions of a sequence of probability measures converge pointwise to
the characteristic function of a probability measure, then the measures converge weakly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LevyConvergence/Variantd9b3d4dabdab4ac969bdc1f2d4a4206075e6092c9f80482f4061a23203259785.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2366cf31c9f8f13bcedff96ebf62714c1826958` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
