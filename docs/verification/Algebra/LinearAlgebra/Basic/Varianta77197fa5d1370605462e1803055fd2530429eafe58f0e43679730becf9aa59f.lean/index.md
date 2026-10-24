# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0957870881e4684b7be373d0d6e1863cced976f9",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0957870881e4684b7be373d0d6e1863cced976f9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct.Finiteness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Associator` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/coalgebrastruct--a6ee92093f0c8a43c7f80642.md) | 40 | `declaration-track:a6ee92093f0c8a43c7f8064233da1fee487864a08047a4256a8ad1f48e0193f8` |
| 2 | `structure` | [Coalgebra.Repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/coalgebra-repr--0ae890ef87a04f7a68a2618e.md) | 51 | `declaration-track:0ae890ef87a04f7a68a2618e31a82268a7510e55411f470104f4f40d7c7ce311` |
| 3 | `def` | [Coalgebra.Repr.arbitrary](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/coalgebra-repr-arbitrary--7f7c7b297c563279bd652248.md) | 65 | `declaration-track:7f7c7b297c563279bd652248287bfabbd0871ad68aa1d2b54ac6fc2578ff7ebe` |
| 4 | `class` | [Coalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/coalgebra--3fdafa91646493b7f42bb956.md) | 82 | `declaration-track:3fdafa91646493b7f42bb95623959dbd799d7aa4b7e44f7102500df839fd683a` |
| 5 | `theorem` | [coassoc_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/coassoc-apply--2ea2f3cac14bf6de9933be28.md) | 96 | `result-track:2ea2f3cac14bf6de9933be28f5795b31912890429e0127e90db2611d8ad91471` |
| 6 | `theorem` | [coassoc_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/coassoc-symm-apply--d2c87d60f2b45e071b81f5f4.md) | 101 | `result-track:d2c87d60f2b45e071b81f5f4db208c8164f558f705c374d5b47af00b8868efd3` |
| 7 | `theorem` | [coassoc_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/coassoc-symm--afc1aad2ee3238581b543fcc.md) | 106 | `result-track:afc1aad2ee3238581b543fcc07c84bbe3d6a7ab3946c254018015a4936d7a196` |
| 8 | `theorem` | [rTensor_counit_comul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/rtensor-counit-comul--07490e1079b81e8bac4451e0.md) | 112 | `result-track:07490e1079b81e8bac4451e092c97d6f8d858781362fa0cbb9e99b9812b335ba` |
| 9 | `theorem` | [lTensor_counit_comul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/ltensor-counit-comul--35e5c16186e7022e4738d28b.md) | 116 | `result-track:35e5c16186e7022e4738d28bc513e470b01040e456d4f8a23bea85bbb071d32c` |
| 10 | `lemma` | [sum_counit_tmul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/sum-counit-tmul-eq--f4f962896f07d869f1725f06.md) | 120 | `result-track:f4f962896f07d869f1725f06fdc67b25635fdc1754ee6d625d98f7afb262fc1b` |
| 11 | `lemma` | [sum_tmul_counit_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/sum-tmul-counit-eq--efff23782cbb534291dfa1d2.md) | 125 | `result-track:efff23782cbb534291dfa1d20d1deb70226d8666a1fabd89c5213fb1247cf96c` |
| 12 | `lemma` | [sum_tmul_tmul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/sum-tmul-tmul-eq--ff8a72a33c451692735dd38c.md) | 130 | `result-track:ff8a72a33c451692735dd38c9c584fcb7fe95f5ca58eabea330d13a57b09a5c9` |
| 13 | `theorem` | [sum_counit_tmul_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/sum-counit-tmul-map-eq--7ee230894705308fc601a431.md) | 140 | `result-track:7ee230894705308fc601a4316d4436ac46d715a9019ae5cfc2a80dcd83351211` |
| 14 | `theorem` | [sum_map_tmul_counit_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/sum-map-tmul-counit-eq--dfb308cfe8d5548a7aba4cde.md) | 148 | `result-track:dfb308cfe8d5548a7aba4cde3f4cbfaa92454001d1c8dcbd592295d0f08a0b9f` |
| 15 | `theorem` | [sum_map_tmul_tmul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/sum-map-tmul-tmul-eq--a51c472d76de3c8209af09a3.md) | 156 | `result-track:a51c472d76de3c8209af09a368513258eae3f3b2171dab1ebcc063807d717232` |
| 16 | `instance` | [toCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/tocoalgebra--521ba65bbcfec08a263291fd.md) | 176 | `declaration-track:521ba65bbcfec08a263291fd6874839c622675305306154813019f89aafc4d67` |
| 17 | `theorem` | [comul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-apply--73f6ccd5fc61dd3dcbc851a2.md) | 184 | `result-track:73f6ccd5fc61dd3dcbc851a26aa0581755b852870af118871fd3ebb17640c70e` |
| 18 | `theorem` | [counit_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/counit-apply--4ef02bd4a324a514885c30a5.md) | 187 | `result-track:4ef02bd4a324a514885c30a5dd7f60338f92eebb517a62e9836824da50a887ad` |
| 19 | `instance` | [instCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/instcoalgebrastruct--8db00a418085a3081da8b6b6.md) | 198 | `declaration-track:8db00a418085a3081da8b6b6cf45406b2d5092ec9dc8a3e79cf83f2d081af3f8` |
| 20 | `theorem` | [comul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-apply--db793e37d8c5c5d67632c389.md) | 205 | `result-track:db793e37d8c5c5d67632c3894880f3fe9a4b4225111b23709be15483d8a27439` |
| 21 | `theorem` | [counit_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/counit-apply--a6171d7c119581b3842ff8bc.md) | 211 | `result-track:a6171d7c119581b3842ff8bc69cc68ffccf8a1e2e9f71eae679a29de213b6024` |
| 22 | `theorem` | [comul_comp_inl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-comp-inl--9e3da40a90f19c6d30b87c00.md) | 213 | `result-track:9e3da40a90f19c6d30b87c00248103c672e33af113a401a76178be402d1a5f82` |
| 23 | `theorem` | [comul_comp_inr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-comp-inr--5333a91b5cd8206003cb2432.md) | 217 | `result-track:5333a91b5cd8206003cb2432679711a34b8994ca28c79b6cb2eff51384b16ac3` |
| 24 | `theorem` | [comul_comp_fst](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-comp-fst--d37e6fa90548a0c2192995e7.md) | 221 | `result-track:d37e6fa90548a0c2192995e71ad9e0bccb260c2d658c67c8a7b372963877c8b9` |
| 25 | `theorem` | [comul_comp_snd](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-comp-snd--0541fc0b02e74cabb32f2d11.md) | 229 | `result-track:0541fc0b02e74cabb32f2d11c339407fbb8cb8edd89308bd044b534cd1d4d788` |
| 26 | `theorem` | [counit_comp_inr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/counit-comp-inr--a9f08dea4af8876c0cc68c4e.md) | 237 | `result-track:a9f08dea4af8876c0cc68c4e65cba42babc92b723600e33325e48d20dbbc4059` |
| 27 | `theorem` | [counit_comp_inl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/counit-comp-inl--c88d49445244cfffa4a4c3e6.md) | 239 | `result-track:c88d49445244cfffa4a4c3e640d0ba659a3214a6d1c6ad2d1f251d2008549c88` |
| 28 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/instcoalgebra--1824e6049478deb53423d1be.md) | 241 | `declaration-track:1824e6049478deb53423d1bedb953199b1ab6528be62fcc9dd285d1b91483f53` |
| 29 | `instance` | [instCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/instcoalgebrastruct--add533cf857a46693b390998.md) | 275 | `declaration-track:add533cf857a46693b39099896706897df55ee67ff507799ace951b1b2d289a2` |
| 30 | `theorem` | [comul_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-single--dcf164f2c92983b616bf2789.md) | 281 | `result-track:dcf164f2c92983b616bf278953d728f8b2fabb719e1158bf4696eea5e1bd83fd` |
| 31 | `theorem` | [counit_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/counit-single--0b885329deb26a2e6a73d2d4.md) | 287 | `result-track:0b885329deb26a2e6a73d2d4578c7bf75a3350514690f167fdb9f4937cd351d9` |
| 32 | `theorem` | [comul_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-comp-lsingle--a5a8f7273744cfc02f091530.md) | 290 | `result-track:a5a8f7273744cfc02f091530147634c6c1fb36afd2532d945a3220e71c753cf9` |
| 33 | `theorem` | [comul_comp_lapply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-comp-lapply--9bacaf2fc96382b91d6cbfb5.md) | 294 | `result-track:9bacaf2fc96382b91d6cbfb5ca6db747f178ba1144710878b0d9ac389ae24a50` |
| 34 | `theorem` | [counit_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/counit-comp-lsingle--f2f10c7ef4c68cef0761590c.md) | 303 | `result-track:f2f10c7ef4c68cef0761590cac4fdb8a34728cb408f3361d552c733aee87e1f9` |
| 35 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/instcoalgebra--9e8cfcfca4734a45812e99b1.md) | 312 | `declaration-track:9e8cfcfca4734a45812e99b1d5320557bb4e3b47780b91f1c4461dacd9737b03` |
| 36 | `instance` | [instCoalgebraStruct](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/instcoalgebrastruct--f19a543c33330c57d23cdb9d.md) | 336 | `declaration-track:f19a543c33330c57d23cdb9d9ac03ab034456fd5ce172cf0ac8f20be9c291cc9` |
| 37 | `theorem` | [comul_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-single--c832457643d71cd25e1e3d53.md) | 342 | `result-track:c832457643d71cd25e1e3d53496b042cffc512f925fc818b6117073a801c965a` |
| 38 | `theorem` | [counit_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/counit-single--5b86bfe4c0bd9da26f91712d.md) | 348 | `result-track:5b86bfe4c0bd9da26f91712d85ec09c913ce82e57b057d7c8214721b61a20ed9` |
| 39 | `theorem` | [comul_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-comp-lsingle--79da3fb88e99339a52ab2adc.md) | 351 | `result-track:79da3fb88e99339a52ab2adc4a9cc7bd1782f224e982eb7b4d515877bcc11af2` |
| 40 | `theorem` | [comul_comp_lapply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/comul-comp-lapply--144f63349a9e8f59011d899b.md) | 355 | `result-track:144f63349a9e8f59011d899b45e9e915236eb9eefac8ce37000cef8f65dc05a3` |
| 41 | `theorem` | [counit_comp_lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/counit-comp-lsingle--bc419842c1c1517c1dea9153.md) | 364 | `result-track:bc419842c1c1517c1dea9153e736f2b55173c1d3fdcd6dd684b16325f64d4e9e` |
| 42 | `instance` | [instCoalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean/declarations/instcoalgebra--6167b82d4f5451cf1555273e.md) | 371 | `declaration-track:6167b82d4f5451cf1555273eb9c0ab802bf07e0ed172340232826b9ca2e69d88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
