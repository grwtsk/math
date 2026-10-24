# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quotient.Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76bdba27163cb09a656cd49a70f5b4ca75cb9e5f",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76bdba27163cb09a656cd49a70f5b4ca75cb9e5f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/homrel--929d11d4c74c0173f0f43566.md) | 22 | `declaration-track:929d11d4c74c0173f0f43566307ff21882e2e8d63d48de8ef51b918d8f55dae3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/instance--da291ae7db294b22e8e69ac8.md) | 27 | `declaration-track:da291ae7db294b22e8e69ac88dc5bcf5f3af97994116539446d3665120103fc7` |
| 3 | `def` | [Functor.homRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/functor-homrel--7784ac702bbacd36c9bacd8c.md) | 37 | `declaration-track:7784ac702bbacd36c9bacd8cf02bdb361322d3d1e5a8bab963c86cff93752f59` |
| 4 | `lemma` | [Functor.homRel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/functor-homrel-iff--7ee4e187c853f966b3571f2a.md) | 41 | `result-track:7ee4e187c853f966b3571f2af633abaa17925c1a4e9fa6600c93b72c97d3fe8f` |
| 5 | `class` | [Congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/congruence--7f9fd376fdec924e77c2f8d3.md) | 50 | `declaration-track:7f9fd376fdec924e77c2f8d32332d8863f4d5325ec8c5725e6472e754c5ac7b2` |
| 6 | `instance` | [Functor.congruence_homRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/functor-congruence-homrel--02ba6df7c8c216f0f109f01e.md) | 59 | `declaration-track:02ba6df7c8c216f0f109f01ed6770a8d323ccfb33672c37a61ee4bd4167ca0b1` |
| 7 | `structure` | [Quotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/quotient--0f20c679ecd5586ac839af6d.md) | 70 | `declaration-track:0f20c679ecd5586ac839af6d7b4893e73a8dfd19d900bf5ab35085c2228cd47f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/instance--ba2c93a94894fdceb536b2ee.md) | 74 | `declaration-track:ba2c93a94894fdceb536b2eed4e9cbec613be5018d121cc9ef169a8e8283c66b` |
| 9 | `inductive` | [CompClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/compclosure--94d05bee4f49f34736552289.md) | 80 | `declaration-track:94d05bee4f49f347365522892c5e8bdc00fc6c96e11c03e59873dbcc54cd52de` |
| 10 | `theorem` | [CompClosure.of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/compclosure-of--8c16537c4e568bd1b7dcf55f.md) | 84 | `result-track:8c16537c4e568bd1b7dcf55fc26f5ccd5a2da0f29d66ac07b8e19fc08623f19f` |
| 11 | `theorem` | [comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/comp-left--a7026fe2c2504d2fc6648697.md) | 87 | `result-track:a7026fe2c2504d2fc664869709068f4adab6ecbb2d8cda56cdbb60f0f1f44876` |
| 12 | `theorem` | [comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/comp-right--06db655f7931269e72b5753f.md) | 91 | `result-track:06db655f7931269e72b5753fa70fc4bd4d5b34035396da9e89f024d652a467ba` |
| 13 | `def` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/hom--0afab7b679e547cd516b2f20.md) | 96 | `declaration-track:0afab7b679e547cd516b2f202def7fbcd39f0a6cfc7de690742b797911f23c85` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/instance--6408b7225de839ff917ad5fe.md) | 99 | `declaration-track:6408b7225de839ff917ad5fe2c5280ff4f030418d23fc62624f979e5b4838408` |
| 15 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/comp--655424d96e10e65234be9ae7.md) | 103 | `declaration-track:655424d96e10e65234be9ae70143878d7a8ce83011d992d71a29607ee7fe2ea5` |
| 16 | `theorem` | [comp_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/comp-mk--e1e811eb64d2f33a115f4edb.md) | 111 | `result-track:e1e811eb64d2f33a115f4edbf5935ed078214cf3666ee0944d77e5fbd2ebd3df` |
| 17 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/category--2ed256fba0581b67fd1902b6.md) | 116 | `declaration-track:2ed256fba0581b67fd1902b60750864cbe4ac30cbff43f94d54225e4f4eac54f` |
| 18 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/functor--a50c7b333da5fd64a20293e6.md) | 125 | `declaration-track:a50c7b333da5fd64a20293e683b3ffb6ad0972b02f4f24af35a9a91205305ed8` |
| 19 | `instance` | [full_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/full-functor--c932572bc98d5833c414c8d1.md) | 129 | `declaration-track:c932572bc98d5833c414c8d13af757454e480bc512187cf2ab59aa6a72bc68a3` |
| 20 | `instance` | [essSurj_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/esssurj-functor--711ade1389af6f63a1107b4e.md) | 132 | `declaration-track:711ade1389af6f63a1107b4e80d3f524b912970f67f3fda18a6c66e72273e943` |
| 21 | `theorem` | [induction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/induction--146cf1a31ab1fbc042bb1a3f.md) | 138 | `result-track:146cf1a31ab1fbc042bb1a3f71123375572c707805233fe50151ee6ccf0eb8ed` |
| 22 | `theorem` | [sound](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/sound--60d54516fbe6fcd9644c14e7.md) | 144 | `result-track:60d54516fbe6fcd9644c14e7db7bac05274ae6f0918a2412de7d3000976d811e` |
| 23 | `lemma` | [compClosure_iff_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/compclosure-iff-self--f0fe875812d58649a78bb027.md) | 148 | `result-track:f0fe875812d58649a78bb02782d9f6cf046027ff1c70d9dbee4a793e8605e508` |
| 24 | `theorem` | [compClosure_eq_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/compclosure-eq-self--c38754ccececef90e8b9717c.md) | 157 | `result-track:c38754ccececef90e8b9717cbffffa63ae1f1e706cdd18a9894fae122cc36d48` |
| 25 | `theorem` | [functor_map_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/functor-map-eq-iff--13f7fff962cbc30277a6f68b.md) | 162 | `result-track:13f7fff962cbc30277a6f68b9cd91c68ddeb57c3f424e147112ed0ffc9bbb557` |
| 26 | `theorem` | [functor_homRel_eq_compClosure_eqvGen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/functor-homrel-eq-compclosure-eqvgen--d3103c8e007b509170505a0b.md) | 168 | `result-track:d3103c8e007b509170505a0b6d7148b173f2629527c068508bf0508d56959a8f` |
| 27 | `theorem` | [compClosure.congruence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/compclosure-congruence--c1af5348bfe82adc220e6ffd.md) | 172 | `result-track:c1af5348bfe82adc220e6ffdfd7a3daf0ffafd719ac5e8e8a781c00aae89bb88` |
| 28 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/lift--c59d8e5e78098612dceb74b5.md) | 181 | `declaration-track:c59d8e5e78098612dceb74b598fc3010f7f3a44f65ed325a8febc6dab990c085` |
| 29 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/lift-spec--e30b818a8b1e991d579c9aaa.md) | 195 | `result-track:e30b818a8b1e991d579c9aaaacc55aee0cdce8a022d8f06105dd75d7654fd5d1` |
| 30 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/lift-unique--27566e3f4ef85dc7598e048d.md) | 203 | `result-track:27566e3f4ef85dc7598e048d675a3745df81a65fff50135b4eeaf080bbf8438c` |
| 31 | `lemma` | [lift_unique'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/lift-unique--318abc5bc898451160446531.md) | 215 | `result-track:318abc5bc898451160446531e7ea58d1a4ad164d6e34f34d4132798fc01ddfb4` |
| 32 | `def` | [lift.isLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/lift-islift--03fa0de32f76179f496b2c6b.md) | 225 | `declaration-track:03fa0de32f76179f496b2c6bc06d57219a7b62c39229bf9748f2d82ad20de070` |
| 33 | `theorem` | [lift.isLift_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/lift-islift-hom--4d8de81470f570711c8037b5.md) | 229 | `result-track:4d8de81470f570711c8037b54f8b9304ee692d82c00433998149f020d99b538c` |
| 34 | `theorem` | [lift.isLift_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/lift-islift-inv--8a8baa228e2a99bbd3973601.md) | 233 | `result-track:8a8baa228e2a99bbd3973601800134d3f3964f678503a7930a6e39404d8ac2fe` |
| 35 | `theorem` | [lift_obj_functor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/lift-obj-functor-obj--e8f88c6ad44956c9761da577.md) | 236 | `result-track:e8f88c6ad44956c9761da577f7a072a4d3fecdc86b802aa1ad9f81588d2041e1` |
| 36 | `theorem` | [lift_map_functor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/lift-map-functor-map--e26fb94d4ff43df9d423dbc4.md) | 239 | `result-track:e26fb94d4ff43df9d423dbc4d4eec30131a79d6e37d1c1600ab9244566173f6d` |
| 37 | `lemma` | [natTrans_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/nattrans-ext--4a5623c43a98c34a8f343166.md) | 247 | `result-track:4a5623c43a98c34a8f34316621652a65c1532e49ddc7b135654713b3b28dbd59` |
| 38 | `def` | [natTransLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/nattranslift--6bb46422377d1013cc090ff5.md) | 255 | `declaration-track:6bb46422377d1013cc090ff51882e6b541def530fcdb86b0007cfacadb6c95a4` |
| 39 | `lemma` | [natTransLift_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/nattranslift-app--d50eb99b30f2c6f6ddc77796.md) | 263 | `result-track:d50eb99b30f2c6f6ddc777967a66544f74823d7513be021f63eef9b2df496023` |
| 40 | `lemma` | [comp_natTransLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/comp-nattranslift--472066a19e430d72359930d1.md) | 268 | `result-track:472066a19e430d72359930d1be3ffe7dd22d3f92dfb7aa9040cfc57a76094e1f` |
| 41 | `lemma` | [natTransLift_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/nattranslift-id--cee06ecabfba883fa2a9af71.md) | 274 | `result-track:cee06ecabfba883fa2a9af71675ceeea3b137ad88e25499a486f18ed5cebd98a` |
| 42 | `def` | [natIsoLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/natisolift--8236e8215c1fd2a327487d39.md) | 280 | `declaration-track:8236e8215c1fd2a327487d399dc6a59413ed75a2513ee48ed2da244f891871d4` |
| 43 | `instance` | [full_whiskeringLeft_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/full-whiskeringleft-functor--322fadc5df124f0d7e0690d0.md) | 289 | `declaration-track:322fadc5df124f0d7e0690d050596c857c3175bf8806758e8aa019b63be46d15` |
| 44 | `instance` | [faithful_whiskeringLeft_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean/declarations/faithful-whiskeringleft-functor--1cfc367dfb324d754b9a0ae7.md) | 293 | `declaration-track:1cfc367dfb324d754b9a0ae732ec04692bf213673162c441011598831511ff1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
