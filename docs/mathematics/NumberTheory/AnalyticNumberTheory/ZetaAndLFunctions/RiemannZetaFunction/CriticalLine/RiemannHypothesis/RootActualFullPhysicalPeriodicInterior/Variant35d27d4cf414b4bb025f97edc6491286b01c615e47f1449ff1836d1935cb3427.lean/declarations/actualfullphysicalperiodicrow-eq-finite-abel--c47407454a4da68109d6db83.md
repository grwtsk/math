# actualFullPhysicalPeriodicRow_eq_finite_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf687de0-ff9c-de07-3626-e4419b5d2a0e",
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
  "slug": "actualfullphysicalperiodicrow-eq-finite-abel--c47407454a4da68109d6db83",
  "source": {
    "blob": "3650977b8ec931fac22d062064ce41d13a62defe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant35d27d4cf414b4bb025f97edc6491286b01c615e47f1449ff1836d1935cb3427.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c47407454a4da68109d6db834b6fb22ad7b71244aa69184ab2d39a943a3bfbd4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant35d27d4cf414b4bb025f97edc6491286b01c615e47f1449ff1836d1935cb3427.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf687de0-ff9c-de07-3626-e4419b5d2a0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–82.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant35d27d4cf414b4bb025f97edc6491286b01c615e47f1449ff1836d1935cb3427.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualFullPhysicalPeriodicInterior/Variant35d27d4cf414b4bb025f97edc6491286b01c615e47f1449ff1836d1935cb3427.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3650977b8ec931fac22d062064ce41d13a62defe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
