# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Goal.Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9873caa948bae05ded375e1beecbbc5718f9abe1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9873caa948bae05ded375e1beecbbc5718f9abe1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Util` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InferType` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SimpGoalResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean/declarations/simpgoalresult--2fd4b1d99a623a370b0eaf95.md) | 20 | `declaration-track:2fd4b1d99a623a370b0eaf95d02def1d9bf8ba5474a9a32cb9f891bc6618efd2` |
| 2 | `def` | [SimpGoalResult.toOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean/declarations/simpgoalresult-tooption--8ab9580a475749b4b45d6c76.md) | 32 | `declaration-track:8ab9580a475749b4b45d6c76a6c7a564ccce2eeb5c00025d3bd5b22395d88992` |
| 3 | `def` | [SimpGoalResult.ignoreNoProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean/declarations/simpgoalresult-ignorenoprogress--ceea3b23962c01ee1835bb89.md) | 37 | `declaration-track:ceea3b23962c01ee1835bb897daf582820f77f0d62298229bb5e4c03dee10c41` |
| 4 | `def` | [Simp.Result.toSimpGoalResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean/declarations/simp-result-tosimpgoalresult--616e9bdab96724ed16fb366d.md) | 44 | `declaration-track:616e9bdab96724ed16fb366dda187b91c0116e5f4a01db2144bd2c3a3dff2d89` |
| 5 | `def` | [simpGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean/declarations/simpgoal--55009315a3630d0e1d9fa086.md) | 66 | `declaration-track:55009315a3630d0e1d9fa08656e2414fd606524f3f8198d1b7cc3f366d98c0e6` |
| 6 | `def` | [simpGoalIgnoringNoProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Goal/Variant1ab735643c6be528f6e110bfffc9d7456d4ba63e37ac05bede26204d940113c6.lean/declarations/simpgoalignoringnoprogress--50be24ae2e36204779d17d87.md) | 74 | `declaration-track:50be24ae2e36204779d17d87cf9b28e8c56bcf9e4493905ab382113a12c9a94b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
