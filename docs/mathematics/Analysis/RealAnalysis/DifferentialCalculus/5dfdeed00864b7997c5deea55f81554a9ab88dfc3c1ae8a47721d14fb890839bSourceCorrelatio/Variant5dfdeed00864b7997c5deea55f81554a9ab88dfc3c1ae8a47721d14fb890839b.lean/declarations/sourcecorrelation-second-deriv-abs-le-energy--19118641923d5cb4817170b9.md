# sourceCorrelation_second_deriv_abs_le_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b530e171c2774cad4e3501ee741490c37c5b1b66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39b06312-0712-9d9c-580f-4b2ad2148e03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c81b3aef-6388-c309-735d-a228fc6c8cdc",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_second_deriv_abs_le_energy",
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
  "slug": "sourcecorrelation-second-deriv-abs-le-energy--19118641923d5cb4817170b9",
  "source": {
    "blob": "b530e171c2774cad4e3501ee741490c37c5b1b66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19118641923d5cb4817170b97979e179a2ecf5cf761ab54a0a9f79df39a41168",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c81b3aef-6388-c309-735d-a228fc6c8cdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_second_deriv_abs_le_energy {A : ℝ} (hA : 0 < A) (t : ℝ) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
      ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  rw [sourceCorrelation_second_deriv_eq_integral hA, abs_neg]
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hf : Integrable (fun x : ℝ ↦ (f x) ^ 2) := actual_derivative_square_integrable hA
  have hg := hf.comp_sub_right t
  have hm : Integrable (fun x : ℝ ↦ f x * f (x - t)) :=
    sourceCorrelation_second_deriv_integrand_integrable hA t
  calc
    |∫ x : ℝ, f x * f (x - t)| ≤ ∫ x : ℝ, |f x * f (x - t)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x : ℝ, ((f x) ^ 2 + (f (x - t)) ^ 2) / 2 := by
      apply integral_mono hm.abs ((hf.add hg).div_const 2)
      intro x
      change |f x * f (x - t)| ≤ ((f x) ^ 2 + (f (x - t)) ^ 2) / 2
      rw [abs_mul]
      nlinarith [sq_nonneg (|f x| - |f (x - t)|), sq_abs (f x), sq_abs (f (x - t))]
    _ = ∫ x : ℝ, (f x) ^ 2 := by
      rw [integral_div, integral_add hf hg,
        integral_sub_right_eq_self (fun x : ℝ ↦ (f x) ^ 2) t]
      ring

/-- The exact coefficient from source-energy normalization bounds curvature at every separation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839bSourceCorrelatio/Variant5dfdeed00864b7997c5deea55f81554a9ab88dfc3c1ae8a47721d14fb890839b.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b530e171c2774cad4e3501ee741490c37c5b1b66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
