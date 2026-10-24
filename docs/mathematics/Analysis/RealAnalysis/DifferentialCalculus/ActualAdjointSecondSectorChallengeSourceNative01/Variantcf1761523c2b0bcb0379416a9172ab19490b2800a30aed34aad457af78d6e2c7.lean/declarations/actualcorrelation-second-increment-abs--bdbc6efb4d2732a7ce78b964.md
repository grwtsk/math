# actualCorrelation_second_increment_abs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f972aebe-2c25-bef8-8525-76d81ee03054",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_second_increment_abs",
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
  "slug": "actualcorrelation-second-increment-abs--bdbc6efb4d2732a7ce78b964",
  "source": {
    "blob": "02d609400226a201f8ab6c0639170d0643ea61f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative01/Variantcf1761523c2b0bcb0379416a9172ab19490b2800a30aed34aad457af78d6e2c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdbc6efb4d2732a7ce78b9642807983c9811e5ab93b6cf69c42017ba0448dc8a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative01/Variantcf1761523c2b0bcb0379416a9172ab19490b2800a30aed34aad457af78d6e2c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f972aebe-2c25-bef8-8525-76d81ee03054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_second_increment_abs {A y : ℝ} (hA : 91 ≤ A) (hy : 0 ≤ y) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) y -
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0| ≤
        67 / A ^ 4 * y ^ 2 := by
  have hd : Differentiable ℝ (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      (actual_correlation_contDiff_four A (by linarith)).differentiable_iteratedDeriv 2
        (by norm_num)
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Icc 0 y) (f := deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
    (fun x _ => hd x)
    (fun x hx => by
      have hb := actualCorrelation_third_abs_le hA x
      rw [abs_of_nonneg hx.1] at hb
      exact (by simpa only [Real.norm_eq_abs] using hb).trans
        (mul_le_mul_of_nonneg_left hx.2 (by positivity : 0 ≤ (67 : ℝ) / A ^ 4)))
    (convex_Icc 0 y) ⟨le_rfl, hy⟩ ⟨hy, le_rfl⟩
  simpa only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hy, pow_two, mul_assoc] using he

/-- The complete strict rectangle retains a negative second jet of size at least three. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative01/Variantcf1761523c2b0bcb0379416a9172ab19490b2800a30aed34aad457af78d6e2c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualAdjointSecondSectorChallengeSourceNative01/Variantcf1761523c2b0bcb0379416a9172ab19490b2800a30aed34aad457af78d6e2c7.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02d609400226a201f8ab6c0639170d0643ea61f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
