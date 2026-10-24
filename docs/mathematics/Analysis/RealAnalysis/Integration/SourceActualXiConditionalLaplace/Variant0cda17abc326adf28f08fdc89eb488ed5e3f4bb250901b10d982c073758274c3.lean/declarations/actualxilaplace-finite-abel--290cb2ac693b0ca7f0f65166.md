# actualXiLaplace_finite_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e206d28d-c730-eafe-7223-fa57c0f09be1",
  "kind": "theorem",
  "lexical_name": "actualXiLaplace_finite_abel",
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
  "slug": "actualxilaplace-finite-abel--290cb2ac693b0ca7f0f65166",
  "source": {
    "blob": "e51fc70e50ca999d5c3a286560f88135b1f98e2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant0cda17abc326adf28f08fdc89eb488ed5e3f4bb250901b10d982c073758274c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:290cb2ac693b0ca7f0f65166b9d2ab26bb425b5f1e389e0e3154667d967db5ca",
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

Occurrence: `result:e206d28d-c730-eafe-7223-fa57c0f09be1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiLaplace_finite_abel {b : ℝ} (hb : Real.log 7 ≤ b) (σ : ℝ) :
    (∫ t in Real.log 7..b, |actualAnchoredXiTailPrimitive t| * Real.exp (-σ * t)) =
      actualXiAbsoluteCumulative b * Real.exp (-σ * b) -
        actualXiAbsoluteCumulative (Real.log 7) * Real.exp (-σ * Real.log 7) +
          σ * ∫ t in Real.log 7..b, actualXiAbsoluteCumulative t * Real.exp (-σ * t) := by
  have hH := actualXiAbsoluteCumulative_absolutelyContinuous hb
  have he : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-σ * t)) := by fun_prop
  have heAC := he.contDiffOn.absolutelyContinuousOnInterval
  have hd (t : ℝ) :
      HasDerivAt (fun t : ℝ => Real.exp (-σ * t)) (-σ * Real.exp (-σ * t)) t := by
    convert (((hasDerivAt_id t).const_mul (-σ)).exp) using 1 <;> first | rfl | ring
  have hi1 := absolute_weight_intervalIntegrable hb σ
  have hi2 := cumulative_weight_intervalIntegrable hb σ
  have hi2' : IntervalIntegrable
      (fun t => -σ * (actualXiAbsoluteCumulative t * Real.exp (-σ * t)))
      volume (Real.log 7) b := hi2.const_mul (-σ)
  have hx : (∫ t in Real.log 7..b,
      deriv actualXiAbsoluteCumulative t * Real.exp (-σ * t) +
        actualXiAbsoluteCumulative t * deriv (fun t => Real.exp (-σ * t)) t) =
      (∫ t in Real.log 7..b, |actualAnchoredXiTailPrimitive t| * Real.exp (-σ * t)) -
        σ * ∫ t in Real.log 7..b, actualXiAbsoluteCumulative t * Real.exp (-σ * t) := by
    rw [← neg_mul, ← intervalIntegral.integral_const_mul,
      ← intervalIntegral.integral_add hi1 hi2']
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualXiAbsoluteCumulative_ae_hasDerivAt hb] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv, (hd t).deriv]
    ring
  have hh := hH.integral_deriv_mul_eq_sub heAC
  rw [hx] at hh
  linarith

/-- The future mean hypothesis pays the actual finite prefix through monotonicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant0cda17abc326adf28f08fdc89eb488ed5e3f4bb250901b10d982c073758274c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant0cda17abc326adf28f08fdc89eb488ed5e3f4bb250901b10d982c073758274c3.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e51fc70e50ca999d5c3a286560f88135b1f98e2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
