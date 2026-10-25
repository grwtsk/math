# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrTreeExt.Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0e7c9b25ff8cc020b24bf7f70b759517b4590ae",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0e7c9b25ff8cc020b24bf7f70b759517b4590ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean.json)

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
| 1 | `def` | [evalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean/declarations/evaldecl--2c22070ae66d3940dc03e6e1.md) | 49 | `declaration-track:2c22070ae66d3940dc03e6e118ea4ec2a1798f8e2167597c1c964971168d4f28` |
| 2 | `abbrev` | [Entry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean/declarations/entry--e004c93b9ea9940990af3698.md) | 54 | `declaration-track:e004c93b9ea9940990af3698f1ebc7c8736d67ac0df0a7a9011a38ce908c2c3c` |
| 3 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean/declarations/state--0db21bae3ec20fa932fb59c0.md) | 57 | `declaration-track:0db21bae3ec20fa932fb59c018c7aa9e8760839e3bc301c42228a7c77e405734` |
| 4 | `abbrev` | [EnvExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean/declarations/envext--c07e4eeea3b74ca79c798de7.md) | 63 | `declaration-track:c07e4eeea3b74ca79c798de70a16df0ff0c09731b3c9794fa7beeaf8c2e9e284` |
| 5 | `def` | [State.getMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean/declarations/state-getmatch--9fcea2bb572227276ef120a6.md) | 68 | `declaration-track:9fcea2bb572227276ef120a66fdc5650879f0716320d21197316ada0e26722f0` |
| 6 | `def` | [initializeEnvExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean/declarations/initializeenvext--c4dd5660e591528a7e70f33b.md) | 72 | `declaration-track:c4dd5660e591528a7e70f33b7d4c2cef9ddb73edf8f1163b250742f01c89d987` |
| 7 | `def` | [elabExtKeys](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrTreeExt/Variantbf8633e24ad63427d21f41a9d11aeffd04c2b83cc14df4910888092edbce5eeb.lean/declarations/elabextkeys--a77ee1215b814db2369d8a28.md) | 87 | `declaration-track:a77ee1215b814db2369d8a28f29efae9123c6c82e9ec79a1a96944a4bedc5a2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
