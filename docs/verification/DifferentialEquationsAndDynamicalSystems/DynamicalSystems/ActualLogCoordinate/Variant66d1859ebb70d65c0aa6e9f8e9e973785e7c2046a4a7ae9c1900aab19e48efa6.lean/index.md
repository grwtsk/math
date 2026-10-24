# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ActualLogCoordinate.Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "563c237e499302cff3e9f30a6f9d34d5e71b80e4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `563c237e499302cff3e9f30a6f9d34d5e71b80e4`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LogCoordinate` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualLogOperator](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/declarations/actuallogoperator--0b8fc7d9f1f544d5aee711ed.md) | 13 | `declaration-track:0b8fc7d9f1f544d5aee711ede955f5589f718848d73a4fed6b804d8cc6ad1bfc` |
| 2 | `def` | [actualLogL2](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/declarations/actuallogl2--3238afdde1644a95df23d418.md) | 15 | `declaration-track:3238afdde1644a95df23d4187e5efad5c44ef49619e77c169b3ba9a469c89de5` |
| 3 | `theorem` | [actualLogOperator_memLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/declarations/actuallogoperator-memlp--e83089424dfed1575dcc7a6b.md) | 17 | `result-track:e83089424dfed1575dcc7a6ba118a36af466d0eafd0a4355d2568968120f8a9f` |
| 4 | `theorem` | [actualLogL2_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/declarations/actuallogl2-ae--c2f9b1cd5e3c0967ec076d47.md) | 21 | `result-track:c2f9b1cd5e3c0967ec076d471012d45675a3257e5948f3bb272c7147cb23dc44` |
| 5 | `theorem` | [actualLogL2_norm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/declarations/actuallogl2-norm--b27179ae2aa289c35506af23.md) | 30 | `result-track:b27179ae2aa289c35506af23359b9aafa01a5720baa762c72dc52d76b1f1f95c` |
| 6 | `theorem` | [actualLogL2_norm_sq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/declarations/actuallogl2-norm-sq--abf2623ced77ad563679a924.md) | 33 | `result-track:abf2623ced77ad563679a924782c532a3fa989cfbd6be958d3a699ba81b762b2` |
| 7 | `theorem` | [actual_dilation_log](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/declarations/actual-dilation-log--76b928c9b4b62651d27371a0.md) | 37 | `result-track:76b928c9b4b62651d27371a0dc40c89a03eaab8f6032f790d43d94bf38ba394c` |
| 8 | `theorem` | [actual_integer_log](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/declarations/actual-integer-log--dd5cb9f283efd8912f783efb.md) | 41 | `result-track:dd5cb9f283efd8912f783efb232df1b0d61f870f4901fc8e71e38c3a7459f492` |
| 9 | `theorem` | [actual_integer_log_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/declarations/actual-integer-log-ae--fdda518994afa445bdc4fdfe.md) | 45 | `result-track:fdda518994afa445bdc4fdfe7bece4e91bc26073f6eac4e54db32df76b738dd4` |
| 10 | `theorem` | [actualLogOperator_zero_upper](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Variant66d1859ebb70d65c0aa6e9f8e9e973785e7c2046a4a7ae9c1900aab19e48efa6.lean/declarations/actuallogoperator-zero-upper--eb3f50ba4cf33a2836fa4207.md) | 54 | `result-track:eb3f50ba4cf33a2836fa4207d2822e644ead897cb69176c66c94af7fc4105f44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
