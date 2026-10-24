# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monad.Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d9f9b6909885542e71db28eaf72266f50a2768c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d9f9b6909885542e71db28eaf72266f50a2768c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMonad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914.lean/declarations/instmonad--bb16f9d11d76e7d9f6404799.md) | 26 | `declaration-track:bb16f9d11d76e7d9f6404799adaf5ad210f524e08f068e44df22c2b291ab5273` |
| 2 | `theorem` | [pure_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914.lean/declarations/pure-def--5c17dc7cfad2a72b95ba469e.md) | 31 | `result-track:5c17dc7cfad2a72b95ba469e0bc92c702fe771a76cf5ea7d295fb6a18b1231ab` |
| 3 | `instance` | [instLawfulMonad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914.lean/declarations/instlawfulmonad--e10e0648da432694b0b288f3.md) | 33 | `declaration-track:e10e0648da432694b0b288f32dee023f176e56b5e8b79deb480e418cc911d6b6` |
| 4 | `instance` | [instAlternative](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monad/Variant638f6aa5a0fc6f68fe3399e9eb93f9272bacf8ecbb28d5be4aac6033a2ca3914.lean/declarations/instalternative--13cb3e98bf135c1614f1acb5.md) | 39 | `declaration-track:13cb3e98bf135c1614f1acb539a2ba4efcd691c5e66586c5cb28beb062aa4b3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
