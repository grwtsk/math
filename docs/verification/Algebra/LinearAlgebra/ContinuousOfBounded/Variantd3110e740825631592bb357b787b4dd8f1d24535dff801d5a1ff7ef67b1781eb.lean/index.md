# Verification target: GRWTSK.Algebra.LinearAlgebra.ContinuousOfBounded.Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41b577b4fd9d7e2ee4668293ff6127c9ee3e2adf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41b577b4fd9d7e2ee4668293ff6127c9ee3e2adf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean.json)

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
| 1 | `def` | [LinearMap.clmOfExistsBoundedImage](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean/declarations/linearmap-clmofexistsboundedimage--327bda57d37c7a57ee5ed3f2.md) | 51 | `declaration-track:327bda57d37c7a57ee5ed3f26da7e9439fee81326f9e499291f8a1ec84c93fc8` |
| 2 | `theorem` | [LinearMap.clmOfExistsBoundedImage_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean/declarations/linearmap-clmofexistsboundedimage-coe--b217d4acb98f86262a61ca3e.md) | 75 | `result-track:b217d4acb98f86262a61ca3e9622dca0e8e1b2504db4880f0e74fc7d8d7f227a` |
| 3 | `theorem` | [LinearMap.clmOfExistsBoundedImage_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean/declarations/linearmap-clmofexistsboundedimage-apply--fb61034f662b30ca32456fcf.md) | 81 | `result-track:fb61034f662b30ca32456fcf82e307accd4d68104c061743c6e68b095a89ed4c` |
| 4 | `theorem` | [LinearMap.continuousAt_zero_of_locally_bounded](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean/declarations/linearmap-continuousat-zero-of-locally-bounded--dbcdcfb594a900c4e3d2e217.md) | 88 | `result-track:dbcdcfb594a900c4e3d2e217ee1dadeb3868fe40c116ea47fcfed9e6734c445f` |
| 5 | `theorem` | [LinearMap.continuous_of_locally_bounded](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantd3110e740825631592bb357b787b4dd8f1d24535dff801d5a1ff7ef67b1781eb.lean/declarations/linearmap-continuous-of-locally-bounded--48e99445f6f71d560687a7bc.md) | 133 | `result-track:48e99445f6f71d560687a7bc93bbb906412879cc4cbd4632fca6d1fea9b84557` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
