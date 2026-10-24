# actualCriticalPolynomialVariationLowerBudget_tendsto_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b948c816-90e4-bd31-dbcf-b4cfd410baf4",
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
  "slug": "actualcriticalpolynomialvariationlowerbudget-tendsto-attop--b35f3ae1fc04ded437ab9581",
  "source": {
    "blob": "9a3ce6f806734a5e7ceae7faec994f07eac962b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variantf82dfee672edce8bace217dd014ea504bc63b03fe700399a7e64270c3c1664ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b35f3ae1fc04ded437ab9581d1489ee0911ceea6d84cbe90080c65cf642efbdc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variantf82dfee672edce8bace217dd014ea504bc63b03fe700399a7e64270c3c1664ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b948c816-90e4-bd31-dbcf-b4cfd410baf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–88.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variantf82dfee672edce8bace217dd014ea504bc63b03fe700399a7e64270c3c1664ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variantf82dfee672edce8bace217dd014ea504bc63b03fe700399a7e64270c3c1664ed.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a3ce6f806734a5e7ceae7faec994f07eac962b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
