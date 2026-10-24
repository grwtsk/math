# sourceCorrelation_deriv_abs_le_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c949e42c-796c-5a32-dbed-07e4b337003b",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deriv_abs_le_coefficient",
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
  "slug": "sourcecorrelation-deriv-abs-le-coefficient--64608a7be997d4b905b7611f",
  "source": {
    "blob": "048baf162045da10967635cc0a7cb73ebb78ba87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64608a7be997d4b905b7611f92ce7da5c9b4be9075d2bbab325d51f69a98d272",
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

Occurrence: `result:c949e42c-796c-5a32-dbed-07e4b337003b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_deriv_abs_le_coefficient {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
      Real.sqrt (162826 / 7623 : ℝ) / A := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hsq := sourceCorrelation_deriv_square_le_energy hA t
  have henergy := actual_derivative_energy_upper hA
  have hscaled := mul_le_mul_of_nonneg_left hsq (sq_nonneg A)
  apply abs_le_of_sq_le_sq ?_ (by positivity)
  rw [div_pow, Real.sq_sqrt (by norm_num : 0 ≤ (162826 / 7623 : ℝ))]
  apply (le_div_iff₀ (sq_pos_of_pos hpos)).2
  nlinarith

/-- A simple admissible variation constant for the actual polynomial source is five. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCorrelationEnergy/Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048baf162045da10967635cc0a7cb73ebb78ba87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
