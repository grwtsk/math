# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8c84672ab99d55573c74de9dfcc1d0754222eee",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8c84672ab99d55573c74de9dfcc1d0754222eee`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.CongrTheorems` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.SimpTheorems` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.CoeExt` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Label](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/label--bf5942b5ba910e34fb6bc1db.md) | 29 | `declaration-track:bf5942b5ba910e34fb6bc1dbb63ddd597746036a7dbd49946432071b234bba62` |
| 2 | `def` | [getSimpArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/getsimpargs--0f81777be1d307c901bb5a19.md) | 40 | `declaration-track:0f81777be1d307c901bb5a1932c6b56114fa7f22374e18d934a62061f831c0e2` |
| 3 | `def` | [countHeadCoes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/countheadcoes--a49c25920e0de408d5660edf.md) | 51 | `declaration-track:a49c25920e0de408d5660edfc8b27fca538a03bba17ab335b96883d3c082e2c7` |
| 4 | `def` | [countCoes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/countcoes--36fc14baf3c75091957376d9.md) | 59 | `declaration-track:36fc14baf3c75091957376d9f1e3e226b6371c1a8d345c2524ef97c1c3b5b582` |
| 5 | `def` | [countInternalCoes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/countinternalcoes--def4758dee172bc3d6f75bde.md) | 71 | `declaration-track:def4758dee172bc3d6f75bde7699d6a1145f2dc07ef8ac110a1afb9b1cbfef38` |
| 6 | `def` | [classifyType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/classifytype--65bddb799edf92286999247a.md) | 75 | `declaration-track:65bddb799edf92286999247a067102ead7a20bc6716909e8189b009f819d37a8` |
| 7 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/initialize--3699c14e17d5f15e5ee57705.md) | 105 | `declaration-track:3699c14e17d5f15e5ee57705bd0a973f438211727d13f80c9c35f2c0d98669d7` |
| 8 | `structure` | [NormCastExtension](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/normcastextension--382b0ba587c608b8f1d84ab2.md) | 111 | `declaration-track:382b0ba587c608b8f1d84ab212825687ef6e50ce2ae18096a73e2c0f3d168c47` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/initialize--b19ecd6c4275eff28ba348f2.md) | 121 | `declaration-track:b19ecd6c4275eff28ba348f25854ac6cb519dfa5504dbaea2d48aa780a13079e` |
| 10 | `def` | [addElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/addelim--33c1e8158395b7732b84716e.md) | 128 | `declaration-track:33c1e8158395b7732b84716e3583b079e52e38214c5f508b34b756c2d6d077a7` |
| 11 | `def` | [addMove](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/addmove--48676320b67f7ca76f58b08c.md) | 133 | `declaration-track:48676320b67f7ca76f58b08c58e0ea4471c947180a8a844dc588fb16a18c5f65` |
| 12 | `def` | [addSquash](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/addsquash--0d565c43a619ffadc1eeb16c.md) | 140 | `declaration-track:0d565c43a619ffadc1eeb16ccee1743e466c0584ce6bceef8add8e470deca4b9` |
| 13 | `def` | [addInfer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/addinfer--aa1b95d9b579ba55be9a1f6a.md) | 152 | `declaration-track:aa1b95d9b579ba55be9a1f6aabfe1fade2c939315ca51be5ca1835f095ded1d8` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/syntax--88bed93bb16c449656002121.md) | 162 | `declaration-track:88bed93bb16c449656002121b3f467e7608308dd5b4282584bf0f5f1fda12568` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/syntax--14b3fe401f6a591cd48dea7c.md) | 213 | `declaration-track:14b3fe401f6a591cd48dea7c7dfd691156c92d35762254e70b24ff8493f171fa` |
| 16 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant2607c95c2d647bc6bbee86bc12c15e13bee403d8d04486cae7b9cfb779c755fb.lean/declarations/initialize--f6ffed027c0bd9969ea2a4b8.md) | 216 | `declaration-track:f6ffed027c0bd9969ea2a4b8f55e1f93c2feb28ac734835b25b05f93b0c84d03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
