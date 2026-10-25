# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5c2b1211b67f9c7fca890882fac5bfbacaa575f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5c2b1211b67f9c7fca890882fac5bfbacaa575f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Bicategory.Normalize` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Bicategory.PureCoherence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bicategoryNf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a.lean/declarations/bicategorynf--65a820db8e9e84add732f04f.md) | 31 | `declaration-track:65a820db8e9e84add732f04f49644525736fa20b5fd0d7d78eb95cd0b02e8441` |
| 2 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a.lean/declarations/elab--239e2b0931c0220e392c63af.md) | 35 | `declaration-track:239e2b0931c0220e392c63aff9e2858ea577d2d1fd0849ffe89e9f269a938197` |
| 3 | `def` | [bicategory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a.lean/declarations/bicategory--7396b7b9e33fcd9c0d8b43a5.md) | 48 | `declaration-track:7396b7b9e33fcd9c0d8b43a57951180ea3440e0b43a9a83aba7dd0ca514d76f9` |
| 4 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant65053f43c9c3d7fe415086e7823786af850d474b70f113d53654cd32cd7e318a.lean/declarations/elab--6993cf1f6f1cb6c3e654b7c1.md) | 52 | `declaration-track:6993cf1f6f1cb6c3e654b7c1a76dcb9ef557aeafb826a5d7df9e685d46eba0f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
