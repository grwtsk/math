# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CongrTheorems.Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e593393d2884ed01fe5b1a6f3b325e9a9c76bd12",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e593393d2884ed01fe5b1a6f3b325e9a9c76bd12`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Structure` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Subst` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.FunInfo` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CongrArgKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/congrargkind--2f33ec092840f07123bd4d39.md) | 24 | `declaration-track:2f33ec092840f07123bd4d39b4ce2ad258095e278d1aad939b8feefdfca47ec5` |
| 2 | `structure` | [CongrTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/congrtheorem--6fa2626119a4d5f32857d120.md) | 49 | `declaration-track:6fa2626119a4d5f32857d120871ff19e756ecfd89725a38c5af2c43843179e3c` |
| 3 | `def` | [addPrimeToFVarUserNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/addprimetofvarusernames--867678e3fe6d204d06a6cc7d.md) | 54 | `declaration-track:867678e3fe6d204d06a6cc7dc0e1319b47de017b7ef5a11f1871d2f607c0c559` |
| 4 | `def` | [setBinderInfosD](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/setbinderinfosd--a103f6a096024a490e4185a6.md) | 61 | `declaration-track:a103f6a096024a490e4185a6b8653818634388b6140a0fbd44373fe3e410e5af` |
| 5 | `def` | [mkHCongrWithArity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/mkhcongrwitharity--9e4a390cdc3441213951364d.md) | 68 | `declaration-track:9e4a390cdc3441213951364d1a805b281a9f79af7c3095ba6a04555d8aa2f500` |
| 6 | `def` | [mkHCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/mkhcongr--db71a565a02be30803537206.md) | 128 | `declaration-track:db71a565a02be308035372060da843adfc0db92600be914236d43393607854b7` |
| 7 | `def` | [fixKindsForDependencies](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/fixkindsfordependencies--40411df2085a84986dc6176d.md) | 134 | `declaration-track:40411df2085a84986dc6176db90a8a8c3df70824c04b4a01d271bda6ed42026f` |
| 8 | `def` | [hasCastLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/hascastlike--5996549b4cbefd1e3e235a58.md) | 146 | `declaration-track:5996549b4cbefd1e3e235a58d3e2096732f21a8ea0b9be382297399195a71e77` |
| 9 | `def` | [withNext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/withnext--98c8d3123119663187d1ce57.md) | 149 | `declaration-track:98c8d3123119663187d1ce570b9a71c839ef07f08e0b932d9cb2759eefdca37d` |
| 10 | `def` | [shouldUseSubsingletonInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/shouldusesubsingletoninst--adb972abf17980184650164a.md) | 156 | `declaration-track:adb972abf17980184650164a36347b57a79056eef2318177629bbb92f768a921` |
| 11 | `def` | [getClassSubobjectMask?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/getclasssubobjectmask--bf56e9d718875c098969dd57.md) | 170 | `declaration-track:bf56e9d718875c098969dd577fcacb781bcc372ab3d793e177b9d52a46d361cb` |
| 12 | `def` | [getCongrSimpKinds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/getcongrsimpkinds--73c6f1ccc06100073b18c45c.md) | 186 | `declaration-track:73c6f1ccc06100073b18c45c1be920a02fc98d64b36e6fd405ef166a7cf113a8` |
| 13 | `def` | [getCongrSimpKindsForArgZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/getcongrsimpkindsforargzero--c00571cc57af5abadcf338b1.md) | 228 | `declaration-track:c00571cc57af5abadcf338b183dfc41be32cf526d771cbaec7336f3f6fdcbf60` |
| 14 | `inductive` | [EqInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/eqinfo--05591762237e02a8ebaee836.md) | 249 | `declaration-track:05591762237e02a8ebaee83665fda3e48ff8ec958e771cfe77092443db8e5a7d` |
| 15 | `def` | [getFVarId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/getfvarid--bb00d93a4ea29f9650885b25.md) | 263 | `declaration-track:bb00d93a4ea29f9650885b25d1cb0d27f61a57b7e7d57552881f144cdac84189` |
| 16 | `def` | [mkCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/mkcast--23fe056a01b8dfa4571e8721.md) | 271 | `declaration-track:23fe056a01b8dfa4571e8721614ae76e491b4732630f4beba7d84221f669936e` |
| 17 | `def` | [mkCongrSimpCore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/mkcongrsimpcore--d930af4b8145d5907389afb4.md) | 304 | `declaration-track:d930af4b8145d5907389afb4fe38d6a5ea7557c6926cd58816ffc69fad3ced67` |
| 18 | `def` | [mkCongrSimp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/mkcongrsimp--ecce579014794f58f0a12a87.md) | 395 | `declaration-track:ecce579014794f58f0a12a87dc75171151c1bc9af46e5ac529e17ea980f79924` |
| 19 | `def` | [hcongrThmSuffixBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/hcongrthmsuffixbase--43aaddf1fb4f39ad1e96649c.md) | 400 | `declaration-track:43aaddf1fb4f39ad1e96649c8c0e20271d053c08e38147b6d644e13edf9859e3` |
| 20 | `def` | [hcongrThmSuffixBasePrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/hcongrthmsuffixbaseprefix--08dabcc423442e0f7ccb232c.md) | 401 | `declaration-track:08dabcc423442e0f7ccb232c1cd722de5667f35380fac5ea93360d52d8b06860` |
| 21 | `def` | [isHCongrReservedNameSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/ishcongrreservednamesuffix--8af7d275947dc4a9ecc00605.md) | 404 | `declaration-track:8af7d275947dc4a9ecc006056a2b4fb17069f7ba7ca5090c691eed969706ab6d` |
| 22 | `def` | [congrSimpSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/congrsimpsuffix--325b7053cbfab56080a2bd49.md) | 407 | `declaration-track:325b7053cbfab56080a2bd49aee6073f829083bd98142b99341b68e2a9e0b182` |
| 23 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/builtin-initialize--9e4d280eabd89c04fc880d9c.md) | 409 | `declaration-track:9e4d280eabd89c04fc880d9cf490b0028ef8022a185d170f85fc81b361949f36` |
| 24 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/builtin-initialize--146b14c7de8789ae43c919dd.md) | 411 | `declaration-track:146b14c7de8789ae43c919dda4c903b62beadcec1ada43287c72d5aca33816c0` |
| 25 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/builtin-initialize--f76cfdc6a219b1527cc1fde9.md) | 413 | `declaration-track:f76cfdc6a219b1527cc1fde99548aefe9272e5b66979ea27fd8184e41c8b66df` |
| 26 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/builtin-initialize--ed642b5bea78dce5fad27ef5.md) | 418 | `declaration-track:ed642b5bea78dce5fad27ef5d6bcae6e9c332bfaf78f9b9237553b960627432d` |
| 27 | `def` | [mkHCongrWithArityForConst?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/mkhcongrwitharityforconst--305c4040a545d81c486dbedd.md) | 460 | `declaration-track:305c4040a545d81c486dbedd6c6b64b3f2c0447d68c41e9c89fe59ddbb9a8372` |
| 28 | `def` | [mkCongrSimpForConst?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrTheorems/Varianta33c5f50c25783822589408720803ad352dab73a65bd8d35c9c5985674efb82d.lean/declarations/mkcongrsimpforconst--c489ec3dc3209dfc4d5587cf.md) | 478 | `declaration-track:c489ec3dc3209dfc4d5587cf000b6f68a8e82ea3335904c9db32e887c3bcc725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
