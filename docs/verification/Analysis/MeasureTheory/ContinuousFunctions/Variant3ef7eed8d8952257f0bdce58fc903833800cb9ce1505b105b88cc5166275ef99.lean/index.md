# Verification target: GRWTSK.Analysis.MeasureTheory.ContinuousFunctions.Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cc2fbbffdcf803f836288dbc76b3d5d1b1627b3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cc2fbbffdcf803f836288dbc76b3d5d1b1627b3`.

Source path: `GRWTSK/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MeasureTheory.Lp.boundedContinuousFunction](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/measuretheory-lp-boundedcontinuousfunction--dc175b12a656285c43842bbe.md) | 37 | `declaration-track:dc175b12a656285c43842bbe184e92cf70fd2712ead8e99a3bb529f156d8e96c` |
| 2 | `theorem` | [MeasureTheory.Lp.mem_boundedContinuousFunction_iff](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/measuretheory-lp-mem-boundedcontinuousfunction-iff--309f6bd1ef303b1288f9149a.md) | 43 | `result-track:309f6bd1ef303b1288f9149ab483a3f7cbd676336da9540ea751ac866e13e13d` |
| 3 | `theorem` | [mem_Lp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/mem-lp--ab20a31d4cc912beca9e6247.md) | 53 | `result-track:ab20a31d4cc912beca9e6247d7fc1d5600f7747befd0b998dd91fe47fcf13c11` |
| 4 | `theorem` | [Lp_nnnorm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/lp-nnnorm-le--94d20bca29682776fb173acb.md) | 60 | `result-track:94d20bca29682776fb173acb8e9a3ae10dd6d91376292bbb386339cac6deedff` |
| 5 | `theorem` | [Lp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/lp-norm-le--a94842457129a2589d9f593c.md) | 71 | `result-track:a94842457129a2589d9f593cf7bcb8c33caf3dc79c5726901e1dfc4e79bc958c` |
| 6 | `def` | [toLpHom](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolphom--fc1f6b9a3368009ed15ad54b.md) | 80 | `declaration-track:fc1f6b9a3368009ed15ad54b85ff45ad37d753c3be7ff43a823a7ace1582ab3a` |
| 7 | `theorem` | [range_toLpHom](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/range-tolphom--5b7979f3d055a690129a399a.md) | 85 | `result-track:5b7979f3d055a690129a399a9a1f3a0ceb5b7ebae26a28a98749c0fe63c18dc9` |
| 8 | `def` | [toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp--dc7d89633cc38e374b31eaec.md) | 97 | `declaration-track:dc7d89633cc38e374b31eaec85b59c4ce6ffec252bc86d3c5f182a884df2c46d` |
| 9 | `theorem` | [coeFn_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/coefn-tolp--7d3a48806a4180f79db04a5f.md) | 103 | `result-track:7d3a48806a4180f79db04a5f445e48f5b23f3de550a31e819a23c3fe1a4d28fd` |
| 10 | `theorem` | [range_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/range-tolp--9908959624301d8bfdfa5215.md) | 109 | `result-track:9908959624301d8bfdfa52150dbc71106a5dee955b21c8ca715904a71e1dcc73` |
| 11 | `theorem` | [toLp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp-norm-le--e9ddd3c4707c9e887d969158.md) | 116 | `result-track:e9ddd3c4707c9e887d969158d6efae6d11f1206c7acbed78838ce29a64590838` |
| 12 | `theorem` | [toLp_inj](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp-inj--b6cc7aa62fa3231cdc458ad6.md) | 120 | `result-track:b6cc7aa62fa3231cdc458ad66ad3c6e63131cc71a37b6ad3d49b92b3820fdbbf` |
| 13 | `theorem` | [toLp_injective](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp-injective--0bfe52442d78bbfcdf9be17e.md) | 127 | `result-track:0bfe52442d78bbfcdf9be17e658b654008e04cd060bf020610158dc4e03f22b2` |
| 14 | `def` | [toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp--4e99db0f7e5f11bf157cb5da.md) | 143 | `declaration-track:4e99db0f7e5f11bf157cb5daf72e462442f2b0bc01dc75526f70ef843195bae6` |
| 15 | `theorem` | [range_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/range-tolp--7ca07cb7e8adcf79a0d8874d.md) | 149 | `result-track:7ca07cb7e8adcf79a0d8874d2e9044393939fadca19740537c6f56a84c9bd07c` |
| 16 | `theorem` | [coeFn_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/coefn-tolp--a6fb681f8fcef95693ef1888.md) | 160 | `result-track:a6fb681f8fcef95693ef1888a87bc2679a37734334535932e78218ec4f18a903` |
| 17 | `theorem` | [toLp_def](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp-def--d64d36fd760b67837349ee56.md) | 164 | `result-track:d64d36fd760b67837349ee5617d6a76e7edac70aa5ffaec525eb871daaa29585` |
| 18 | `theorem` | [toLp_comp_toContinuousMap](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp-comp-tocontinuousmap--7516016e1abc9e80a081231b.md) | 170 | `result-track:7516016e1abc9e80a081231ba0b77bbb19517c01ca87333ee2bce8283b054da8` |
| 19 | `theorem` | [coe_toLp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/coe-tolp--ba439ca4dc844e40681c74bd.md) | 175 | `result-track:ba439ca4dc844e40681c74bd98582b4f3c0aef15920043149427d962c1a7f3c6` |
| 20 | `theorem` | [toLp_injective](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp-injective--0f7e64604ec24d9d730e75ea.md) | 179 | `result-track:0f7e64604ec24d9d730e75ea5524aee893e8832b3578f1b2e54c5fe8607c0d0f` |
| 21 | `theorem` | [toLp_inj](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp-inj--5a1d09a833ea9579cc35e424.md) | 183 | `result-track:5a1d09a833ea9579cc35e424a490385df08a4539328c8f9b6e32ec74009ac368` |
| 22 | `theorem` | [hasSum_of_hasSum_Lp](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/hassum-of-hassum-lp--e781a90017b44824f5f6f186.md) | 191 | `result-track:e781a90017b44824f5f6f1861ab7c86d4024ac33f803dc629389e3daeaa04a63` |
| 23 | `theorem` | [toLp_norm_eq_toLp_norm_coe](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp-norm-eq-tolp-norm-coe--06e0f917cd13a7e8222c1651.md) | 199 | `result-track:06e0f917cd13a7e8222c1651bd865e1139398ef62cbd94cf7b35f892670fd997` |
| 24 | `theorem` | [toLp_norm_le](../../../../../mathematics/Analysis/MeasureTheory/ContinuousFunctions/Variant3ef7eed8d8952257f0bdce58fc903833800cb9ce1505b105b88cc5166275ef99.lean/declarations/tolp-norm-le--123d1e88f854178678c2d69f.md) | 205 | `result-track:123d1e88f854178678c2d69ffd8474bd25b7dae2bfe753000f4d8b75fd235430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
