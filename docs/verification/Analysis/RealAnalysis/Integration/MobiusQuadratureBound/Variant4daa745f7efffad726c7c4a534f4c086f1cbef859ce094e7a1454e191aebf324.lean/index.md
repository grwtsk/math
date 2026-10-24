# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.MobiusQuadratureBound.Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3794d99d356d60403c7a0a3118029eb133b9631f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3794d99d356d60403c7a0a3118029eb133b9631f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.LogSquareQuadrature` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/logratiosquare--61eff540b95504d5d5e22c1c.md) | 23 | `declaration-track:61eff540b95504d5d5e22c1c0054ec93a15034771a84de22c5ea138e85cf9ace` |
| 2 | `def` | [logRatioPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/logratioprimitive--b784afbf705ad1e1198acb55.md) | 26 | `declaration-track:b784afbf705ad1e1198acb550a1b79de8da5cfac75a0bb7a452ad681e778343a` |
| 3 | `theorem` | [logRatioSquare_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/logratiosquare-nonneg--a02ec1bf56ae8f7da24880b5.md) | 29 | `result-track:a02ec1bf56ae8f7da24880b52b306e090a6eadea6793168ca5347ade0f1fe3c6` |
| 4 | `theorem` | [logRatioSquare_le_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/logratiosquare-le-rpow--e02637c2b31dd6e4e49bd56e.md) | 32 | `result-track:e02637c2b31dd6e4e49bd56ec095b76710f6352e8f9b8d5ba644bf57b5366988` |
| 5 | `theorem` | [logRatioSquare_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/logratiosquare-integrableon--0010f084e62c325c49b11c5d.md) | 50 | `result-track:0010f084e62c325c49b11c5dece91cd97234135fcf324ed3578729b81bdc1fcd` |
| 6 | `theorem` | [logRatioSquare_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/logratiosquare-intervalintegrable--568d932853bd6bbfc5a7f436.md) | 63 | `result-track:568d932853bd6bbfc5a7f4364d1857e7ff0891729d5427d5a8bb16879df4a8ee` |
| 7 | `theorem` | [logRatioPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/logratioprimitive-hasderivat--4bad8baaaa1870330eab5caf.md) | 67 | `result-track:4bad8baaaa1870330eab5caff88d573d8e9cc051abc8b878555bea2a8a8f13be` |
| 8 | `theorem` | [tendsto_self_log_square](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/tendsto-self-log-square--03ea97754339a6f2ccdddc2b.md) | 76 | `result-track:03ea97754339a6f2ccdddc2b5af0784da3243d37e0fb84fe757f30b1ba172626` |
| 9 | `theorem` | [logRatioPrimitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/logratioprimitive-tendsto-zero--081013ca6b70e3451db4de94.md) | 91 | `result-track:081013ca6b70e3451db4de946032da75203d78950904cb704659994e4d77d9a9` |
| 10 | `theorem` | [integral_logRatioSquare](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/integral-logratiosquare--e86c7155723f546eba00b6f8.md) | 107 | `result-track:e86c7155723f546eba00b6f8fa8e12f5b5b4a1f71c54c011ddf94f32548fc566` |
| 11 | `theorem` | [logRatioSquare_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/logratiosquare-antitone--708cee5b05ae37bbb56895ad.md) | 123 | `result-track:708cee5b05ae37bbb56895ad9ee4c13d5c9bde18414ac4edf3a26d90491bc704` |
| 12 | `theorem` | [sum_logRatioSquare_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/sum-logratiosquare-le-integral--b2739df3b897865c3a3d6d36.md) | 132 | `result-track:b2739df3b897865c3a3d6d3642c4a0620257a9e76f5c4719a6f806db846e2a94` |
| 13 | `theorem` | [sum_logRatioSquare_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/sum-logratiosquare-le--e6e3c27cfb715a58b79a9cba.md) | 170 | `result-track:e6e3c27cfb715a58b79a9cba038bbcac2723ff0648b14ee149b528e2551e90c5` |
| 14 | `def` | [mobiusQuadratureError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/mobiusquadratureerror--e0d3e318bf963288f6a51a6b.md) | 177 | `declaration-track:e0d3e318bf963288f6a51a6b28b5b79607df70251acf5fd783693bb19dfdd97a` |
| 15 | `theorem` | [quotient_ge_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/quotient-ge-one--fb977fd6ef889b10669d418a.md) | 182 | `result-track:fb977fd6ef889b10669d418adfb60e5b84eed457fd0f5e07c1d8ed6109234be5` |
| 16 | `theorem` | [mobiusQuadratureError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/mobiusquadratureerror-abs-le--3b8e41f2c9c81bf3acb8b442.md) | 191 | `result-track:3b8e41f2c9c81bf3acb8b442e2354bef654c3d925a6d485f2e0fb6842112b4dc` |
| 17 | `theorem` | [mobius_prefix_eq_integral_add_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/mobius-prefix-eq-integral-add-error--41d56d1f019b01d2f462111a.md) | 211 | `result-track:41d56d1f019b01d2f462111a2a8c4aea84b3d94274653cd19b6e5fe6432cf044` |
| 18 | `theorem` | [mobius_prefix_integral_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/MobiusQuadratureBound/Variant4daa745f7efffad726c7c4a534f4c086f1cbef859ce094e7a1454e191aebf324.lean/declarations/mobius-prefix-integral-abs-le--f8edf357e0bb6199c5fa335b.md) | 223 | `result-track:f8edf357e0bb6199c5fa335b47a7655d61b0374b0415a83bc5bb990bae247748` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
