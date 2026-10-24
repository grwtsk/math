# actual_correlation_three_upper_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9b9fd58-e69c-c65e-4717-85d76ea4d45e",
  "kind": "theorem",
  "lexical_name": "actual_correlation_three_upper_traces",
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
  "slug": "actual-correlation-three-upper-traces--4d19235f22a1dfb7779ff5a1",
  "source": {
    "blob": "9bf9b4b68ac4bd0a0df4e4a4169703bbcd4d0c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d19235f22a1dfb7779ff5a1a03b7efd4ce9a3196da1a9f5c15a08fc220c1c22",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9b9fd58-e69c-c65e-4717-85d76ea4d45e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_three_upper_traces (A : ℝ) (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) (2 * A) = 0 ∧
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (2 * A) = 0 ∧
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (2 * A) = 0 := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hz0 : ∀ t : ℝ, 2 * A ≤ t → C t = 0 := by
    intro t ht
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A t hA (ht.trans (le_abs_self t))
  have hz1 : ∀ t : ℝ, 2 * A ≤ t → deriv C t = 0 := by
    intro t ht
    exact deriv_zero_of_zero_on_Ici C t (fun y hy => hz0 y (ht.trans hy))
  have hz2 : ∀ t : ℝ, 2 * A ≤ t → deriv (deriv C) t = 0 := by
    intro t ht
    exact deriv_zero_of_zero_on_Ici (deriv C) t (fun y hy => hz1 y (ht.trans hy))
  have hz3 : ∀ t : ℝ, 2 * A ≤ t → deriv (deriv (deriv C)) t = 0 := by
    intro t ht
    exact deriv_zero_of_zero_on_Ici (deriv (deriv C)) t
      (fun y hy => hz2 y (ht.trans hy))
  exact ⟨hz1 _ le_rfl, hz2 _ le_rfl, hz3 _ le_rfl⟩

/-- The fourth-derivative budget gives a distance-to-upper-support third-derivative bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf9b4b68ac4bd0a0df4e4a4169703bbcd4d0c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
