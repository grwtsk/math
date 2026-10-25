# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseSweeperSpec.Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56cbc642b4f1cd9a6e4a0640ff5a295fbe1926c5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56cbc642b4f1cd9a6e4a0640ff5a295fbe1926c5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Shader.BijectiveSplit` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Cellular.Phase` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Vec2Mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean/declarations/vec2mod--fc0c5e63fd12c6eb32a12bfe.md) | 21 | `declaration-track:fc0c5e63fd12c6eb32a12bfe0d394debe7f1ac3a79962f70c995263a614117b8` |
| 2 | `def` | [symplecticPhase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean/declarations/symplecticphase--e3caceeecddb40370887b4d4.md) | 25 | `declaration-track:e3caceeecddb40370887b4d44c9006d676afc05997dc8b7e3d7ace1890e3f598` |
| 3 | `structure` | [PhaseSweepInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean/declarations/phasesweepinput--6c7b537d676cb13caa7e7e2b.md) | 30 | `declaration-track:6c7b537d676cb13caa7e7e2ba815ae755915af7c22f81e7cf7cb8c5ce99e1326` |
| 4 | `structure` | [PhaseSweepOutput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean/declarations/phasesweepoutput--ba6f59c9d512242fcd9f014e.md) | 35 | `declaration-track:ba6f59c9d512242fcd9f014ec1b8711e593209472ebfdcfc9ca4ccd89eeac4d7` |
| 5 | `def` | [phaseSweepSplit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean/declarations/phasesweepsplit--753eeac2383141749db77eda.md) | 40 | `declaration-track:753eeac2383141749db77eda9e74d4fb3865e3752db49d1c6db4e57aef6dc669` |
| 6 | `def` | [phaseSweepReconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean/declarations/phasesweepreconstruct--f1c5b7be4685f274840ac6a5.md) | 51 | `declaration-track:f1c5b7be4685f274840ac6a5828b341641baeb60b89ac44135e51b7f0bd3327e` |
| 7 | `theorem` | [phaseSweep_split_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variant87978163852bacc9a2d3b323d7178f7bfb0f6c7895f05fe6584bd169fca4b150.lean/declarations/phasesweep-split-reconstruct--2aa4d0ac0cc871c23a7c8a97.md) | 55 | `result-track:2aa4d0ac0cc871c23a7c8a97c567ff2a9054fbd8908fea613c355eb53a8e832b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
