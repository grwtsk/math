# source_two_not_ae_smul_source_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:600bd3fc-655b-746f-89c6-efad7c329860",
  "kind": "theorem",
  "lexical_name": "source_two_not_ae_smul_source_one",
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
  "slug": "source-two-not-ae-smul-source-one--7387ffee84e8c5e904ea3b5b",
  "source": {
    "blob": "e77e1c67b5b008298b60b9b6a87cc276f9e3c0a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7387ffee84e8c5e904ea3b5b8a077b21787a875d916b4c5a5f839566833688e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:600bd3fc-655b-746f-89c6-efad7c329860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_two_not_ae_smul_source_one (c : ℂ) :
    ¬ (fun x : ℝ => (normalizedTest explicitSecondDerivative 2 x : ℂ)) =ᵐ[volume]
      fun x => c * (normalizedTest explicitSecondDerivative 1 x : ℂ) := by
  intro h
  have h2 : Continuous (fun x : ℝ => (normalizedTest explicitSecondDerivative 2 x : ℂ)) :=
    Complex.continuous_ofReal.comp (normalizedTest_contDiff 2 (by norm_num)).continuous
  have h1 : Continuous (fun x : ℝ => c * (normalizedTest explicitSecondDerivative 1 x : ℂ)) :=
    continuous_const.mul
      (Complex.continuous_ofReal.comp (normalizedTest_contDiff 1 (by norm_num)).continuous)
  have he := congrFun (Measure.eq_of_ae_eq h h2 h1) (3 / 2)
  rw [source_one_at_three_halves, Complex.ofReal_zero, mul_zero] at he
  have hz : normalizedTest explicitSecondDerivative 2 (3 / 2) = 0 := by
    exact_mod_cast he
  exact (ne_of_gt source_two_at_three_halves_pos) hz

/-- The actual scale-two class is outside every complex scalar multiple of scale one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/062SourcePureRotationObstruction/Variant6e83ff599eb76e8d7ec071115387a8d3121b57663ef16d810e6305acf0289d3c.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e77e1c67b5b008298b60b9b6a87cc276f9e3c0a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
