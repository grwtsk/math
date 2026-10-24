# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bd3f098495ee151308ca2646a30ac7fd566341f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bd3f098495ee151308ca2646a30ac7fd566341f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stronglyMeasurable_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/stronglymeasurable-thetatail--e762f81d1c6f1f9b02369035.md) | 30 | `result-track:e762f81d1c6f1f9b02369035a1d328b1ea66e15b3acc90552e4d9751ba76906d` |
| 2 | `theorem` | [thetaTail_integrand_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-integrand-nonnegative--d9b5862626f57eef5bb019f5.md) | 48 | `result-track:d9b5862626f57eef5bb019f59875adb4a0149a4e1e55111ebffbe62bf8617e3b` |
| 3 | `theorem` | [thetaTail_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-nonnegative--37cabab8af5158ebdafcb923.md) | 56 | `result-track:37cabab8af5158ebdafcb923b2530e5c7a1f21ef2298cd6c74ba22eb36698698` |
| 4 | `theorem` | [thetaTail_integrand_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-integrand-le--2628b2bb3868d1f606fbc659.md) | 65 | `result-track:2628b2bb3868d1f606fbc659e09169b3a5fed853be68c4f01dc628caed7c9fd6` |
| 5 | `theorem` | [thetaTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-integrable--f8525715c71f8c10042db900.md) | 82 | `result-track:f8525715c71f8c10042db90053d85871073f06f0d135f97f340e195e4265c56e` |
| 6 | `theorem` | [thetaTail_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-positive--e6dc0dc5e98d175cd7579116.md) | 96 | `result-track:e6dc0dc5e98d175cd757911670e1c78c5cd2da6bccf3605bacf156c238974e5d` |
| 7 | `theorem` | [thetaTail_le_exp_neg_three_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-le-exp-neg-three-mul--894c9ada775785b6cea12f2a.md) | 113 | `result-track:894c9ada775785b6cea12f2a43952d49b79c65e2ec8a445dcfd4f32bed7f66cb` |
| 8 | `theorem` | [thetaTail_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-tendsto-attop--1de54c568333f597f057bec4.md) | 134 | `result-track:1de54c568333f597f057bec458b9b5fd9e204093c12a75512aa2d5354cc51af4` |
| 9 | `theorem` | [thetaTail_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-integrableon--196754713cc3c46bddb2f162.md) | 147 | `result-track:196754713cc3c46bddb2f162b17ef4a15e21d696cd012ce9d06f09cae65d2f2f` |
| 10 | `theorem` | [thetaTail_mul_evenBasis_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-mul-evenbasis-le--c1729a77817b75dc845c5305.md) | 157 | `result-track:c1729a77817b75dc845c5305aaac0ca09bf695acb95b5cc20fc5f9caed0b9f72` |
| 11 | `theorem` | [thetaTail_mul_evenBasis_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-mul-evenbasis-integrable--3293ef1ab672db15ac29662a.md) | 168 | `result-track:3293ef1ab672db15ac29662aa54ebf15904183056bb90f1081f5278a300d805a` |
| 12 | `theorem` | [thetaTail_mul_evenBasis_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-mul-evenbasis-tendsto-attop--ee72ee518e32be2c95be7d3d.md) | 182 | `result-track:ee72ee518e32be2c95be7d3deeff35a5578e9ec1a21db5afa436f1629c072b58` |
| 13 | `theorem` | [thetaPhi_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetaphi-integrableon--cd10f43d5f055872f5daffd7.md) | 193 | `result-track:cd10f43d5f055872f5daffd74a1e6eb1886398eeadcf31836bf693da94a00ef3` |
| 14 | `theorem` | [thetaPhi_integrableOn_Ici](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetaphi-integrableon-ici--48465d39739c327ff6a6affa.md) | 197 | `result-track:48465d39739c327ff6a6affaea71425242113d7b6437c4254949c5d2a6b6e8e4` |
| 15 | `theorem` | [thetaPhi_mul_evenBasis_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetaphi-mul-evenbasis-integrable--421b9b236bdcdde00a061e34.md) | 208 | `result-track:421b9b236bdcdde00a061e345e4668c86b9583e84153822bcc3f25a7fffdc664` |
| 16 | `theorem` | [thetaPhi_mul_evenBasis_integral_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetaphi-mul-evenbasis-integral-positive--3e03d23cf11d9c401e237252.md) | 227 | `result-track:3e03d23cf11d9c401e237252c059a1a14638e6e41d54dd61e7a2ed2e138fdd97` |
| 17 | `theorem` | [coefficient_positive_of_thetaCoefficientFormula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/coefficient-positive-of-thetacoefficientformula--da0d44bbf9a14e6724d8337b.md) | 245 | `result-track:da0d44bbf9a14e6724d8337b956480475382955d59f18d89e5772f682b4a8e49` |
| 18 | `theorem` | [thetaTail_one_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-one-eq-sub--cf2617412f65f5b38bf55e3b.md) | 251 | `result-track:cf2617412f65f5b38bf55e3b395996ba8f54280aaf50167b74a9edd662e36feb` |
| 19 | `theorem` | [hasDerivAt_thetaTail_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/hasderivat-thetatail-one--d778b6da6125db8c19b9ccb4.md) | 259 | `result-track:d778b6da6125db8c19b9ccb4dd33bb2f592450239d59a6f61b58f07a51b2e6b2` |
| 20 | `theorem` | [thetaTail_one_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatail-one-tendsto-attop--287d9ba38ca526dce8f72696.md) | 270 | `result-track:287d9ba38ca526dce8f72696354856a8eb5052d74a17957f0b294180e767266d` |
| 21 | `theorem` | [thetaTailSignRegular_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatailsignregular-zero--700b1064830e7c7a7138387f.md) | 276 | `result-track:700b1064830e7c7a7138387f02e5102baa063a6152ff2756dbf875faee1230f2` |
| 22 | `theorem` | [thetaTailSignRegular_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variantb613aed38200825f7d3cb4a38283d9a19b43fc71159223b135dd58214287a1c0.lean/declarations/thetatailsignregular-one--8bf619c92edae68eddf59346.md) | 283 | `result-track:8bf619c92edae68eddf59346dee7704eb50a021ff780a8473101e9d1bfa598ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
