# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FactorThru.Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84a08228a2582da495dcc2ea51b3e32214ff7c35",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84a08228a2582da495dcc2ea51b3e32214ff7c35`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors--a3463e9d9cabd9007333621e.md) | 43 | `declaration-track:a3463e9d9cabd9007333621e9ddd072de0e763eea4ee1dd2243c87816b163fd3` |
| 2 | `theorem` | [factors_congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors-congr--cf8c7b4730937dd4803964a5.md) | 46 | `result-track:cf8c7b4730937dd4803964a5dac4308a8b76220a527e3947d6ff48ddd461d5a9` |
| 3 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru--11da1b7fd3ee77cb7dd8c9a1.md) | 53 | `declaration-track:11da1b7fd3ee77cb7dd8c9a1ebf5a4a8c46352c83244c0d08583ab74a27d0c89` |
| 4 | `def` | [Factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors--23f043a071ffc8bf4dd6855f.md) | 64 | `declaration-track:23f043a071ffc8bf4dd6855f2b40f734403993a230c3eff68df8cd8aac102bd4` |
| 5 | `theorem` | [mk_factors_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/mk-factors-iff--9803c1c918fa81f5db70562a.md) | 76 | `result-track:9803c1c918fa81f5db70562ace7360b179f97f7d96972dc54a2a870da29781e4` |
| 6 | `theorem` | [mk_factors_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/mk-factors-self--2a0d1ecb96b192292d958a46.md) | 80 | `result-track:2a0d1ecb96b192292d958a460032e69979f09a75874004b81dde3dd55d4a9f1b` |
| 7 | `theorem` | [factors_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors-iff--3a56d7f18d2bf58a3943ea1f.md) | 83 | `result-track:3a56d7f18d2bf58a3943ea1f0b35c57e354b2368e4e1ecc87474037e874e1176` |
| 8 | `theorem` | [factors_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors-self--38051c3c8206da9375b1c773.md) | 87 | `result-track:38051c3c8206da9375b1c7733c8a695f654230d80d5a529dac250fd8139ded88` |
| 9 | `theorem` | [factors_comp_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors-comp-arrow--627ab06e6a9f64b814c4e130.md) | 90 | `result-track:627ab06e6a9f64b814c4e130220996112505b65a881a3770e81e048dbcb3b05c` |
| 10 | `theorem` | [factors_of_factors_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors-of-factors-right--7e9f8fe29105f39de4585056.md) | 93 | `result-track:7e9f8fe29105f39de45850560cae2941efa47c0fdf8e53db8e0efb129bc645e6` |
| 11 | `theorem` | [factors_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors-zero--ab109e7ca6d54c5767ddead9.md) | 99 | `result-track:ab109e7ca6d54c5767ddead9036c9f4ee12b88e4d21199640f1e743562e1fc17` |
| 12 | `theorem` | [factors_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors-of-le--577dbfcfd29f41dc3b9d2412.md) | 102 | `result-track:577dbfcfd29f41dc3b9d24125891f63bac0ebab147e4dffaf236a8145cb5e50c` |
| 13 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru--7725dc69cbab53bd7fc055a2.md) | 109 | `declaration-track:7725dc69cbab53bd7fc055a26655220a74ad0d3be698183eefc08f0a42c2b7b5` |
| 14 | `theorem` | [factorThru_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-arrow--b6e2e87e9c8be5f29a645f90.md) | 113 | `result-track:b6e2e87e9c8be5f29a645f909f8e679e121573b5b07b984678630714e50301c6` |
| 15 | `theorem` | [factorThru_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-self--cd35a406db0ae7acda8bff51.md) | 118 | `result-track:cd35a406db0ae7acda8bff517312bb79b3ae6db7ca807c5788c098c5bc0dad24` |
| 16 | `theorem` | [factorThru_mk_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-mk-self--4124ee2ecccbe7c51927ad40.md) | 123 | `result-track:4124ee2ecccbe7c51927ad4071847e4cc78a32a43c16b49206dc7a77b1187690` |
| 17 | `theorem` | [factorThru_comp_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-comp-arrow--c55477427fa406a97ea9d6fa.md) | 129 | `result-track:c55477427fa406a97ea9d6fad3942b2ed06313af1e27bdea5201e13af8b7b657` |
| 18 | `theorem` | [factorThru_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-eq-zero--c5ceb1c24fd8fae40d700334.md) | 135 | `result-track:c5ceb1c24fd8fae40d70033486039533165f615fdd58ac6e6125cf6e6d90e6c6` |
| 19 | `theorem` | [factorThru_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-right--99260abe71114e452d8188f2.md) | 145 | `result-track:99260abe71114e452d8188f2c56b3d8cecd6c8b6209e30177b66c3c17c5af237` |
| 20 | `theorem` | [factorThru_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-zero--27d2856fac8e11dce3d9d5df.md) | 151 | `result-track:27d2856fac8e11dce3d9d5df17ab274573110497f63a44b805a91f139f8485ec` |
| 21 | `theorem` | [factorThru_ofLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-ofle--2c33d283e6f4caa8b86f0359.md) | 157 | `result-track:2c33d283e6f4caa8b86f03593099d36fe233fc2d029debe7cab0560db9b936e2` |
| 22 | `theorem` | [factors_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors-add--1137060ccac6af809060cf4f.md) | 166 | `result-track:1137060ccac6af809060cf4f06a5979fa21da18ba438387fc285ad7415ff272b` |
| 23 | `theorem` | [factorThru_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-add--c8d9575c99687be0f03680b4.md) | 172 | `result-track:c8d9575c99687be0f03680b459bc16c5ace5a6236eac28b9295249850957120c` |
| 24 | `theorem` | [factors_left_of_factors_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors-left-of-factors-add--675d4e46c2bd46854f1bba72.md) | 178 | `result-track:675d4e46c2bd46854f1bba72263d9f93009933589e273f778b3fb4da0c0ee86f` |
| 25 | `theorem` | [factorThru_add_sub_factorThru_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-add-sub-factorthru-right--dd75bbb94a3e1c332ad776d0.md) | 183 | `result-track:dd75bbb94a3e1c332ad776d06ff0265ccf3e9b33968b445132b386ab19417fbc` |
| 26 | `theorem` | [factors_right_of_factors_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factors-right-of-factors-add--b5587d3271b7dd70c12426d9.md) | 190 | `result-track:b5587d3271b7dd70c12426d905d345fdd68b50802c136df56d1f86ce0132a4fe` |
| 27 | `theorem` | [factorThru_add_sub_factorThru_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FactorThru/Variant69dfb015de819b84bd2e9698895be59a5f74a6eedd127a95ac543d4b6eda6895.lean/declarations/factorthru-add-sub-factorthru-left--0897e8cdf9e158907931e4ea.md) | 195 | `result-track:0897e8cdf9e158907931e4ea284991b71f0028713de911cbb68e12787bdb3bdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
