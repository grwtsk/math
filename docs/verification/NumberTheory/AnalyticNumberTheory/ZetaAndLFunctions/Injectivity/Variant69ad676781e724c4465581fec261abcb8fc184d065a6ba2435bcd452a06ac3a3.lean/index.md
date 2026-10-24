# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Injectivity.Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "620e6295e4d930b19a562314791e91c4d7e2182b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `620e6295e4d930b19a562314791e91c4d7e2182b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Tannery` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Linearity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LSeries.abscissaOfAbsConv_add_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-abscissaofabsconv-add-le--a764a5d2ac9ead2b4a86efb8.md) | 26 | `result-track:a764a5d2ac9ead2b4a86efb813b3e1e95eb1151d256ef703b51e24145c071c92` |
| 2 | `lemma` | [LSeries.abscissaOfAbsConv_sub_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-abscissaofabsconv-sub-le--947fffb2a967e3ca0858d342.md) | 32 | `result-track:947fffb2a967e3ca0858d3424b6d34e43261f3010090208c58d12bc26490c2d5` |
| 3 | `lemma` | [cpow_mul_div_cpow_eq_div_div_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/cpow-mul-div-cpow-eq-div-div-cpow--8774d9d3160fe8a179bc885f.md) | 37 | `result-track:8774d9d3160fe8a179bc885ffe421be0e9cf5fc2b7bceda73d9c3823396c9ecc` |
| 4 | `lemma` | [LSeries.tendsto_cpow_mul_atTop](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-tendsto-cpow-mul-attop--2b681a1e00332f81367e4624.md) | 53 | `result-track:2b681a1e00332f81367e46244572685fb32f343f570b0a77764457f856f3edba` |
| 5 | `lemma` | [LSeries.tendsto_atTop](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-tendsto-attop--d04a93d176674777d419eed5.md) | 121 | `result-track:d04a93d176674777d419eed5cef9ea84f936d4c520088d1ea6cbc276525caeff` |
| 6 | `lemma` | [LSeries_eq_zero_of_abscissaOfAbsConv_eq_top](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-eq-zero-of-abscissaofabsconv-eq-top--de94c9a58d347450755325d9.md) | 131 | `result-track:de94c9a58d347450755325d97e66e617967b11bb1a34ad6eda0796d4346d552e` |
| 7 | `lemma` | [LSeries_eventually_eq_zero_iff'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-eventually-eq-zero-iff--ae9c4df5feedd1141c946857.md) | 140 | `result-track:ae9c4df5feedd1141c94685722ceca8b6f0196f8a2a5582c50ed144bddee00db` |
| 8 | `lemma` | [LSeries_eq_zero_iff](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-eq-zero-iff--6888e2a08d8ceb1687a11225.md) | 175 | `result-track:6888e2a08d8ceb1687a11225e731042b77e2d6745fc7eef7bc9beca89dc149ca` |
| 9 | `lemma` | [LSeries_sub_eventuallyEq_zero_of_LSeries_eventually_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-sub-eventuallyeq-zero-of-lseries-eventually-eq--712a2c31792690fbd3c8d553.md) | 191 | `result-track:712a2c31792690fbd3c8d553303b0bd75f6412e3707ccf1aaab253193c43dab2` |
| 10 | `lemma` | [LSeries.eq_of_LSeries_eventually_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-eq-of-lseries-eventually-eq--d2a8bdc08907c9840dbf4f97.md) | 215 | `result-track:d2a8bdc08907c9840dbf4f979c21a1d7c12c9f40cad0396bbd0a85cb79793e80` |
| 11 | `lemma` | [LSeries_eq_iff_of_abscissaOfAbsConv_lt_top](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-eq-iff-of-abscissaofabsconv-lt-top--6bfa30d4b5cd5533e655af89.md) | 228 | `result-track:6bfa30d4b5cd5533e655af89248c2e6c5c42b87f1e427d67fdec1dcd4e3c76ce` |
| 12 | `lemma` | [LSeries_injOn](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variant69ad676781e724c4465581fec261abcb8fc184d065a6ba2435bcd452a06ac3a3.lean/declarations/lseries-injon--64c51012218b31c85f144586.md) | 237 | `result-track:64c51012218b31c85f144586d0b660f8f927f5fbe2a42a3e537693d7e60a6407` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
