# Verification target: GRWTSK.Algebra.LinearAlgebra.Injective.Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f88c6644b005dd9b8150cf6ea8208dd49813d1a8",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f88c6644b005dd9b8150cf6ea8208dd49813d1a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.LinearPMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Equiv.TransferInstance` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Module.Injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/module-injective--42e06f9099a36aa47721d150.md) | 55 | `declaration-track:42e06f9099a36aa47721d15027ea18145710c6219144f2e4c4fa63c29e5572f4` |
| 2 | `def` | [Module.Baer](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/module-baer--758a55e481406e802f6661d1.md) | 62 | `declaration-track:758a55e481406e802f6661d1c1583e8c1a94070794e69f764815fe20b4f3ab5e` |
| 3 | `lemma` | [of_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/of-equiv--24522cb896f2da03b4af9fd9.md) | 70 | `result-track:24522cb896f2da03b4af9fd939d21c47cd14a9dc954801480cc0e3ad7a1cff3e` |
| 4 | `lemma` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/congr--68cdb825972ba22814b1dad7.md) | 74 | `result-track:68cdb825972ba22814b1dad7f688abb2c3351b3b5fabb582cff78d97054f6c30` |
| 5 | `structure` | [ExtensionOf](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionof--005ce3cd4dd7862b43cbb399.md) | 79 | `declaration-track:005ce3cd4dd7862b43cbb399ceb9f7c15f8fe9e09738fbc6dab47a5eca0efbf4` |
| 6 | `theorem` | [ExtensionOf.ext](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionof-ext--0c7d6652f7bfb1bd0c482cfc.md) | 88 | `result-track:0c7d6652f7bfb1bd0c482cfc1904151910a23526d50ce120bd4eaadfaf8b84d5` |
| 7 | `theorem` | [ExtensionOf.dExt](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionof-dext--650391050144f2536e5f16b5.md) | 98 | `result-track:650391050144f2536e5f16b50dd9c71cf097b02cfd60712abfc9a75b142f24a7` |
| 8 | `theorem` | [ExtensionOf.dExt_iff](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionof-dext-iff--2fefdbbcef14eb864eadd1d0.md) | 104 | `result-track:2fefdbbcef14eb864eadd1d0d9c24e44f78e10c2d739081eb4b55e0a5773ac31` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/instance--a97b81f65279c83566f0a0a9.md) | 112 | `declaration-track:a97b81f65279c83566f0a0a991db474b88bf590edb0ebf935e9814e2392836d6` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/instance--a6e1ce3a0517794dbfe33d0c.md) | 123 | `declaration-track:a6e1ce3a0517794dbfe33d0c075ea084a94252aacb98e142a93c25d3cb5ab9e4` |
| 11 | `theorem` | [chain_linearPMap_of_chain_extensionOf](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/chain-linearpmap-of-chain-extensionof--07abf7c3d640499fce6c9793.md) | 134 | `result-track:07abf7c3d640499fce6c9793927e9e103c8d23c744aa1a3251ec3cbc0515c8fd` |
| 12 | `def` | [ExtensionOf.max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionof-max--856a2f165273fa428d741ca2.md) | 141 | `declaration-track:856a2f165273fa428d741ca24a26e3b738201b989838c903267d77f662b56ec9` |
| 13 | `theorem` | [ExtensionOf.le_max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionof-le-max--8250e4e1136c9e21af3beb99.md) | 157 | `result-track:8250e4e1136c9e21af3beb999c00f36c35d14d942f51e1fd8b9670ba09eb13f7` |
| 14 | `instance` | [ExtensionOf.inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionof-inhabited--d11555c66a9718490266b9a3.md) | 165 | `declaration-track:d11555c66a9718490266b9a393342e46c2bcdad97bcfa473c28d2f28b10a863b` |
| 15 | `def` | [extensionOfMax](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmax--ce2f9d16cdaa98dd82a6aaa6.md) | 190 | `declaration-track:ce2f9d16cdaa98dd82a6aaa6e2c124f3938fb69d8669a0a9ac44586da4b791c9` |
| 16 | `theorem` | [extensionOfMax_is_max](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmax-is-max--ffebca149724915243015ee9.md) | 194 | `result-track:ffebca149724915243015ee9fec3560fff8990bc4d9744ac66b881131e10f2d4` |
| 17 | `abbrev` | [supExtensionOfMaxSingleton](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/supextensionofmaxsingleton--4de56a42ee49cf5fad8541ae.md) | 201 | `declaration-track:4de56a42ee49cf5fad8541aec301c4e9ecc24e52d8e5fe07336c104f033a0f3c` |
| 18 | `theorem` | [extensionOfMax_adjoin.aux1](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmax-adjoin-aux1--8986e22a7842e143e689f6a4.md) | 206 | `result-track:8986e22a7842e143e689f6a4c7e2881f8166ad80b6a6a6b3b98e29c9b1c1479a` |
| 19 | `def` | [ExtensionOfMaxAdjoin.fst](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-fst--aef4154300d34f410e6179e2.md) | 216 | `declaration-track:aef4154300d34f410e6179e27118e554c7734e075d8940293cd139ee3ba7816f` |
| 20 | `def` | [ExtensionOfMaxAdjoin.snd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-snd--a97b0db65686994475b3c90e.md) | 221 | `declaration-track:a97b0db65686994475b3c90e5b7e2e7bbe1200565def9f26447747a0ec0e3db9` |
| 21 | `theorem` | [ExtensionOfMaxAdjoin.eqn](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-eqn--fa8568c82e051d536e18d425.md) | 224 | `result-track:fa8568c82e051d536e18d42555fce28c60bcc08237b1aac0568e32f96c5909c2` |
| 22 | `def` | [ExtensionOfMaxAdjoin.ideal](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-ideal--7cc3819acd8c5bcfbbe547c1.md) | 232 | `declaration-track:7cc3819acd8c5bcfbbe547c1ba41b5a3aa8d2d4f06038576f503082ee6757901` |
| 23 | `def` | [ExtensionOfMaxAdjoin.idealTo](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-idealto--c51238d803e56f14c4af878b.md) | 236 | `declaration-track:c51238d803e56f14c4af878bc44d77a9bf1cade8729f0613b30abc758a18cd76` |
| 24 | `def` | [ExtensionOfMaxAdjoin.extendIdealTo](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-extendidealto--e7b9f2d903932ec973f6fb16.md) | 249 | `declaration-track:e7b9f2d903932ec973f6fb162b795ca98afed78fda9fff2d10f873adca0a7681` |
| 25 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_is_extension](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-extendidealto-is-extension--7c81e17a3e992d0b98085be5.md) | 252 | `result-track:7c81e17a3e992d0b98085be567c7089361a298f8149360f9869056bb11c34cb7` |
| 26 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_wd'](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-extendidealto-wd--620f1ee0ad69d5f0ef63c0e2.md) | 257 | `result-track:620f1ee0ad69d5f0ef63c0e232fe60786066de611fb3cd8830e47ff9d2130fed` |
| 27 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_wd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-extendidealto-wd--92d25ebce163a614cc420472.md) | 268 | `result-track:92d25ebce163a614cc420472691e490cf6fc423b7b799443a7405c0bfefc0cb8` |
| 28 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_eq](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-extendidealto-eq--e9f82d58b2de4b1c18e8a88a.md) | 275 | `result-track:e9f82d58b2de4b1c18e8a88ad1664f2e55e3532dc0a8004acf30a704d7765f45` |
| 29 | `def` | [ExtensionOfMaxAdjoin.extensionToFun](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-extensiontofun--86b5018c3dd904a574840954.md) | 283 | `declaration-track:86b5018c3dd904a574840954ed5f5f5ec86825e8aa74ddd4bda2d065fe3dae13` |
| 30 | `theorem` | [ExtensionOfMaxAdjoin.extensionToFun_wd](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin-extensiontofun-wd--dfd57ec3e36c6a0d4d19906b.md) | 288 | `result-track:dfd57ec3e36c6a0d4d19906b5f261b8858cd988f9e0a7d6ffdf0de8fbc6afd79` |
| 31 | `def` | [extensionOfMaxAdjoin](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmaxadjoin--878612643c272bc17aeaaa62.md) | 312 | `declaration-track:878612643c272bc17aeaaa6206d77991d189c532ac1dfff1f8c47139164b6bb8` |
| 32 | `theorem` | [extensionOfMax_le](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmax-le--c4b9471a2c6445d55d4e3169.md) | 344 | `result-track:c4b9471a2c6445d55d4e3169d9bc37fb0c5e8873255424d7bdb660230641db00` |
| 33 | `theorem` | [extensionOfMax_to_submodule_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extensionofmax-to-submodule-eq-top--c830041a35b11d2c13b7fdf3.md) | 352 | `result-track:c830041a35b11d2c13b7fdf32bfaecc726fe17548ae784d9261e7da652edc8de` |
| 34 | `theorem` | [extension_property](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extension-property--425b9cdbd0e9d382667e3979.md) | 360 | `result-track:425b9cdbd0e9d382667e3979e41d83dd25f7a22bccf40d03399723346ef2dd02` |
| 35 | `theorem` | [extension_property_addMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/extension-property-addmonoidhom--87daf7eafd54693f2569c332.md) | 370 | `result-track:87daf7eafd54693f2569c33204c5f149a19b50309baee6cf16d5be2a490cd7d5` |
| 36 | `theorem` | [injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/injective--831b21877f65200b06ef2680.md) | 377 | `result-track:831b21877f65200b06ef2680dfd415127b9c9c93fe3cff3fc3d7516b31d4d700` |
| 37 | `theorem` | [of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/of-injective--57aa140b4aa01054e8d1bdca.md) | 382 | `result-track:57aa140b4aa01054e8d1bdca4f53c741f51c404e836ac0d22c55bc7994d08b2d` |
| 38 | `theorem` | [iff_injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/iff-injective--8c0f666daf301d851eb392ba.md) | 390 | `result-track:8c0f666daf301d851eb392ba90d7a6bab36ccf292be24f49c14ffff6d1c81bb8` |
| 39 | `lemma` | [Module.ulift_injective_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/module-ulift-injective-of-injective--7de946018d891c3ca23f45dc.md) | 399 | `result-track:7de946018d891c3ca23f45dc133da7e648c8d82dcf7838a25f80815ed4d8884e` |
| 40 | `lemma` | [Module.injective_of_ulift_injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/module-injective-of-ulift-injective--aa3a65a0e55dfd6fd3dd4fd2.md) | 405 | `result-track:aa3a65a0e55dfd6fd3dd4fd2282b41512645de7bc114eee9b4aa3fbc075f63cf` |
| 41 | `lemma` | [Module.injective_iff_ulift_injective](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/module-injective-iff-ulift-injective--6eaf05ff9a0c883a8f4d3539.md) | 418 | `result-track:6eaf05ff9a0c883a8f4d35394f2af238cbb5c988557900c5dfff6bfd20986733` |
| 42 | `lemma` | [Module.Injective.extension_property](../../../../../mathematics/Algebra/LinearAlgebra/Injective/Variant268f522fbb06913c1970a4ec9fa72b159ae84f8677eee5b1698f71f9c31afec7.lean/declarations/module-injective-extension-property--7a6d5e41e7f9f66aa5d643f8.md) | 434 | `result-track:7a6d5e41e7f9f66aa5d643f8ff8f9606d2fad996bcd2d27348dc5eea61fa8db7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
