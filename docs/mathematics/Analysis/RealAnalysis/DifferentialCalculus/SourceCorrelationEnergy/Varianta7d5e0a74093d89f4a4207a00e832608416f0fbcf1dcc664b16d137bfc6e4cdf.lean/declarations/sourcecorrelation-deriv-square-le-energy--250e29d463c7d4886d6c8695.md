# sourceCorrelation_deriv_square_le_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1df3aeaf-a6eb-88e2-dee9-276478d45124",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deriv_square_le_energy",
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
  "slug": "sourcecorrelation-deriv-square-le-energy--250e29d463c7d4886d6c8695",
  "source": {
    "blob": "048baf162045da10967635cc0a7cb73ebb78ba87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:250e29d463c7d4886d6c86959be27fd8e29d70386fbc86741b9fe48278da24cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1df3aeaf-a6eb-88e2-dee9-276478d45124`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_deriv_square_le_energy {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (deriv (sourceCorrelation explicitSecondDerivative A) t) ^ 2 ≤
      ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [sourceCorrelation_deriv_eq_integral hpos]
  apply integral_mul_square_le_of_unit
    (actual_derivative_square_integrable hpos)
    ((normalized_square_integrable A hA).comp_sub_right t)
    (sourceCorrelation_deriv_integrand_integrable hpos t)
  rw [integral_sub_right_eq_self (fun x : ℝ ↦
    (normalizedTest explicitSecondDerivative A x) ^ 2) t]
  exact normalized_square_integral A hA

/-- The verified energy coefficient controls the correlation derivative at every separation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048baf162045da10967635cc0a7cb73ebb78ba87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
