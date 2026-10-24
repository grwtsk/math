# Verification target: GRWTSK.Algebra.LinearAlgebra.ContinuousOfBounded.Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd2c4df87459dd3cde818b30cac4d603b8402f0e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd2c4df87459dd3cde818b30cac4d603b8402f0e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ContinuousOfBounded/Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ContinuousOfBounded/Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.IsROrC.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.clmOfExistsBoundedImage](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530.lean/declarations/linearmap-clmofexistsboundedimage--4cefca72deeb5f7d98d02cbe.md) | 54 | `declaration-track:4cefca72deeb5f7d98d02cbed488344580bbe8f61b0b0765d7cb10b36317ef96` |
| 2 | `theorem` | [LinearMap.clmOfExistsBoundedImage_coe](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530.lean/declarations/linearmap-clmofexistsboundedimage-coe--3be7784528cdc972fb305221.md) | 83 | `result-track:3be7784528cdc972fb30522123729d4a07d3e3a78bec0c9015a6a8d66e64351d` |
| 3 | `theorem` | [LinearMap.clmOfExistsBoundedImage_apply](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530.lean/declarations/linearmap-clmofexistsboundedimage-apply--ea37e67c8334d5009ffeffc9.md) | 90 | `result-track:ea37e67c8334d5009ffeffc90228efd0646f767123fec81645165857004a1e2c` |
| 4 | `theorem` | [LinearMap.continuousAt_zero_of_locally_bounded](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530.lean/declarations/linearmap-continuousat-zero-of-locally-bounded--8931b694347fe1208b34bfe5.md) | 110 | `result-track:8931b694347fe1208b34bfe56653c5006adb14e671617edd64971d3db7a90b08` |
| 5 | `theorem` | [LinearMap.continuous_of_locally_bounded](../../../../../mathematics/Algebra/LinearAlgebra/ContinuousOfBounded/Variantdf7418762d12c84e754bf35414ce5afd45cd1959f98a001b719c3109aa23b530.lean/declarations/linearmap-continuous-of-locally-bounded--b6c67ba8936b5ffe2a9e207c.md) | 184 | `result-track:b6c67ba8936b5ffe2a9e207c13e1ca6428bcc0077bfaf13c30ae1487c30b953b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
