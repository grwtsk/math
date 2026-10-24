# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ActualLogCoordinateAttempt01.Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cc4ef73c0797d51d8f05a83cf1cd591293e7991",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cc4ef73c0797d51d8f05a83cf1cd591293e7991`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean.json)

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
| 1 | `def` | [actualLogOperator](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/declarations/actuallogoperator--699dccf0e979baff46f6aef0.md) | 13 | `declaration-track:699dccf0e979baff46f6aef04f71624bb027e8847a83c690754be81d6fbb819d` |
| 2 | `def` | [actualLogL2](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/declarations/actuallogl2--621434fc81ae6784b81cdb67.md) | 15 | `declaration-track:621434fc81ae6784b81cdb672a30a407bd96a447980d16113b32fb36ee07c1be` |
| 3 | `theorem` | [actualLogOperator_memLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/declarations/actuallogoperator-memlp--4f430cb468c30009dc7bd2fc.md) | 17 | `result-track:4f430cb468c30009dc7bd2fc074accb067df6cbb6fb87abdfb885d947f71231d` |
| 4 | `theorem` | [actualLogL2_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/declarations/actuallogl2-ae--38da05553f78d97259c31301.md) | 21 | `result-track:38da05553f78d97259c31301b0f36b5a13c3c23cee64d8374a49fb74b30394f5` |
| 5 | `theorem` | [actualLogL2_norm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/declarations/actuallogl2-norm--9af0052511e8eb463323f1c8.md) | 29 | `result-track:9af0052511e8eb463323f1c8ab7df7efce53f78a80607404a54fd0e4fd20dd1b` |
| 6 | `theorem` | [actualLogL2_norm_sq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/declarations/actuallogl2-norm-sq--f2234073d903ae32f3604627.md) | 32 | `result-track:f2234073d903ae32f3604627216d1c312e3a0738f9598755396794a4fd2f5474` |
| 7 | `theorem` | [actual_dilation_log](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/declarations/actual-dilation-log--e437d3aee0b6eca8f9d200fc.md) | 36 | `result-track:e437d3aee0b6eca8f9d200fcaac429df4a1b8f3795609abd6531a8a2bb91717f` |
| 8 | `theorem` | [actual_integer_log](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/declarations/actual-integer-log--8d35761abb1da25a3ea3176b.md) | 40 | `result-track:8d35761abb1da25a3ea3176bca7233f6a9c51447af9ddf8bd29b56551b0aa823` |
| 9 | `theorem` | [actual_integer_log_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/declarations/actual-integer-log-ae--a3c589517bbbe7f7ffb7c8d3.md) | 44 | `result-track:a3c589517bbbe7f7ffb7c8d38053adaa6245283cb4cf178f62531b2a0547fde1` |
| 10 | `theorem` | [actualLogOperator_zero_upper](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinateAttempt01/Variantd8af15fba53af8da6bfaeb683b0d95fceb07c73950d28b00aea54cf8529c851c.lean/declarations/actuallogoperator-zero-upper--664c3b8dce7c3917bc7446df.md) | 53 | `result-track:664c3b8dce7c3917bc7446df37e7208b2046c52bc86d4775896605c9a49ee9f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
