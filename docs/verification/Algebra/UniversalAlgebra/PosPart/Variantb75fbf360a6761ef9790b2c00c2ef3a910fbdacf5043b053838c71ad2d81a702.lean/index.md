# Verification target: GRWTSK.Algebra.UniversalAlgebra.PosPart.Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "651a1eefdb3e8fb5ba129d04cbe651749b117f7d",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `651a1eefdb3e8fb5ba129d04cbe651749b117f7d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instOneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/instonelepart--9127f94c4f4900b0d4961344.md) | 59 | `declaration-track:9127f94c4f4900b0d4961344bf93f9d37b8e2c0ee1f2514aa1f9b29502a983db` |
| 2 | `instance` | [instLeOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/instleonepart--ad5731de4587893b344a994c.md) | 66 | `declaration-track:ad5731de4587893b344a994cf82b8fa2b0f3c42e0de516c41db8a7d1115c4e82` |
| 3 | `lemma` | [leOnePart_def](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-def--a7068943c63b2823cc8834cf.md) | 69 | `result-track:a7068943c63b2823cc8834cfeeb92fda50cb696c79ff65507d526858ce90cbde` |
| 4 | `lemma` | [oneLePart_def](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-def--898a7d1c8d4f31d801252823.md) | 71 | `result-track:898a7d1c8d4f31d80125282373a49fb08b21f00cd0ef4eccc6f6783e94afdff7` |
| 5 | `lemma` | [oneLePart_mono](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-mono--ea68c84f6cbc33c613c61191.md) | 73 | `result-track:ea68c84f6cbc33c613c6119198e1e01ce060fadfba4c961e316e0ad61b0dc2f6` |
| 6 | `lemma` | [oneLePart_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-one--c6b5f26f2e30c9228d996fd9.md) | 76 | `result-track:c6b5f26f2e30c9228d996fd961305620a2abc644c0aa64be176cfabbbf36f827` |
| 7 | `lemma` | [leOnePart_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-one--0b6fb6a286127c73618a74b5.md) | 78 | `result-track:0b6fb6a286127c73618a74b5260cc5ef10b71605431c827a604e043ef5ba46aa` |
| 8 | `lemma` | [one_le_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/one-le-onelepart--b2b169cfb183c5845a70ceef.md) | 80 | `result-track:b2b169cfb183c5845a70ceef1b0733893647d8d2acda5112125c08efd04f7406` |
| 9 | `lemma` | [one_le_leOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/one-le-leonepart--32fbd6697a52232980cfb8c2.md) | 82 | `result-track:32fbd6697a52232980cfb8c27b68dfa6030baec751215f93aafec8d539a54ae9` |
| 10 | `lemma` | [le_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/le-onelepart--54f1226d9765aa1150743583.md) | 85 | `result-track:54f1226d9765aa1150743583cac49494de900ed5798e416e62103be18a898072` |
| 11 | `lemma` | [inv_le_leOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/inv-le-leonepart--d0d3aa27ad1432f0f90724da.md) | 87 | `result-track:d0d3aa27ad1432f0f90724da739d9879987315bf0b7a8ed7072945b5158e04d3` |
| 12 | `lemma` | [oneLePart_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-eq-self--fd2ba6fafdebabaf1ff1559f.md) | 89 | `result-track:fd2ba6fafdebabaf1ff1559fe71e433a5a55158d8ac8ca5dda6c65e31d252453` |
| 13 | `lemma` | [oneLePart_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-eq-one--dd2b93175348afc8054edca7.md) | 90 | `result-track:dd2b93175348afc8054edca7f70317299cf297dfa87bb260e927cb14d20a596b` |
| 14 | `lemma` | [leOnePart_eq_inv'](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-eq-inv--46eb1a8b5328d71091fdc018.md) | 97 | `result-track:46eb1a8b5328d71091fdc0185718691021144b8eb5ec2d4bd21f02284d575dac` |
| 15 | `lemma` | [leOnePart_eq_one'](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-eq-one--d6b707e02bcaa676a611afea.md) | 101 | `result-track:d6b707e02bcaa676a611afea29aeb9e8c05891e95d12c93cefc410b6d77b3e9d` |
| 16 | `lemma` | [oneLePart_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-le-one--b2c10e0dab7f09395535350c.md) | 103 | `result-track:b2c10e0dab7f09395535350c7fda97b1f49518a7ea0b1b01bd4d2ab176aff667` |
| 17 | `lemma` | [leOnePart_le_one'](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-le-one--2a4bfcd5f6fb649dc8bcc530.md) | 107 | `result-track:2a4bfcd5f6fb649dc8bcc530c15b39dce8ea52b81e192c1472b344d02df7c557` |
| 18 | `lemma` | [leOnePart_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-le-one--1138628671780437613f776b.md) | 109 | `result-track:1138628671780437613f776b459427d00c27b689192ef4ae0075aa74affe4c1f` |
| 19 | `lemma` | [one_lt_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/one-lt-onelepart--116cea59b824d8489058b23f.md) | 111 | `result-track:116cea59b824d8489058b23fa81dbe6fed80fe75e5034b7d717aa753ebdaf275` |
| 20 | `lemma` | [oneLePart_inv](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-inv--d220c04b067b927fd2a1631c.md) | 114 | `result-track:d220c04b067b927fd2a1631c08f48a352a934582f10822f85c0f986f56bfbe4f` |
| 21 | `lemma` | [leOnePart_inv](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-inv--75a3d8724b225ce849711805.md) | 116 | `result-track:75a3d8724b225ce84971180546b67395a6909d512a30b1c5c54c26b8c73721d3` |
| 22 | `lemma` | [leOnePart_eq_inv](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-eq-inv--cb2a72e8d1d5e017767bfb47.md) | 122 | `result-track:cb2a72e8d1d5e017767bfb47ad97200eb3de0b14e96e4cb59fc9665f4a7e6c70` |
| 23 | `lemma` | [leOnePart_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-eq-one--e8b484ad7e43bc4092fbf895.md) | 125 | `result-track:e8b484ad7e43bc4092fbf895ca5f2a023aadc4d61564a49889f0087fe37a65c1` |
| 24 | `lemma` | [one_lt_ltOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/one-lt-ltonepart--948b49647af233cb37e8d5b1.md) | 130 | `result-track:948b49647af233cb37e8d5b1ebceae8ca736649b71b321bb4ff1ac04cd3eb922` |
| 25 | `lemma` | [oneLePart_div_leOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-div-leonepart--06693ff4634c3c01106d04f8.md) | 134 | `result-track:06693ff4634c3c01106d04f8e1644d7bc37f5d1004788cf05eb95778c769350f` |
| 26 | `lemma` | [leOnePart_div_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-div-onelepart--4b0d9c44fd2ef14785e62f7f.md) | 138 | `result-track:4b0d9c44fd2ef14785e62f7f6fd38b7302eab90534e85598c4b5d57023bc295f` |
| 27 | `lemma` | [oneLePart_leOnePart_injective](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-leonepart-injective--23bd67c6e5e3783769ec9df3.md) | 142 | `result-track:23bd67c6e5e3783769ec9df39f05eae1a1ac0823feb2c6b671d8c1b205d5c144` |
| 28 | `lemma` | [oneLePart_leOnePart_inj](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-leonepart-inj--9f5aa2619784669e7120fbe4.md) | 148 | `result-track:9f5aa2619784669e7120fbe460b0d4276121daac519badc536f67825cedeb4ae` |
| 29 | `lemma` | [leOnePart_anti](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-anti--38b163f2f224d5c13ad0b36c.md) | 154 | `result-track:38b163f2f224d5c13ad0b36cee8197d117622dcbcd2356d5a9f96d4e5fe65d16` |
| 30 | `lemma` | [leOnePart_eq_inv_inf_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-eq-inv-inf-one--24a5ee1c699798ea994fa305.md) | 158 | `result-track:24a5ee1c699798ea994fa305ca992d437f58d5f198e885a87faef8cc0c7c43bd` |
| 31 | `lemma` | [oneLePart_mul_leOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-mul-leonepart--0a3f167ef67d317ec5cc791a.md) | 162 | `result-track:0a3f167ef67d317ec5cc791a0e4806145bcff3606d654964eea277dabb756de7` |
| 32 | `lemma` | [leOnePart_mul_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-mul-onelepart--fb8dcfefe5ef2454b83fb863.md) | 167 | `result-track:fb8dcfefe5ef2454b83fb863347c779d0d6857cff460db61bbe1271797a0c3c6` |
| 33 | `lemma` | [oneLePart_inf_leOnePart_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-inf-leonepart-eq-one--0b7616fc1ce8c6d2c894b2de.md) | 174 | `result-track:0b7616fc1ce8c6d2c894b2dedec7e92ff63b66c1d6c9bc1a35f447ed980ece5b` |
| 34 | `lemma` | [sup_eq_mul_oneLePart_div](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/sup-eq-mul-onelepart-div--41091b941133d18b6bcf923b.md) | 188 | `result-track:41091b941133d18b6bcf923be1df720adff6216d4245d5f818dec222fa6cb484` |
| 35 | `lemma` | [inf_eq_div_oneLePart_div](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/inf-eq-div-onelepart-div--a1596bfa8aa60a45f0666553.md) | 192 | `result-track:a1596bfa8aa60a45f0666553572a816ca39a7c858ceec57e0a60a76b0f082593` |
| 36 | `lemma` | [le_iff_oneLePart_leOnePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/le-iff-onelepart-leonepart--a6145c7b57ce6bc7b87ec568.md) | 196 | `result-track:a6145c7b57ce6bc7b87ec5681e3fbb878ff5088a83ad1c6b4153460c30e9b608` |
| 37 | `lemma` | [mabs_mul_eq_oneLePart_sq](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/mabs-mul-eq-onelepart-sq--d9570e9fdc5147cd4cf801af.md) | 202 | `result-track:d9570e9fdc5147cd4cf801af9995b0eaf5a16dea8384382f45dfe82ae53f4a2f` |
| 38 | `lemma` | [mul_mabs_eq_oneLePart_sq](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/mul-mabs-eq-onelepart-sq--c9ed160e1ffb42280c946f96.md) | 206 | `result-track:c9ed160e1ffb42280c946f968b47ee719c5e287d6e512e11d1b34e75fd15f645` |
| 39 | `lemma` | [mabs_div_eq_leOnePart_sq](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/mabs-div-eq-leonepart-sq--b1153e3a3c0f52306968ce72.md) | 210 | `result-track:b1153e3a3c0f52306968ce72e245ff123d5ea416964e83a2750bd8a9b035ed85` |
| 40 | `lemma` | [div_mabs_eq_inv_leOnePart_sq](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/div-mabs-eq-inv-leonepart-sq--c5be19756c32addd1231f305.md) | 214 | `result-track:c5be19756c32addd1231f305bfb4baf5be9095a8203523076ff4f450d5222806` |
| 41 | `lemma` | [oneLePart_eq_ite](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-eq-ite--6dfea42061a4f5fe58b73c65.md) | 223 | `result-track:6dfea42061a4f5fe58b73c6524f6842add7044df6d7ac03d66ab32f4fbe31397` |
| 42 | `lemma` | [one_lt_oneLePart_iff](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/one-lt-onelepart-iff--dc9882b12f2d28d87aeca0bd.md) | 226 | `result-track:dc9882b12f2d28d87aeca0bde688d9b81eaa39bd4255cab2397aab20e96f7cb7` |
| 43 | `lemma` | [oneLePart_of_one_lt_oneLePart](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-of-one-lt-onelepart--6892ff8f8aea6b0e048cacb7.md) | 230 | `result-track:6892ff8f8aea6b0e048cacb7ad81077c173bdb68c1c9b8bc45ba9902e97c9aad` |
| 44 | `lemma` | [oneLePart_lt](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-lt--d49f4a293ea8b7ddf45ee7ff.md) | 233 | `result-track:d49f4a293ea8b7ddf45ee7ff55aff5423762c343ceed42f404cb0f14a5f7831f` |
| 45 | `lemma` | [leOnePart_eq_ite](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-eq-ite--7b26dafafcb34b320fdf15a4.md) | 238 | `result-track:7b26dafafcb34b320fdf15a4140b87f395e871089ee9e0fb773ad9c919b0e49e` |
| 46 | `lemma` | [one_lt_ltOnePart_iff](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/one-lt-ltonepart-iff--7776358684c1a69cbdcfdec7.md) | 241 | `result-track:7776358684c1a69cbdcfdec777ac43ecdd450d174f1eddd20a06f702fe94c7de` |
| 47 | `lemma` | [leOnePart_lt](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-lt--189fd62b695db25f8f9d2a62.md) | 246 | `result-track:189fd62b695db25f8f9d2a621010691c32525702a56908a2334164b06b05aad0` |
| 48 | `lemma` | [oneLePart_apply](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-apply--69f6e64d803fa64c9ac0b7f2.md) | 255 | `result-track:69f6e64d803fa64c9ac0b7f26d25a21f170aabca1d03718b7ca9fcadd66bf427` |
| 49 | `lemma` | [leOnePart_apply](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-apply--16096a3fb58796e66585d82d.md) | 256 | `result-track:16096a3fb58796e66585d82d9df668203975005099618d1005ae5a1bc9715a21` |
| 50 | `lemma` | [oneLePart_def](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/onelepart-def--7347da2e606dcb2e2ad94848.md) | 258 | `result-track:7347da2e606dcb2e2ad94848fcb53e43f127269deb0ad9f8db1b8c7abad4d1df` |
| 51 | `lemma` | [leOnePart_def](../../../../../mathematics/Algebra/UniversalAlgebra/PosPart/Variantb75fbf360a6761ef9790b2c00c2ef3a910fbdacf5043b053838c71ad2d81a702.lean/declarations/leonepart-def--d6e6ecf19c817cbb4aeee81a.md) | 259 | `result-track:d6e6ecf19c817cbb4aeee81a803947ebb38f5f324602b8696116136e170805ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
