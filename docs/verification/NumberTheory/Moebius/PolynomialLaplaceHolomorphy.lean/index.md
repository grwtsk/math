# Verification target: GRWTSK.NumberTheory.Moebius.PolynomialLaplaceHolomorphy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91474c5dd6b67a14490077cc41027d60eecc8ab1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91474c5dd6b67a14490077cc41027d60eecc8ab1`.

Source path: `GRWTSK/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralContinuity`](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralContinuity.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polynomialExponential](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/polynomialexponential--c08256c28127ae8a3199ec73.md) | 29 | `declaration-track:c08256c28127ae8a3199ec7362792e5864aa991c0e7a3b4819a2e16588806e40` |
| 2 | `theorem` | [polynomial_exponential_continuousOn](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/polynomial-exponential-continuouson--04a01b05127219ff75dc9e7e.md) | 31 | `result-track:04a01b05127219ff75dc9e7eb2a54eb33e956cda4a202e090ff8c62f82ebe935` |
| 3 | `theorem` | [polynomial_exponential_integrable](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/polynomial-exponential-integrable--c13d3812a0ae9d2e20ff6769.md) | 41 | `result-track:c13d3812a0ae9d2e20ff6769f18f9237d9de5784cfd587cb9b7f731f1fbe56c7` |
| 4 | `def` | [pickupLaplaceIntegrand](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/pickuplaplaceintegrand--bec523c439cff75745223697.md) | 73 | `declaration-track:bec523c439cff75745223697a2c0a734c8145306b7008a94b6b6826e684cb837` |
| 5 | `def` | [pickupLaplace](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/pickuplaplace--c899647feed86ea9406783e0.md) | 77 | `declaration-track:c899647feed86ea9406783e07375ab65065c9a4e1a5aa01c409d9cfdf428fe9f` |
| 6 | `theorem` | [pickup_laplace_integrand_continuous](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/pickup-laplace-integrand-continuous--217e8eab49a4d0bb5120515c.md) | 79 | `result-track:217e8eab49a4d0bb5120515c54c9800309ce29706633296216a02d9cce7fa182` |
| 7 | `theorem` | [norm_pickup_laplace_integrand](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/norm-pickup-laplace-integrand--9fc293ca03a3f59ef0d183b1.md) | 85 | `result-track:9fc293ca03a3f59ef0d183b166e53f8533e4c616a7d366f2c2da7427c5113165` |
| 8 | `theorem` | [pickup_laplace_integrand_bound](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/pickup-laplace-integrand-bound--0948061825669d454bf91cb4.md) | 91 | `result-track:0948061825669d454bf91cb470ab5c53f47cded0c00c64cbc5b72e43caa0aa7c` |
| 9 | `theorem` | [pickup_laplace_integrable_of_bound](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/pickup-laplace-integrable-of-bound--467f0d06da2f23bb5072bc5f.md) | 107 | `result-track:467f0d06da2f23bb5072bc5f819aa9e33d7327c2a6a32406f751a6af0e6be6de` |
| 10 | `theorem` | [whole_pickup_poly_laplace_integrable](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/whole-pickup-poly-laplace-integrable--458cab01fd80602d5d339d39.md) | 116 | `result-track:458cab01fd80602d5d339d39c416dab06d64cd9e4ac9fb3357316106d5f799b7` |
| 11 | `def` | [pickupLaplaceDerivativeIntegrand](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/pickuplaplacederivativeintegrand--c4d5d98cae30bc419a3fafa6.md) | 121 | `declaration-track:c4d5d98cae30bc419a3fafa679b4c836ec24e4a1d4a6ebdbf961038b1428b1da` |
| 12 | `theorem` | [pickup_laplace_derivative_integrand_continuous](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/pickup-laplace-derivative-integrand-continuous--6acf785ccb3a169efc0eceaa.md) | 124 | `result-track:6acf785ccb3a169efc0eceaa60c4cf08b7e5af8bcd39a3bc5b6fb17b41eff010` |
| 13 | `theorem` | [pickup_laplace_integrand_hasDerivAt](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/pickup-laplace-integrand-hasderivat--1966919468de8650c3b1b2ac.md) | 128 | `result-track:1966919468de8650c3b1b2ac74b6b905e2c904014389dbeef1f61db4366adac9` |
| 14 | `theorem` | [pickup_laplace_derivative_integrand_bound](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/pickup-laplace-derivative-integrand-bound--a3066039d04a5d0885080880.md) | 137 | `result-track:a3066039d04a5d088508088013f9d7c48a35939cf85f5be43e4c6caad9fc747d` |
| 15 | `theorem` | [pickup_laplace_hasDerivAt_of_bound](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/pickup-laplace-hasderivat-of-bound--bc02dddba23f0036a254e5c0.md) | 158 | `result-track:bc02dddba23f0036a254e5c02ffc69d8f902841cb692310aa52c659589064910` |
| 16 | `theorem` | [whole_pickup_poly_laplace_hasDerivAt](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/whole-pickup-poly-laplace-hasderivat--ab5a251cc6da630581bbccb9.md) | 191 | `result-track:ab5a251cc6da630581bbccb98d0581f43f47d80b7f19c5f25432c05e82275b8a` |
| 17 | `theorem` | [whole_pickup_poly_laplace_holomorphic](../../../../mathematics/NumberTheory/Moebius/PolynomialLaplaceHolomorphy.lean/declarations/whole-pickup-poly-laplace-holomorphic--299f1e6dd9c812d7aa292319.md) | 198 | `result-track:299f1e6dd9c812d7aa292319db4dc6e3345078d2388370a1fe19f07f0fe6797c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
