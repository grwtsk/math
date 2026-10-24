# cumulative_weight_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2430b5c4-2803-9c9a-d8a4-3b7380456535",
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
  "slug": "cumulative-weight-norm-bound--95def837378918f386ed9413",
  "source": {
    "blob": "e51fc70e50ca999d5c3a286560f88135b1f98e2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant0cda17abc326adf28f08fdc89eb488ed5e3f4bb250901b10d982c073758274c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95def837378918f386ed9413c55777b6c9514642a80bf4bcb983f2381c77ceea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant0cda17abc326adf28f08fdc89eb488ed5e3f4bb250901b10d982c073758274c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2430b5c4-2803-9c9a-d8a4-3b7380456535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–166.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant0cda17abc326adf28f08fdc89eb488ed5e3f4bb250901b10d982c073758274c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant0cda17abc326adf28f08fdc89eb488ed5e3f4bb250901b10d982c073758274c3.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e51fc70e50ca999d5c3a286560f88135b1f98e2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
