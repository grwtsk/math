# actual_criticalPrimeTest_deriv_first_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ee9bcfb-61c0-ab3f-e0e5-cb2766ef29b9",
  "kind": "theorem",
  "lexical_name": "actual_criticalPrimeTest_deriv_first_interval",
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
  "slug": "actual-criticalprimetest-deriv-first-interval--afe20b9e03a2b4ec96e8f5c2",
  "source": {
    "blob": "206e49d7aa3c3b697a6d1e0ca9e66b66bca349d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variant2027016fd5d972bbf3dd1404f532b8062b0c16dec4dd53bf61a2d7516cc118a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afe20b9e03a2b4ec96e8f5c299eabdbc4e9e95ef1212edfddb791d7af8ddad91",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variant2027016fd5d972bbf3dd1404f532b8062b0c16dec4dd53bf61a2d7516cc118a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ee9bcfb-61c0-ab3f-e0e5-cb2766ef29b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_criticalPrimeTest_deriv_first_interval (A t : ℝ) (hA : 40 ≤ A)
    (ht0 : 0 ≤ t) (ht : t ≤ Real.log 2) :
    (5 / 16 : ℝ) ≤ deriv (criticalPrimeTest A) t ∧
      deriv (criticalPrimeTest A) t ≤ (5 / 4 : ℝ) := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hlog : Real.log 2 ≤ (1 : ℝ) := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    linarith
  have hc := sourceCorrelation_sub_one_abs_le hA1 t
  rw [abs_of_nonneg ht0] at hc
  have htbound : 5 * t / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  have hcLower : (7 / 8 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
    linarith [(abs_le.mp hc).1]
  have hcUpper : sourceCorrelation explicitSecondDerivative A t ≤ 1 :=
    (le_abs_self _).trans (actual_correlation_abs_le_one A t hA1)
  have hd := sourceCorrelation_deriv_abs_le_five_div hA1 t
  have hfive : 5 / A ≤ (1 / 8 : ℝ) := (div_le_iff₀ hp).mpr (by linarith)
  have hdlo : -(1 / 8 : ℝ) ≤ deriv (sourceCorrelation explicitSecondDerivative A) t := by
    linarith [(abs_le.mp hd).1]
  have hdhi : deriv (sourceCorrelation explicitSecondDerivative A) t ≤ (1 / 8 : ℝ) := by
    linarith [(abs_le.mp hd).2]
  have helo : 1 ≤ Real.exp (t / 2) := Real.one_le_exp (by linarith)
  have hehi : Real.exp (t / 2) ≤ 2 := by
    calc
      _ ≤ Real.exp (Real.log 2) := Real.exp_le_exp.mpr (by linarith)
      _ = 2 := Real.exp_log (by norm_num)
  rw [criticalPrimeTest_deriv A t hp]
  constructor
  · nlinarith
  · nlinarith [Real.exp_pos (t / 2)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variant2027016fd5d972bbf3dd1404f532b8062b0c16dec4dd53bf61a2d7516cc118a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFirstAtomSignedWork/Variant2027016fd5d972bbf3dd1404f532b8062b0c16dec4dd53bf61a2d7516cc118a6.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `206e49d7aa3c3b697a6d1e0ca9e66b66bca349d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
