# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusQuadratureBoundAudit.Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5881e4e90c32c468900f00c025d41b736ef2f07",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5881e4e90c32c468900f00c025d41b736ef2f07`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean.json)

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
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logsquarequadrature--2a29c59997a98aee872b1e45.md) | 27 | `declaration-track:2a29c59997a98aee872b1e45681088f7a4a26f787f57a920d6871e14f26ab712` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logsquare-monotoneon--de16f4088217147c99bbeef9.md) | 31 | `result-track:de16f4088217147c99bbeef926e848f322670f486353539024523e11a99f5652` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logsquare-intervalintegrable--376af6d8eef02d07453c2b27.md) | 36 | `result-track:376af6d8eef02d07453c2b2790054d00fd3a8d78a3b4fc30d1fb2dec7bb730e5` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logsquare-integer-bounds--65f28ffdace56182067b0679.md) | 43 | `result-track:65f28ffdace56182067b06790bcb8b69de4748e4d2f86faafc9bf384f91aa460` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logsquarequadrature-abs-le--657366871183e266684418c9.md) | 76 | `result-track:657366871183e266684418c9f21465ff326c09c8d2d38344180fc0503093167f` |
| 6 | `def` | [logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logratiosquare--6c3cce41c58a4ce633b5bce0.md) | 115 | `declaration-track:6c3cce41c58a4ce633b5bce0cee9e8156e3f358de6c6cd7f210987da64805527` |
| 7 | `def` | [logRatioPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logratioprimitive--480bd9938f6424b29b4d72d5.md) | 118 | `declaration-track:480bd9938f6424b29b4d72d53aa9ac147a15942de6204843f9d882194218c6d2` |
| 8 | `theorem` | [logRatioSquare_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logratiosquare-nonneg--2f890fb78a15d66cfde8744f.md) | 121 | `result-track:2f890fb78a15d66cfde8744f0d0e49089d39e744bc1e285f8c7fdf1d55399c81` |
| 9 | `theorem` | [logRatioSquare_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logratiosquare-le-rpow--7bfd3545e46ca4ecce56d9bd.md) | 124 | `result-track:7bfd3545e46ca4ecce56d9bd270ce190925b3c4a7845fd2227d6ea806c3968aa` |
| 10 | `theorem` | [logRatioSquare_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logratiosquare-integrableon--8375cc63a439169901509ebd.md) | 142 | `result-track:8375cc63a439169901509ebdcfe23e256691cd222be4e2170047fdb873551a71` |
| 11 | `theorem` | [logRatioSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logratiosquare-intervalintegrable--8c31596d0098d999d9eeadff.md) | 155 | `result-track:8c31596d0098d999d9eeadffa1995f91208c6c533f737f57e8d07814db3623bc` |
| 12 | `theorem` | [logRatioPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logratioprimitive-hasderivat--b6b3f92afa8121c0cdc09601.md) | 159 | `result-track:b6b3f92afa8121c0cdc096016a1988a5ab65f51cdc631d556103f5ff50a0cbbf` |
| 13 | `theorem` | [tendsto_self_log_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/tendsto-self-log-square--dad10a698c0a3003118d6825.md) | 168 | `result-track:dad10a698c0a3003118d6825d75eb945ba4f4ee50e6320a685240cac058c5856` |
| 14 | `theorem` | [logRatioPrimitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logratioprimitive-tendsto-zero--f18d481c4bc9cbeaeaa46553.md) | 183 | `result-track:f18d481c4bc9cbeaeaa4655353f519b739568082fdd50c56ef4461b6da945335` |
| 15 | `theorem` | [integral_logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/integral-logratiosquare--a4ec03c825e43f6f26754d49.md) | 199 | `result-track:a4ec03c825e43f6f26754d492b9674931043029074915b792854f914a5c77ef3` |
| 16 | `theorem` | [logRatioSquare_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/logratiosquare-antitone--0612af893ab835484c56c904.md) | 215 | `result-track:0612af893ab835484c56c904c67bb81fa57bed1c2b45e34658c1b40dbd69fce9` |
| 17 | `theorem` | [sum_logRatioSquare_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/sum-logratiosquare-le-integral--27100711ac536147ba81c3e5.md) | 224 | `result-track:27100711ac536147ba81c3e58bed7405ea53224dc499db7ad20775c15f935859` |
| 18 | `theorem` | [sum_logRatioSquare_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/sum-logratiosquare-le--726782a1a437ff03ba1cd6bb.md) | 262 | `result-track:726782a1a437ff03ba1cd6bb46ef820621b12ad9057f5e134544b0adf74024b7` |
| 19 | `def` | [mobiusQuadratureError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/mobiusquadratureerror--04cfbbbe2de4f3825dcf73da.md) | 269 | `declaration-track:04cfbbbe2de4f3825dcf73da001750fd2ec5eaea3bc8bc03f4cee9b964d0ce7f` |
| 20 | `theorem` | [quotient_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/quotient-ge-one--a14032799b425ffc4a8d0356.md) | 274 | `result-track:a14032799b425ffc4a8d035660951cb028bc7be4ba37d2cab4c7a420983971f8` |
| 21 | `theorem` | [mobiusQuadratureError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/mobiusquadratureerror-abs-le--b7598466ac395cfe84d71315.md) | 283 | `result-track:b7598466ac395cfe84d713152298df3b907159cdbd2894d05f2aa211d3a7be4a` |
| 22 | `theorem` | [mobius_prefix_eq_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/mobius-prefix-eq-integral-add-error--9e14efec3a3bcb7fe47b77b8.md) | 303 | `result-track:9e14efec3a3bcb7fe47b77b80cabb8cd9a2e9f2e57de36cf10751048f38fcfc4` |
| 23 | `theorem` | [mobius_prefix_integral_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundAudit/Variant78054f201a22dd350b7ac5f1a3bdefab32599ca492879a4cf42fe026d354ae02.lean/declarations/mobius-prefix-integral-abs-le--d715a4997335c8e2ccd6535b.md) | 315 | `result-track:d715a4997335c8e2ccd6535b08150e9ee367062deda13f051ca429bec69af6f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
