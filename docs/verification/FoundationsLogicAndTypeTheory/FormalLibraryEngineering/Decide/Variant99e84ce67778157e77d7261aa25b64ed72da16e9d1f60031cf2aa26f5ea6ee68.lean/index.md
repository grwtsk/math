# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decide.Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "929dd0a01dc12e7df21860ef791f6a2cf2a038c0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `929dd0a01dc12e7df21860ef791f6a2cf2a038c0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Native` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.ElabTerm` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.ConfigEval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preprocessPropToDecide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean/declarations/preprocessproptodecide--6e6ba9de2dacf77940a3fb8e.md) | 24 | `declaration-track:6e6ba9de2dacf77940a3fb8e05be7de987d7240f8d97c79cb238c851324de1e7` |
| 2 | `def` | [blameDecideReductionFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean/declarations/blamedecidereductionfailure--ce0b405cc409c7906d782363.md) | 39 | `declaration-track:ce0b405cc409c7906d782363058cc66b8214f45aa4d438f0987d087bf96a2d81` |
| 3 | `def` | [elabNativeDecideCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean/declarations/elabnativedecidecore--a6358cbdf63d6eb373398829.md) | 57 | `declaration-track:a6358cbdf63d6eb373398829aca09351f52af4f4aba7b63f05c7efcb15364d27` |
| 4 | `def` | [evalDecideCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean/declarations/evaldecidecore--47a53bd16af6509c6bcef889.md) | 70 | `declaration-track:47a53bd16af6509c6bcef889769930df737dc04503437d3ffe1afcbb61be9e55` |
| 5 | `def` | [evalDecide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean/declarations/evaldecide--0732a349ed6dcb89db5ee1df.md) | 186 | `declaration-track:0732a349ed6dcb89db5ee1dfb9ee4889f97247d0c8624bdd6ca7885c815fc1dd` |
| 6 | `def` | [evalNativeDecide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decide/Variant99e84ce67778157e77d7261aa25b64ed72da16e9d1f60031cf2aa26f5ea6ee68.lean/declarations/evalnativedecide--78292238c934c28754432004.md) | 190 | `declaration-track:78292238c934c287544320041847482f56c01694c59a6f2964a7abb3cea22512` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
