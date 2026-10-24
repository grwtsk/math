# correlation_second_deriv_fixed_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f6bb725-e4a1-f1ff-4f41-d97b178b32fc",
  "kind": "theorem",
  "lexical_name": "correlation_second_deriv_fixed_tendsto",
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
  "slug": "correlation-second-deriv-fixed-tendsto--3f6f49dee36e07440522da53",
  "source": {
    "blob": "9b3330556ae43193d5900c134af75a2c098f3297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f6f49dee36e07440522da5336434161044ef53c4b541849c137d0ae4fbbc80c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f6bb725-e4a1-f1ff-4f41-d97b178b32fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem correlation_second_deriv_fixed_tendsto (u : ℝ) :
    Tendsto (fun A : ℝ => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u)
      atTop (𝓝 0) := by
  apply squeeze_zero_norm' (a := fun A : ℝ => (162826 / 7623 : ℝ) * (A⁻¹)^2)
  · filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hb := sourceCorrelation_second_deriv_abs_le_coefficient hA u
    simpa only [Real.norm_eq_abs, div_eq_mul_inv, mul_inv_rev, inv_pow,
      mul_comm, mul_left_comm, mul_assoc] using hb
  · simpa only [zero_pow (by decide : (2 : ℕ) ≠ 0), mul_zero] using
      ((tendsto_inv_atTop_zero (𝕜 := ℝ)).pow 2).const_mul (162826 / 7623 : ℝ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt03/Variantd6e0307d006c78380c05e631919ade53574d2f1f06e48a40a4f8df17a73c608c.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3330556ae43193d5900c134af75a2c098f3297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
