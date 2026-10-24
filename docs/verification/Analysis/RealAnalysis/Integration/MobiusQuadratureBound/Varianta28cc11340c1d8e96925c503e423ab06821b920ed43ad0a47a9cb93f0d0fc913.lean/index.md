# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusQuadratureBound.Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a72de2c69fa53f906a9ff18963b7b7575eac467d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a72de2c69fa53f906a9ff18963b7b7575eac467d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.LogSquareQuadrature` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/logratiosquare--5a5131758e6d5a3712e02de3.md) | 15 | `declaration-track:5a5131758e6d5a3712e02de3bc41e74e2563af7f41e8ab13d4c0a689f2425158` |
| 2 | `def` | [logRatioPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/logratioprimitive--4acb769ed8dd2213f7f72609.md) | 18 | `declaration-track:4acb769ed8dd2213f7f72609465d5de682ffe3e8a9f433ed9e2b061cb53cc3f8` |
| 3 | `theorem` | [logRatioSquare_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/logratiosquare-nonneg--dadadd964335cdedadfccacd.md) | 21 | `result-track:dadadd964335cdedadfccacdf812bb5964a888973d2f562fcd6cab18d6aa9fad` |
| 4 | `theorem` | [logRatioSquare_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/logratiosquare-le-rpow--182e97c5acb94ff25ffd6562.md) | 24 | `result-track:182e97c5acb94ff25ffd6562ed0d55e5cd39102bd61646140b5fa619e6a06adf` |
| 5 | `theorem` | [logRatioSquare_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/logratiosquare-integrableon--e3d8ec52024e2b2a1fb0268b.md) | 42 | `result-track:e3d8ec52024e2b2a1fb0268b71877a002e850597199442455787a0b22a3a7c5f` |
| 6 | `theorem` | [logRatioSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/logratiosquare-intervalintegrable--f2ddfd70ac67336cd23d187f.md) | 55 | `result-track:f2ddfd70ac67336cd23d187fc0a1602f70205c5fc556781d063b9e60a4d43d8a` |
| 7 | `theorem` | [logRatioPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/logratioprimitive-hasderivat--612e8d9d423337a267a033a7.md) | 59 | `result-track:612e8d9d423337a267a033a7740b8f461452139749e14e2faf60b6fc05fa0145` |
| 8 | `theorem` | [tendsto_self_log_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/tendsto-self-log-square--3b1db96af54ffece5c96986b.md) | 68 | `result-track:3b1db96af54ffece5c96986bb379c30b3eea407d813c86316a37acff9f979f81` |
| 9 | `theorem` | [logRatioPrimitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/logratioprimitive-tendsto-zero--e385f0013176a69db9ba1582.md) | 83 | `result-track:e385f0013176a69db9ba15822bec23feee083951ec99a4fe7e3a68cc3f185f0c` |
| 10 | `theorem` | [integral_logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/integral-logratiosquare--151aef42dfa347fbfd3b9fa9.md) | 99 | `result-track:151aef42dfa347fbfd3b9fa9e97f9ea05476cce7fd33132dafb9a64384b504f6` |
| 11 | `theorem` | [logRatioSquare_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/logratiosquare-antitone--09c7d8aa11db58db3c1f394f.md) | 115 | `result-track:09c7d8aa11db58db3c1f394fd298fd66a3bdb0d02e1e440070915f7a65511d37` |
| 12 | `theorem` | [sum_logRatioSquare_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/sum-logratiosquare-le-integral--61efddc276b5c71975ad3238.md) | 124 | `result-track:61efddc276b5c71975ad3238c66c1d95ac03d32cd8963ba617400c5444394071` |
| 13 | `theorem` | [sum_logRatioSquare_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/sum-logratiosquare-le--2678d04f9981e20578c3aee8.md) | 162 | `result-track:2678d04f9981e20578c3aee84effe8fe6b316dd15665e5c4ae8dd218e8020463` |
| 14 | `def` | [mobiusQuadratureError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/mobiusquadratureerror--d314f608cef2fb6bfed87187.md) | 169 | `declaration-track:d314f608cef2fb6bfed87187cbbaa5f4b86cf830da0573708e352c161359d6e0` |
| 15 | `theorem` | [quotient_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/quotient-ge-one--e54b56735439782c2040c7ea.md) | 174 | `result-track:e54b56735439782c2040c7ea08721e36b4d92540aab26e531d62390b59b9164c` |
| 16 | `theorem` | [mobiusQuadratureError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/mobiusquadratureerror-abs-le--a22943fb8eacfb47ea98cf7c.md) | 183 | `result-track:a22943fb8eacfb47ea98cf7c48f83d2d9cd52f30245484685da00ccc78dfd488` |
| 17 | `theorem` | [mobius_prefix_eq_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/mobius-prefix-eq-integral-add-error--7cf163738eec13d834dfaa70.md) | 203 | `result-track:7cf163738eec13d834dfaa7019d4ae0cac0a856b04b8d6067c4b9723823691ac` |
| 18 | `theorem` | [mobius_prefix_integral_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Varianta28cc11340c1d8e96925c503e423ab06821b920ed43ad0a47a9cb93f0d0fc913.lean/declarations/mobius-prefix-integral-abs-le--311ff922df49d3b53ea8d0ba.md) | 215 | `result-track:311ff922df49d3b53ea8d0ba10a252bbb7b39d5b91ba084f6945d55b3c5eb74e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
