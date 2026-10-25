# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Continuation.Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a2bc304c4bb43b770c5818ae0565aa2fc758a93",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a2bc304c4bb43b770c5818ae0565aa2fc758a93`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Laplace.Positivity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Topology` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transform](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/declarations/transform--a5f07169273259c48ed5f9f3.md) | 33 | `declaration-track:a5f07169273259c48ed5f9f3ea0a822aa95e2cf50866734c84e31e0ecbd4b51a` |
| 2 | `theorem` | [integrable_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/declarations/integrable-of-le--0c18ae8dd96bbec903bc5187.md) | 36 | `result-track:0c18ae8dd96bbec903bc5187c6a8af86ff8b5b572127de78a6cf07e5286f682a` |
| 3 | `theorem` | [transform_analytic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/declarations/transform-analytic--612dc88480c9b69a049be22b.md) | 45 | `result-track:612dc88480c9b69a049be22bb407f9a9e419660a53ac608ca910ea7dcf59f4cc` |
| 4 | `theorem` | [meromorphic_germ_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/declarations/meromorphic-germ-eq--82bce95d710a79331fa278d3.md) | 59 | `result-track:82bce95d710a79331fa278d3f4babbf6942d4b3ab0e8065e3bc510f847fc65a0` |
| 5 | `theorem` | [transform_germ_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/declarations/transform-germ-eq--9c6ae8f809a8471830d902b4.md) | 72 | `result-track:9c6ae8f809a8471830d902b4deb155628ae1f501ae1e65eca58fe47fd7e6cc07` |
| 6 | `theorem` | [integrable_positive_of_continuation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/declarations/integrable-positive-of-continuation--b9b7344eb3bf448449f404ca.md) | 92 | `result-track:b9b7344eb3bf448449f404ca6e9007a98dd589f3a163b2711c3e364939592d3f` |
| 7 | `theorem` | [order_nonneg_of_continuation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/declarations/order-nonneg-of-continuation--f3601bece9d1b0c4735c5cf3.md) | 129 | `result-track:f3601bece9d1b0c4735c5cf34088ef0deca39bff442607dd1002ba5e06011a8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
