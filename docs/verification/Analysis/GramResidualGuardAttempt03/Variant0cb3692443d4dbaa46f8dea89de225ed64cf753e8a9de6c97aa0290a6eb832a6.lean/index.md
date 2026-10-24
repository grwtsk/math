# Verification target: GRWTSK.Analysis.GramResidualGuardAttempt03.Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae0610e1ef0a14c942a695114548445ee3f88914",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae0610e1ef0a14c942a695114548445ee3f88914`.

Source path: `GRWTSK/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/quadratic-difference-abs-le--21d50bcc09314374dbe87d22.md) | 18 | `result-track:21d50bcc09314374dbe87d22a3d8332ff618a43423b8225572977ada01ab3142` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/positive-approximation-lower--59de0ab78b3477166e6da84b.md) | 31 | `result-track:59de0ab78b3477166e6da84b85216f4d4c8a805bf0e5e372b8d30a641975e221` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/coercive-approximation-lower--2d589de36477a0f2ae8e6a1f.md) | 39 | `result-track:2d589de36477a0f2ae8e6a1fadb5e63a4f903e006a8e62a1b35b9c8c35024ce8` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/positive-of-coercive-residual--0d6a35547a039d9be38a2976.md) | 47 | `result-track:0d6a35547a039d9be38a29766de175cd4f3c7b4fa51766d37e8603e1c64993d0` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/positive-of-arbitrary-precision--e1f27405219f82c79a170351.md) | 55 | `result-track:e1f27405219f82c79a17035149eb99788aa180f0cf1f93000e650fa0669d2646` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/gram-residual-lower--464d0d5c94b7b773b8286df8.md) | 77 | `result-track:464d0d5c94b7b773b8286df8bf205261322677612473661fb92bebb277778e60` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/positive-of-arbitrary-gram-precision--9ca4aba797a546ab6807f6e7.md) | 86 | `result-track:9ca4aba797a546ab6807f6e7dff7ed0f4d914d46dfcfe30dcd7bca0ac9ef617c` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/positivedistance--e3c83920b66f8d61dc381a16.md) | 96 | `declaration-track:e3c83920b66f8d61dc381a16d1b9e15934c410c8f9d9b941203e62f3dbdf2cf5` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/negative-rayleigh-le-norm--0be6435e96b2abe264b9d5e6.md) | 99 | `result-track:0be6435e96b2abe264b9d5e630211504dad36e21cdde4ffb6760c6b014772f46` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/negative-rayleigh-distance-lower--f10f956ce121bf7644fd5e59.md) | 111 | `result-track:f10f956ce121bf7644fd5e5943f971ba33d04bd356f2fd77019557983608619b` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/positivedistance-eq-zero-iff--2a22f9f0ea3050f8da196aca.md) | 121 | `result-track:2a22f9f0ea3050f8da196acaaac0a3fd0f8ea5d58e69680f8fedf3f55db60734` |
| 12 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/matrixoperator--37bd4e394ca504278e1d52a2.md) | 141 | `declaration-track:37bd4e394ca504278e1d52a26c01342e09750c93e6700f6560966925f73be168` |
| 13 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/matrixoperator-positive-iff--2319a171a2ffe8884f2c0906.md) | 144 | `result-track:2319a171a2ffe8884f2c0906245ffe9e03402e7bff52f31f02b4a464577393e9` |
| 14 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variant0cb3692443d4dbaa46f8dea89de225ed64cf753e8a9de6c97aa0290a6eb832a6.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--ac0ce54d56045d8fb27510fb.md) | 149 | `result-track:ac0ce54d56045d8fb27510fb2dfb918c69a091a7cd0b6cf0dcb26445cbbf7fa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
