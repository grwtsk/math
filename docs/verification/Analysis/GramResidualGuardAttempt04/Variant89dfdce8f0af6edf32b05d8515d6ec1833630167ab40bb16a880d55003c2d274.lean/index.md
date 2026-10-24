# Verification target: GRWTSK.Analysis.GramResidualGuardAttempt04.Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d1fff2dfe4b0ad9eaab4942b4717a000fc64ba3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d1fff2dfe4b0ad9eaab4942b4717a000fc64ba3`.

Source path: `GRWTSK/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Spectrum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/quadratic-difference-abs-le--bf7621ee2db5204f538c9da7.md) | 18 | `result-track:bf7621ee2db5204f538c9da7889a232b6ed0400859a1719d005607df9bcd3505` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/positive-approximation-lower--bde1daaaa5a0d831393c8d3c.md) | 31 | `result-track:bde1daaaa5a0d831393c8d3c512848ee037c492b12f39ce8b2b4c2bce93d0fe1` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/coercive-approximation-lower--f7c54cada51cf8b529492ff2.md) | 39 | `result-track:f7c54cada51cf8b529492ff27f9972b74920811979681578312867ae65e614f7` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/positive-of-coercive-residual--d8cb8b30b440d490be26c8e3.md) | 47 | `result-track:d8cb8b30b440d490be26c8e3e95df87fb71dfa0aafaefb8436420e4cc55ba41e` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/positive-of-arbitrary-precision--ef68ce7ea405c432ead01888.md) | 55 | `result-track:ef68ce7ea405c432ead018881380138de261cf8fa8d690df4e210d44feb1984e` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/gram-residual-lower--5304539a2f7d8daa3417a21f.md) | 77 | `result-track:5304539a2f7d8daa3417a21f57de7e82deff99999898cfd679c557809cc86916` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/positive-of-arbitrary-gram-precision--41f2911734e6ad24579d9331.md) | 86 | `result-track:41f2911734e6ad24579d9331c8a96bd0644b7561c155ed95d71cf190b8cd0789` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/positivedistance--3311958eb4cbf7f27ed7fd9b.md) | 96 | `declaration-track:3311958eb4cbf7f27ed7fd9bdf3f2e7e110a0193c72091a6fbad963c6ffb5f34` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/negative-rayleigh-le-norm--1bab10d0fe302d0d7858551a.md) | 99 | `result-track:1bab10d0fe302d0d7858551a0e1fa937059b35593a8e671480c437c5acc21b3e` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/negative-rayleigh-distance-lower--e238447680791d1c75341d0a.md) | 111 | `result-track:e238447680791d1c75341d0a5474d6d88d64f6622e9438fb3d2b33eb633352c7` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/positivedistance-eq-zero-iff--54247054fde524a28a9d002d.md) | 121 | `result-track:54247054fde524a28a9d002d4669afabf480524e31aa65515af1592e4188c2c3` |
| 12 | `theorem` | [negative_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/negative-eigenvalue-distance-lower--54f988f4fe86c359014f9181.md) | 137 | `result-track:54f988f4fe86c359014f9181d8ca45201d891a5f4049f43c7a80d50cc675b94e` |
| 13 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/matrixoperator--be9123ae14bf811b3541ee28.md) | 150 | `declaration-track:be9123ae14bf811b3541ee2857fa27532a1c97bb80db9bae555fe6944a5b04ad` |
| 14 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/matrixoperator-positive-iff--94efa74fa88d2d51bef93ffa.md) | 153 | `result-track:94efa74fa88d2d51bef93ffab4937dabe0abd0a19f26e6e4b07aeb5f60efb952` |
| 15 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--b475e3c6f88cf3ef480276ed.md) | 158 | `result-track:b475e3c6f88cf3ef480276ed77680011d284426d21a9aa2018bf8e4c09d0753d` |
| 16 | `theorem` | [matrix_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant89dfdce8f0af6edf32b05d8515d6ec1833630167ab40bb16a880d55003c2d274.lean/declarations/matrix-eigenvalue-distance-lower--c3322530c737133609f2e4db.md) | 170 | `result-track:c3322530c737133609f2e4db1f107048e93d62f0a310783e54576959fd0079c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
