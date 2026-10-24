# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative07.Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbc575df4ecd490bd5571225d55ea8dbb2f44409",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbc575df4ecd490bd5571225d55ea8dbb2f44409`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/realrampantiderivative--a9532071db80d65138daf266.md) | 29 | `declaration-track:a9532071db80d65138daf266c9a6703eea1acfd663189e7d470bda76159d2e85` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/realrampantiderivative-hasderivat--65d49ea583c7df65026c093e.md) | 32 | `result-track:65d49ea583c7df65026c093ec0f73dbfe2c4c7697e5d5778d061e79f278894ee` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/realrampantiderivative-tendsto--10f0a629162f522736b150fa.md) | 42 | `result-track:10f0a629162f522736b150fa77cef9ea0aeddb0ce27623725b8ea75ee59ba91b` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/realramp-tail-integrable--bdb39d2070b858e65bf1e35f.md) | 56 | `result-track:bdb39d2070b858e65bf1e35ff01dba32e3fea9ba689f6971fd2f8b0a8337319c` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/realramp-tail-integral--f63993205a035c9550fa632c.md) | 64 | `result-track:f63993205a035c9550fa632ca395649c2537c24bbe02001122873128c78e1760` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/zeroon-lower-integrable--fba57d453c09d78c8b0e872e.md) | 71 | `result-track:fba57d453c09d78c8b0e872e4f3474d9b94ffc2cd6ca5477e4ee4aeae72af2b8` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/realramp-integrable--1b9d3254dce2c39545afd1f8.md) | 77 | `result-track:1b9d3254dce2c39545afd1f8e502d111641a3f3c779a97cec294730f4c32ffc7` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/realramp-integral--c792089d2348561490dd88c4.md) | 87 | `result-track:c792089d2348561490dd88c4f8d4c7d7ad2b7274381a738565d2854f5293f339` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/complexramp-norm--c8aa3b4815d1a36ae6a3029b.md) | 105 | `result-track:c8aa3b4815d1a36ae6a3029b10e573d472cead0f3d54cbc19ea6d325d06e4380` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualsinglerieszramp-integrable--e06f0fc14ead7da8db92dc2a.md) | 114 | `result-track:e06f0fc14ead7da8db92dc2a0c056d52708814ac0b16fccc1a62a865f3933f26` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualsinglerieszramp-integral-norm--19d2597efb0e92a9fc3ccdaf.md) | 124 | `result-track:19d2597efb0e92a9fc3ccdafa70b246ab0ca0059b540b3452f3c2e23cafb2a53` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/complexrampantiderivative--0ae234a8837ce8e69017a582.md) | 130 | `declaration-track:0ae234a8837ce8e69017a582b9cd465d7d4d7c774605648845ddc9338ab72430` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/complexrampantiderivative-hasderivat--d0b08418ab2ab856a185a691.md) | 133 | `result-track:d0b08418ab2ab856a185a691df2a48efd000eee976d45b48606240d72b3ede97` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/complex-exp-monomial-zero--c42421ec266bb41651b6f709.md) | 149 | `result-track:c42421ec266bb41651b6f709f7f27dc5d7ea6f5175a4b759b353449c7aa096a6` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/complexrampantiderivative-tendsto--45359d3a14f253173c443c5f.md) | 163 | `result-track:45359d3a14f253173c443c5f0cd8acf22bb03e8cacb25f37b265cae41f013741` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualsinglerieszramp-integral--7151f9cd93e1466862979224.md) | 177 | `result-track:7151f9cd93e14668629792244f22805c4169adbb387b7468e69fee803c011a91` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszlaplaceatom--c5a2cafce0464d83f2309a80.md) | 210 | `declaration-track:c5a2cafce0464d83f2309a80f5fb7b831cf10d601bde75c6ecbb6f2072deb076` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualmangoldtrieszlaplace--c8916ffdc8a6d5af090fd4d2.md) | 215 | `declaration-track:c8916ffdc8a6d5af090fd4d2c67d26f396dbaa43e59fa580b16e47b5615bb227` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/atom-factor--c9cfb6637e7cd0fdf9a375e4.md) | 219 | `result-track:c9cfb6637e7cd0fdf9a375e4a14fb550e62dddef4f272cbf5a718914cadfbe4d` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszlaplaceatom-integrable--4dea73e4e912be021051fb47.md) | 228 | `result-track:4dea73e4e912be021051fb472b91957b989e7d96772fe42a671db453db923a40` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszlaplaceatom-integral-norm--eb6b57633ec7560a0fa096c6.md) | 247 | `result-track:eb6b57633ec7560a0fa096c692dbbfe2c5e35fa31e72ccd9f45ce768ff030a57` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--6f12017c97e043ad31d920f5.md) | 282 | `result-track:6f12017c97e043ad31d920f5feca376101fc69baaf2bdea0d79bf80fe6f89b3d` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszlaplaceatoms-tsum--88ea674a650b92c5244aef22.md) | 293 | `result-track:88ea674a650b92c5244aef22e01d136ec4806c3e6aaa8318457e36d4e7d3d48e` |
| 24 | `theorem` | [actualRieszPrimitive_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszprimitive-continuous--cb1a2cdc6bb77d5b4c1d4ac4.md) | 318 | `result-track:cb1a2cdc6bb77d5b4c1d4ac46888cf3ed29e40920e36be75328d615d89909338` |
| 25 | `theorem` | [actualRieszLaplaceAtoms_tsum_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszlaplaceatoms-tsum-integrable--df6961ba62e1783f648681aa.md) | 337 | `result-track:df6961ba62e1783f648681aa2bdf9110fd00aea075dd96205e2a5f83107a51fc` |
| 26 | `theorem` | [actualRieszLaplaceAtoms_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszlaplaceatoms-integral-tsum--f41a8453ee449eb46466bf46.md) | 367 | `result-track:f41a8453ee449eb46466bf4611128c052665f5917e790b487dcb6c09770af7f2` |
| 27 | `theorem` | [actualRieszLaplaceAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszlaplaceatom-integral--db85f96aa67473aacd937ee7.md) | 375 | `result-track:db85f96aa67473aacd937ee7cdda76f03a7273e81c540ad44f504d3606958c3c` |
| 28 | `theorem` | [continuousRamp_weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/continuousramp-weight-eq--abe7b446c0a29ddd9b1a5ffb.md) | 400 | `result-track:abe7b446c0a29ddd9b1a5ffbd13b7eee4dff7ca0f505a93fa5bfdbf0460abac0` |
| 29 | `theorem` | [actualRieszContinuousRamp_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszcontinuousramp-laplace-integrable--d5f0d459a066dc676eb237ad.md) | 412 | `result-track:d5f0d459a066dc676eb237adf84f7f9dcb12953096cb1fe6c478e375c93ce0e6` |
| 30 | `theorem` | [actualRieszContinuousRamp_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualrieszcontinuousramp-laplace-integral--a676ce3876de9868e14976c8.md) | 429 | `result-track:a676ce3876de9868e14976c889925bbbe1724b774f23e0244b07ab89eadfa863` |
| 31 | `theorem` | [actualH_weight_eq_sum_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualh-weight-eq-sum-sub--e318b8438c7befbbd861c834.md) | 466 | `result-track:e318b8438c7befbbd861c8340c731f4bbac852308e3a2f245b316b117ac28d08` |
| 32 | `theorem` | [actualMangoldtRieszLaplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualmangoldtrieszlaplace-integrable--9f4c6d2ee6ddc1b24a7cc338.md) | 475 | `result-track:9f4c6d2ee6ddc1b24a7cc33877a9a1905f675742401ee43afcd540395b87b5e8` |
| 33 | `theorem` | [actualMangoldtRieszLaplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualmangoldtrieszlaplace-eq-lseries--b610321b5fafc9ab5f40d118.md) | 483 | `result-track:b610321b5fafc9ab5f40d11862a519cc380430fb16d8cd4a87217d13ee1a850e` |
| 34 | `theorem` | [actualMangoldtRieszLaplace_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative07/Variantcb8ac3acc4f7aa3b2b662f1523b484cabb96c68746f5e5eec089e3b576d82522.lean/declarations/actualmangoldtrieszlaplace-eq-logderiv--254eaf3cad1ccc627ff076d4.md) | 498 | `result-track:254eaf3cad1ccc627ff076d4c43a7a0bfc4dbef49e5fee1dc853edde3ac788b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
