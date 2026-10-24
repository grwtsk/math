# Verification target: GRWTSK.Algebra.LinearAlgebra.Weights.Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a2e4f35d737bfe03ac24ea2611d637d14d70e91",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a2e4f35d737bfe03ac24ea2611d637d14d70e91`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Nilpotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Character` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Engel` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.CartanSubalgebra` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/preweightspace--1942adf65b18647bd4bbd4b0.md) | 85 | `declaration-track:1942adf65b18647bd4bbd4b0366b59edb04d89447b71361db9b88e2c31b96cc9` |
| 2 | `theorem` | [mem_preWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/mem-preweightspace--ea0cb96f942cf8beb1ceb56d.md) | 89 | `result-track:ea0cb96f942cf8beb1ceb56d1665b6b79ba2b9881c7d7b7706964641966c6acf` |
| 3 | `theorem` | [exists_preWeightSpace_zero_le_ker_of_isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/exists-preweightspace-zero-le-ker-of-isnoetherian--d8270706b8f6c8532193c1f5.md) | 97 | `result-track:d8270706b8f6c8532193c1f5e58983b9902f5cc62523482417009e2fa8882067` |
| 4 | `theorem` | [weight_vector_multiplication](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/weight-vector-multiplication--a300e85610091c6400f43c33.md) | 107 | `result-track:a300e85610091c6400f43c33016a98ae14baedf75b5a7bf767f0316d5eb422ec` |
| 5 | `theorem` | [lie_mem_preWeightSpace_of_mem_preWeightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/lie-mem-preweightspace-of-mem-preweightspace--aa7aeedcb6b6360b473bcf19.md) | 181 | `result-track:aa7aeedcb6b6360b473bcf198126841399dc0ac24c31453d7e045cb0dc545ccf` |
| 6 | `def` | [weightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/weightspace--67db691cfea3a7220b5d5ea4.md) | 194 | `declaration-track:67db691cfea3a7220b5d5ea4aa70bf78e42dbe5881bdca930b27501cb518a403` |
| 7 | `theorem` | [mem_weightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/mem-weightspace--7e9e4e2f5227e72d7504740c.md) | 204 | `result-track:7e9e4e2f5227e72d7504740c24023664ccaa8fd4f6d33b8fffd30545e4a6cb81` |
| 8 | `theorem` | [zero_weightSpace_eq_top_of_nilpotent'](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/zero-weightspace-eq-top-of-nilpotent--aedfd469fd53cab42e391150.md) | 210 | `result-track:aedfd469fd53cab42e3911500031deda6a6c90c0511a528636b713228fa6fab7` |
| 9 | `theorem` | [coe_weightSpace_of_top](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/coe-weightspace-of-top--1ae88253b8b598a786fb95f5.md) | 216 | `result-track:1ae88253b8b598a786fb95f58a4e5c48d3606f45405f98aff25c93aff2a73235` |
| 10 | `theorem` | [zero_weightSpace_eq_top_of_nilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/zero-weightspace-eq-top-of-nilpotent--35bf0a586a29fff584f70f0d.md) | 227 | `result-track:35bf0a586a29fff584f70f0dc211201a2282497e5e38cb3d1b3b0c7aeb4cc9f3` |
| 11 | `def` | [IsWeight](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/isweight--443ba188629a844626bdb25b.md) | 239 | `declaration-track:443ba188629a844626bdb25b0c505ddabeb86aa830bd86ec070b382ceec0a9c8` |
| 12 | `theorem` | [isWeight_zero_of_nilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/isweight-zero-of-nilpotent--448475c8d5a0e24f51877fb9.md) | 245 | `result-track:448475c8d5a0e24f51877fb961f6d5cdda6a43a465742586df44a2e82005b6c1` |
| 13 | `theorem` | [isNilpotent_toEndomorphism_weightSpace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/isnilpotent-toendomorphism-weightspace-zero--bfd98aacac4335069bf0d6b2.md) | 252 | `result-track:bfd98aacac4335069bf0d6b2d329ab265430ef0af3990f45f02db947b8b3b2cd` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/instance--577be142d02a125bfe324839.md) | 265 | `declaration-track:577be142d02a125bfe324839c0baf72325ca260ac2529dbe17067709cf6706d5` |
| 15 | `abbrev` | [rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/rootspace--a7091f54b48b6dc75977754d.md) | 281 | `declaration-track:a7091f54b48b6dc75977754d1583a9ddd5de1f9c6f4dcc8bf5ca17276a36da2d` |
| 16 | `theorem` | [zero_rootSpace_eq_top_of_nilpotent](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/zero-rootspace-eq-top-of-nilpotent--abb51623f422181fa1d42e0c.md) | 286 | `result-track:abb51623f422181fa1d42e0cb4aba36524ec74b0a6eb23d981c1f95910745376` |
| 17 | `abbrev` | [IsRoot](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/isroot--bce327bef3a7d47e230acbdd.md) | 293 | `declaration-track:bce327bef3a7d47e230acbdd19797a861c5db64cf13032ef5311c163b6171ba5` |
| 18 | `theorem` | [rootSpace_comap_eq_weightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/rootspace-comap-eq-weightspace--f173e80f3b83f0452e84994f.md) | 298 | `result-track:f173e80f3b83f0452e84994f69059d063c4769ca81098ec5e1f160f5fd37c3b1` |
| 19 | `theorem` | [lie_mem_weightSpace_of_mem_weightSpace](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/lie-mem-weightspace-of-mem-weightspace--04b84a6f8c4555f1d3b55f1e.md) | 321 | `result-track:04b84a6f8c4555f1d3b55f1e193ac7b73ad7e01c133f9aae01f98d298652fdde` |
| 20 | `def` | [rootSpaceWeightSpaceProductAux](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/rootspaceweightspaceproductaux--8235cb33e52ce819118ca8a6.md) | 336 | `declaration-track:8235cb33e52ce819118ca8a6b9a179bc8959d15527a70e9453492ac2c7848c7d` |
| 21 | `def` | [rootSpaceWeightSpaceProduct](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/rootspaceweightspaceproduct--c73f8e8e1f6f9d701eab15e5.md) | 362 | `declaration-track:c73f8e8e1f6f9d701eab15e5a6dfba354e4f8cfea0ac6c5962e3df4305335a8d` |
| 22 | `theorem` | [coe_rootSpaceWeightSpaceProduct_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/coe-rootspaceweightspaceproduct-tmul--e61fbad99fe9958fe8b845d4.md) | 374 | `result-track:e61fbad99fe9958fe8b845d425d19f25023ecd5e3d71109c356bc7a5228e0c94` |
| 23 | `def` | [rootSpaceProduct](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/rootspaceproduct--aef2083e226b6fca6d3ac150.md) | 384 | `declaration-track:aef2083e226b6fca6d3ac150a3f269921b10cae6852b8a3debe01463a64bfcbc` |
| 24 | `theorem` | [rootSpaceProduct_def](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/rootspaceproduct-def--fb09470be8c1a8e5eccf7644.md) | 390 | `result-track:fb09470be8c1a8e5eccf7644c8f28185064f334e76e883049888edcca8986db2` |
| 25 | `theorem` | [rootSpaceProduct_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/rootspaceproduct-tmul--0f55ca542150bfcf0991c6de.md) | 393 | `result-track:0f55ca542150bfcf0991c6de4881fe2576af37e73fdfa38904faa02353293527` |
| 26 | `def` | [zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/zerorootsubalgebra--39bc9575708c216e8bf32f47.md) | 400 | `declaration-track:39bc9575708c216e8bf32f47c5b54caba918be12a90ac2bda795d2d7bf91051b` |
| 27 | `theorem` | [coe_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/coe-zerorootsubalgebra--b3ec4adc97bd00cbf8c247b9.md) | 410 | `result-track:b3ec4adc97bd00cbf8c247b9193e1725a426b0feed8e63b1baed7e440cfd4c8a` |
| 28 | `theorem` | [mem_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/mem-zerorootsubalgebra--3e2932e4febdd6c9e59a0482.md) | 413 | `result-track:3e2932e4febdd6c9e59a0482b228cacb35ef0234760cf9f8bcc7d42fd494382c` |
| 29 | `theorem` | [toLieSubmodule_le_rootSpace_zero](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/toliesubmodule-le-rootspace-zero--c60ef3c2306351e44ca6ae2d.md) | 422 | `result-track:c60ef3c2306351e44ca6ae2d0f689def3b35b044da5d18b1c7d3c1954d071c24` |
| 30 | `theorem` | [le_zeroRootSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/le-zerorootsubalgebra--fddd419fbfcc3c2198756051.md) | 446 | `result-track:fddd419fbfcc3c21987560513444e08aff44d4c7ce75ece0a5de2700c28acbc1` |
| 31 | `theorem` | [zeroRootSubalgebra_normalizer_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/zerorootsubalgebra-normalizer-eq-self--ddde33531f7a2c6088808291.md) | 453 | `result-track:ddde33531f7a2c60888082918167f319d20526224c5ebb0537733f9b82f4ecea` |
| 32 | `theorem` | [is_cartan_of_zeroRootSubalgebra_eq](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/is-cartan-of-zerorootsubalgebra-eq--9e394a9ed098bd88292fe3ba.md) | 474 | `result-track:9e394a9ed098bd88292fe3ba252fbc29300219d993ba6ba107913908602bbf16` |
| 33 | `theorem` | [zeroRootSubalgebra_eq_of_is_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/zerorootsubalgebra-eq-of-is-cartan--6aae1fa427799b595011b610.md) | 481 | `result-track:6aae1fa427799b595011b610655b2e3d6c76a28ab5e04762a66ad1e24d22d440` |
| 34 | `theorem` | [zeroRootSubalgebra_eq_iff_is_cartan](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/zerorootsubalgebra-eq-iff-is-cartan--ee0e4f4c5b8dcde4271b444e.md) | 489 | `result-track:ee0e4f4c5b8dcde4271b444ec7067d9e76c62e38f713d2539546d7da13e91e06` |
| 35 | `def` | [weightSpace'](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/weightspace--56b8a43fb48945723b27817c.md) | 507 | `declaration-track:56b8a43fb48945723b27817caeadd973866c802a13511c93e4e91d140c12206a` |
| 36 | `theorem` | [coe_weightSpace'](../../../../../mathematics/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/declarations/coe-weightspace--b321943755f96a1a0fe81f78.md) | 518 | `result-track:b321943755f96a1a0fe81f7874fefb482bbaa83e6bb0d04b3ffff135fe62bf2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
