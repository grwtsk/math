# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parsing.Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10eef4ebd60c87041212cd92bd504bc5eb9a4de5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10eef4ebd60c87041212cd92bd504bc5eb9a4de5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Attach` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Mem` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [strLitRange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/declarations/strlitrange--2677723547375e110ed34b39.md) | 26 | `declaration-track:2677723547375e110ed34b39afb4eafce3edfe2046e762c9389d9f1fd3214f56` |
| 2 | `def` | [parseFromContents](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/declarations/parsefromcontents--3e2331c4e3175467ad2f8f66.md) | 38 | `declaration-track:3e2331c4e3175467ad2f8f662c7c3dfb90a51cc3fd4cc28a3430ea52cd51e32d` |
| 3 | `def` | [parseStrLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/declarations/parsestrlit--3d10732ef24a256c5812fb2b.md) | 49 | `declaration-track:3d10732ef24a256c5812fb2b22b85fef065bfd2f572d9f85c29270ad66cd5071` |
| 4 | `def` | [parseQuotedStrLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/declarations/parsequotedstrlit--57b5e60ce1099d6b31a519ff.md) | 70 | `declaration-track:57b5e60ce1099d6b31a519ff315ff82f0cde0c12745f74089a63b5c96a9300c6` |
| 5 | `def` | [parseStrLit'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parsing/Variant33ab0e4eb4dde5af379815704470e081d3dee9d7882c8d56f61661b21162477a.lean/declarations/parsestrlit--c620440d10382a04ce821087.md) | 129 | `declaration-track:c620440d10382a04ce821087e09bbfbc64680b3d98710feb932901b98633ba5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
