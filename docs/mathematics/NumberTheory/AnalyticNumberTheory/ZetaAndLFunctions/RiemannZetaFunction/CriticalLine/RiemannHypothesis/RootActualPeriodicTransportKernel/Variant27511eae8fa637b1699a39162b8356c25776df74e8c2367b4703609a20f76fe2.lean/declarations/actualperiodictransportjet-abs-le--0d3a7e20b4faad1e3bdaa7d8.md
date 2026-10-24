# actualPeriodicTransportJet_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52d7dd0b-a319-e13d-9b82-e2056382e97e",
  "kind": "theorem",
  "lexical_name": "actualPeriodicTransportJet_abs_le",
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
  "slug": "actualperiodictransportjet-abs-le--0d3a7e20b4faad1e3bdaa7d8",
  "source": {
    "blob": "9809ef01fa0f2422e96ba270e31e1e615efc6f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant27511eae8fa637b1699a39162b8356c25776df74e8c2367b4703609a20f76fe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d3a7e20b4faad1e3bdaa7d88022da85db4171b0d9d97b2c823d30d13b1182f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant27511eae8fa637b1699a39162b8356c25776df74e8c2367b4703609a20f76fe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52d7dd0b-a319-e13d-9b82-e2056382e97e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicTransportJet_abs_le {A z : ℝ} (hA : 91 ≤ A) (hz : 0 ≤ z) :
    |actualPeriodicTransportJet A z| ≤ 4 / A := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  by_cases hs : 2 * A ≤ z
  · have h0 := actualCorrelation_jet_zero_right A hA1
    unfold actualPeriodicTransportJet
    rw [h0 4 z hs, h0 3 z hs, h0 2 z hs, h0 1 z hs]
    simp only [mul_zero, sub_zero, zero_div, add_zero, abs_zero]
    positivity
  have hzs : z ≤ 2 * A := (lt_of_not_ge hs).le
  have h4 := actual_correlation_iterated_fourth_abs_le_sixty_seven A z hA
  have h3 := actual_correlation_third_edge_abs_le (z := z) hA hzs
  have h2 : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z| ≤
      5 / A ^ 2 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actualCorrelation_second_abs_le_five hA z
  have h1 : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤
      5 / A ^ 2 * z := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero, abs_of_nonneg hz] using
      SourceFiveFullKappaShortReduction.actualCorrelation_first_abs_le_five hA z
  have h3' : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z| ≤
      134 / A ^ 3 := by
    calc
      _ ≤ 67 / A ^ 4 * (2 * A - z) := h3
      _ ≤ 67 / A ^ 4 * (2 * A) :=
        mul_le_mul_of_nonneg_left (by linarith) (by positivity)
      _ = _ := by field_simp; ring
  have h1' : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤
      10 / A := by
    calc
      _ ≤ 5 / A ^ 2 * z := h1
      _ ≤ 5 / A ^ 2 * (2 * A) := mul_le_mul_of_nonneg_left hzs (by positivity)
      _ = _ := by field_simp; ring
  have hb : |actualPeriodicTransportJet A z| ≤
      67 / A ^ 4 + (3 / 2 : ℝ) * (134 / A ^ 3) + (5 / A ^ 2) / 4 +
        (3 / 8 : ℝ) * (10 / A) := by
    unfold actualPeriodicTransportJet
    apply (abs_add_le _ _).trans
    have hh := abs_sub
      (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z -
        (3 / 2 : ℝ) * iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z)
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z / 4)
    have hg := abs_sub (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z)
      ((3 / 2 : ℝ) * iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z)
    simp only [abs_mul, abs_div, abs_of_pos (by norm_num : 0 < (3 / 2 : ℝ)),
      abs_of_pos (by norm_num : 0 < (3 / 8 : ℝ)),
      abs_of_pos (by norm_num : 0 < (4 : ℝ))] at *
    nlinarith
  apply hb.trans
  have ha2 := mul_le_mul_of_nonneg_right hA hAp.le
  have ha3 := mul_le_mul_of_nonneg_right hA (sq_nonneg A)
  apply (le_div_iff₀ hAp).2
  field_simp
  nlinarith

/-- Its physical-column integration weight keeps the complete exponential prefactor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant27511eae8fa637b1699a39162b8356c25776df74e8c2367b4703609a20f76fe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualPeriodicTransportKernel/Variant27511eae8fa637b1699a39162b8356c25776df74e8c2367b4703609a20f76fe2.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9809ef01fa0f2422e96ba270e31e1e615efc6f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
