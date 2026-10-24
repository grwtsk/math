# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Karoubi.Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf403af6d37087c2ec6162477af72f8b6cc721da",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf403af6d37087c2ec6162477af72f8b6cc721da`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Karoubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/karoubi--831b8d22158ce6540612b118.md) | 44 | `declaration-track:831b8d22158ce6540612b118c8bc3744bc639fa6cf55a57abe21c11e91a2c28e` |
| 2 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/ext--a399753c9d4e4ad430453ab2.md) | 60 | `result-track:a399753c9d4e4ad430453ab2620984f59fe308e8c5aedbf63a962031f943bb3d` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/hom--8c0e8294982c1b14b4687e1e.md) | 74 | `declaration-track:8c0e8294982c1b14b4687e1e352d2ff259b5f403d0d4b36ecb6fe07c3d194802` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/instance--65d9dad35ef0776ee72e889c.md) | 81 | `declaration-track:65d9dad35ef0776ee72e889c7cd1cd8b22b8336e903e196fd46d5d1bfef7641a` |
| 5 | `theorem` | [p_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/p-comp--df0ac1b973a5967920534d22.md) | 85 | `result-track:df0ac1b973a5967920534d22caedd669926d62ebad82860e1df85bdc45a0e5a5` |
| 6 | `theorem` | [comp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/comp-p--0e2cadb0a684211843863f53.md) | 89 | `result-track:0e2cadb0a684211843863f53de774c044d56e746cd542849cc23c5271e3e6ee7` |
| 7 | `theorem` | [p_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/p-comm--ca345c58cd7de4c335ea9585.md) | 94 | `result-track:ca345c58cd7de4c335ea9585bbd690ee6596223d6e78c6ef81646f2361cb00ef` |
| 8 | `theorem` | [comp_proof](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/comp-proof--49961ae657d0e038e1e0477d.md) | 97 | `result-track:49961ae657d0e038e1e0477d5ab05d4d1f04420821f8e0f49291635cf6cad3c8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/instance--17c084a2ab1475758bc348f9.md) | 102 | `declaration-track:17c084a2ab1475758bc348f95ee7544ebd990c9b3c37168eb36859bcecb365ee` |
| 10 | `theorem` | [hom_ext_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/hom-ext-iff--501737dff91a3c39df8918f8.md) | 108 | `result-track:501737dff91a3c39df8918f876a5f109d6ffb787abb9bd868b03a40b4f5db255` |
| 11 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/hom-ext--2b980dd9a5dd8b2ad4519d4b.md) | 117 | `result-track:2b980dd9a5dd8b2ad4519d4b7e41294280372e0281579dbadd19b248bc6b79b5` |
| 12 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/comp-f--f00932b4e1f7d3d31104d103.md) | 121 | `result-track:f00932b4e1f7d3d31104d1032f4af82eacfce641689b4144bd63f9cfa64068c3` |
| 13 | `theorem` | [id_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/id-eq--fe91466512ce8fa7c56b9fac.md) | 125 | `result-track:fe91466512ce8fa7c56b9facd522b8fd23fb558eb4bf90ae6a860c65009f99eb` |
| 14 | `instance` | [coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/coe--60dfd9ecefd2c2bb0293aaff.md) | 130 | `declaration-track:60dfd9ecefd2c2bb0293aaffd0a84dc48c60767afbc0aaebae6fbc3a0063062d` |
| 15 | `theorem` | [coe_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/coe-x--2e4601608c1a192c9a2222e6.md) | 135 | `result-track:2e4601608c1a192c9a2222e695031a4c3fe768875df4322ec61931de611b90fd` |
| 16 | `theorem` | [coe_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/coe-p--741023c8d7748af643899a0d.md) | 140 | `result-track:741023c8d7748af643899a0d7b7ccdddf10fee8dcc2301c3a569b8c5afb0e81a` |
| 17 | `theorem` | [eqToHom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/eqtohom-f--1f249ab1e1ce82477342953d.md) | 144 | `result-track:1f249ab1e1ce82477342953dcecfc83261dd0d5539e8a306a5bd3233ec9b8f63` |
| 18 | `def` | [toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/tokaroubi--67f24f724a4ed4db2de58dc0.md) | 155 | `declaration-track:67f24f724a4ed4db2de58dc04fb56f3f345c3374c2945d302b16ef7f21dab631` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/instance--1be581bb44b94db6167741af.md) | 160 | `declaration-track:1be581bb44b94db6167741af5fcbd58ba7f5cf10d4ab52cd5f6d62dcc55d0283` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/instance--5c08e5929b545d1e2262a7ba.md) | 162 | `declaration-track:5c08e5929b545d1e2262a7ba0e4a4f5aaab02ad2828c9b1ea54ed0bfc8c49580` |
| 21 | `instance` | [instAddCommGroupHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/instaddcommgrouphom--728933900701a4bf49b99fa6.md) | 168 | `declaration-track:728933900701a4bf49b99fa6384cd4f4f8e313393caf0d1b7b4d86f4dde6bae8` |
| 22 | `theorem` | [hom_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/hom-eq-zero-iff--3e9f7da793b04b8e0b724007.md) | 191 | `result-track:3e9f7da793b04b8e0b7240076e8da3839bf3288ed632876875a33beb920b4ee6` |
| 23 | `def` | [inclusionHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/inclusionhom--bfbf6482275d67b343fe086b.md) | 197 | `declaration-track:bfbf6482275d67b343fe086bad0d486a06a99a33a4647bac9c46c401a3c0c431` |
| 24 | `theorem` | [sum_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/sum-hom--03c8da8caea57e1a8dc7f120.md) | 204 | `result-track:03c8da8caea57e1a8dc7f1205cedc17448e252351bf2548539963e5054fbafb3` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/instance--4a7690874e46a7b3d7c37c8c.md) | 212 | `declaration-track:4a7690874e46a7b3d7c37c8cee590e907083986375a17680ae94b21f2edf39c6` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/instance--11f205b9d2a018a525a2add5.md) | 215 | `declaration-track:11f205b9d2a018a525a2add563c4f7edc2b5bf95d4d1463a8d12da18bb368768` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/instance--64ecc251e32cd644ed293b43.md) | 221 | `declaration-track:64ecc251e32cd644ed293b43f1c16bdf2b05d75142ffbaa5908f4f928297045b` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/instance--8e2c513e25cd62cc1bdf644d.md) | 230 | `declaration-track:8e2c513e25cd62cc1bdf644d8ef69d6e75d3af0cb1da6c91bda28a72ddb81c26` |
| 29 | `def` | [toKaroubiIsEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/tokaroubiisequivalence--f9daafcad6e6566a2200881b.md) | 240 | `declaration-track:f9daafcad6e6566a2200881bc71df24c2f4365e7e86467110b806eaac1c4555f` |
| 30 | `def` | [toKaroubiEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/tokaroubiequivalence--284a3e28a9ce16fea08b504b.md) | 245 | `declaration-track:284a3e28a9ce16fea08b504bbaa9fd00a213e5feb487c0ea8ee990a138d36b16` |
| 31 | `instance` | [toKaroubiEquivalence_functor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/tokaroubiequivalence-functor-additive--7a75d62650dd100623b3cfbc.md) | 250 | `declaration-track:7a75d62650dd100623b3cfbcbc2ff6ba3063d58206ec9d538db87a550f77f0e5` |
| 32 | `def` | [decompId_i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/decompid-i--b78d07a2e761a4328c23d003.md) | 261 | `declaration-track:b78d07a2e761a4328c23d0031e85a3744dc1e2e1cf9f9f95566a1a08e1ebe0a1` |
| 33 | `def` | [decompId_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/decompid-p--c225fc9946986a1420530f15.md) | 267 | `declaration-track:c225fc9946986a1420530f159fbc555c87e929be43c434516f9ba59edabe8b91` |
| 34 | `theorem` | [decompId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/decompid--a2b48914d08c89d3004b4eb9.md) | 274 | `result-track:a2b48914d08c89d3004b4eb9480d8d7e69ee22fd220657929ac8959e93be4fb3` |
| 35 | `theorem` | [decomp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/decomp-p--22654d41643f4149e1fcdf06.md) | 279 | `result-track:22654d41643f4149e1fcdf06f0dab801516191d5c7c089299b2624729f237e45` |
| 36 | `theorem` | [decompId_i_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/decompid-i-tokaroubi--89fb64006acdaa61d64b11fc.md) | 284 | `result-track:89fb64006acdaa61d64b11fc03f9eefa87477f5cbd179d9924ecf042ae610571` |
| 37 | `theorem` | [decompId_p_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/decompid-p-tokaroubi--8fa1b82104c445fbc5501a43.md) | 288 | `result-track:8fa1b82104c445fbc5501a43fb4710f13bf2721f5eac1bff5fcfd41ec12de40c` |
| 38 | `theorem` | [decompId_i_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/decompid-i-naturality--8150c628d3e27b811bdfe6fb.md) | 292 | `result-track:8150c628d3e27b811bdfe6fbc26f1657bd7ab8d2c32cbd39164c716286562c0b` |
| 39 | `theorem` | [decompId_p_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/decompid-p-naturality--38b98b756a2d0b3c5604e3da.md) | 297 | `result-track:38b98b756a2d0b3c5604e3dad1ce5e488aeb4723c609506eb841cb22dc814a10` |
| 40 | `theorem` | [zsmul_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127.lean/declarations/zsmul-hom--4d5899aeaef02d6574ca424f.md) | 303 | `result-track:4d5899aeaef02d6574ca424f949608788a425fb0e0be766f3e23621025233897` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
