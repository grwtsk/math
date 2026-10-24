# Verification target: GRWTSK.Algebra.LinearAlgebra.Weights.Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6122bede893542c7e45486e2105864243847b480",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6122bede893542c7e45486e2105864243847b480`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Character` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Engel` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.CartanSubalgebra` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/preweightspace--4154c488ceedda7ebd7935ad.md) | 77 | `declaration-track:4154c488ceedda7ebd7935ada3a5504b339f05bb31655264185e02122a7609eb` |
| 2 | `theorem` | [mem_preWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/mem-preweightspace--be577ae9c4ec2dfe47043ca3.md) | 81 | `result-track:be577ae9c4ec2dfe47043ca3dfc0b996a32464abf9a03b207000f665f9b4b6d7` |
| 3 | `theorem` | [exists_preWeightSpace_zero_le_ker_of_isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/exists-preweightspace-zero-le-ker-of-isnoetherian--c471ec91f79a7b13333a24d9.md) | 89 | `result-track:c471ec91f79a7b13333a24d94af9378b8ca33ddf056946e7b4890348f2964142` |
| 4 | `theorem` | [weight_vector_multiplication](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/weight-vector-multiplication--2ec64722dbe709fe1f6a7c19.md) | 99 | `result-track:2ec64722dbe709fe1f6a7c199d16c6ce6303c672235f253a0dd0d58b263fee6a` |
| 5 | `theorem` | [lie_mem_preWeightSpace_of_mem_preWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/lie-mem-preweightspace-of-mem-preweightspace--f60ba2cc4c55be584c05b901.md) | 173 | `result-track:f60ba2cc4c55be584c05b9011b42b754793bbe97d0b6d06c8bc632b63aa7a194` |
| 6 | `def` | [weightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/weightspace--9c8d7f39ad4d6a2d65488351.md) | 186 | `declaration-track:9c8d7f39ad4d6a2d6548835175e59d8523e25d7fa4808dc5b031e03c31328cb5` |
| 7 | `theorem` | [mem_weightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/mem-weightspace--f3fbefb8a26590abfc5d5979.md) | 196 | `result-track:f3fbefb8a26590abfc5d5979353f8194ced67f0f0107b58b902b31b1363b5706` |
| 8 | `theorem` | [zero_weightSpace_eq_top_of_nilpotent'](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/zero-weightspace-eq-top-of-nilpotent--44819e742ae228fbfc69b984.md) | 202 | `result-track:44819e742ae228fbfc69b9842eee0e4ed46acc63b281777d66120caaf9d73cc6` |
| 9 | `theorem` | [coe_weightSpace_of_top](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/coe-weightspace-of-top--7a279062a0b11c3adf92cdbe.md) | 208 | `result-track:7a279062a0b11c3adf92cdbe6268ffd76310c49e7bd30fde392c3c2ea72bf6c9` |
| 10 | `theorem` | [zero_weightSpace_eq_top_of_nilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/zero-weightspace-eq-top-of-nilpotent--7aee3410e04f228e802053d6.md) | 219 | `result-track:7aee3410e04f228e802053d6678a0ed6efcaee8a88c4a965310313ad596d6c3b` |
| 11 | `def` | [IsWeight](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/isweight--e7664f820ba8b0bb211d21e8.md) | 231 | `declaration-track:e7664f820ba8b0bb211d21e8adaca67078be13a32a21ac85dcd3d4369e965c85` |
| 12 | `theorem` | [isWeight_zero_of_nilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/isweight-zero-of-nilpotent--18c087978c23661a0000ef2e.md) | 237 | `result-track:18c087978c23661a0000ef2e02102675582319716b7f7a2169f84ef852a62830` |
| 13 | `theorem` | [isNilpotent_toEndomorphism_weightSpace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/isnilpotent-toendomorphism-weightspace-zero--249c6a086158d140c1811020.md) | 244 | `result-track:249c6a086158d140c1811020dd6c5e154f7a437c877516dabb163e5cd1fe57d0` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/instance--4ad2bdacec945db4c4628d38.md) | 257 | `declaration-track:4ad2bdacec945db4c4628d38426d8ad6878c983cc87f6e2b5bad9410d7d4f8fa` |
| 15 | `abbrev` | [rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/rootspace--31d9f0d05dde96e5dd6a35ad.md) | 273 | `declaration-track:31d9f0d05dde96e5dd6a35ad98172c9e413905c73709fa77cdba5b9e06507517` |
| 16 | `theorem` | [zero_rootSpace_eq_top_of_nilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/zero-rootspace-eq-top-of-nilpotent--77c371ff16597904610563ec.md) | 278 | `result-track:77c371ff16597904610563ec7b441f912f9af359a07bb7cf9338cfa876759f73` |
| 17 | `abbrev` | [IsRoot](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/isroot--a2de6954a88e91c501cc4bd5.md) | 285 | `declaration-track:a2de6954a88e91c501cc4bd571f8db91c07e6446653abd2a9691f350900aef0f` |
| 18 | `theorem` | [rootSpace_comap_eq_weightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/rootspace-comap-eq-weightspace--ba5dee30c53c4aa72903daba.md) | 290 | `result-track:ba5dee30c53c4aa72903daba67230dcf19575145a0da4b51639bcaad08942848` |
| 19 | `theorem` | [lie_mem_weightSpace_of_mem_weightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/lie-mem-weightspace-of-mem-weightspace--432c1281228c9955e893d2eb.md) | 313 | `result-track:432c1281228c9955e893d2eb0b6c40f623b57b20e050867db830dcbd9520bb9f` |
| 20 | `def` | [rootSpaceWeightSpaceProductAux](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/rootspaceweightspaceproductaux--a6316589d8ef40719c485016.md) | 328 | `declaration-track:a6316589d8ef40719c4850168a8727b0409caab3513a05533d31ace8f3a9e5b1` |
| 21 | `def` | [rootSpaceWeightSpaceProduct](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/rootspaceweightspaceproduct--2efc5062dbe71824358504a3.md) | 354 | `declaration-track:2efc5062dbe71824358504a39efc23d8b674adb1379d15bf7f86ae25a26d9690` |
| 22 | `theorem` | [coe_rootSpaceWeightSpaceProduct_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/coe-rootspaceweightspaceproduct-tmul--e7ef2928cb3255b9aec122de.md) | 366 | `result-track:e7ef2928cb3255b9aec122ded4f86cca365016a2a1609fd3d41a6843c92a5a83` |
| 23 | `def` | [rootSpaceProduct](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/rootspaceproduct--f65ffdc507c4422229e22b8c.md) | 376 | `declaration-track:f65ffdc507c4422229e22b8c8a96b5124bd00f63c27dc06d24b4f82cce9b3d8f` |
| 24 | `theorem` | [rootSpaceProduct_def](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/rootspaceproduct-def--478d7a3b059147450a86ad09.md) | 382 | `result-track:478d7a3b059147450a86ad090321ca32fb48da0544c17f16d8e6c5632376b82b` |
| 25 | `theorem` | [rootSpaceProduct_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/rootspaceproduct-tmul--2b8fcc2a14a3e60e802731c2.md) | 385 | `result-track:2b8fcc2a14a3e60e802731c27ae3357abb156ef5579a6c3407e1ab4ee6a3e03b` |
| 26 | `def` | [zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/zerorootsubalgebra--abfb0ea3bb7d1ed042d944c4.md) | 392 | `declaration-track:abfb0ea3bb7d1ed042d944c46434cbd7ab69f6c95004bd3cfae0026ddb609229` |
| 27 | `theorem` | [coe_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/coe-zerorootsubalgebra--f0038b3b9bca782d3bff4a54.md) | 402 | `result-track:f0038b3b9bca782d3bff4a54b3dd57e8aa0d6b7324882704a2d4581e80d39820` |
| 28 | `theorem` | [mem_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/mem-zerorootsubalgebra--6e8da008649f2641bab041e1.md) | 405 | `result-track:6e8da008649f2641bab041e1bd52f428b2c394661dfa6724d3dcc51961283755` |
| 29 | `theorem` | [toLieSubmodule_le_rootSpace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/toliesubmodule-le-rootspace-zero--f759c5861148971301c2baff.md) | 414 | `result-track:f759c5861148971301c2baffa4d6d5a47c9b5ce47e3b607120a6496f648f1b7a` |
| 30 | `theorem` | [le_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/le-zerorootsubalgebra--49912d666458bcfebd9b2009.md) | 438 | `result-track:49912d666458bcfebd9b20091f1792774508e922103ae00c3c4d739a52589648` |
| 31 | `theorem` | [zeroRootSubalgebra_normalizer_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/zerorootsubalgebra-normalizer-eq-self--164c8f869a1dbe4b4fd7a954.md) | 445 | `result-track:164c8f869a1dbe4b4fd7a9548e752900156f50c6b6330560a2fd4a31e8c0a64f` |
| 32 | `theorem` | [is_cartan_of_zeroRootSubalgebra_eq](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/is-cartan-of-zerorootsubalgebra-eq--8f890e4ad5a5ee639ffdc0a7.md) | 466 | `result-track:8f890e4ad5a5ee639ffdc0a7c2d80f79ff7afc5771e5a4e34cf26dab63b742f4` |
| 33 | `theorem` | [zeroRootSubalgebra_eq_of_is_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/zerorootsubalgebra-eq-of-is-cartan--75e96fd7f0edd42493dee3fc.md) | 473 | `result-track:75e96fd7f0edd42493dee3fcc61e59c356069e2c4dc9e98f1f8cdf185fb55f87` |
| 34 | `theorem` | [zeroRootSubalgebra_eq_iff_is_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/zerorootsubalgebra-eq-iff-is-cartan--290ce98f5a93ef48f801aab6.md) | 481 | `result-track:290ce98f5a93ef48f801aab6c7c865823ad70ace99ac9e0e70c872fa223cbb9a` |
| 35 | `def` | [weightSpace'](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/weightspace--bbc3335c1f64c424bdf15212.md) | 499 | `declaration-track:bbc3335c1f64c424bdf1521244ac8319b761bf827eec1d6b0c45ec0d2ff21e75` |
| 36 | `theorem` | [coe_weightSpace'](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean/declarations/coe-weightspace--fb86588f3d24d732f9fa1876.md) | 510 | `result-track:fb86588f3d24d732f9fa187609c23763ce8c456be7a7e4019df41f7f5df48eb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
