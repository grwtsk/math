# Verification target: GRWTSK.Analysis.GramResidualGuardAttempt04.Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3874e6c9e0c8cf8ca9d0e640eccf758fc349f4f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3874e6c9e0c8cf8ca9d0e640eccf758fc349f4f`.

Source path: `GRWTSK/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Spectrum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/quadratic-difference-abs-le--39186ecda6a2d4d334a1ed6d.md) | 26 | `result-track:39186ecda6a2d4d334a1ed6d4cf01980eb6dfc53a4fb1a69bb37a8e6f1ff2fea` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/positive-approximation-lower--18e87e2726c8bb2bb088335c.md) | 39 | `result-track:18e87e2726c8bb2bb088335c225782b3b4551a04b97dbc171d2f87a344080a7b` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/coercive-approximation-lower--351c12fad6f4c9a97323d6ff.md) | 47 | `result-track:351c12fad6f4c9a97323d6ffdbe646c337d8b18b427a0b63e4f12ffaf7dfa432` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/positive-of-coercive-residual--bf96de1d4d2fbc6cd1bc79c3.md) | 55 | `result-track:bf96de1d4d2fbc6cd1bc79c3da3d5395d190c9c6288b486248b19fe2a7c429d1` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/positive-of-arbitrary-precision--e5cd3f83f6946fa458d981a1.md) | 63 | `result-track:e5cd3f83f6946fa458d981a127f6be8ed432699ae58b5f997f66c21006ec7870` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/gram-residual-lower--24ce8d9e745d051c6d19d52f.md) | 85 | `result-track:24ce8d9e745d051c6d19d52fab58f38fbdf6a3d41ab35b3b769d088be1154c3f` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/positive-of-arbitrary-gram-precision--99f6f51bb517c3b2ab2145fe.md) | 94 | `result-track:99f6f51bb517c3b2ab2145fe334b828de97a2982425501ad7dd9bba8ccab6670` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/positivedistance--e6ce21e7739a87d61a50e625.md) | 104 | `declaration-track:e6ce21e7739a87d61a50e625a6d35059b3650c86ec5506eb2a6d2443fa7db0a6` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/negative-rayleigh-le-norm--6afcfa8986636d1a70e1b862.md) | 107 | `result-track:6afcfa8986636d1a70e1b8620f42612530bfe4a44c7f397a1a49af506533c8b5` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/negative-rayleigh-distance-lower--64734fad801bf4b65a044984.md) | 119 | `result-track:64734fad801bf4b65a04498464ab86a47c3e064dff5662a8217d93302dc858e3` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/positivedistance-eq-zero-iff--7bdb2a43ed5df213254d3e51.md) | 129 | `result-track:7bdb2a43ed5df213254d3e510931d98643c299e2285763c7d56784bebed32fac` |
| 12 | `theorem` | [negative_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/negative-eigenvalue-distance-lower--5cb8d1730229806ce7c92bcc.md) | 145 | `result-track:5cb8d1730229806ce7c92bcc1e1af10b159ecb401260e3de1e7a803a0256a530` |
| 13 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/matrixoperator--efef727540203927a72bc902.md) | 158 | `declaration-track:efef727540203927a72bc902751afc71ce12583627a266d862b0170ab14edd13` |
| 14 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/matrixoperator-positive-iff--a638bbcb9e395530689c65e5.md) | 161 | `result-track:a638bbcb9e395530689c65e5c792c3beb2c000b5b02791d9056a965b6b59d10b` |
| 15 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--71211b1f1188024b6d4a38a4.md) | 166 | `result-track:71211b1f1188024b6d4a38a427859061a36c3544dac7e2cabbeb9b28fcace543` |
| 16 | `theorem` | [matrix_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt04/Variant2357b0a22fd1de66271d496d124e555b7888ab5d165be813ba08aefba84972b6.lean/declarations/matrix-eigenvalue-distance-lower--cf2975ab01dfd4800cc8ee1b.md) | 178 | `result-track:cf2975ab01dfd4800cc8ee1b7853b10b26c5a4bcb0d60bf5f53e39af0ccec0d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
