# actualPsi_finite_stieltjes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d404906-c71e-00ac-6cdc-e798208fd2f0",
  "kind": "theorem",
  "lexical_name": "actualPsi_finite_stieltjes",
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
  "slug": "actualpsi-finite-stieltjes--cb6437436e45135b2ed37389",
  "source": {
    "blob": "7b4441bad691c1421c789614db2a608a382f59a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantef4ea442f0d969fc9763f9674df4765abb8cc4adb1a375a6a4813e6d7d3e2028.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb6437436e45135b2ed373898bf4f0b3c044e657b5b8734f1071e905edad592b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantef4ea442f0d969fc9763f9674df4765abb8cc4adb1a375a6a4813e6d7d3e2028.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d404906-c71e-00ac-6cdc-e798208fd2f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPsi_finite_stieltjes {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = -(∫ x in Ioc (1 : ℝ) (Real.exp (2 * A)),
      Chebyshev.psi x * deriv (plainProfile A 1) x) := by
  have hf := (plainProfile_contDiff (by linarith : 0 < A) 1).differentiable (by norm_num)
  have ha := sum_mul_eq_sub_integral_mul₀ ArithmeticFunction.vonMangoldt (by simp)
    (Real.exp (2 * A)) (fun x _ => hf.differentiableAt)
    (actual_derivative_integrable_Icc hA)
  rw [actualPsi_sum_eq_residual hA, touching_source_zero (by linarith : 0 < A),
    zero_mul, zero_sub] at ha
  rw [ha]
  congr 1
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
  rw [← Chebyshev.psi_eq_sum_Icc]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantef4ea442f0d969fc9763f9674df4765abb8cc4adb1a375a6a4813e6d7d3e2028.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt01/Variantef4ea442f0d969fc9763f9674df4765abb8cc4adb1a375a6a4813e6d7d3e2028.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b4441bad691c1421c789614db2a608a382f59a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
