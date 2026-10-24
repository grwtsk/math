# lintegral_mul_le_Lp_mul_Lq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:331db946-bac9-3e64-52eb-eb67f61a6978",
  "kind": "theorem",
  "lexical_name": "lintegral_mul_le_Lp_mul_Lq",
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
  "slug": "lintegral-mul-le-lp-mul-lq--04d6d6438692f4e05b91d81c",
  "source": {
    "blob": "931e69ad6afb3c17b677b6029211c720218e4863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04d6d6438692f4e05b91d81c5f3c29ebd83ab93a10129e1b7d15954414ce7442",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:331db946-bac9-3e64-52eb-eb67f61a6978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mul_le_Lp_mul_Lq (μ : Measure α) {p q : ℝ} (hpq : p.HolderConjugate q)
    {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ) (hg : AEMeasurable g μ) :
    (∫⁻ a, (f * g) a ∂μ) ≤ (∫⁻ a, f a ^ p ∂μ) ^ (1 / p) * (∫⁻ a, g a ^ q ∂μ) ^ (1 / q) := by
  by_cases hf_zero : ∫⁻ a, f a ^ p ∂μ = 0
  · refine Eq.trans_le ?_ (zero_le _)
    exact lintegral_mul_eq_zero_of_lintegral_rpow_eq_zero hpq.nonneg hf hf_zero
  by_cases hg_zero : ∫⁻ a, g a ^ q ∂μ = 0
  · refine Eq.trans_le ?_ (zero_le _)
    rw [mul_comm]
    exact lintegral_mul_eq_zero_of_lintegral_rpow_eq_zero hpq.symm.nonneg hg hg_zero
  by_cases hf_top : ∫⁻ a, f a ^ p ∂μ = ⊤
  · exact lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_eq_top hpq.pos hpq.symm.nonneg hf_top hg_zero
  by_cases hg_top : ∫⁻ a, g a ^ q ∂μ = ⊤
  · rw [mul_comm, mul_comm ((∫⁻ a : α, f a ^ p ∂μ) ^ (1 / p))]
    exact lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_eq_top hpq.symm.pos hpq.nonneg hg_top hf_zero
  -- non-⊤ non-zero case
  exact ENNReal.lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top hpq hf hf_top hg_top hf_zero hg_zero

/-- A different formulation of Hölder's inequality for two functions, with two exponents that sum to
1, instead of reciprocals of -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant74d24e06276009ece05fa568b4f0bbebc06d27dea2ac47040876663074c3b159.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `931e69ad6afb3c17b677b6029211c720218e4863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
