# Verification target: GRWTSK.Analysis.MeasureTheory.Quotient.Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b71e0a3f773b720ae422a48d3a93e44211f79906",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b71e0a3f773b720ae422a48d3a93e44211f79906`.

Source path: `GRWTSK/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.FundamentalDomain` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [QuotientGroup.measurableSMul](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/quotientgroup-measurablesmul--84c2d9fe5c0d663550a07b6b.md) | 56 | `declaration-track:84c2d9fe5c0d663550a07b6b3d730cb36363078b6ba9dd6477f297865a064b15` |
| 2 | `theorem` | [measurePreserving_quotientGroup_mk_of_QuotientMeasureEqMeasurePreimage](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/measurepreserving-quotientgroup-mk-of-quotientmeasureeqmeasurepreimage--9b611a299b0e8201434cf84a.md) | 74 | `result-track:9b611a299b0e8201434cf84a50a86277dcdd6a69efdd5743ba579057f198ce36` |
| 3 | `lemma` | [MeasureTheory.QuotientMeasureEqMeasurePreimage.smulInvariantMeasure_quotient](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/measuretheory-quotientmeasureeqmeasurepreimage-smulinvariantmeasure-quot--5bc74d83e629140a2102dc3c.md) | 88 | `result-track:5bc74d83e629140a2102dc3cd73293d8d0e5318c6be39d38f0f0281538120f5d` |
| 4 | `lemma` | [MeasureTheory.QuotientMeasureEqMeasurePreimage.mulInvariantMeasure_quotient](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/measuretheory-quotientmeasureeqmeasurepreimage-mulinvariantmeasure-quoti--bc963f8a2809946eef6498f9.md) | 129 | `result-track:bc963f8a2809946eef6498f988e33b98cfceba9b0b45c8a3bb5fc8e40ea64c02` |
| 5 | `theorem` | [MeasureTheory.Measure.IsMulLeftInvariant.quotientMeasureEqMeasurePreimage_of_set](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/measuretheory-measure-ismulleftinvariant-quotientmeasureeqmeasurepreimag--779fa3d4bd0f0cc49cadf73a.md) | 156 | `result-track:779fa3d4bd0f0cc49cadf73ac69bf01637a79e790f0510727bee4e8337dd39c6` |
| 6 | `theorem` | [MeasureTheory.leftInvariantIsQuotientMeasureEqMeasurePreimage](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/measuretheory-leftinvariantisquotientmeasureeqmeasurepreimage--7282353fbc2fbc70626a86eb.md) | 187 | `result-track:7282353fbc2fbc70626a86eb0c55e3c2078498d4f6b39a1297042fa9433a4a6e` |
| 7 | `theorem` | [MeasureTheory.QuotientMeasureEqMeasurePreimage.haarMeasure_quotient](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/measuretheory-quotientmeasureeqmeasurepreimage-haarmeasure-quotient--b07cbb80f0013355bbb2b625.md) | 221 | `result-track:b07cbb80f0013355bbb2b625182a026b9171f9c9990390ece1d641a653a5d3a6` |
| 8 | `theorem` | [IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_HaarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/isfundamentaldomain-quotientmeasureeqmeasurepreimage-haarmeasure--b82473d019da3552f3a35900.md) | 264 | `result-track:b82473d019da3552f3a3590092d23c25ef18d8030ca452381ca30540690baee0` |
| 9 | `theorem` | [IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_smulHaarMeasure](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/isfundamentaldomain-quotientmeasureeqmeasurepreimage-smulhaarmeasure--7cb4dbd2fc84af79cfeec2d5.md) | 293 | `result-track:7cb4dbd2fc84af79cfeec2d51e0acecb1ed60580f24787f7a2e0e26b172a2d4f` |
| 10 | `lemma` | [essSup_comp_quotientGroup_mk](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/esssup-comp-quotientgroup-mk--9cecc14a3d02c96ddfe98cee.md) | 339 | `result-track:9cecc14a3d02c96ddfe98ceef3a6e3fd300cfc2555ffbc16c9f77e217bc282df` |
| 11 | `lemma` | [_root_.MeasureTheory.IsFundamentalDomain.absolutelyContinuous_map](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/root-measuretheory-isfundamentaldomain-absolutelycontinuous-map--8b57725cb31e10a3b37b1622.md) | 359 | `result-track:8b57725cb31e10a3b37b1622901a7df7161972321e3cec56ea274ddaaa63ee27` |
| 12 | `lemma` | [QuotientGroup.integral_eq_integral_automorphize](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/quotientgroup-integral-eq-integral-automorphize--93b110ae309e097f622766c1.md) | 384 | `result-track:93b110ae309e097f622766c1f2dca86b7d93170d12d6409f139853562ef009dd` |
| 13 | `lemma` | [QuotientGroup.integral_mul_eq_integral_automorphize_mul](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/quotientgroup-integral-mul-eq-integral-automorphize-mul--7e0e9a7b178c1551662cfb7f.md) | 404 | `result-track:7e0e9a7b178c1551662cfb7fc7b6e19361cbaa57f3e2728ec4ffc8db72a46d1e` |
| 14 | `lemma` | [QuotientAddGroup.integral_mul_eq_integral_automorphize_mul](../../../../../mathematics/Analysis/MeasureTheory/Quotient/Variantf7f31be0fa55334522c12cc0bc9e5347926ae7901dd8358ff76a2e59804e1196.lean/declarations/quotientaddgroup-integral-mul-eq-integral-automorphize-mul--107fd5c9e8617bdb2e584393.md) | 446 | `result-track:107fd5c9e8617bdb2e5843935da7b5dc41113fdcb8c9663ec14bfa0e6a58e9c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
