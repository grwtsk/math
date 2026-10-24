# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Currying.Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5078d2e543afb43ddb161ea3b4f04312349a7a0",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5078d2e543afb43ddb161ea3b4f04312349a7a0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/uncurry--60d3b38b2a4c4c62df29bdce.md) | 38 | `declaration-track:60d3b38b2a4c4c62df29bdce0ac202eac689da125e898f55856081523b986af9` |
| 2 | `def` | [curryObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/curryobj--b9ebdd9f7060fd22fcb52e2d.md) | 58 | `declaration-track:b9ebdd9f7060fd22fcb52e2deaf4d25d727b1004adfa85d89e7f0b86af519642` |
| 3 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/curry--9a09fbe5dcbc8130dda251c1.md) | 73 | `declaration-track:9a09fbe5dcbc8130dda251c11bd54152e58cfa3b66d5dcd5cf82e9316c02fe56` |
| 4 | `def` | [currying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/currying--b7cf463503289c4cca2b2478.md) | 89 | `declaration-track:b7cf463503289c4cca2b24781d6ac3e8ea6a7c3cc9a699d5786cd3e8847126b5` |
| 5 | `def` | [flipping](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/flipping--b5611b8999fa7e0bca515a62.md) | 102 | `declaration-track:b5611b8999fa7e0bca515a624e8d5796d987bb373bfb6298b8b2f3c627684b7b` |
| 6 | `def` | [fullyFaithfulUncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/fullyfaithfuluncurry--f03252d4dc864eb6b4a99e23.md) | 111 | `declaration-track:f03252d4dc864eb6b4a99e238a3a6eeb842370af1aa28b5636817613ee62ce5f` |
| 7 | `def` | [fullyFaithfulCurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/fullyfaithfulcurry--65970a1b2378d8ea4ec2ceae.md) | 115 | `declaration-track:65970a1b2378d8ea4ec2ceae86f44c2b27466a6d5c3281ab58f24b6b7dc75b2e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/instance--0590e74e6f245a7bc541e2c6.md) | 118 | `declaration-track:0590e74e6f245a7bc541e2c6f963a867eef875051f9cae63acc4958d7c2c2409` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/instance--75a1af698b218a853180590c.md) | 121 | `declaration-track:75a1af698b218a853180590cff90893c36214b4973c7e250df583a95f7cf6980` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/instance--8153040c24354827f2efb386.md) | 124 | `declaration-track:8153040c24354827f2efb38677eb443e2bb056d5b61436b40bbdcb5e521f4fe0` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/instance--5ddb818f64d8ca44bb931c60.md) | 127 | `declaration-track:5ddb818f64d8ca44bb931c6055df715c91517fb573d04c6ce8295694c83e7365` |
| 12 | `def` | [curryObjProdComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/curryobjprodcomp--85bc7b699e14209874a458fe.md) | 134 | `declaration-track:85bc7b699e14209874a458fe61c513bd1d65fd78b4c58b2c23a72029e6d55db0` |
| 13 | `def` | [flipIsoCurrySwapUncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/flipisocurryswapuncurry--d7fdd3f660e157804c7e15c9.md) | 142 | `declaration-track:d7fdd3f660e157804c7e15c99343287b2794d7c3ac3134f04b24952edacaaa27` |
| 14 | `def` | [uncurryObjFlip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/uncurryobjflip--40c451a184ddfe2d1c10cdd5.md) | 148 | `declaration-track:40c451a184ddfe2d1c10cdd50751db271aae8669aff3567c2cfa9bec4a5caeb8` |
| 15 | `def` | [whiskeringRight₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/whiskeringright--b835e4bcbc646bb7728c5f8d.md) | 157 | `declaration-track:b835e4bcbc646bb7728c5f8d4812f9cd1ef4ba4bfcc8ff1498e4b188c5192054` |
| 16 | `lemma` | [uncurry_obj_curry_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/uncurry-obj-curry-obj--924b771096ec660ce469105a.md) | 163 | `result-track:924b771096ec660ce469105a7799f1aaaedafd7a464a220bf8bf38003ac12e50` |
| 17 | `lemma` | [curry_obj_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/curry-obj-injective--43c972f26e0d9dc35714a3b9.md) | 168 | `result-track:43c972f26e0d9dc35714a3b9929db6091b954cdf7430089b4064acc54ff5eba0` |
| 18 | `lemma` | [curry_obj_uncurry_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/curry-obj-uncurry-obj--73cb587b8d4ba76a2bd9f342.md) | 172 | `result-track:73cb587b8d4ba76a2bd9f342b1c8622b6b9d7c8cffb208b523e11dfb9a375462` |
| 19 | `lemma` | [uncurry_obj_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/uncurry-obj-injective--3c5fd8c00ea91517cdcff1d6.md) | 175 | `result-track:3c5fd8c00ea91517cdcff1d63fd9257d55008b31626a563b03d6d53127c4a999` |
| 20 | `lemma` | [flip_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/flip-flip--6f24d77bda78e626b0c52207.md) | 179 | `result-track:6f24d77bda78e626b0c5220703deb34073f2ba070dfd174c04dbc4f204d87a4e` |
| 21 | `lemma` | [flip_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/flip-injective--84526586b4637a85c5d06a11.md) | 181 | `result-track:84526586b4637a85c5d06a1112340b0f74ea0dbd8b3f0fd350d28d1ad58d753e` |
| 22 | `lemma` | [uncurry_obj_curry_obj_flip_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/uncurry-obj-curry-obj-flip-flip--37c4ca7ae3be595f40ced374.md) | 185 | `result-track:37c4ca7ae3be595f40ced374cf32c66106fd3a4601bd522917bb376e2f94ed93` |
| 23 | `lemma` | [uncurry_obj_curry_obj_flip_flip'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/uncurry-obj-curry-obj-flip-flip--f24e950d87742cb479e4a200.md) | 191 | `result-track:f24e950d87742cb479e4a200a561598942a34020587d3ed23933756ec12b13ef` |
| 24 | `def` | [compFlipUncurryIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/compflipuncurryiso--08291a5b8d56e0049bb7713d.md) | 199 | `declaration-track:08291a5b8d56e0049bb7713d2d79a69d4d87beec6856a9beb53cfa74f2418ce1` |
| 25 | `lemma` | [comp_flip_uncurry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/comp-flip-uncurry-eq--27a468987531304ae2efda2b.md) | 202 | `result-track:27a468987531304ae2efda2bdaadf21531032a7ca9eab8e603fc012b105d0448` |
| 26 | `def` | [curryObjCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/curryobjcompiso--be0f98cc619ad85310d769f4.md) | 207 | `declaration-track:be0f98cc619ad85310d769f49cb8d38dea3f7a9f749b36629261106d19671a73` |
| 27 | `lemma` | [curry_obj_comp_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/curry-obj-comp-flip--8f7c5dd38eba8e7379fa8a17.md) | 210 | `result-track:8f7c5dd38eba8e7379fa8a172310c200503baabd0f023b0397a72784cb5bbce2` |
| 28 | `def` | [flippingEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/flippingequiv--803edb71b44704134c335c3f.md) | 216 | `declaration-track:803edb71b44704134c335c3ff5ceb53ea944b064c79c53d1e60ed05f290da45b` |
| 29 | `def` | [curryingEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/curryingequiv--7b35c82edd922192ee9a03fe.md) | 224 | `declaration-track:7b35c82edd922192ee9a03fea949e67c3be831a271973ee004b7662d97a13f91` |
| 30 | `def` | [curryingFlipEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variant8d18a049392e998ad7ffc4c972b6a21dc43b738afa120ddf73046835ef643df5.lean/declarations/curryingflipequiv--713cd4f2bcd1aedbe4b65159.md) | 232 | `declaration-track:713cd4f2bcd1aedbe4b65159fe3251dcee1dcfd12104bb8860b151da4848578f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
