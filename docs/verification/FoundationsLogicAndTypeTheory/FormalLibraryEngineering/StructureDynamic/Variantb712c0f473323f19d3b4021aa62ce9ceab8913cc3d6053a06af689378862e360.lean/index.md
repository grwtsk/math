# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StructureDynamic.Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c16d18ee158c161ceecfb822efa2793cfd204fda",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c16d18ee158c161ceecfb822efa2793cfd204fda`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.SavedState` — import line 15; external provider; requires a separately pinned dependency.
- `Aesop.Script.UScriptToSScript` — import line 16; external provider; requires a separately pinned dependency.
- `Aesop.Script.Util` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goalsToMessageData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/declarations/goalstomessagedata--56e8e77536535a60237b576a.md) | 28 | `declaration-track:56e8e77536535a60237b576ae2286ccc3eb92d3beafe7f98c3db88b5cedb2450` |
| 2 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/declarations/context--75e5a1fcc888bb6f2dd8e34f.md) | 38 | `declaration-track:75e5a1fcc888bb6f2dd8e34fe8a84d1bd8d365d7498435b01e45a9b4b8e0aa6b` |
| 3 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/declarations/state--70a5c38b9d1ba614d43b8bfb.md) | 47 | `declaration-track:70a5c38b9d1ba614d43b8bfb1be071e474e2893e6f51b04bde11560bfbb62a19` |
| 4 | `def` | [Context.updateMVarIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/declarations/context-updatemvarids--251dd14ffbeea81c67091b34.md) | 56 | `declaration-track:251dd14ffbeea81c67091b34198f77e665360fbb532fcae553f04b162025bffd` |
| 5 | `abbrev` | [DynStructureM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/declarations/dynstructurem--17b22943283a7a5c289a3964.md) | 67 | `declaration-track:17b22943283a7a5c289a3964887d356d11eeafd549395bbd507a1cde8ac4b034` |
| 6 | `def` | [DynStructureM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/declarations/dynstructurem-run--ca1f2559c0cd69e91778096d.md) | 70 | `declaration-track:ca1f2559c0cd69e91778096db13ef370cc36ec0c2a71ff5827d53838cef540f1` |
| 7 | `def` | [withUpdatedMVarIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/declarations/withupdatedmvarids--e421f49cf97f642ac268177d.md) | 79 | `declaration-track:e421f49cf97f642ac268177d116ef832a86b7cdf1d4038515b9bf6bbc927a251` |
| 8 | `structure` | [DynStructureResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/declarations/dynstructureresult--a6ef5bd5861fab7694330786.md) | 87 | `declaration-track:a6ef5bd5861fab76943307864f2e2bb1e927fa55f186ee367b27191ab6533bd5` |
| 9 | `def` | [structureDynamicCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/declarations/structuredynamiccore--d6830d7a5a86e6079bf97d14.md) | 91 | `declaration-track:d6830d7a5a86e6079bf97d14cfbda8a9393cfb367b0ba879b5349bec78144c9d` |
| 10 | `def` | [UScript.toSScriptDynamic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureDynamic/Variantb712c0f473323f19d3b4021aa62ce9ceab8913cc3d6053a06af689378862e360.lean/declarations/uscript-tosscriptdynamic--4ba2e2a240bdf6dba6cede45.md) | 170 | `declaration-track:4ba2e2a240bdf6dba6cede4552e4541b337c52d63e7a53d23cf3e8500969b780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
