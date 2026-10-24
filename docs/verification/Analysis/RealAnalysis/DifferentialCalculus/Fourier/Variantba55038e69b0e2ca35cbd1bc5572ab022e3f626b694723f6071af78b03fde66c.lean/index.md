# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Fourier.Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ef32a6da01e7b0be15871a47dd87a0a8bde446e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ef32a6da01e7b0be15871a47dd87a0a8bde446e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Distribution.SchwartzSpace.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransformDeriv` — import line 5; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Sobolev` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/instance--8c39d1dc634bd5049ec78927.md) | 11 | `declaration-track:8c39d1dc634bd5049ec7892726c0a8212fdc7e57bd3e8f3e7b8dc42d431ce768` |
| 2 | `theorem` | [nnnorm_eq_of_mem_circle](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/nnnorm-eq-of-mem-circle--edbefafbbec80031dc6ec7d2.md) | 16 | `result-track:edbefafbbec80031dc6ec7d23314bc4628910a42d85126058bb0d60cee293323` |
| 3 | `theorem` | [nnnorm_circle_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/nnnorm-circle-smul--e509838f0f870a7e210ff608.md) | 19 | `result-track:e509838f0f870a7e210ff608e3839039a4b557690d2d16fa14feecb897638c8c` |
| 4 | `def` | [e](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/e--f51b947f18d73162e68727f3.md) | 22 | `declaration-track:f51b947f18d73162e68727f389225c4faa44a7c8c2daf45c13da3c89308c3174` |
| 5 | `lemma` | [e_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/e-apply--d8963da99b84f7e60672530d.md) | 27 | `result-track:d8963da99b84f7e60672530de2a381673ba082efda461f87e0db885291d730bc` |
| 6 | `theorem` | [hasDerivAt_e](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/hasderivat-e--9880a3fd15f76be322dba1c8.md) | 29 | `result-track:9880a3fd15f76be322dba1c8ca57752fe2e11e2f354317ef6459207a31305bd6` |
| 7 | `lemma` | [fourierIntegral_deriv_aux2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/fourierintegral-deriv-aux2--0c401a1b4d88f15eea259191.md) | 36 | `result-track:0c401a1b4d88f15eea25919179b30a8efcd7ef17f5fdcbc022e749407a403213` |
| 8 | `lemma` | [F_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/f-neg--3b8f20aeff3104ff82c30048.md) | 40 | `result-track:3b8f20aeff3104ff82c300489a9b46c28bdad8ed665dd5670396ae92a92d15c5` |
| 9 | `lemma` | [F_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/f-add--766e556edc4c8dfb48763127.md) | 43 | `result-track:766e556edc4c8dfb487631277f55d1bd7b25ca6a43b9f352979f8bb9aef9159f` |
| 10 | `lemma` | [F_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/f-sub--00bdd6fb4c5c0c3741cf7204.md) | 49 | `result-track:00bdd6fb4c5c0c3741cf7204352f88629dbd349dda85e34d84defbaec8836d15` |
| 11 | `lemma` | [F_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/f-mul--c1032434d4a27ec86df93a94.md) | 53 | `result-track:c1032434d4a27ec86df93a94c1bcbe30bde50bb37c542e794ead5030afaca033` |
| 12 | `theorem` | [fourierIntegral_self_add_deriv_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/fourierintegral-self-add-deriv-deriv--e425256d62c2a50ee1f285f8.md) | 59 | `result-track:e425256d62c2a50ee1f285f8b4312b4acafc25527562d72dbd6b3498b214ba49` |
| 13 | `lemma` | [deriv_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Fourier/Variantba55038e69b0e2ca35cbd1bc5572ab022e3f626b694723f6071af78b03fde66c.lean/declarations/deriv-ofreal--8128c8126ac6cba49f5e97a6.md) | 69 | `result-track:8128c8126ac6cba49f5e97a652c3cfd4059e0d892a9be982fc66e4de472aa73c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
