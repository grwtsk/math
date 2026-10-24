# actualXiTerminalFraction_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ce1fb0-7eb1-7752-a3a9-19be673a596c",
  "kind": "theorem",
  "lexical_name": "actualXiTerminalFraction_tendsto_zero",
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
  "slug": "actualxiterminalfraction-tendsto-zero--b1f18e514411742c3f01a573",
  "source": {
    "blob": "336efdd1ccb55cc09d1fad1c8a6183824eacdafa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1f18e514411742c3f01a573efd70ec502207879b6548be1723d3c07b544fd26",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ce1fb0-7eb1-7752-a3a9-19be673a596c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiTerminalFraction_tendsto_zero :
    Tendsto actualXiTerminalFraction atTop (𝓝 (0 : ℝ)) := by
  have he : Tendsto (fun T : ℝ => Real.exp (-T / 2)) atTop (𝓝 (0 : ℝ)) := by
    simpa only [Function.comp_apply, id_eq, neg_div] using
      Real.tendsto_exp_neg_atTop_nhds_zero.comp
      (tendsto_id.atTop_div_const (by norm_num : (0 : ℝ) < 2))
  have hb := he.const_mul (2 * Real.sqrt 2 * actualXiExponentialEnvelopeConstant)
  simp only [mul_zero] at hb
  apply squeeze_zero' _ _ hb
  · filter_upwards [eventually_ge_atTop (Real.log (7 : ℝ))] with T hT
    exact actualXiTerminalFraction_nonneg hT
  · filter_upwards [eventually_ge_atTop (Real.log (7 : ℝ))] with T hT
    exact actualXiTerminalFraction_le_exponential hT

/-- Complete integer cells recover the actual mean with only proved analytic finite errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt02/Variant12137ce1b0561dc34e6d89eeee7570d4325ff3bc1fcbe5c30fc29a7d9a91bc64.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `336efdd1ccb55cc09d1fad1c8a6183824eacdafa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
