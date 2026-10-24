# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DeriveTraversable.Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2590560cc65d18f50e9ee47dd1f177b7f4c62318",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2590560cc65d18f50e9ee47dd1f177b7f4c62318`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nestedMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/nestedmap--008e8562f6866180775e4bc7.md) | 36 | `declaration-track:008e8562f6866180775e4bc79dfcf650d7a5267ac6581a7485fd55aea0465ab1` |
| 2 | `def` | [mapField](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/mapfield--b74b6c3602b5e965c675381a.md) | 48 | `declaration-track:b74b6c3602b5e965c675381a8e8c83af3df5e5773db1bd1792582a05b159ff68` |
| 3 | `def` | [getAuxDefOfDeclName](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/getauxdefofdeclname--e82272a4b9642c9cc7d95ccd.md) | 67 | `declaration-track:e82272a4b9642c9cc7d95ccd862522421a963442fe75fc640a2daf8995082286` |
| 4 | `def` | [mapConstructor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/mapconstructor--8c1abc367805c733ef7ec00c.md) | 78 | `declaration-track:8c1abc367805c733ef7ec00ce3b02d761c1e608e7fb4131c9e6348c2cafd43ea` |
| 5 | `def` | [mkCasesOnMatch](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/mkcasesonmatch--9af87b7fd15956a70fd4f301.md) | 94 | `declaration-track:9af87b7fd15956a70fd4f301526bf1408a96b8e07f31dd6f4dce2bc2db703498` |
| 6 | `def` | [getFVarIdsNotImplementationDetails](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/getfvaridsnotimplementationdetails--abe2740b4f5d9953cca1074e.md) | 129 | `declaration-track:abe2740b4f5d9953cca1074e9757fb7e3ae39a81a517290c2103c51286a66451` |
| 7 | `def` | [getFVarsNotImplementationDetails](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/getfvarsnotimplementationdetails--5b133dd4754a78b1be11ba7e.md) | 136 | `declaration-track:5b133dd4754a78b1be11ba7e917b65fdeae150f886e83e66df3fd6d64d8acbea` |
| 8 | `def` | [mkMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/mkmap--3362b9c01d72f6a3fdd7d471.md) | 140 | `declaration-track:3362b9c01d72f6a3fdd7d4719fdd1c4f671f063b7a91b3964c896a3c8809901f` |
| 9 | `def` | [deriveFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/derivefunctor--3967c10ef038ed0cda3a44e0.md) | 162 | `declaration-track:3967c10ef038ed0cda3a44e0addd705b749e7468eb70b79dc81bf46e06bba703` |
| 10 | `def` | [mkInstanceNameForTypeExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/mkinstancenamefortypeexpr--99852f1933f1c5fb434c3d50.md) | 194 | `declaration-track:99852f1933f1c5fb434c3d50e5ffa7b4c6e473cffed09a69e429553e078d41f1` |
| 11 | `def` | [mkOneInstance](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/mkoneinstance--ecddc40958d0084666daea95.md) | 214 | `declaration-track:ecddc40958d0084666daea9545ae3a00e34b0d3973c1fe633c103674bbcdbbaf` |
| 12 | `def` | [higherOrderDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/higherorderderivehandler--6ea98541169036d23878382f.md) | 258 | `declaration-track:6ea98541169036d23878382f6a0eb9ab43902e975ba9ff39b113ff568dd9fa13` |
| 13 | `def` | [functorDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/functorderivehandler--2d31a7599e564b563849484b.md) | 269 | `declaration-track:2d31a7599e564b563849484b4b61f35800a273713bb4c8f97f98379ed470f7dc` |
| 14 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/initialize--de1e3bc09cd45265964fea4d.md) | 272 | `declaration-track:de1e3bc09cd45265964fea4dbd886e4225df789e50f3875246c2cb187f481736` |
| 15 | `def` | [deriveLawfulFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/derivelawfulfunctor--7c6b7bfb933680076bcaea36.md) | 275 | `declaration-track:7c6b7bfb933680076bcaea36c7e36b6d5c8f1696a96081c67368bd9fed2df753` |
| 16 | `def` | [lawfulFunctorDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/lawfulfunctorderivehandler--8a48eebb2d317398d422946a.md) | 307 | `declaration-track:8a48eebb2d317398d422946afdd4be05964e9d3e270c381212f61c1e1a29db5b` |
| 17 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/initialize--315b06a4ecd0447717913c40.md) | 311 | `declaration-track:315b06a4ecd0447717913c40081bdebf0963af840536d13977aa6f2fcfd4ed80` |
| 18 | `def` | [nestedTraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/nestedtraverse--b5ca6d808105e5a9a15f5879.md) | 316 | `declaration-track:b5ca6d808105e5a9a15f5879712984e79397419aa066f1e77fa2c7e02d88ff61` |
| 19 | `def` | [traverseField](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/traversefield--7d401b6f621c27a73c43b7e8.md) | 331 | `declaration-track:7d401b6f621c27a73c43b7e8a9909c7adfb390a1cf89fe3cb99381821985f1b3` |
| 20 | `def` | [traverseConstructor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/traverseconstructor--e8dc8a5b14c2c9771486135d.md) | 350 | `declaration-track:e8dc8a5b14c2c9771486135d12367dfd049731b019a33fc8eacd47df0af2f95a` |
| 21 | `def` | [mkTraverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/mktraverse--09b02ff6b0206e4f57473ebc.md) | 378 | `declaration-track:09b02ff6b0206e4f57473ebcfe9ca16c2190740bea9bacc91593049adaac80c1` |
| 22 | `def` | [deriveTraversable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/derivetraversable--23d900bf4a983c6c8e5f0ad7.md) | 401 | `declaration-track:23d900bf4a983c6c8e5f0ad74c27503fb28c43ea07f342d129c565e9ed8ee78b` |
| 23 | `def` | [traversableDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/traversablederivehandler--4f8e24d0c953531840d42340.md) | 430 | `declaration-track:4f8e24d0c953531840d42340a8868f5d0d89c8407ab1ac374e25d4910071869e` |
| 24 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/initialize--4fb1da223b8bc2fce3a79b45.md) | 433 | `declaration-track:4fb1da223b8bc2fce3a79b4542714ddafee1f3529686c823f5e12a4941a23f91` |
| 25 | `def` | [simpFunctorGoal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/simpfunctorgoal--bb873d8e471b7c3a3f293844.md) | 436 | `declaration-track:bb873d8e471b7c3a3f2938447c766223bfff0db8455dd1f53fac1f03dfd4e567` |
| 26 | `def` | [traversableLawStarter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/traversablelawstarter--dfe5ba6980c95d98bd74876c.md) | 452 | `declaration-track:dfe5ba6980c95d98bd74876c9671b474022c7018dfa8b1c56384d52a288211d0` |
| 27 | `def` | [deriveLawfulTraversable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/derivelawfultraversable--102fae7f844b2be604c3214b.md) | 466 | `declaration-track:102fae7f844b2be604c3214bb9b2ac094d23fbebe9076b96388c0d3d095b142f` |
| 28 | `def` | [lawfulTraversableDeriveHandler](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/lawfultraversablederivehandler--237dbd9e30607e6480d17446.md) | 494 | `declaration-track:237dbd9e30607e6480d174465785fb418276b9d93204b4b97c98742420b2d8be` |
| 29 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/DeriveTraversable/Variant44c9dcae51d5deeed01638fe61a4b321f7970a6e3aa36934c8295cbc07ac6bea.lean/declarations/initialize--2ef3721880f112b82aecad3f.md) | 498 | `declaration-track:2ef3721880f112b82aecad3f3f4ee4aac1e82a05b6afb73d98ac6f17f6e68381` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
