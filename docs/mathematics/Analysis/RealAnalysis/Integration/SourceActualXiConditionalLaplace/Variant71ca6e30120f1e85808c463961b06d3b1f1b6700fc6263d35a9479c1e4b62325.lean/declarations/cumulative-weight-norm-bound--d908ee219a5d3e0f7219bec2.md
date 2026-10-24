# cumulative_weight_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fdec28a1-7ed9-6eec-47cd-b1849f88037d",
  "kind": "theorem",
  "lexical_name": "cumulative_weight_norm_bound",
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
  "slug": "cumulative-weight-norm-bound--d908ee219a5d3e0f7219bec2",
  "source": {
    "blob": "a7c542fb98296364cbf571755de5043ceb2803d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant71ca6e30120f1e85808c463961b06d3b1f1b6700fc6263d35a9479c1e4b62325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d908ee219a5d3e0f7219bec215511ee6a0921fda86b50d808d25ec225a8cef8b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant71ca6e30120f1e85808c463961b06d3b1f1b6700fc6263d35a9479c1e4b62325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdec28a1-7ed9-6eec-47cd-b1849f88037d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cumulative_weight_norm_bound {M T₀ σ b : ℝ} (hM : 0 ≤ M)
    (hT₀ : Real.log 7 ≤ T₀) (hσ : 0 < σ)
    (haverage : ∀ T : ℝ, T₀ ≤ T → actualXiAbsoluteCumulative T ≤ M * T)
    (hb : Real.log 7 ≤ b) :
    (∫ t in Real.log 7..b,
      ‖actualXiAbsoluteCumulative t * Real.exp (-σ * t)‖) ≤
      M * ((Real.log 7 + T₀) / σ + 1 / σ ^ 2) * Real.exp (-σ * Real.log 7) := by
  have hi := cumulative_weight_intervalIntegrable hb σ
  have hj : IntervalIntegrable (fun t => M * (t + T₀) * Real.exp (-σ * t))
      volume (Real.log 7) b := (by fun_prop : Continuous _).intervalIntegrable _ _
  apply (intervalIntegral.integral_mono_on hb hi.norm hj _).trans
    (polynomial_exponential_bound hM hT₀ hσ hb)
  intro t ht
  rw [Real.norm_eq_abs, abs_of_nonneg
    (mul_nonneg (actualXiAbsoluteCumulative_nonneg ht.1) (Real.exp_pos _).le)]
  exact mul_le_mul_of_nonneg_right
    (actualXiAbsoluteCumulative_le_future_envelope hM hT₀ haverage ht.1)
    (Real.exp_pos _).le

/-- Actual weighted cumulative L1 is genuine, before any Laplace norm is estimated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant71ca6e30120f1e85808c463961b06d3b1f1b6700fc6263d35a9479c1e4b62325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant71ca6e30120f1e85808c463961b06d3b1f1b6700fc6263d35a9479c1e4b62325.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7c542fb98296364cbf571755de5043ceb2803d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
