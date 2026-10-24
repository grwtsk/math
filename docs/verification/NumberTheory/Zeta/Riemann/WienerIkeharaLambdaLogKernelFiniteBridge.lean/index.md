# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelFiniteBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac9a6976c068cb036133ffedbe789e3057e9c482",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac9a6976c068cb036133ffedbe789e3057e9c482`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaFiniteAbelMajorization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaFiniteAbelMajorization.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wienerShiftedLambda](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienershiftedlambda--21736cb7da801419a33b2b16.md) | 63 | `declaration-track:21736cb7da801419a33b2b16782676ba42818380d0fe0454d4b849e107183853` |
| 2 | `theorem` | [wienerShiftedLambda_prefix_eq_psi](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienershiftedlambda-prefix-eq-psi--a6bb8796e773b5ab59deaf9a.md) | 69 | `result-track:a6bb8796e773b5ab59deaf9abb09ebfdc80b67eded20eed5fe415c853bd30037` |
| 3 | `theorem` | [wienerShiftedLambda_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienershiftedlambda-nonnegative--376a7fcac31c9e5b13592178.md) | 99 | `result-track:376a7fcac31c9e5b1359217816c74159fffb04f5664a68586614a59bd6e9c46c` |
| 4 | `theorem` | [wienerShiftedLambda_prefix_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienershiftedlambda-prefix-le--0c4c53f71f6d722e418ea53a.md) | 105 | `result-track:0c4c53f71f6d722e418ea53af9d935081db47dae13283387ecc2353bf04fbab9` |
| 5 | `def` | [wienerLogKernelC](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerlogkernelc--dc677b81fbc1b9e2b1f1ea4c.md) | 113 | `declaration-track:dc677b81fbc1b9e2b1f1ea4c2da602a70ae91cd76dc7cedfde4393f1a5bd5bea` |
| 6 | `theorem` | [wienerLogKernelC_gt_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerlogkernelc-gt-one--47266042a9e5d5d4fa586ec2.md) | 115 | `result-track:47266042a9e5d5d4fa586ec279fa6075a1581aaefecf475413df82d700996782` |
| 7 | `def` | [wienerLogKernelDen](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerlogkernelden--19af7fa39918475483780615.md) | 121 | `declaration-track:19af7fa39918475483780615c4f717b9824533968e9519ee2dd4dfcc7690fcaa` |
| 8 | `theorem` | [wienerLogKernelDen_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerlogkernelden-hasderivat--30944a1b8f47e60f6e1f64bb.md) | 126 | `result-track:30944a1b8f47e60f6e1f64bbf6c76b68797a55172faea640d7dc82460ca1a683` |
| 9 | `theorem` | [wienerLogKernelDen_derivative_factor_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerlogkernelden-derivative-factor-pos--5c45541c8753a1c219019c78.md) | 147 | `result-track:5c45541c8753a1c219019c783442584a62ca7b4af12d370a15f7ce498c4cb3cf` |
| 10 | `theorem` | [wienerLogKernelDen_strictMono](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerlogkernelden-strictmono--d61f65787f21bc34229ef170.md) | 170 | `result-track:d61f65787f21bc34229ef170e9e921163314f5bd499ce7d32eafae13a527cdb5` |
| 11 | `theorem` | [wienerLogKernelDen_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerlogkernelden-pos--978428a088fd59da63da0d57.md) | 181 | `result-track:978428a088fd59da63da0d57bbba1896b8f57616a7c3c5b45c5f6ee6c7586715` |
| 12 | `def` | [wienerRealLogWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerreallogweight--47fa6fac2c466892cd2438f1.md) | 188 | `declaration-track:47fa6fac2c466892cd2438f1adbc3d1e82390865104454c62b8f83993a10633f` |
| 13 | `theorem` | [wienerRealLogWeight_eq_den_inv](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerreallogweight-eq-den-inv--833e788ba68828e584db39cd.md) | 195 | `result-track:833e788ba68828e584db39cd3cbee08bb0cbec5c799b158b89c75e269261ba25` |
| 14 | `theorem` | [wienerRealLogWeight_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerreallogweight-pos--d79dc418e6493152f14b5b5e.md) | 209 | `result-track:d79dc418e6493152f14b5b5e5639a4dff3bfdfc8e2e4900f3df8043b30075dd7` |
| 15 | `theorem` | [wienerRealLogWeight_antitoneOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerreallogweight-antitoneon--1fc2cce9ec43976836e61be2.md) | 217 | `result-track:1fc2cce9ec43976836e61be240608538861e15501d49e2582c6f3daa4bbd800d` |
| 16 | `def` | [wienerShiftedLogWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienershiftedlogweight--91cd340cd0cf980f0479619c.md) | 244 | `declaration-track:91cd340cd0cf980f0479619c13a5b044b9a5b017d1e6c22bc7dc6bcc7239c0b0` |
| 17 | `theorem` | [wienerShiftedLogWeight_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienershiftedlogweight-nonnegative--cc7c6df20a10bdc823976f17.md) | 247 | `result-track:cc7c6df20a10bdc823976f177cc3ab08cdc27f5fe55cfdc4d07b312ab0ef020a` |
| 18 | `theorem` | [wienerShiftedLogWeight_antitone](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienershiftedlogweight-antitone--c82d750d67a1da65c476db98.md) | 253 | `result-track:c82d750d67a1da65c476db9814f9bc8a0357fd53d82bbfe7de8d483de94a106e` |
| 19 | `theorem` | [wienerChebyConstant_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerchebyconstant-nonnegative--19eba3f85bad8254c02c9463.md) | 264 | `result-track:19eba3f85bad8254c02c9463d4e4985156cb07ec997d387ae598de30b5017439` |
| 20 | `theorem` | [wienerLambdaLogKernel_finite_majorization](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelFiniteBridge.lean/declarations/wienerlambdalogkernel-finite-majorization--a681d0453b4f6cee603c9a31.md) | 274 | `result-track:a681d0453b4f6cee603c9a31409a1cc5ab00d3ccf3d2ada6c5782ec80679d7d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
