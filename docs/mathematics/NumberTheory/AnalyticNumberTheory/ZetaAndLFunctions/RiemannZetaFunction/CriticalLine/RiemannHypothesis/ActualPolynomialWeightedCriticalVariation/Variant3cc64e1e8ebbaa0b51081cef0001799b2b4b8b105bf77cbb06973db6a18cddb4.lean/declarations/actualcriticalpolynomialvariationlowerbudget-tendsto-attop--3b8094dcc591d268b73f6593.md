# actualCriticalPolynomialVariationLowerBudget_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20d7693d-6b79-8d89-5459-fd6a05b8c1b2",
  "kind": "theorem",
  "lexical_name": "actualCriticalPolynomialVariationLowerBudget_tendsto_atTop",
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
  "slug": "actualcriticalpolynomialvariationlowerbudget-tendsto-attop--3b8094dcc591d268b73f6593",
  "source": {
    "blob": "4c5e65afba1f0c24c84364d80d38e4e86265fc3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b8094dcc591d268b73f65934272a0ec3ac94fda732818a3f08775f5c68593bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20d7693d-6b79-8d89-5459-fd6a05b8c1b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalPolynomialVariationLowerBudget_tendsto_atTop :
    Tendsto actualCriticalPolynomialVariationLowerBudget atTop atTop := by
  have ha : Tendsto (fun A : ℝ => A / 80) atTop atTop :=
    tendsto_id.atTop_div_const (by norm_num)
  have h := (Real.tendsto_mul_exp_add_div_pow_atTop (7 / 4) (-1) 2
    (by norm_num)).comp ha
  convert h.const_mul_atTop (by norm_num : 0 < (1 / 57600 : ℝ)) using 1
  ext A
  unfold actualCriticalPolynomialVariationLowerBudget
  simp only [Function.comp_apply, div_pow, div_div, mul_div_assoc]
  ring

/-- The actual weighted derivative variation has no eventual uniform upper budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c5e65afba1f0c24c84364d80d38e4e86265fc3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
