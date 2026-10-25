# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DecLevel.Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0feb3a9918da541fb1868bbd5a00be8b638397e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0feb3a9918da541fb1868bbd5a00be8b638397e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean.json)

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
| 1 | `structure` | [DecLevelContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean/declarations/declevelcontext--bc91f87a49d1107cd7ed9a1d.md) | 15 | `declaration-track:bc91f87a49d1107cd7ed9a1d6356c8a5727b74bfe565c0dc1c5835366b6e53e0` |
| 2 | `def` | [decAux?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean/declarations/decaux--0c9258f71644f09dff14943d.md) | 22 | `declaration-track:0c9258f71644f09dff14943dcdefc1c17320818f06e6eda1d64c357ea647861a` |
| 3 | `def` | [decLevel?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean/declarations/declevel--2362566c337fb9eccfac348c.md) | 57 | `declaration-track:2362566c337fb9eccfac348cae278254dc5c2ec45b78f3d4ef187c42594e9591` |
| 4 | `def` | [decLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean/declarations/declevel--eaf2efd5e2c5bff530a61675.md) | 65 | `declaration-track:eaf2efd5e2c5bff530a616751cca8beda04c897c2b9926772bc8d34fd31b661f` |
| 5 | `def` | [getDecLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean/declarations/getdeclevel--faa38b7bf4ee79008cb4306e.md) | 73 | `declaration-track:faa38b7bf4ee79008cb4306e64204d9a856b45f4bee34fe1129f53b4a44405e9` |
| 6 | `def` | [getDecLevel?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean/declarations/getdeclevel--2fdb47ddbb0264d8a344bd15.md) | 78 | `declaration-track:2fdb47ddbb0264d8a344bd15be3b883421c6c5a7703af8f85b0a9bb404e26527` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecLevel/Variant53a9d0af807622fce82ad0739da24190d5ac70610783752e43d64ba6761d71a7.lean/declarations/builtin-initialize--ba6f08fcde700245735fe181.md) | 83 | `declaration-track:ba6f08fcde700245735fe181445c8a6f4ce7730c5afed8d637501d3b45974abb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
