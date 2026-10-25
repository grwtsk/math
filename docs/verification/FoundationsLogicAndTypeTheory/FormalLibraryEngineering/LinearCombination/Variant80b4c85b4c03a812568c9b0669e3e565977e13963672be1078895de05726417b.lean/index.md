# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinearCombination.Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88ba7708252df5e7c1b5636afa68a0bea180546c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88ba7708252df5e7c1b5636afa68a0bea180546c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.LinearCombination.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring.Compare` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expanded](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/declarations/expanded--cf13e52d8042e53f7fbc9307.md) | 43 | `declaration-track:cf13e52d8042e53f7fbc9307484fb067b0a9327d57526d393e1037ac41d13575` |
| 2 | `def` | [rescale](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/declarations/rescale--8aefc3995347679a8cd65ebf.md) | 61 | `declaration-track:8aefc3995347679a8cd65ebf1fd9c422cfa6976f0edaf09d32ee8d3910ff86db` |
| 3 | `def` | [expandLinearCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/declarations/expandlinearcombo--a1f83d457128915c2261a3cb.md) | 89 | `declaration-track:a1f83d457128915c2261a3cb6220fbec22a89a6c298758603a50bfd12ea01aec` |
| 4 | `def` | [elabLinearCombination](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/declarations/elablinearcombination--f8bbe2b76060c0cbcf1e083a.md) | 155 | `declaration-track:f8bbe2b76060c0cbcf1e083aeead02dfa8ab1a0c33395d5256d8bbd1b7fb8d8f` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/declarations/syntax--dd5480402babe9db8359673d.md) | 211 | `declaration-track:dd5480402babe9db8359673db61d99b7579ccd948c9c4ff4e2708f60605dc803` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/declarations/syntax--f0d7c807438654824506a067.md) | 217 | `declaration-track:f0d7c807438654824506a067176aefd520306f69bf014c4e7e02abac611cc804` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/declarations/syntax--9a77671c9d1f064d2f79e273.md) | 291 | `declaration-track:9a77671c9d1f064d2f79e273d8bf4e34d594d5c0f945ae15bde9486eeb2cd3d5` |
| 8 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/declarations/elab-rules--8c2ccd7a7fa0725cc910d009.md) | 293 | `declaration-track:8c2ccd7a7fa0725cc910d009b0370f0c425acce8b5f5941a19178ff7c849c177` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
