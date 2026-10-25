# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReducerIR.Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "017a405940522ff722365251fb199d37bbc0cbf0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `017a405940522ff722365251fb199d37bbc0cbf0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean.json)

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
| 1 | `inductive` | [Rep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean/declarations/rep--d41daa1ff7bc3acae74f9748.md) | 21 | `declaration-track:d41daa1ff7bc3acae74f974882675a7c1908953dea516768ba13815532d71fbb` |
| 2 | `def` | [Rep.Denote](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean/declarations/rep-denote--1954f22aaf239e8f7590f10f.md) | 28 | `declaration-track:1954f22aaf239e8f7590f10f83eb97b925f933bc030e59358e3fe30db692601d` |
| 3 | `inductive` | [ReducerIR](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean/declarations/reducerir--3787f55f364856d5aa4ac044.md) | 34 | `declaration-track:3787f55f364856d5aa4ac0446b5d656b0ecd331494f86f30cc32c7babdd2b5b5` |
| 4 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean/declarations/eval--09c5afa27ad9938634426ed2.md) | 46 | `declaration-track:09c5afa27ad9938634426ed277309290bb8b11b6e3783b98cb5954ee4d4a072e` |
| 5 | `theorem` | [eval_identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean/declarations/eval-identity--e665605d77d6050e002fd7c8.md) | 56 | `result-track:e665605d77d6050e002fd7c86d78b38eb6536d74a9d280b3b20687d06d848ba7` |
| 6 | `theorem` | [eval_compose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean/declarations/eval-compose--f51041a34ced72cae92442b3.md) | 61 | `result-track:f51041a34ced72cae92442b30f4ea2cb489293f1839ff5260c5351c84c8034d5` |
| 7 | `theorem` | [eval_sequenceModulo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducerIR/Varianta3cce5655f3aff9022701156dfedb5093e491f466c0957b1857d1973c9cebab6.lean/declarations/eval-sequencemodulo--3bc19c41c09e3c71e8463afd.md) | 69 | `result-track:3bc19c41c09e3c71e8463afd28949d782c66bf5d0457a6f83dfc1ddb617b2f89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
