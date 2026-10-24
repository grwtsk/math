# Verification target: GRWTSK.LinearAlgebra.QuadraticForm.BinaryFormIdentities

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be2142bec0a6719178660e958b1a18c3e1360009",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be2142bec0a6719178660e958b1a18c3e1360009`.

Source path: `GRWTSK/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [determinant](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/declarations/determinant--79d28d43abc5c25b28cba952.md) | 13 | `declaration-track:79d28d43abc5c25b28cba9520e975a5ec13e5af721be1fb679f4ec1a73873a17` |
| 2 | `def` | [quadratic](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/declarations/quadratic--57147073df2e73e82d763c05.md) | 15 | `declaration-track:57147073df2e73e82d763c057aefa03fa51afbe2f279cb3ea4d02d3b2268304c` |
| 3 | `theorem` | [complete_square](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/declarations/complete-square--d5b187a3f5022674363c2b92.md) | 17 | `result-track:d5b187a3f5022674363c2b920916be4cf16e573b7e99df1d7f23d47f6985c32b` |
| 4 | `theorem` | [quadratic_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/declarations/quadratic-nonneg--e61b2fad0edf0ad1875f9b23.md) | 22 | `result-track:e61b2fad0edf0ad1875f9b23e4a8831cf541e669672eea9230fd5c09c880a182` |
| 5 | `theorem` | [shifted_quadratic](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/declarations/shifted-quadratic--222c2df855116cb6a1f0102c.md) | 28 | `result-track:222c2df855116cb6a1f0102cf660c905e46eb596eb8f2bf0175dd49f01238104` |
| 6 | `theorem` | [solved_energy](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/declarations/solved-energy--8863cf9c9a577125d4fe3d0c.md) | 34 | `result-track:8863cf9c9a577125d4fe3d0c4e7f73c22c76b3b5e87316ce0d26e0e0e7acfd40` |
| 7 | `theorem` | [endpoint_inverse_left](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/declarations/endpoint-inverse-left--7cbe5947ec98f7752af628d6.md) | 43 | `result-track:7cbe5947ec98f7752af628d69847e56a383f5e530c7af225b7f889deac58027c` |
| 8 | `theorem` | [endpoint_inverse_right](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/declarations/endpoint-inverse-right--b24d50d92b0caf64b6547631.md) | 52 | `result-track:b24d50d92b0caf64b6547631010ff4ba4f8037d5ca4648aca6b121277786751e` |
| 9 | `theorem` | [residual_reconstruction](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/declarations/residual-reconstruction--8b98409fd83c5a216e7fcfcf.md) | 62 | `result-track:8b98409fd83c5a216e7fcfcf1230735a80fcb21796a56095862eafd1dab7e14c` |
| 10 | `theorem` | [lower_minor_slack](../../../../../mathematics/Algebra/LinearAlgebra/QuadraticForm/BinaryFormIdentities.lean/declarations/lower-minor-slack--2eae4279f7298854c9a33d9f.md) | 69 | `result-track:2eae4279f7298854c9a33d9f44a31b07b361c848b6d2ea4ac17a4c85544a4916` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
