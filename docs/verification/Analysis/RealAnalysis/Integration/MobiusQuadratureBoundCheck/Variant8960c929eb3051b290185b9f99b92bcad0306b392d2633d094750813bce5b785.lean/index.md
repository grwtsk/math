# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusQuadratureBoundCheck.Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4bdc9478a4ee05bec154b306f8a06b1ba7bd73e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4bdc9478a4ee05bec154b306f8a06b1ba7bd73e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logsquarequadrature--9dc276cd54d20e9157ba308e.md) | 19 | `declaration-track:9dc276cd54d20e9157ba308eb3acd3a5afdce8e02492c83beef02118fbf45523` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logsquare-monotoneon--3e25c55aa8cd7c5df1c1aefd.md) | 23 | `result-track:3e25c55aa8cd7c5df1c1aefd9cb12dbb21e9fb5d5af85cfb9714a0b014d01331` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logsquare-intervalintegrable--28067030383ea21fed9d229c.md) | 28 | `result-track:28067030383ea21fed9d229cb48a3f2acf2e753bd3c3fb365ce4b0751b5f5986` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logsquare-integer-bounds--9aa90197718e012946f742f5.md) | 35 | `result-track:9aa90197718e012946f742f5ca385d361a403b469379824dc75146d78edfffea` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logsquarequadrature-abs-le--18f69b96c56925ac31e3a944.md) | 68 | `result-track:18f69b96c56925ac31e3a9444871b78de21abbd0d70fa419b288d3c3fe7630b1` |
| 6 | `def` | [logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logratiosquare--583fd9cfa329b3d0e2ae29ed.md) | 107 | `declaration-track:583fd9cfa329b3d0e2ae29ed1d5905b7ff5153125d0e57fc14281e60b3bae583` |
| 7 | `def` | [logRatioPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logratioprimitive--76ad56ba97f001369149334c.md) | 110 | `declaration-track:76ad56ba97f001369149334c249f48e034f527857307df1f6f4053f28e32db37` |
| 8 | `theorem` | [logRatioSquare_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logratiosquare-nonneg--be4d2b4e1b6a1e7f7c3d7c3c.md) | 113 | `result-track:be4d2b4e1b6a1e7f7c3d7c3ce42286af2b25ff8ba5e09b03832dda8640ed31a0` |
| 9 | `theorem` | [logRatioSquare_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logratiosquare-le-rpow--ed019857aad9c76704fbecfc.md) | 116 | `result-track:ed019857aad9c76704fbecfcae1711495da381fc2236f3fc9d3274229ea7953f` |
| 10 | `theorem` | [logRatioSquare_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logratiosquare-integrableon--4b7c30f2688adae78c14b9e3.md) | 134 | `result-track:4b7c30f2688adae78c14b9e3207b443ff88951c5a7a35666fc3c68857f09a8ea` |
| 11 | `theorem` | [logRatioSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logratiosquare-intervalintegrable--111a5cd18e1c65fbc448d52c.md) | 147 | `result-track:111a5cd18e1c65fbc448d52ce4cdbfcb188d793ab87c573f3cfedf4f4d1cc89e` |
| 12 | `theorem` | [logRatioPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logratioprimitive-hasderivat--c984bf9eeb9a89af66f0da16.md) | 151 | `result-track:c984bf9eeb9a89af66f0da16f03de66f343a4eeac15a4069a10ee665ff64dd33` |
| 13 | `theorem` | [tendsto_self_log_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/tendsto-self-log-square--5a1534e9aa067bd567fc26c9.md) | 160 | `result-track:5a1534e9aa067bd567fc26c959976b2f167a0cfd73cbfdd7a72be1a55fd934bd` |
| 14 | `theorem` | [logRatioPrimitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logratioprimitive-tendsto-zero--ca27d1d0ca3b66dc0bda4f9a.md) | 175 | `result-track:ca27d1d0ca3b66dc0bda4f9af5002b756c982ae8e53163b18c702e6e311987c3` |
| 15 | `theorem` | [integral_logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/integral-logratiosquare--fc7393c22b4e3233151f0e97.md) | 191 | `result-track:fc7393c22b4e3233151f0e972ef9443920edf25a5739af39a97bacccbccf2d15` |
| 16 | `theorem` | [logRatioSquare_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/logratiosquare-antitone--8610ffc3476ed2cd29bb958e.md) | 207 | `result-track:8610ffc3476ed2cd29bb958e7973f132445e58443e6761a04435a46fe6f8b97a` |
| 17 | `theorem` | [sum_logRatioSquare_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/sum-logratiosquare-le-integral--c96ddcc41621cc1cf55f5a8f.md) | 216 | `result-track:c96ddcc41621cc1cf55f5a8fe5eb620c6eee2613f30ac87f6eaeb1f9c24fcd61` |
| 18 | `theorem` | [sum_logRatioSquare_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/sum-logratiosquare-le--df38224c9b4283c4155ccde0.md) | 254 | `result-track:df38224c9b4283c4155ccde027d36a042163f2858180c18891a0a207ed231351` |
| 19 | `def` | [mobiusQuadratureError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/mobiusquadratureerror--fcc80f0ca90b7dd2460cef0d.md) | 261 | `declaration-track:fcc80f0ca90b7dd2460cef0d3f5ff8968aee3e17b0d5c727fb601b05f8597802` |
| 20 | `theorem` | [quotient_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/quotient-ge-one--a8bb33d644c9932cc984de61.md) | 266 | `result-track:a8bb33d644c9932cc984de61934d690992eab9ecb32355da79a6f5273f22d7f2` |
| 21 | `theorem` | [mobiusQuadratureError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/mobiusquadratureerror-abs-le--639a125fae54bab018aa78e6.md) | 275 | `result-track:639a125fae54bab018aa78e6d3c83448919565fd0e746acd28700079d8c3b841` |
| 22 | `theorem` | [mobius_prefix_eq_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/mobius-prefix-eq-integral-add-error--5c158144a17daad6b2e40c2f.md) | 295 | `result-track:5c158144a17daad6b2e40c2f4e50e0de10604a07d05a19650799d67b20ef76c3` |
| 23 | `theorem` | [mobius_prefix_integral_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBoundCheck/Variant8960c929eb3051b290185b9f99b92bcad0306b392d2633d094750813bce5b785.lean/declarations/mobius-prefix-integral-abs-le--226cd92d9f6ef04113367abc.md) | 307 | `result-track:226cd92d9f6ef04113367abc971af2687cf4cdfce2407e71fc322815a5ab6fcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
