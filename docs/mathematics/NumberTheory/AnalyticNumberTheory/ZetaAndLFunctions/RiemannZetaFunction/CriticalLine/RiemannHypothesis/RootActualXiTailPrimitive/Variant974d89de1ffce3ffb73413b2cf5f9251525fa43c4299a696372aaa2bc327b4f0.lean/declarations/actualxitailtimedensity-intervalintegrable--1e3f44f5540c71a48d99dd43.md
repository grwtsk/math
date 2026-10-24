# actualXiTailTimeDensity_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec18210c-1aec-4879-765e-444e3c601f2b",
  "kind": "theorem",
  "lexical_name": "actualXiTailTimeDensity_intervalIntegrable",
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
  "slug": "actualxitailtimedensity-intervalintegrable--1e3f44f5540c71a48d99dd43",
  "source": {
    "blob": "24f26a1fa9b3f9c6538d90e3acee2decc6eea49f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variant974d89de1ffce3ffb73413b2cf5f9251525fa43c4299a696372aaa2bc327b4f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e3f44f5540c71a48d99dd43ef44d995bc5661c907d7d4c8fea9bce733f5b37b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variant974d89de1ffce3ffb73413b2cf5f9251525fa43c4299a696372aaa2bc327b4f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec18210c-1aec-4879-765e-444e3c601f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiTailTimeDensity_intervalIntegrable {b : ℝ} (hb : Real.log 7 ≤ b) :
    IntervalIntegrable actualXiTailTimeDensity volume (Real.log 7) b := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  let B : ℝ := Chebyshev.psi (Real.exp b) + Real.exp b + |c|
  have hB : 0 ≤ B := by dsimp [B]; positivity
  apply intervalIntegrable_iff.mpr
  have hbound : ∀ᵐ t ∂volume.restrict (uIoc (Real.log 7) b),
      ‖actualXiTailTimeDensity t‖ ≤ B := by
    rw [uIoc_of_le hb]
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans ht.1.le
    have he : Real.exp t ≤ Real.exp b := Real.exp_le_exp.mpr ht.2
    have hp := Chebyshev.psi_mono he
    have ha : |shiftedActualChebyshev (Real.exp t)| ≤ B := by
      have hh := abs_add_le (Chebyshev.psi (Real.exp t) - Real.exp t) c
      have hh2 := abs_sub (Chebyshev.psi (Real.exp t)) (Real.exp t)
      rw [abs_of_nonneg (Chebyshev.psi_nonneg _), abs_of_pos (Real.exp_pos _)] at hh2
      unfold shiftedActualChebyshev
      change |Chebyshev.psi (Real.exp t) - Real.exp t + c| ≤ B
      dsimp [B]
      linarith
    have hd : Real.exp (-t / 2) ≤ 1 := by
      simpa only [Real.exp_zero] using (Real.exp_le_exp.mpr (by linarith : -t / 2 ≤ 0))
    rw [Real.norm_eq_abs, actualXiTailTimeDensity, abs_mul, abs_of_pos (Real.exp_pos _)]
    calc
      _ ≤ B * Real.exp (-t / 2) := mul_le_mul_of_nonneg_right ha (Real.exp_pos _).le
      _ ≤ B := by nlinarith
  exact Measure.integrableOn_of_bounded (by simp)
    actualXiTailTimeDensity_measurable.aestronglyMeasurable hbound

/-- Positive exponential substitution retains the literal physical source and its lower seven. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variant974d89de1ffce3ffb73413b2cf5f9251525fa43c4299a696372aaa2bc327b4f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualXiTailPrimitive/Variant974d89de1ffce3ffb73413b2cf5f9251525fa43c4299a696372aaa2bc327b4f0.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24f26a1fa9b3f9c6538d90e3acee2decc6eea49f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
