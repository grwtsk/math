# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MorphismProperty.Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "498ed5b92421af34cb5b56eb5ead9ff04d51ebdc",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `498ed5b92421af34cb5b56eb5ead9ff04d51ebdc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean.json)

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
| 1 | `def` | [forgetCreatesLimitOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/forgetcreateslimitofclosed--56efa58ead7d519b21fca69f.md) | 32 | `declaration-track:56efa58ead7d519b21fca69f54d76f88ed518dd15f4fec8a77adc88b99edf084` |
| 2 | `def` | [forgetCreatesLimitsOfShapeOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/forgetcreateslimitsofshapeofclosed--df95c2e4907de9b32ee1fa0e.md) | 44 | `declaration-track:df95c2e4907de9b32ee1fa0ec41bd1bee1dea8fd12f4ab2bb4d232712f1509ea` |
| 3 | `lemma` | [hasLimit_of_closedUnderLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/haslimit-of-closedunderlimitsofshape--68db84b3832d84fd495dcd4a.md) | 49 | `result-track:68db84b3832d84fd495dcd4af45a037c7936363191a42295948d1c2c0b0af9cf` |
| 4 | `instance` | [hasLimitsOfShape_of_closedUnderLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/haslimitsofshape-of-closedunderlimitsofshape--59df31237cbadda7d6292fb7.md) | 56 | `declaration-track:59df31237cbadda7d6292fb7e507b8b8a4ff99a48474421b44fa505fa794660d` |
| 5 | `def` | [forgetCreatesColimitOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/forgetcreatescolimitofclosed--655f491448dd01739b1a1f23.md) | 64 | `declaration-track:655f491448dd01739b1a1f23896cb42e438a3ab35fd014cfd71c7b1228430f0c` |
| 6 | `def` | [forgetCreatesColimitsOfShapeOfClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/forgetcreatescolimitsofshapeofclosed--13bbdd545763083beaa21f93.md) | 76 | `declaration-track:13bbdd545763083beaa21f9334c0d30360881f1b62cab90f4fecc6e638241589` |
| 7 | `lemma` | [hasColimit_of_closedUnderColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/hascolimit-of-closedundercolimitsofshape--6aed30334f1b4214d96f7f2c.md) | 81 | `result-track:6aed30334f1b4214d96f7f2cf76a16f97937972dcc7d4edf22dcdee02f4f0e5d` |
| 8 | `instance` | [hasColimitsOfShape_of_closedUnderColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/hascolimitsofshape-of-closedundercolimitsofshape--1df72fa7a36781c4d8c644c8.md) | 88 | `declaration-track:1df72fa7a36781c4d8c644c81126f7c4801cf680f2e35b4d58c2293732fe384e` |
| 9 | `instance` | [CostructuredArrow.closedUnderLimitsOfShape_discrete_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/costructuredarrow-closedunderlimitsofshape-discrete-empty--63f293f89aef264ea144bd73.md) | 99 | `declaration-track:63f293f89aef264ea144bd733a924d19eda652e01b4fad33299f6dd2e190dc37` |
| 10 | `lemma` | [CostructuredArrow.isClosedUnderColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/costructuredarrow-isclosedundercolimitsofshape--3629e4923167cb99b5da9a6b.md) | 110 | `result-track:3629e4923167cb99b5da9a6bc04762088275f3d399c8e0081f46735f50eea2fd` |
| 11 | `lemma` | [CostructuredArrow.closedUnderLimitsOfShape_walkingCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/costructuredarrow-closedunderlimitsofshape-walkingcospan--14d531313c4198dd13c9f5ac.md) | 130 | `result-track:14d531313c4198dd13c9f5ac5b8306e3a42ce2a521a31eb228a579205cc22517` |
| 12 | `instance` | [createsLimitsOfShape_walkingCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/createslimitsofshape-walkingcospan--566f1069737e00affe6c7b58.md) | 154 | `declaration-track:566f1069737e00affe6c7b5802975f7af61065302c5d5330ffe61ff6e0d6ca4a` |
| 13 | `instance` | [hasPullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/haspullbacks--647cd9e11045722f8800928d.md) | 160 | `declaration-track:647cd9e11045722f8800928d3bfe704547e87cf57238d4521a898800a6e8d20b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--26618fa59ad0b71799425d7d.md) | 165 | `declaration-track:26618fa59ad0b71799425d7df1dac9f349b4c8f6a2fc3f7d2798053cf1c228b5` |
| 15 | `instance` | [StructuredArrow.closedUnderColimitsOfShape_discrete_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/structuredarrow-closedundercolimitsofshape-discrete-empty--7e9d36ed9df2ed3292f0e918.md) | 180 | `declaration-track:7e9d36ed9df2ed3292f0e91817a455ad9f340cb223e3aa01e7ff16863d12a7f6` |
| 16 | `lemma` | [StructuredArrow.isClosedUnderLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/structuredarrow-isclosedunderlimitsofshape--1cf2e1a2af15dbe79055cd70.md) | 191 | `result-track:1cf2e1a2af15dbe79055cd701be2501bcaa8f54e981d4c5d44cde7255baf88a2` |
| 17 | `instance` | [Over.closedUnderLimitsOfShape_discrete_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/over-closedunderlimitsofshape-discrete-empty--571374aa93e19471d04286d1.md) | 216 | `declaration-track:571374aa93e19471d04286d17e5ed7ceb10788272cc21a68188dbff82e54921b` |
| 18 | `instance` | [Over.closedUnderLimitsOfShape_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/over-closedunderlimitsofshape-pullback--56ac2744b5b91decb106b55b.md) | 226 | `declaration-track:56ac2744b5b91decb106b55b56dbf656e71ba8df67274960a926013b81d79845` |
| 19 | `instance` | [Under.closedUnderColimitsOfShape_discrete_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/under-closedundercolimitsofshape-discrete-empty--9411c52c972ef6ac14da9de4.md) | 237 | `declaration-track:9411c52c972ef6ac14da9de4ef273e2798fcf3a4d52038d7a444ace5eef53402` |
| 20 | `instance` | [Under.closedUnderColimitsOfShape_pushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/under-closedundercolimitsofshape-pushout--90b3753d1a774d8583be185f.md) | 243 | `declaration-track:90b3753d1a774d8583be185f1acfd144a7ee59e3edc42cd8e969440eb149b601` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--53863ead5b5b287e5b7e9361.md) | 258 | `declaration-track:53863ead5b5b287e5b7e9361c3be970eea1fffb77c3a1711477197b9a5dd1be5` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--8e987eeaecadfcb235832121.md) | 267 | `declaration-track:8e987eeaecadfcb235832121267cdd4a5c428b30771deba3f099e50ba338d24e` |
| 23 | `def` | [mkIdTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/mkidterminal--6367ca21312d2b564379aecb.md) | 277 | `declaration-track:6367ca21312d2b564379aecbd2e5d29a67978bad5fd32aa42cb16bb3d59ff61f` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--df50bee821380839daf872bb.md) | 281 | `declaration-track:df50bee821380839daf872bb59b8f2ea6fe3030ce5b3c7036daaea2547c94df8` |
| 25 | `instance` | [createsLimitsOfShape_walkingCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/createslimitsofshape-walkingcospan--b3a4f7e09d14901fc90d6598.md) | 287 | `declaration-track:b3a4f7e09d14901fc90d6598cd0ac0b9b2bc782312451bb4894b258cf272c28a` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--f442f63572a263f5248bb114.md) | 294 | `declaration-track:f442f63572a263f5248bb114c60c8c1a8541355f3367f4006b58b48dbfd78d3d` |
| 27 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/hasfinitelimits--a0f4600532664e29b7c691fc.md) | 301 | `declaration-track:a0f4600532664e29b7c691fc05fcbccd8a916ab15a29a87822598c2056de11a6` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--4937b397b2f47fa5dfd89918.md) | 304 | `declaration-track:4937b397b2f47fa5dfd8991869c59a7547eb064387644957b7d1132f407ddf38` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--08bd624a1c4ebe306dc4b5c9.md) | 307 | `declaration-track:08bd624a1c4ebe306dc4b5c9676e57744210092ff379e56b5d290caa482f7dc1` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--cea2e07403b8f719b38256a3.md) | 310 | `declaration-track:cea2e07403b8f719b38256a3ecb08d52b11ff11ef2d5b0466221c93147e1199b` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--2896723a7c1ac433f12bf03a.md) | 313 | `declaration-track:2896723a7c1ac433f12bf03a79a76cd1d92d23f7181d00e60f595a9ac78f6f6b` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--a030c51360293ec49f35bf2f.md) | 328 | `declaration-track:a030c51360293ec49f35bf2f734a3ed224b2888d1bfbd3690b0eee97556fc5e6` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--45075e0ea96dc6838dc8ad9c.md) | 337 | `declaration-track:45075e0ea96dc6838dc8ad9c5091ed015ee1e4e6ade18cfbf42a76f49dbaed0a` |
| 34 | `def` | [mkIdInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/mkidinitial--436bcfef8f799236e063f898.md) | 343 | `declaration-track:436bcfef8f799236e063f898113b5acf484e918367a573974305749f9f1c6dd8` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--3891c549d2aa66b02ce007d4.md) | 347 | `declaration-track:3891c549d2aa66b02ce007d4c101bb5489e57ffaab512ae2de0e939685782c1d` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--953b57ab48298b338bdcc37c.md) | 352 | `declaration-track:953b57ab48298b338bdcc37c032396978723ae60b0b346a41f65b70085583001` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--a22d550061e2d0e33ea86ac0.md) | 361 | `declaration-track:a22d550061e2d0e33ea86ac05f2e4d96e06ba4fb4c763c8e451c55ca81177705` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--c210120e74a8a11316a750f0.md) | 370 | `declaration-track:c210120e74a8a11316a750f0a928ac8dbbfa5393bbd6731b52b58533a3641804` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--c4bad8557b0d372a5af5c40c.md) | 373 | `declaration-track:c4bad8557b0d372a5af5c40c0a94da1605165ba632a36a65744b67dfd0c28c60` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/declarations/instance--91260cdb25ff6dfd32607fbc.md) | 376 | `declaration-track:91260cdb25ff6dfd32607fbc214452158d3d45bea2487193142968e49d7e6264` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
