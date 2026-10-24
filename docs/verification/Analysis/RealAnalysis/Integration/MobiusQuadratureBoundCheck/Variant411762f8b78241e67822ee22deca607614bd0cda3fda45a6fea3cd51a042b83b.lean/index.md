# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusQuadratureBoundCheck.Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b17c4acbf0ff0bcd47950afc302b59f56ec0f5ab",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b17c4acbf0ff0bcd47950afc302b59f56ec0f5ab`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logsquarequadrature--1b96a5e773d8d72cc78016c7.md) | 27 | `declaration-track:1b96a5e773d8d72cc78016c7799dc1b7265c892fb3ee4e7ad7eda7a7c2348ce9` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logsquare-monotoneon--65be7ceff907539b6136c82b.md) | 31 | `result-track:65be7ceff907539b6136c82bd952c9b6c4627ddf7928150829f351f39533501d` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logsquare-intervalintegrable--703f20be3db9464a59f8fcad.md) | 36 | `result-track:703f20be3db9464a59f8fcad50a36a749ac9f48063fee9ecb75208762a779532` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logsquare-integer-bounds--ce2edd0433ff0497ed8d4692.md) | 43 | `result-track:ce2edd0433ff0497ed8d4692061f5465e261c9861a138e0baededeac236088e2` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logsquarequadrature-abs-le--557802c644825944fa84ca6d.md) | 76 | `result-track:557802c644825944fa84ca6d1f8c4b586a551996c80050a3fb45ea09413dcdca` |
| 6 | `def` | [logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logratiosquare--1c5ea0f253b72de9709886f9.md) | 115 | `declaration-track:1c5ea0f253b72de9709886f9297fae5183e40a19635d69e6fa837e658ad49f3c` |
| 7 | `def` | [logRatioPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logratioprimitive--7768c2c8d46eb8ae4d797ff3.md) | 118 | `declaration-track:7768c2c8d46eb8ae4d797ff3c6fc51b364efe74f82c3b7ff4fd4a0f45e5a27ce` |
| 8 | `theorem` | [logRatioSquare_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logratiosquare-nonneg--708f030af28f2c11ac2b8b0c.md) | 121 | `result-track:708f030af28f2c11ac2b8b0cc13611e47858b1afc68961743adda509fe8d6f2b` |
| 9 | `theorem` | [logRatioSquare_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logratiosquare-le-rpow--cee710a5f831e763da1548f4.md) | 124 | `result-track:cee710a5f831e763da1548f452e3fd9a6f57e65fe2035c8988a3911aa8f42cd2` |
| 10 | `theorem` | [logRatioSquare_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logratiosquare-integrableon--3d93e5cedcc82ea9e2833600.md) | 142 | `result-track:3d93e5cedcc82ea9e283360013f72ab0b77430832bf01a1b309cea367cc18582` |
| 11 | `theorem` | [logRatioSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logratiosquare-intervalintegrable--efa178a8b67a52fd4e68e95e.md) | 155 | `result-track:efa178a8b67a52fd4e68e95e8079912b0daaef00293ccfd365a965b965024926` |
| 12 | `theorem` | [logRatioPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logratioprimitive-hasderivat--ef40dc7755580e6b6b2d262c.md) | 159 | `result-track:ef40dc7755580e6b6b2d262c706f46566b83bfa9e2cf8d3a2ae4fdaed9be7f8d` |
| 13 | `theorem` | [tendsto_self_log_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/tendsto-self-log-square--46893a9990d76e65269b3285.md) | 168 | `result-track:46893a9990d76e65269b32856302af8036d13c3aaa4a8084eaca9ff8c9917332` |
| 14 | `theorem` | [logRatioPrimitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logratioprimitive-tendsto-zero--e60aaf5696caf855239a6f44.md) | 183 | `result-track:e60aaf5696caf855239a6f44bcbd874af2396b91afe9c67258c7836efac76311` |
| 15 | `theorem` | [integral_logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/integral-logratiosquare--0fa8e6ee7ad364f683877a3b.md) | 199 | `result-track:0fa8e6ee7ad364f683877a3bdb683be7bc38415964a45eb0058d8c2f8c355df1` |
| 16 | `theorem` | [logRatioSquare_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/logratiosquare-antitone--458e0354bbe0f76b4999a7e9.md) | 215 | `result-track:458e0354bbe0f76b4999a7e9e90e83ba00cb82752364a2a792d6107b9bd51982` |
| 17 | `theorem` | [sum_logRatioSquare_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/sum-logratiosquare-le-integral--94f479d2df54c678c23dc009.md) | 224 | `result-track:94f479d2df54c678c23dc00948e39917c6677744309ae7095308647c57a688e1` |
| 18 | `theorem` | [sum_logRatioSquare_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/sum-logratiosquare-le--d2ba6f4460d5adfd3bd67c52.md) | 262 | `result-track:d2ba6f4460d5adfd3bd67c529d6eee2e9a5669617d3f73c3198ecf1d28f956f8` |
| 19 | `def` | [mobiusQuadratureError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/mobiusquadratureerror--4bc74fcd3f3894ed50fd9d14.md) | 269 | `declaration-track:4bc74fcd3f3894ed50fd9d1466cf61680244098da9d86971fd1efec4cd1fefd7` |
| 20 | `theorem` | [quotient_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/quotient-ge-one--0e7731902513bc8bac6d1253.md) | 274 | `result-track:0e7731902513bc8bac6d125380db8ee6f3f63074420595bd2b6b1a89a973be3a` |
| 21 | `theorem` | [mobiusQuadratureError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/mobiusquadratureerror-abs-le--5d6ffddef102b1bb33ba2220.md) | 283 | `result-track:5d6ffddef102b1bb33ba2220045f4688e376bc72011fe83ce8a9764400942c87` |
| 22 | `theorem` | [mobius_prefix_eq_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/mobius-prefix-eq-integral-add-error--2e59793a3d8d461a4e38f4b9.md) | 303 | `result-track:2e59793a3d8d461a4e38f4b97007bc3e5aaa8a029001b6188391eaabb0653cc8` |
| 23 | `theorem` | [mobius_prefix_integral_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant411762f8b78241e67822ee22deca607614bd0cda3fda45a6fea3cd51a042b83b.lean/declarations/mobius-prefix-integral-abs-le--21f11c1bd8f11dbc37fc77d4.md) | 315 | `result-track:21f11c1bd8f11dbc37fc77d4ec17bf98990906ccd50c466c859ed0ecc63fe7e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
