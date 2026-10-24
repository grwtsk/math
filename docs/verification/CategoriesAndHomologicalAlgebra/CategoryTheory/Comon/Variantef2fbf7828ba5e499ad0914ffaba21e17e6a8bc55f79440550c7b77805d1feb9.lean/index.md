# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comon.Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c89a845f6b09a60f095d0357799ada9500c37b5",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c89a845f6b09a60f095d0357799ada9500c37b5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Mon_` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Comon_Class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comon-class--0a5ca59f62f244b1bacb4719.md) | 38 | `declaration-track:0a5ca59f62f244b1bacb4719e4c0e8cbab8178a2a2d31f187027af1668e64651` |
| 2 | `theorem` | [counit_comul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/counit-comul--386a82914df222191ef94c6c.md) | 60 | `result-track:386a82914df222191ef94c6c294c961a4e34896cb93ac6d7c43f06bfbe117af0` |
| 3 | `theorem` | [comul_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comul-counit--ae3386c8ccbd2bdfe1151401.md) | 63 | `result-track:ae3386c8ccbd2bdfe1151401f569eb9bd5497e5efa278027b848360e49dcf94f` |
| 4 | `theorem` | [comul_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comul-assoc--003bf5b3e937c0f731e336be.md) | 66 | `result-track:003bf5b3e937c0f731e336bed8b33934bc53ae7e2d02925c8ebf5d62280c73ca` |
| 5 | `class` | [IsComon_Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/iscomon-hom--e5b281bbe9fb3c01e382134e.md) | 77 | `declaration-track:e5b281bbe9fb3c01e382134ee3afb22fc3a11a1c3f2958455f69dc642d93f833` |
| 6 | `structure` | [Comon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comon--0c64729c636cf85311109d83.md) | 89 | `declaration-track:0c64729c636cf85311109d835918537d01818d58ce1d75d77d5a4f10825205f0` |
| 7 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/mk--0b06e1df237a2a453e18e443.md) | 110 | `declaration-track:0b06e1df237a2a453e18e443661c40dcfc8461da7ba09e9c7642eaadb54bd1fb` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/instance--1c28235f48258b6145fea1ff.md) | 115 | `declaration-track:1c28235f48258b6145fea1ffae283b5f1f053c2474e748f8b52e0588e83f6315` |
| 9 | `def` | [trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/trivial--b55e1076061e06f680d6982c.md) | 127 | `declaration-track:b55e1076061e06f680d6982c6252968b6a592b902260fb75ae7f5ed3bea98c1c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/instance--581fe5a4e59fdd4a791342ff.md) | 135 | `declaration-track:581fe5a4e59fdd4a791342ff5f2d9d5d7d40e13981c0e778038d20239c2645fe` |
| 11 | `theorem` | [counit_comul_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/counit-comul-hom--a600239b8e173458ba31a4af.md) | 142 | `result-track:a600239b8e173458ba31a4af763289fce94826f1e5ad42573621915069b2f13b` |
| 12 | `theorem` | [comul_counit_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comul-counit-hom--55115151e6dbcc3f84014bfc.md) | 146 | `result-track:55115151e6dbcc3f84014bfc1bf21642cbaf202156e75776e9aecb825f586a0b` |
| 13 | `theorem` | [comul_assoc_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comul-assoc-flip--fe4fb4a06844c9506298bd81.md) | 149 | `result-track:fe4fb4a06844c9506298bd8198d27bfc9968180262875cf17992ea5aae52c14e` |
| 14 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/hom--d9578d57a9d08e8e3bd5de11.md) | 155 | `declaration-track:d9578d57a9d08e8e3bd5de11b7dfcc51a0833f66003932e852736d47ed9b75a7` |
| 15 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/id--3ee7d7a4f622af74bcc16f6f.md) | 165 | `declaration-track:3ee7d7a4f622af74bcc16f6fd8a4a2733c243502fe336c682a47d3a21bbd38d0` |
| 16 | `instance` | [homInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/hominhabited--d758a645b676269d30385d05.md) | 168 | `declaration-track:d758a645b676269d30385d05ef017e383eb44732672fbe2bb096aff8cb71337f` |
| 17 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comp--ece49285b85c43ba05f6efd2.md) | 173 | `declaration-track:ece49285b85c43ba05f6efd2b3e37d4577dd96a34d457d8743f621602b63cffa` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/instance--6c0db15893f69d63c38500ce.md) | 176 | `declaration-track:6c0db15893f69d63c38500ce664d9f28d6249ab17a1dc5036a8b8ad5521f9798` |
| 19 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/ext--de11e60e1cee3e764783f9ec.md) | 181 | `result-track:de11e60e1cee3e764783f9ecb0556961dc82ae901388c14801d36ba0654dd11a` |
| 20 | `theorem` | [id_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/id-hom--d124c5ba48a7728ea2f4e4cc.md) | 183 | `result-track:d124c5ba48a7728ea2f4e4cc5fc2bca6c6fcf43c85f35d89fe9c28a7813e1a28` |
| 21 | `theorem` | [comp_hom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comp-hom--647200680a2b928e9fc08031.md) | 186 | `result-track:647200680a2b928e9fc08031113c01c3dd82baef88e6a0845330e0eb29573a0e` |
| 22 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/forget--6c67852ca1cdd441f3aba290.md) | 195 | `declaration-track:6c67852ca1cdd441f3aba290d41847166aa26105b3fedbc5a78bd3085770ba5d` |
| 23 | `instance` | [forget_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/forget-faithful--abfcd7409e98333f3aca5c18.md) | 201 | `declaration-track:abfcd7409e98333f3aca5c186f7f95c47d79767655592a3d35d6869fe30aaabc` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/instance--3a1fcc38e6ca0b30d79db77c.md) | 203 | `declaration-track:3a1fcc38e6ca0b30d79db77c1a9ebb462a76539fceb36c8f9bc9a3c1514ee022` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/instance--34a313cac4281180bd52cdda.md) | 206 | `declaration-track:34a313cac4281180bd52cdda36452cc3c8041c3bbb27a0e87cfe848af93cddb5` |
| 26 | `def` | [mkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/mkiso--abcd8609c5df8e83cf47b3bb.md) | 214 | `declaration-track:abcd8609c5df8e83cf47b3bb43715109d9bf01df8e0f1f6c1a665d60a3421241` |
| 27 | `instance` | [uniqueHomToTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/uniquehomtotrivial--780c7c74741ddab68e38ec61.md) | 229 | `declaration-track:780c7c74741ddab68e38ec6107606ba4b859efdb3ce3355df2615606e610c42b` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/instance--ca586d71ecb029966cd9e72f.md) | 240 | `declaration-track:ca586d71ecb029966cd9e72fd4118267e7bc7e97b6911bcf3c7c0655b2417cc2` |
| 29 | `def` | [Comon_ToMon_OpOp_obj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comon-tomon-opop-obj--0957ef4eaab1af0abad10241.md) | 250 | `declaration-track:0957ef4eaab1af0abad1024122ac67285a6ce88dc0de25df9f60f986a4b54fcc` |
| 30 | `def` | [Comon_ToMon_OpOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comon-tomon-opop--ea3c5e4ef811915f7a871989.md) | 268 | `declaration-track:ea3c5e4ef811915f7a871989d1cd2e50f6d4b84e96057eb9980cc0eda7c70ed0` |
| 31 | `def` | [Mon_OpOpToComon_obj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/mon-opoptocomon-obj--2cdc5cd45c878fa6083eb89c.md) | 278 | `declaration-track:2cdc5cd45c878fa6083eb89cf160e6402ddb7b7ce4fd94a9156a3e87e5589f21` |
| 32 | `def` | [Mon_OpOpToComon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/mon-opoptocomon--61364d9622a2251243ea4ca2.md) | 293 | `declaration-track:61364d9622a2251243ea4ca227c8f86b15625364264ae22c72775aa9ee8de5e8` |
| 33 | `def` | [Comon_EquivMon_OpOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/comon-equivmon-opop--baa1bfd3a8de4eb805fa53e6.md) | 304 | `declaration-track:baa1bfd3a8de4eb805fa53e65500edf471588fa2d29a91ef478882dd53aaa987` |
| 34 | `instance` | [monoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/monoidal--ea995b5ba81998744625a5d8.md) | 316 | `declaration-track:ea995b5ba81998744625a5d8d86a0031f0200ffb7ab3683ff7d6bc002ed2eb77` |
| 35 | `theorem` | [tensorObj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/tensorobj-x--b3717d6c3febc990cea19047.md) | 321 | `result-track:b3717d6c3febc990cea190478bdf0875c213c76580031bd883a7b21dd1234d4e` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/instance--65d0762b021e9b7f9fa3311d.md) | 323 | `declaration-track:65d0762b021e9b7f9fa3311d077e4c7c0819f3724969b571088e12808d0840b8` |
| 37 | `theorem` | [tensorObj_counit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/tensorobj-counit--9a395a572c5a72e30c15c13b.md) | 326 | `result-track:9a395a572c5a72e30c15c13b1de219bf842fdcd2397150b4670c42c9d73153d0` |
| 38 | `theorem` | [tensorObj_comul'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/tensorobj-comul--4d593c1cd05158fecc3805a2.md) | 334 | `result-track:4d593c1cd05158fecc3805a2ab31a8b23b86935b0183eeeb8520b87ba8c30a07` |
| 39 | `theorem` | [tensorObj_comul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/tensorobj-comul--96bac89cf5bd7e8b15b5bee9.md) | 344 | `result-track:96bac89cf5bd7e8b15b5bee9964eb9bd0193826099579e466912939f9fcf10af` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/instance--c60c90c0fc0ed45081958ca9.md) | 354 | `declaration-track:c60c90c0fc0ed45081958ca93d6f5261b623ccd5272dde5bf9103b7a4c37e518` |
| 41 | `theorem` | [forget_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/forget--b25acdc7a20ee2c1d486aaa1.md) | 361 | `result-track:b25acdc7a20ee2c1d486aaa16660bc374f30199f1a3a3db16a32cfa949aef189` |
| 42 | `theorem` | [forget_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/forget--99c43977dd5c40936ac9ffd5.md) | 362 | `result-track:99c43977dd5c40936ac9ffd54dc1f451efada769a3e18447ea0cdeb4028905a0` |
| 43 | `theorem` | [forget_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/forget--34e5ebfccf09c579d04299fd.md) | 363 | `result-track:34e5ebfccf09c579d04299fd0c83a84200beed355b40d0234ca5e5edd9a494b0` |
| 44 | `theorem` | [forget_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/forget--486858ddb9ffeb6d7997902b.md) | 364 | `result-track:486858ddb9ffeb6d7997902b024e244ac1c69f97d92dcfdc6f508e9a2512d0bc` |
| 45 | `def` | [mapComon](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comon/Variantef2fbf7828ba5e499ad0914ffaba21e17e6a8bc55f79440550c7b77805d1feb9.lean/declarations/mapcomon--e841993d07ac446be27db233.md) | 379 | `declaration-track:e841993d07ac446be27db23373d98ec2d2d1e81e6e4e3323157c49865a11eca2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
