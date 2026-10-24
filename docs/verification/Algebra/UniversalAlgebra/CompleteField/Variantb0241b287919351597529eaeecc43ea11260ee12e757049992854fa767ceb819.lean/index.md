# Verification target: GRWTSK.Algebra.UniversalAlgebra.CompleteField.Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fa25ff48bbb92333317ab85f53b38faf28d5661",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fa25ff48bbb92333317ab85f53b38faf28d5661`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ConditionallyCompleteLinearOrderedField](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/conditionallycompletelinearorderedfield--a3d0203a32e34897fb776c35.md) | 59 | `declaration-track:a3d0203a32e34897fb776c35712b74ace9b14ff2807fec0b9fc733e2ddb6aa0f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/instance--168081c29862c2369ac8c912.md) | 65 | `declaration-track:168081c29862c2369ac8c91217718ab326ef95f0bfff3595e15cacadc6cdb9ee` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/instance--57d3cdf59568eb47ac0a8bbb.md) | 78 | `declaration-track:57d3cdf59568eb47ac0a8bbbb5f4488f2203b80f53a0fdc7aa2e17a037278be2` |
| 4 | `def` | [cutMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/cutmap--284d33e4291f0a3e7a0b76d7.md) | 103 | `declaration-track:284d33e4291f0a3e7a0b76d76872e095370ab87bbce7bbf21c1a69d7299844b5` |
| 5 | `theorem` | [cutMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/cutmap-mono--00db25625aac65e9ac1a1408.md) | 107 | `result-track:00db25625aac65e9ac1a14084aab0802f0d85595b6cd6c35c77fdb1597833093` |
| 6 | `theorem` | [mem_cutMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/mem-cutmap-iff--cec6197da6373233069d80ca.md) | 113 | `result-track:cec6197da6373233069d80cac697bc99272e76a2d8c979a16d5f860a9966d27a` |
| 7 | `theorem` | [coe_mem_cutMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/coe-mem-cutmap-iff--b4539966c18991d285714ac4.md) | 117 | `result-track:b4539966c18991d285714ac4bc5444b1110e1429794cc34eef09828acf944574` |
| 8 | `theorem` | [cutMap_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/cutmap-self--7bc187839a24d3e3c82e8105.md) | 121 | `result-track:7bc187839a24d3e3c82e8105fe71673592f5a5378e3bc0bd58f91de14064b018` |
| 9 | `theorem` | [cutMap_coe](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/cutmap-coe--8d7e662468e5eb9ee2aa6924.md) | 134 | `result-track:8d7e662468e5eb9ee2aa6924622e64f047097bfea78dba9325b9f37be14b5982` |
| 10 | `theorem` | [cutMap_nonempty](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/cutmap-nonempty--5cae50905552daf26935932e.md) | 140 | `result-track:5cae50905552daf26935932eb9880e0ed9348cd20c29a0ba2b9ca679e45d95e4` |
| 11 | `theorem` | [cutMap_bddAbove](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/cutmap-bddabove--fc112218036fb164a3199d12.md) | 144 | `result-track:fc112218036fb164a3199d1250e06126fb9a212d01ebe09a86666f46fb942732` |
| 12 | `theorem` | [cutMap_add](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/cutmap-add--bcfd985220cadb32d5f8d85f.md) | 149 | `result-track:bcfd985220cadb32d5f8d85fb702d1bb22681042d17665be14356ffa74dc7221` |
| 13 | `def` | [inducedMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedmap--65afbd743cc4c851c9e24217.md) | 180 | `declaration-track:65afbd743cc4c851c9e24217a3b5870a94536638eeff4d854777634d95ea3f89` |
| 14 | `theorem` | [inducedMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedmap-mono--c6745ce7913b691ed0f33e78.md) | 186 | `result-track:c6745ce7913b691ed0f33e78e949f3480a7911deaeaa350251eba0be38eb3b3a` |
| 15 | `theorem` | [inducedMap_rat](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedmap-rat--bb65acd96f7845ab53484858.md) | 190 | `result-track:bb65acd96f7845ab534848580f8ade040514833e5c15306470539b1b75deb61a` |
| 16 | `theorem` | [inducedMap_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedmap-zero--d03681753e8235d3f50da556.md) | 202 | `result-track:d03681753e8235d3f50da556a62bdb0cdc009ba9e119d1e81a4cbdf7d7955c84` |
| 17 | `theorem` | [inducedMap_one](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedmap-one--cf449a63c9a8e948f898a505.md) | 206 | `result-track:cf449a63c9a8e948f898a505061047381c9136b2b429e03cf4fe30fad1a22337` |
| 18 | `theorem` | [inducedMap_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedmap-nonneg--624850c10687ec76cca3c10b.md) | 211 | `result-track:624850c10687ec76cca3c10b210d30fd4619aa50a904ed78b0d5468798d2e085` |
| 19 | `theorem` | [coe_lt_inducedMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/coe-lt-inducedmap-iff--17149801fd8c9d6f8169eae4.md) | 215 | `result-track:17149801fd8c9d6f8169eae48f268a5e1e5037203b6dc5744887079b949960da` |
| 20 | `theorem` | [lt_inducedMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/lt-inducedmap-iff--92077a24c88cc44b38ccae0d.md) | 224 | `result-track:92077a24c88cc44b38ccae0df11b371c3028a8ccf60046bbbb8a661f0a882cb6` |
| 21 | `theorem` | [inducedMap_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedmap-self--38cdd11665b9fb7e5b859291.md) | 230 | `result-track:38cdd11665b9fb7e5b85929117af9d26d7fad55e77c0a506e11a214de1d97e1d` |
| 22 | `theorem` | [inducedMap_inducedMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedmap-inducedmap--80335b869f27fca9f2e41a7c.md) | 237 | `result-track:80335b869f27fca9f2e41a7c3b1cd6d77f4398a6b9aac68c01edd38136811724` |
| 23 | `theorem` | [inducedMap_inv_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedmap-inv-self--0c1253c9745dd6bcbd604e35.md) | 243 | `result-track:0c1253c9745dd6bcbd604e358199b4b79d81e1af20be25640382b596e93dca0c` |
| 24 | `theorem` | [inducedMap_add](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedmap-add--9975fa0d26d467adbed27f44.md) | 247 | `result-track:9975fa0d26d467adbed27f445bea7f94f0a9b7cd46baec925884f1434287b2a3` |
| 25 | `theorem` | [le_inducedMap_mul_self_of_mem_cutMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/le-inducedmap-mul-self-of-mem-cutmap--1231ba9e7a12b43592bdbc0e.md) | 257 | `result-track:1231ba9e7a12b43592bdbc0e2479dade840f048fc67c6ff41e8415bc2d2e6011` |
| 26 | `theorem` | [exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/exists-mem-cutmap-mul-self-of-lt-inducedmap-mul-self--77ae29ec8dab9af73a7a6706.md) | 270 | `result-track:77ae29ec8dab9af73a7a6706b9aa377debc8f4162bdbadb65a03695e6e66e634` |
| 27 | `def` | [inducedAddHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedaddhom--41b5832a93e97e0ade88ec2f.md) | 289 | `declaration-track:41b5832a93e97e0ade88ec2fe003d4a072845d58a2a56d811f2c2b7d4ebf0b34` |
| 28 | `def` | [inducedOrderRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedorderringhom--f4aed8d0e68a887121f46e6a.md) | 295 | `declaration-track:f4aed8d0e68a887121f46e6ae66ecb16fa2aea62fd109fda75b1bc8f29ac7de0` |
| 29 | `def` | [inducedOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedorderringiso--ffacfb61e293047a3b798437.md) | 316 | `declaration-track:ffacfb61e293047a3b7984375f2d84fddc5f91e572f282cb046221387a1deb85` |
| 30 | `theorem` | [coe_inducedOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/coe-inducedorderringiso--e009033c388e1ced2864022a.md) | 331 | `result-track:e009033c388e1ced2864022a4bc352a462741d4aa16ccbf0a20e26bab834ac44` |
| 31 | `theorem` | [inducedOrderRingIso_symm](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedorderringiso-symm--44e97816a447b4ee162fca9b.md) | 335 | `result-track:44e97816a447b4ee162fca9b0a55e5f315245fe4882c5fe144d0f7672f00013b` |
| 32 | `theorem` | [inducedOrderRingIso_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/inducedorderringiso-self--8e08148f2e87b6ba66c4483c.md) | 339 | `result-track:8e08148f2e87b6ba66c4483cd3f05829aba85355f9e20c6348a7d92ca1880657` |
| 33 | `instance` | [uniqueOrderRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/uniqueorderringhom--3908c5bd5b5a26ae88d9dd33.md) | 347 | `declaration-track:3908c5bd5b5a26ae88d9dd33c4684b3a14e7e5f1a77bba52283b231ef64ee858` |
| 34 | `instance` | [uniqueOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/uniqueorderringiso--27bbe7d9d8f0f3f78fa1e328.md) | 352 | `declaration-track:27bbe7d9d8f0f3f78fa1e32809c72a9b73566d91c11f16709cb9af9f8926704f` |
| 35 | `theorem` | [ringHom_monotone](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/ringhom-monotone--5bf197c0808af6de32bae0fc.md) | 363 | `result-track:5bf197c0808af6de32bae0fc2bdcdb676e4bab87eaead34301de03e79288017d` |
| 36 | `instance` | [Real.RingHom.unique](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variantb0241b287919351597529eaeecc43ea11260ee12e757049992854fa767ceb819.lean/declarations/real-ringhom-unique--87045db95263c52ffb369744.md) | 369 | `declaration-track:87045db95263c52ffb3697449be816d11ac0d55408935cce8dbe56c35aecd263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
