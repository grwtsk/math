# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2b2e6c7f4914768396b7b46a5f1c1ee3366a20d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2b2e6c7f4914768396b7b46a5f1c1ee3366a20d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset--07d443fd33d876b7393ea3e3.md) | 34 | `declaration-track:07d443fd33d876b7393ea3e3272f0ba8f3c51c56f26f0858a6e3192cd263f31b` |
| 2 | `theorem` | [toMultiset_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset-zero--2ecbed5d91e47bec936f1ebb.md) | 41 | `result-track:2ecbed5d91e47bec936f1ebb25140da601d10dc7203add67b98c7a4f1ac118c2` |
| 3 | `theorem` | [toMultiset_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset-add--d93c670d5c99801d889eae25.md) | 45 | `result-track:d93c670d5c99801d889eae25e9d90a21590667f7f4e302b14d43b30b2f8c5b04` |
| 4 | `theorem` | [toMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset-apply--510b073cb9ac42d74ef0e6d8.md) | 49 | `result-track:510b073cb9ac42d74ef0e6d8e18c19fddc58a469e4a3f4cce2a1c5c7007fa21e` |
| 5 | `theorem` | [toMultiset_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset-single--479c8001638b88bc69b37ac1.md) | 54 | `result-track:479c8001638b88bc69b37ac131027f6faa190cc276f443a71bc69f2996000838` |
| 6 | `theorem` | [toMultiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset-sum--26ba99d1aa10f48cadb880ba.md) | 58 | `result-track:26ba99d1aa10f48cadb880baf5c641089857214f1c9fd6ea778b787b4aefbd3d` |
| 7 | `theorem` | [toMultiset_sum_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset-sum-single--cb5b1ee437da3c2005aeed39.md) | 63 | `result-track:cb5b1ee437da3c2005aeed39e98dd06cb7065289a4e032e1b8662082e8f369de` |
| 8 | `theorem` | [card_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/card-tomultiset--19d0a52c6912d7b5eac0eaf7.md) | 68 | `result-track:19d0a52c6912d7b5eac0eaf70286b380bff74b88251a30c5adca4e96185c6eae` |
| 9 | `theorem` | [toMultiset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset-map--f2ec8b6886926187ebbba77f.md) | 72 | `result-track:f2ec8b6886926187ebbba77fdca42ee5273490c8e78757e3e0a20097024f952d` |
| 10 | `theorem` | [prod_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/prod-tomultiset--dae3b90c4508bf17adfa3927.md) | 84 | `result-track:dae3b90c4508bf17adfa3927fddf83182670566c337702f0346c3cb6b8322c27` |
| 11 | `theorem` | [toFinset_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinset-tomultiset--780e000beb0a654102242582.md) | 95 | `result-track:780e000beb0a654102242582523c3d0989c75a0dab486ec2ef94d95b1c1e717a` |
| 12 | `theorem` | [count_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/count-tomultiset--38d2454542e222184f27684b.md) | 106 | `result-track:38d2454542e222184f27684ba2c90a0c7f8e076bc0ada0f3e511ecd777cd3133` |
| 13 | `theorem` | [toMultiset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset-sup--6fc240930372226643018948.md) | 118 | `result-track:6fc24093037222664301894855d3a2cac5152fb90be22f6a3ff16907472c0081` |
| 14 | `theorem` | [toMultiset_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset-inf--d027244ae26cd146f43dfe3a.md) | 123 | `result-track:d027244ae26cd146f43dfe3aaf3e46cd134310ce237375d4cb63b86d1ebfc63b` |
| 15 | `theorem` | [mem_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/mem-tomultiset--5b3a668562e97eb47af7e49b.md) | 129 | `result-track:5b3a668562e97eb47af7e49bcfb816c3d28c65220c6e754ccb1eae70a38000eb` |
| 16 | `def` | [toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinsupp--c7f4550f2d2c860a92ae9e73.md) | 143 | `declaration-track:c7f4550f2d2c860a92ae9e7368585cd3c09235b19174c447c7631a0c65b3a2f0` |
| 17 | `theorem` | [toFinsupp_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinsupp-support--a93d93fa8c734f2061e32d55.md) | 158 | `result-track:a93d93fa8c734f2061e32d551c9f16e1fc2561b3d09f96a6bc8d664a5a9eeb04` |
| 18 | `theorem` | [toFinsupp_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinsupp-apply--77d0c7ddb85f72c25197d631.md) | 162 | `result-track:77d0c7ddb85f72c25197d631908f29a9830392a24a2105f7fde52b3275d7a14d` |
| 19 | `theorem` | [toFinsupp_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinsupp-zero--e779e19855d7a896e139780c.md) | 165 | `result-track:e779e19855d7a896e139780c87352277164b167897e7afd7f675e1e2caa27d72` |
| 20 | `theorem` | [toFinsupp_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinsupp-add--296ba3e5e4109e7e4a507c18.md) | 168 | `result-track:296ba3e5e4109e7e4a507c1851269fb86d2e27b90c3f902d579a88d5df453f4f` |
| 21 | `theorem` | [toFinsupp_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinsupp-singleton--900208129befdbbd0bbfcc65.md) | 173 | `result-track:900208129befdbbd0bbfcc65f229ce05550f84b9e3de346a5708f64e751c1fdc` |
| 22 | `theorem` | [toFinsupp_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinsupp-tomultiset--7fc58088a3868f55de221887.md) | 178 | `result-track:7fc58088a3868f55de221887e8b9f37e7a538ec815b4fcee14e0bb88e5d58d8f` |
| 23 | `theorem` | [toFinsupp_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinsupp-eq-iff--0f361937c49637b719c70779.md) | 182 | `result-track:0f361937c49637b719c7077995dc0e1af8f58c1cb933f0d52954b7b3701ac7b9` |
| 24 | `theorem` | [toFinsupp_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinsupp-union--bb7f59aa84636204742bde42.md) | 187 | `result-track:bb7f59aa84636204742bde4235232497d067689bae09ec9a8d6eefffa48ef582` |
| 25 | `theorem` | [toFinsupp_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tofinsupp-inter--751e6482d8ec88bbcf7d03c9.md) | 191 | `result-track:751e6482d8ec88bbcf7d03c9bae37cfb8a4ebf5566de60b7bc932d1210a4afde` |
| 26 | `theorem` | [Finsupp.toMultiset_toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/finsupp-tomultiset-tofinsupp--71e2b2b262870ecf5aa5f3c0.md) | 198 | `result-track:71e2b2b262870ecf5aa5f3c034ef2303f026a61077179632ec5416b86d5dece5` |
| 27 | `theorem` | [Finsupp.toMultiset_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/finsupp-tomultiset-eq-iff--0c0507abcafd5b6a585aa5e3.md) | 203 | `result-track:0c0507abcafd5b6a585aa5e3e6621291ea584c160e3a6aacb630dddc22475a88` |
| 28 | `def` | [orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/orderisomultiset--8dc15352963704a94df1e146.md) | 211 | `declaration-track:8dc15352963704a94df1e14641f5621d0f28027222cb3bdf3843e889f629b97b` |
| 29 | `theorem` | [coe_orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/coe-orderisomultiset--be382dcb356a1dd91424febb.md) | 217 | `result-track:be382dcb356a1dd91424febb6437ae5749af9001330863e13a4465aab16727e8` |
| 30 | `theorem` | [coe_orderIsoMultiset_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/coe-orderisomultiset-symm--c3ee5cca6b44e6d471605f48.md) | 222 | `result-track:c3ee5cca6b44e6d471605f483da2e86ce3e6604c9e4103aa90043a6588e52069` |
| 31 | `theorem` | [toMultiset_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/tomultiset-strictmono--5fba0ef6a60c9872c8d8dfdf.md) | 227 | `result-track:5fba0ef6a60c9872c8d8dfdf36f462ed588e4c94eeda0d201f4b0ae56c019ace` |
| 32 | `theorem` | [sum_id_lt_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/sum-id-lt-of-lt--579d9a28f102a43020dfaf83.md) | 231 | `result-track:579d9a28f102a43020dfaf83e4e8489bbaba8c69016c1d0cef36b4a1236f874b` |
| 33 | `theorem` | [lt_wf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/lt-wf--56dcdb7d3a19417e6dd93b99.md) | 240 | `result-track:56dcdb7d3a19417e6dd93b99636c5cb5b3e7c470d0062238672a04b3785a2b17` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/instance--7ffaaa3c683fcec4855e81cb.md) | 245 | `declaration-track:7ffaaa3c683fcec4855e81cb3f013f61e5aae948a7b93754e59068cd685838c7` |
| 35 | `theorem` | [Multiset.toFinsupp_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantceee407ab11ab0fa013d1de6507d50ba68f5366bfdf7fc23e6a612fe744d2fee.lean/declarations/multiset-tofinsupp-strictmono--d74920c6fa9bba41b0cf2b66.md) | 251 | `result-track:d74920c6fa9bba41b0cf2b66b8e9b8820d1c71b22a24550341eaa5368a2dc424` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
