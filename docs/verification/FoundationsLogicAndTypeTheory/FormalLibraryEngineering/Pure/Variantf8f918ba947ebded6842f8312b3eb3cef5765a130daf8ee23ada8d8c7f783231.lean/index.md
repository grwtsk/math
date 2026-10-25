# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pure.Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81114d88ecc3d99c4eac482cda24f2d88651594e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81114d88ecc3d99c4eac482cda24f2d88651594e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Meta` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.Focus` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Rfl` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mPureCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/declarations/mpurecore--7b1d41bc82023df11bdbb934.md) | 34 | `declaration-track:7b1d41bc82023df11bdbb934aec4c935c63101242134eaefdd3bdd4b1856ddac` |
| 2 | `def` | [elabMPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/declarations/elabmpure--30560cca4bed62ee3c573a7e.md) | 51 | `declaration-track:30560cca4bed62ee3c573a7e9743045076fbadec872bdb75281be30cba439e74` |
| 3 | `def` | [mPureIntroCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/declarations/mpureintrocore--76827a127a88172e309d93ed.md) | 70 | `declaration-track:76827a127a88172e309d93ed9a1d4e4683a55b1129318e3de8296bdb2c49d348` |
| 4 | `def` | [elabMPureIntro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/declarations/elabmpureintro--4a33320519b0eb5b4e8226ef.md) | 80 | `declaration-track:4a33320519b0eb5b4e8226ef93c657742d71ba00f884bd414c63ee0eda457b79` |
| 5 | `def` | [extractPureProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/declarations/extractpureprop--f6502a90b92d0aad9a328ae4.md) | 91 | `declaration-track:f6502a90b92d0aad9a328ae492359aa035216c98167a0f887611e92cfa3f9150` |
| 6 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MPureCore.Variant595e5b04430cc57a042a2d1cd07fbbe390accd5113a07f1a22bbc09856d24908.Lean.MVarId.applyRflAndAndIntro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-mpure--4d8ea34b705ac061596aa809.md) | 104 | `declaration-track:4d8ea34b705ac061596aa809c300529fee5ea28056444837bd8001b39c087b5e` |
| 7 | `def` | [MGoal.pureRflAndAndIntro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/declarations/mgoal-purerflandandintro--c4f049ed6efccf8d25520ddf.md) | 124 | `declaration-track:c4f049ed6efccf8d25520ddfee5667912f101797b1ca445df0cdd75a76dad027` |
| 8 | `def` | [MGoal.pureTrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pure/Variantf8f918ba947ebded6842f8312b3eb3cef5765a130daf8ee23ada8d8c7f783231.lean/declarations/mgoal-puretrivial--1acb7f0d847ebec877ba8e90.md) | 136 | `declaration-track:1acb7f0d847ebec877ba8e90e562d0a9780596f23d3493f2a9cf6903d68983da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
