# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuation.Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70bf4b0ea65a661d631b19e28a7280bc29e1e6bf",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70bf4b0ea65a661d631b19e28a7280bc29e1e6bf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Laplace.Positivity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transform](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/declarations/transform--1916e5210b84f2c3beeaa1aa.md) | 25 | `declaration-track:1916e5210b84f2c3beeaa1aa114b4631d9b6f02eea6d19029040cf2e94024ac8` |
| 2 | `theorem` | [integrable_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/declarations/integrable-of-le--0a1848be624f75bd3b576f90.md) | 28 | `result-track:0a1848be624f75bd3b576f900a0bf2a065c6f872918cdf82040ea83d5445f7c4` |
| 3 | `theorem` | [transform_analytic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/declarations/transform-analytic--b335ee866bea23dfaeb63814.md) | 37 | `result-track:b335ee866bea23dfaeb63814307db5fa71ed128bc24f688cfb305ee8a2c7be12` |
| 4 | `theorem` | [meromorphic_germ_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/declarations/meromorphic-germ-eq--d7ae66ac0b432e6434c5621d.md) | 51 | `result-track:d7ae66ac0b432e6434c5621d5f1d75b35dcb3633cee28d65704be97cc16d0da4` |
| 5 | `theorem` | [transform_germ_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/declarations/transform-germ-eq--5ed7848fcabb8f2f1e8e79df.md) | 64 | `result-track:5ed7848fcabb8f2f1e8e79df154ac990e869d3e1cf644b20bd7eedf8c8343723` |
| 6 | `theorem` | [integrable_positive_of_continuation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/declarations/integrable-positive-of-continuation--0960de68a7735267669bbeaa.md) | 84 | `result-track:0960de68a7735267669bbeaa6c0e0e5ed18a38302b61efe82aff83123a36c387` |
| 7 | `theorem` | [order_nonneg_of_continuation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/declarations/order-nonneg-of-continuation--59ce06f7ab44b0af45708b9a.md) | 121 | `result-track:59ce06f7ab44b0af45708b9a396c0b9ae62f5969bb28b0c74017fcc85d354880` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
