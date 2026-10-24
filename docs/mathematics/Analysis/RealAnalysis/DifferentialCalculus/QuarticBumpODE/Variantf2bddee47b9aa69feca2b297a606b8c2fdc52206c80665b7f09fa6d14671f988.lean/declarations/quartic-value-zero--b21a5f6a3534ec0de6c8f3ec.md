# quartic_value_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:491d49a3-db1d-b79d-c0de-dc170a2e63d7",
  "kind": "theorem",
  "lexical_name": "quartic_value_zero",
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
  "slug": "quartic-value-zero--b21a5f6a3534ec0de6c8f3ec",
  "source": {
    "blob": "ad02a90069d41f630d732f47f09677f76d7f1f75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 61,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b21a5f6a3534ec0de6c8f3ec03c484669116630fb29bc8e4c54e557f0f85f04d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:491d49a3-db1d-b79d-c0de-dc170a2e63d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quartic_value_zero : quarticBumpLaplace 0 = (256/315 : ℂ) := by
  have hp : (∫ v in (-1 : ℝ)..1, (1-v^2)^4) = 256/315 := by
    have he : (fun v : ℝ => (1-v^2)^4) =
        fun v => 1+(-4:ℝ)*v^2+6*v^4+(-4:ℝ)*v^6+v^8 := by
      funext v
      ring
    rw [he]
    simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
      [intervalIntegral.integral_add,intervalIntegral.integral_const_mul,
        intervalIntegral.integral_const,integral_pow]
    norm_num
  unfold quarticBumpLaplace
  simp only [zero_mul,Complex.exp_zero,mul_one]
  rw [intervalIntegral.integral_ofReal,hp]
  norm_num


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpODE/Variantf2bddee47b9aa69feca2b297a606b8c2fdc52206c80665b7f09fa6d14671f988.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad02a90069d41f630d732f47f09677f76d7f1f75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
