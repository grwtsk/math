# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extension.Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d58be6491974b86c5aff870fe087ae66d5fcb8ad",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d58be6491974b86c5aff870fe087ae66d5fcb8ad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Attr` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extensionDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/extensiondescr--b8d2cf02f2363ab11f33e653.md) | 26 | `declaration-track:b8d2cf02f2363ab11f33e653711dfa00f11d6b8fd7ba6e2bb7f9124fe105bddf` |
| 2 | `def` | [declareRuleSetUnchecked](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/declarerulesetunchecked--01f93989f4d2fd1bc7074718.md) | 32 | `declaration-track:01f93989f4d2fd1bc7074718036c58e91c7e621a0d5361e3d230de911ef1002b` |
| 3 | `def` | [isRuleSetDeclared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/isrulesetdeclared--1fe0b73d8fa8b1b1433d8dc0.md) | 50 | `declaration-track:1fe0b73d8fa8b1b1433d8dc0b903866a1281d329e8d7a6f8db06823d7f091733` |
| 4 | `def` | [checkRuleSetNotDeclared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/checkrulesetnotdeclared--8ce2a5c4a5cc0998eecd8b8e.md) | 56 | `declaration-track:8ce2a5c4a5cc0998eecd8b8ef61839a8f2b3600d530fd2d1a479332384937c0a` |
| 5 | `def` | [declareRuleSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/declareruleset--1ee2c9d4720546319cc93715.md) | 60 | `declaration-track:1ee2c9d4720546319cc93715dcf7a3057ab3be2eca0715657121295be2125769` |
| 6 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/initialize--b8766423046ea0de3aa0eb0b.md) | 64 | `declaration-track:b8766423046ea0de3aa0eb0bde284b4ce87b0ac3f2864c754cb70b4db4eaea09` |
| 7 | `def` | [getGlobalRuleSetData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/getglobalrulesetdata--7acb2beb4c59fe7e42c2a994.md) | 67 | `declaration-track:7acb2beb4c59fe7e42c2a9946ed668ce5d9903dce070122e98d22cc8fa2f894d` |
| 8 | `def` | [getGlobalRuleSetFromData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/getglobalrulesetfromdata--b817af21e9019ef76f1020de.md) | 78 | `declaration-track:b817af21e9019ef76f1020de999809dc4fb46707ad2f084d8d379e70a7ecc544` |
| 9 | `def` | [getGlobalRuleSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/getglobalruleset--007d5b585777321692fbd0fa.md) | 86 | `declaration-track:007d5b585777321692fbd0fa5dce89da9d57d0315cfb9cc2c40f375e058b04b3` |
| 10 | `def` | [getGlobalRuleSets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/getglobalrulesets--05d507a776643736edbd3098.md) | 93 | `declaration-track:05d507a776643736edbd30988595755b01d2ad62292ceeb2ba5dd04f2edd238a` |
| 11 | `def` | [getDefaultGlobalRuleSets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/getdefaultglobalrulesets--2b10e8bfc154e75266a006f1.md) | 97 | `declaration-track:2b10e8bfc154e75266a006f151855cbb321673c1beb610236124ca31d50c3e94` |
| 12 | `def` | [getDeclaredGlobalRuleSets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/getdeclaredglobalrulesets--c256e7e16bc79e8d19287be0.md) | 100 | `declaration-track:c256e7e16bc79e8d19287be01cfca8f4866102fb21c56e11d0156af8aa8381c1` |
| 13 | `def` | [modifyGetGlobalRuleSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/modifygetglobalruleset--e286ec7cbd833efc4925700f.md) | 105 | `declaration-track:e286ec7cbd833efc4925700f46d78cc33756f5dd8b84b07fa219c25cd48ced02` |
| 14 | `def` | [modifyGlobalRuleSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/modifyglobalruleset--6816f5f2aa867be23be07768.md) | 122 | `declaration-track:6816f5f2aa867be23be07768b75ad410651c57c23cb7078c5b8a5254f5ccddae` |
| 15 | `def` | [addGlobalRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/addglobalrule--5c6ba85ab7685937a5ca436e.md) | 126 | `declaration-track:5c6ba85ab7685937a5ca436eced52e4a2a3692f0a2cef2ec95598974cb81eb89` |
| 16 | `def` | [eraseGlobalRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variantdfe17adeb5676b5182022bb3fa852e1a216d1396b04950b0e736fbf83a05942e.lean/declarations/eraseglobalrules--1b7d5192e6b6aafa5e9abab8.md) | 143 | `declaration-track:1b7d5192e6b6aafa5e9abab84ee6fd44e378a7cea114b1b464b0db32a8ec822f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
