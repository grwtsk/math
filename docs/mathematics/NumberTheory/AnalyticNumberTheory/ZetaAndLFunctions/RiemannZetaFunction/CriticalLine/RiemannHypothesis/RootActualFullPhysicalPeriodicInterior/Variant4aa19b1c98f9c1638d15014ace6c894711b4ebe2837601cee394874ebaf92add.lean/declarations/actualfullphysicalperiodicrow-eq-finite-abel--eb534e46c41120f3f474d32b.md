# actualFullPhysicalPeriodicRow_eq_finite_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8150633a-d671-24da-aa98-9b437345cf29",
  "kind": "theorem",
  "lexical_name": "actualFullPhysicalPeriodicRow_eq_finite_abel",
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
  "slug": "actualfullphysicalperiodicrow-eq-finite-abel--eb534e46c41120f3f474d32b",
  "source": {
    "blob": "c4030a8f9c208cff74b438f827032b55856c7fe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant4aa19b1c98f9c1638d15014ace6c894711b4ebe2837601cee394874ebaf92add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb534e46c41120f3f474d32b30dcf68ca2facc1585066c9c5dd7042ea570178c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant4aa19b1c98f9c1638d15014ace6c894711b4ebe2837601cee394874ebaf92add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8150633a-d671-24da-aa98-9b437345cf29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullPhysicalPeriodicRow_eq_finite_abel {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    actualFullPhysicalPeriodicRow A t = actualPeriodicColumnAbelRow A t := by
  obtain ⟨_, hk⟩ := physical_orders hA
  have hl : (0 : ℝ) < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  have hT := twisted_continuous hA t
  have hi := actualLogColumnPrefix_mul_intervalIntegrable A
    (sourceKernelCutoff A / (vaughanCutoff A + 1)) (actual_column_window_nonempty hA)
    (actualTwistedTimeDensity A t) hT
  change IntervalIntegrable (fun s => actualLogColumnPrefix A s *
    actualTwistedTimeDensity A t s) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) at hi
  have hm : IntervalIntegrable (fun s => actualCenteredPrefixPeriodMean (vaughanCutoff A) *
      actualTwistedTimeDensity A t s) volume
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A) :=
    (hT.const_mul _).intervalIntegrable _ _
  unfold actualFullPhysicalPeriodicRow
  rw [actualPhysicalPeriodicPrefixRow_eq_log hl hk]
  change (∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
    (actualLogColumnPrefix A s - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
      actualTwistedTimeDensity A t s) = _
  simp_rw [sub_mul]
  rw [intervalIntegral.integral_sub hi hm, intervalIntegral.integral_const_mul,
    actual_prefix_T_eq_mean_add_abel_row hA t]
  ring

/-- Genuine physical Abel exposes both source point traces and all variation on the full window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant4aa19b1c98f9c1638d15014ace6c894711b4ebe2837601cee394874ebaf92add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant4aa19b1c98f9c1638d15014ace6c894711b4ebe2837601cee394874ebaf92add.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4030a8f9c208cff74b438f827032b55856c7fe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
