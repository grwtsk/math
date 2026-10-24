# actualHalfNearClosedPrefixRow_eq_periodic_add_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e39c848-68e6-d076-dc77-8829b4a62417",
  "kind": "theorem",
  "lexical_name": "actualHalfNearClosedPrefixRow_eq_periodic_add_mean",
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
  "slug": "actualhalfnearclosedprefixrow-eq-periodic-add-mean--40239613a64b8432b1368256",
  "source": {
    "blob": "18f5618be3cdb7a72b12f2c4699258215702bba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantd25055efec6a9c59095d891c1da2050ff1afc3daed87a1f7a4e7267792552dd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40239613a64b8432b1368256fc2e8cb23368b8e00cd4fc7e6ed796f648aeac31",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantd25055efec6a9c59095d891c1da2050ff1afc3daed87a1f7a4e7267792552dd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e39c848-68e6-d076-dc77-8829b4a62417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfNearClosedPrefixRow_eq_periodic_add_mean {A : ℝ}
    (hA : 25600 ≤ A) (t : ℝ) :
    actualHalfNearClosedPrefixRow A t =
      actualPhysicalPeriodicPrefixRow A t ((vaughanCutoff A + 1 : ℕ) : ℝ)
        (Real.exp (A / 2)) +
      actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        (actualRetainedMeanSourcePrimitive A t (A / 2) -
          actualRetainedMeanSourcePrimitive A t
            (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) := by
  have ho := (actual_orders hA).1
  have hi := actualPhysicalPeriodicPrefixRow_intervalIntegrable
    (by linarith : 1 ≤ A) (t := t) (by simp) ho
  have hf : IntervalIntegrable (actualPeriodicPhysicalCellProfile A t) volume
      ((vaughanCutoff A + 1 : ℕ) : ℝ) (Real.exp (A / 2)) := by
    have hc := (actualPeriodicPhysicalCellProfile_contDiffOn
      (by linarith : 0 < A) (by positivity) (Real.exp (A / 2)) t).continuousOn
    rw [← uIcc_of_le ho] at hc
    exact hc.intervalIntegrable
  have he : actualHalfNearClosedPrefixRow A t =
      (∫ x in ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.exp (A / 2),
        ((∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor x),
          centeredBeta (vaughanCutoff A) n) - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
            actualPeriodicPhysicalCellProfile A t x) +
      actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        ∫ x in ((vaughanCutoff A + 1 : ℕ) : ℝ)..Real.exp (A / 2),
          actualPeriodicPhysicalCellProfile A t x := by
    rw [← intervalIntegral.integral_const_mul, ← intervalIntegral.integral_add hi
      (hf.const_mul (actualCenteredPrefixPeriodMean (vaughanCutoff A)))]
    apply intervalIntegral.integral_congr
    intro x _
    dsimp only [actualHalfNearClosedPrefixRow]
    ring
  rw [he, physical_mean_integral (by linarith : 1 ≤ A) t (by positivity) ho, Real.log_exp]
  rfl

/-- Every retained mean time factor is genuinely L1 over the unchanged original interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantd25055efec6a9c59095d891c1da2050ff1afc3daed87a1f7a4e7267792552dd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantd25055efec6a9c59095d891c1da2050ff1afc3daed87a1f7a4e7267792552dd8.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18f5618be3cdb7a72b12f2c4699258215702bba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
