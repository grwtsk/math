# correlation_deriv_fixed_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0b8036e-679a-24e4-6808-349ddeda1b35",
  "kind": "theorem",
  "lexical_name": "correlation_deriv_fixed_tendsto",
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
  "slug": "correlation-deriv-fixed-tendsto--13ae80f130a9e670f59b6abf",
  "source": {
    "blob": "69b17461d6ddaa5b7af9744fb5f9e5351026d87c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 28,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Varianta88758157023eb46d1d61e40b29f0eb4c75025853b849c99cf6c9ab39efe4f10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13ae80f130a9e670f59b6abfed6bea86921f22ad00372c2c542fa329ea4ec0e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Varianta88758157023eb46d1d61e40b29f0eb4c75025853b849c99cf6c9ab39efe4f10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0b8036e-679a-24e4-6808-349ddeda1b35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem correlation_deriv_fixed_tendsto (u : ℝ) :
    Tendsto (fun A : ℝ => deriv (sourceCorrelation explicitSecondDerivative A) u)
      atTop (𝓝 0) := by
  apply squeeze_zero_norm' (a := fun A : ℝ => 5 / A)
  · filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    simpa only [Real.norm_eq_abs] using sourceCorrelation_deriv_abs_le_five_div hA u
  · simpa only [div_eq_mul_inv, mul_zero] using
      (tendsto_inv_atTop_zero (𝕜 := ℝ)).const_mul 5

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Varianta88758157023eb46d1d61e40b29f0eb4c75025853b849c99cf6c9ab39efe4f10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt01/Varianta88758157023eb46d1d61e40b29f0eb4c75025853b849c99cf6c9ab39efe4f10.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69b17461d6ddaa5b7af9744fb5f9e5351026d87c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
