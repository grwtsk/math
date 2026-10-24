# actualCorrelation_Riesz_curvature_moments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fca7c6b-812a-1b27-7d2e-61cf06149f34",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_Riesz_curvature_moments",
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
  "slug": "actualcorrelation-riesz-curvature-moments--9f11caa21f57e55f06b37f35",
  "source": {
    "blob": "da07043012d1491c97f6f7088a19a97417a7dd56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 265,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f11caa21f57e55f06b37f35e58bc6d6e9559b88edd4d3a0c9edd491c2635862",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fca7c6b-812a-1b27-7d2e-61cf06149f34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_Riesz_curvature_moments {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t) = 0 ∧
      (∫ t in 0..2 * A, t * deriv (deriv
        (sourceCorrelation explicitSecondDerivative A)) t) = 1 := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  have hC : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hp
  have hC' : ContDiff ℝ 1 (deriv C) := sourceCorrelation_deriv_contDiff hp
  have he := actualCorrelation_Riesz_endpoint_ledger hA
  have hz : C (2 * A) = 0 := he.2.2.1
  have hz' : deriv C (2 * A) = 0 := he.2.2.2
  have hzero : C 0 = 1 := he.1
  have hzero' : deriv C 0 = 0 := he.2.1
  have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hC.differentiable (by norm_num) t).hasDerivAt)
    (hC'.continuous.intervalIntegrable 0 (2 * A))
  have hf' := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hC'.differentiable (by norm_num) t).hasDerivAt)
    (hC'.continuous_deriv_one.intervalIntegrable 0 (2 * A))
  have hb := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => t) (u' := fun _ => (1 : ℝ)) (v := deriv C)
    (v' := deriv (deriv C)) (fun t _ => hasDerivAt_id t)
    (fun t _ => (hC'.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (2 * A))
    (hC'.continuous_deriv_one.intervalIntegrable 0 (2 * A))
  simp only [hz, hz', hzero, hzero', one_mul, zero_mul, mul_zero] at hf hf' hb
  exact ⟨by simpa only [sub_self] using hf', by linarith⟩

/-- The prescribed center includes the authentic quarter-digamma archimedean anchor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative03/Variante3be20244ccfd372b2b754006ce750ce5d1fcf6dba99f4668e7fa34150fd8af6.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da07043012d1491c97f6f7088a19a97417a7dd56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
