# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLineExponential.Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bea733cf2111dfde32bfe4a33e26d41414c6b07",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bea733cf2111dfde32bfe4a33e26d41414c6b07`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L2Space` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfLineMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/halflinemeasure--c45e6cf002e0b7a0034b7a12.md) | 12 | `declaration-track:c45e6cf002e0b7a0034b7a12ca96229420356af43d5a3ea4fdfa5a74422d7602` |
| 2 | `abbrev` | [H](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/h--d34002970effa0e1b787720c.md) | 15 | `declaration-track:d34002970effa0e1b787720c27c4fa03ab9985bf4887f6f8a4855722f0b16381` |
| 3 | `def` | [exponentialFunction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialfunction--0e29f6fcc89870e09f3686e0.md) | 18 | `declaration-track:0e29f6fcc89870e09f3686e049d82c20f2643475cf5fc0a7b1196d7034d9fc29` |
| 4 | `theorem` | [exponentialFunction_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialfunction-continuous--db6162ca25de2468ad85df4d.md) | 20 | `result-track:db6162ca25de2468ad85df4d0fd589f370d0d35b386bab81f7736701d6fc655a` |
| 5 | `theorem` | [exponentialFunction_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialfunction-integrable--fe1e49792926757f9d8c4f66.md) | 24 | `result-track:fe1e49792926757f9d8c4f66596b589eb9cdd36e52fe6049614002936ec43fac` |
| 6 | `theorem` | [exponentialFunction_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialfunction-norm-sq--c55e632140c4e46d9f3a85d3.md) | 28 | `result-track:c55e632140c4e46d9f3a85d38392d1bd172c375c325bcb6acece6124d41ca395` |
| 7 | `theorem` | [exponentialFunction_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialfunction-sq-integrable--58cf39068b86c9818d1f002d.md) | 37 | `result-track:58cf39068b86c9818d1f002d2d2d329b06765e7c1b9ce754ccb3c089e5cda050` |
| 8 | `theorem` | [exponentialFunction_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialfunction-memlp--43e8095e3abf82f827a333f6.md) | 42 | `result-track:43e8095e3abf82f827a333f63763f2b30d43e71e03db9ad80ad895d75757080c` |
| 9 | `theorem` | [exponentialFunction_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialfunction-sq-integral--ec45212f2f8a535078122c04.md) | 48 | `result-track:ec45212f2f8a535078122c04be5a6af05832123eadbddab8995fb91aeab45b0a` |
| 10 | `def` | [exponentialVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialvector--4aa5281970800575c2688155.md) | 55 | `declaration-track:4aa5281970800575c2688155e3d632cc52dded033abf277c20668eba76cf227c` |
| 11 | `theorem` | [exponentialVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialvector-ae--75c87ef3a2a53450670080b8.md) | 58 | `result-track:75c87ef3a2a53450670080b83a71e385d444765e67003e9bc040071fefe17747` |
| 12 | `theorem` | [pointwise_inner_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/pointwise-inner-exponential--eefb80769998249911912561.md) | 62 | `result-track:eefb8076999824991191256106736400d02b0f33256d08f53010ced483755dc3` |
| 13 | `theorem` | [inner_exponential_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/inner-exponential-integrable--2d106dfb17ad408fc012cfa3.md) | 72 | `result-track:2d106dfb17ad408fc012cfa32b7643cb7cfcf6eb735913fe16ea0359e1111295` |
| 14 | `theorem` | [inner_exponential_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/inner-exponential-integral--f003dadffbb46506df4ebeab.md) | 78 | `result-track:f003dadffbb46506df4ebeab6f88a498d1c2691586e1cb28061fd78d1d63ce78` |
| 15 | `theorem` | [inner_exponentialVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/inner-exponentialvector--a73b555ee4fdd555f2c0baac.md) | 87 | `result-track:a73b555ee4fdd555f2c0baace97e371f2f074209a26689241d5ad4988f2fdb35` |
| 16 | `theorem` | [exponentialVector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialvector-norm-sq--95927331248d61e10e218cf5.md) | 98 | `result-track:95927331248d61e10e218cf5376bcf2fdea61ea1b1e2032e5384345e96e52312` |
| 17 | `theorem` | [exponentialVector_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/exponentialvector-ne-zero--a7398049596e09cf9bd37325.md) | 109 | `result-track:a7398049596e09cf9bd373253510cd636cbd3721c46830c4e899b6991d6d1c07` |
| 18 | `def` | [referenceVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/referencevector--caa8ed3a7f989df71480d027.md) | 118 | `declaration-track:caa8ed3a7f989df71480d02780a8c73781c403cbffe43af486f05a14312f1864` |
| 19 | `theorem` | [referenceVector_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/referencevector-ae--747efeaeddd9d65c5defc869.md) | 120 | `result-track:747efeaeddd9d65c5defc86915c546e8b1eb25201cb74ccc645be48039b2c4ca` |
| 20 | `theorem` | [referenceVector_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/referencevector-norm-sq--731442bb647e4000883711c5.md) | 126 | `result-track:731442bb647e4000883711c5195ae5740b9f91dd38f0fd4f5ec6e586f68b3c86` |
| 21 | `theorem` | [inner_reference_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/inner-reference-exponential--caa2aa9ff5b959275a0122e6.md) | 129 | `result-track:caa2aa9ff5b959275a0122e6b66f98131222b346854169f1118b0a50cfa2747e` |
| 22 | `theorem` | [inner_exponential_reference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/inner-exponential-reference--dc5584fb1b051f8f50a4e1a1.md) | 133 | `result-track:dc5584fb1b051f8f50a4e1a1f5e17862cf783b03af769cf410da9491185b673f` |
| 23 | `theorem` | [norm_sq_inner_reference_exponential](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/norm-sq-inner-reference-exponential--df5849b20a8b05534f33c734.md) | 137 | `result-track:df5849b20a8b05534f33c73445681d2e5fe89b20b1e53bbaea8c95e2b2fabdf0` |
| 24 | `theorem` | [reference_projection_coefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/reference-projection-coefficient--c40023d1c2aef43e4ab8628f.md) | 145 | `result-track:c40023d1c2aef43e4ab8628fd2195a76d88606a0b2d7598c6a00ac5e0923ac05` |
| 25 | `theorem` | [one_add_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/one-add-ne-zero--050c883b846084b1eac8dc50.md) | 152 | `result-track:050c883b846084b1eac8dc50edc0bc85228fdf79a1036106f56f6c94df4b1285` |
| 26 | `theorem` | [reference_projection_coefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLineExponential/Varianta268726280168750ef8e7f0023724f1b5ec0d94702631312a1cf06a4cb86357d.lean/declarations/reference-projection-coefficient-pos--c5253653544b06fb2bceecf4.md) | 158 | `result-track:c5253653544b06fb2bceecf4f71f0dba8ee556cccd7c00f73b1f3aae050bfb9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
