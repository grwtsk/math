# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalize.Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b52b20a32d477352e861f8204c88e09c038fb198",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b52b20a32d477352e861f8204c88e09c038fb198`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Coherence.Datatypes` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WhiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/whiskerright--0f4369ef58992264dda1ad1d.md) | 68 | `declaration-track:0f4369ef58992264dda1ad1dfd328ca1f74ad0d5f48d1e43fc02004bf9456bf1` |
| 2 | `def` | [WhiskerRight.e](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/whiskerright-e--ec42a90db28a1f6fd2c80f84.md) | 76 | `declaration-track:ec42a90db28a1f6fd2c80f84f9ad9f08055728da3b2af5bd32833c10094d3c99` |
| 3 | `inductive` | [HorizontalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/horizontalcomp--10f63687c9d1ce70da460cec.md) | 81 | `declaration-track:10f63687c9d1ce70da460cec8e186a0d26661a639d723562572849c37040307f` |
| 4 | `def` | [HorizontalComp.e](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/horizontalcomp-e--511313d5211a30787d638ed6.md) | 88 | `declaration-track:511313d5211a30787d638ed6537af90841097eb1fa8b88bdbe1173f104274749` |
| 5 | `inductive` | [WhiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/whiskerleft--2e3b34ca16e5ad0ad9b0cab7.md) | 93 | `declaration-track:2e3b34ca16e5ad0ad9b0cab7a6b38c500f1166dee2e7eae91c9a83c075969f02` |
| 6 | `def` | [WhiskerLeft.e](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/whiskerleft-e--9305bd5f545867ef5679d5be.md) | 101 | `declaration-track:9305bd5f545867ef5679d5bef830342df817c279d86241d52dc1ff642dbd16ae` |
| 7 | `def` | [Mor₂Iso.isStructural](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/mor-iso-isstructural--44161ec1ca5c4519eb63f2e9.md) | 106 | `declaration-track:44161ec1ca5c4519eb63f2e9780f6bd5e036ec13034f6234de90ac652b56c9ce` |
| 8 | `abbrev` | [Structural](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/structural--6039373288534782795affce.md) | 119 | `declaration-track:6039373288534782795affce9b83c29db5e78b59030c6e434307f72147c2156f` |
| 9 | `inductive` | [NormalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/normalexpr--26aa4d0370cabf2ba4f259c8.md) | 122 | `declaration-track:26aa4d0370cabf2ba4f259c87c6062cc20724bb7b6f2e2b6bd1038fbf0310f40` |
| 10 | `def` | [NormalExpr.e](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/normalexpr-e--65e7799545777102fb7696b2.md) | 130 | `declaration-track:65e7799545777102fb7696b28390d430bef6385e67df80d84087cb994111aa1c` |
| 11 | `class` | [MonadWhiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/monadwhiskerright--29de6d3d72d9c22ba12e122c.md) | 135 | `declaration-track:29de6d3d72d9c22ba12e122cb1cb29de61a29b175d5f51ae22bef598ac1488c1` |
| 12 | `class` | [MonadHorizontalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/monadhorizontalcomp--1cac60fe7d600736dfc52cd7.md) | 140 | `declaration-track:1cac60fe7d600736dfc52cd7de538593a25981fdb9cc442ab8d63aea1386f45b` |
| 13 | `class` | [MonadWhiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/monadwhiskerleft--22ea343cbeefa4c0d491efbb.md) | 145 | `declaration-track:22ea343cbeefa4c0d491efbb326b61f0393f0d5a2ae6a56c77d65a9a7ec81526` |
| 14 | `class` | [MonadNormalExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/monadnormalexpr--acc74a48cff7bb915be38bac.md) | 150 | `declaration-track:acc74a48cff7bb915be38bac51dab3ad63638c944dba356ade61e2f97f4bd6c5` |
| 15 | `def` | [WhiskerRight.srcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/whiskerright-srcm--45ae8d59d5727644ceef363f.md) | 161 | `declaration-track:45ae8d59d5727644ceef363f61aed000c140d346b4b7ecbc9cba7750add31ad8` |
| 16 | `def` | [WhiskerRight.tgtM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/whiskerright-tgtm--5be4e548df7244b34a8c270b.md) | 166 | `declaration-track:5be4e548df7244b34a8c270b29c9c7c7bd6481d65969f6b4ddd403ae7cee3a07` |
| 17 | `def` | [HorizontalComp.srcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/horizontalcomp-srcm--c2976361e062f418190b9596.md) | 171 | `declaration-track:c2976361e062f418190b959644f5603f4f838a84f38cc3b5aa0b5c806955990b` |
| 18 | `def` | [HorizontalComp.tgtM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/horizontalcomp-tgtm--d097179ac9bccaba6e18f7af.md) | 176 | `declaration-track:d097179ac9bccaba6e18f7af51f5ddeae864dbf0a11fe6c51ea93d3a30ad834e` |
| 19 | `def` | [WhiskerLeft.srcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/whiskerleft-srcm--d75ccd13b9437d2bb9e0d1c3.md) | 181 | `declaration-track:d75ccd13b9437d2bb9e0d1c3f0aabfd1d3cc2b168a54573b0c0218ae41190841` |
| 20 | `def` | [WhiskerLeft.tgtM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/whiskerleft-tgtm--f4f40e25dd480feab343579d.md) | 186 | `declaration-track:f4f40e25dd480feab343579d6e1d2d3d1d21ede10bd26011d0491e8906796546` |
| 21 | `def` | [NormalExpr.srcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/normalexpr-srcm--2273c0336f0501ef0a618955.md) | 191 | `declaration-track:2273c0336f0501ef0a618955b1f1d44ce747921274880669a780f9949e58ea30` |
| 22 | `def` | [NormalExpr.tgtM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/normalexpr-tgtm--758ea321d0268e1765a06c1d.md) | 196 | `declaration-track:758ea321d0268e1765a06c1d71167bfc8239f803884425240d5bb1e6f89c0002` |
| 23 | `def` | [idM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/idm--af3cd28575e4cc80885dd1fd.md) | 205 | `declaration-track:af3cd28575e4cc80885dd1fd74e879c1a5a36745b2c663d2f35a6c90e5083f5a` |
| 24 | `def` | [associatorM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/associatorm--64722ca17ee3210df951de6c.md) | 209 | `declaration-track:64722ca17ee3210df951de6c3436eebda23d76569a4dbb8613d6e4d0ec721b9a` |
| 25 | `def` | [associatorInvM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/associatorinvm--2f008d16efe4317f26eb02af.md) | 213 | `declaration-track:2f008d16efe4317f26eb02af1e6fd235350b83a398ae9b4182061ee54bc8e0b2` |
| 26 | `def` | [leftUnitorM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/leftunitorm--eb60eed7a6c04c26fe5cf48d.md) | 218 | `declaration-track:eb60eed7a6c04c26fe5cf48d4d9c1830a3cdc915c9c975159c8231281a5daca3` |
| 27 | `def` | [leftUnitorInvM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/leftunitorinvm--94f65711a327c6566d8a5995.md) | 222 | `declaration-track:94f65711a327c6566d8a5995c508adfb2801e428477946ccb9250db3d4462b24` |
| 28 | `def` | [rightUnitorM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/rightunitorm--c63764f02a0ef41503af6894.md) | 226 | `declaration-track:c63764f02a0ef41503af68948e6ae8a30123922078406509dcbff6a7fdccbb49` |
| 29 | `def` | [rightUnitorInvM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/rightunitorinvm--a1ab631b585eb82906a2abba.md) | 230 | `declaration-track:a1ab631b585eb82906a2abbaa02e32c724c3f81175a479c4687d419f9bc8a872` |
| 30 | `def` | [ofM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/ofm--c0d9b1285345a323795f85eb.md) | 234 | `declaration-track:c0d9b1285345a323795f85eb297d4af685b5eac583535de030ab34062c4ddb1c` |
| 31 | `def` | [ofAtomM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/ofatomm--5d1cc1ca2fcb00db29305f27.md) | 239 | `declaration-track:5d1cc1ca2fcb00db29305f27f27dbb0658f307005b881449358555ef0c91c19f` |
| 32 | `def` | [NormalExpr.toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/normalexpr-tolist--c5e6ed90b6d49e1a81965f55.md) | 245 | `declaration-track:c5e6ed90b6d49e1a81965f5558fc05150571fe02182d663a9c79d7b0a49bd563` |
| 33 | `structure` | [Eval.Result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/eval-result--e2291122a9e6c6175f93b365.md) | 254 | `declaration-track:e2291122a9e6c6175f93b365c88e5f3f16df3195f583c6e26d3baad14032c871` |
| 34 | `class` | [MkEvalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/mkevalcomp--a0ce3862ea137f1bb06c0c7b.md) | 264 | `declaration-track:a0ce3862ea137f1bb06c0c7b4c36650df32a87a39e2b564e301cbafbb9ffe1aa` |
| 35 | `class` | [MkEvalWhiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/mkevalwhiskerleft--96aec94876b3640c56d6c543.md) | 273 | `declaration-track:96aec94876b3640c56d6c543accd02fd211a0935bfb351707b7066a4466617b9` |
| 36 | `class` | [MkEvalWhiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/mkevalwhiskerright--54706f26bea07b112cf5bbd8.md) | 286 | `declaration-track:54706f26bea07b112cf5bbd8514277c62237c1498c5438ae3f7c5ea41cc8ebcc` |
| 37 | `class` | [MkEvalHorizontalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/mkevalhorizontalcomp--b9528d223a1bce4708dc78fd.md) | 308 | `declaration-track:b9528d223a1bce4708dc78fd7ab1854e3259592fb9955540d4b09e85c1a94cba` |
| 38 | `class` | [MkEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/mkeval--13b49d97d4f04d46c5645051.md) | 333 | `declaration-track:13b49d97d4f04d46c56450513cf7ff619ca81c9fba7e5b4e82951719f4d6b4a4` |
| 39 | `def` | [evalCompNil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/evalcompnil--8d693071f30708d1974e2880.md) | 355 | `declaration-track:8d693071f30708d1974e2880bf3b16abad195fb71cbcb2be8f64c05b527eecf4` |
| 40 | `def` | [evalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/evalcomp--ac524391faa0a807e5152189.md) | 360 | `declaration-track:ac524391faa0a807e515218905725e87988c1bc09b7f8967234168bf089c3f31` |
| 41 | `def` | [evalWhiskerLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/evalwhiskerleft--8feecb2f4e93cfcd12882661.md) | 371 | `declaration-track:8feecb2f4e93cfcd12882661465a6c6c85f00abb4247325e86ce4b13197c079f` |
| 42 | `def` | [evalWhiskerRightAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/evalwhiskerrightaux--5cc6a91aa626922ecdc1276c.md) | 399 | `declaration-track:5cc6a91aa626922ecdc1276cf1af4dff1b869934135f7d61d95b13bf5fa10706` |
| 43 | `def` | [evalWhiskerRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/evalwhiskerright--8f2f11a91e8eecdb908aa0c5.md) | 411 | `declaration-track:8f2f11a91e8eecdb908aa0c5dbb414f7b5fb2f0315f284681887ca92b1d5ae46` |
| 44 | `def` | [evalHorizontalCompAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/evalhorizontalcompaux--f11495698d1ada8987f92aa3.md) | 449 | `declaration-track:f11495698d1ada8987f92aa3db5444b10965e3786759eff2be28e2cd4f55a8b8` |
| 45 | `def` | [evalHorizontalCompAux'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/evalhorizontalcompaux--bcc8e5d30bd807028cd5938c.md) | 463 | `declaration-track:bcc8e5d30bd807028cd5938c03d81f7198f053288fbd896189efd3c6651a6722` |
| 46 | `def` | [evalHorizontalComp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/evalhorizontalcomp--e71b547e2caf0187d3c73aa3.md) | 479 | `declaration-track:e71b547e2caf0187d3c73aa3a2d59525454587ae170e327f943da8999a4b7c0c` |
| 47 | `def` | [traceProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/traceproof--71929304f7a99e2a3515847e.md) | 513 | `declaration-track:71929304f7a99e2a3515847ef7c4f160d59c0dbc460f855afcfa8532b09d6d10` |
| 48 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantd733c5c1597bc659099d5ee2a6e3d47560f8de66c489494fd2edc9af16e0c6fe.lean/declarations/eval--619919db656d4223e0cae29f.md) | 519 | `declaration-track:619919db656d4223e0cae29f710ce549492a01dc50a82469a2fe8182646da8f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
