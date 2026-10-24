# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative01.Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87fff762629ed040d1ca44cea9efbee622854b1b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87fff762629ed040d1ca44cea9efbee622854b1b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/realrampantiderivative--c7ab08aad04306c2606de46c.md) | 20 | `declaration-track:c7ab08aad04306c2606de46c72f35954712918055b0823b57e01de3c4f1f0a71` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/realrampantiderivative-hasderivat--cdccbddd20a72a99271f58f4.md) | 23 | `result-track:cdccbddd20a72a99271f58f4370fe477d2ff195dae08d99702a9c9cdd20606cf` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/realrampantiderivative-tendsto--e018198d399414fc8a7cd598.md) | 33 | `result-track:e018198d399414fc8a7cd5982a66bc2d803aa1b6ff45530826bc5aa90ffbd3c0` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/realramp-tail-integrable--5a00053fdec8b3dfab0b856d.md) | 46 | `result-track:5a00053fdec8b3dfab0b856dc05aea007c0349817a11aa1a58dd2dc168ec5140` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/realramp-tail-integral--6cc39e83da9fecbdc7fb7628.md) | 54 | `result-track:6cc39e83da9fecbdc7fb7628701f7a6aa1b758777e0d0ca77586e2c3896b7af8` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/zeroon-lower-integrable--9eaafd128557d617d449e9f2.md) | 61 | `result-track:9eaafd128557d617d449e9f2bb7df2bf14c4da4ada6b21e23e6f608dab7740d9` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/realramp-integrable--7e1602a1570eab1aaefe23a6.md) | 67 | `result-track:7e1602a1570eab1aaefe23a6037dc54458b00ce65b925660d05a923ab7d67665` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/realramp-integral--59701849b9978e01320bcbb7.md) | 76 | `result-track:59701849b9978e01320bcbb7e2c2619ed93712c6c022ff9799cbb543d517636a` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/complexramp-norm--cb1958c530f0999f7395b251.md) | 93 | `result-track:cb1958c530f0999f7395b251e635ba068e1c9514db6e5dca671b562adce9b774` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/actualsinglerieszramp-integrable--232ae6432ffe77d46a14df93.md) | 102 | `result-track:232ae6432ffe77d46a14df9375571cb4767389a83cbf0219e3b66b5b19ba4eeb` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/actualsinglerieszramp-integral-norm--7c2ca2f9640541da40efefe2.md) | 112 | `result-track:7c2ca2f9640541da40efefe2dc63f06d8f557f5e96094faa60ac2a29c63db372` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/complexrampantiderivative--05d3992865043a60191d8c2b.md) | 118 | `declaration-track:05d3992865043a60191d8c2badf9c0074ef6ac284b502258f123f2f23ba08570` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/complexrampantiderivative-hasderivat--76007d27cceed260d406abab.md) | 121 | `result-track:76007d27cceed260d406abab7ae908ecf45eb4afabe9693cb3c484c7f4a81613` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/complex-exp-monomial-zero--4b8f5b06252e9965cd0dc57a.md) | 133 | `result-track:4b8f5b06252e9965cd0dc57a5e2aa28d4193b8e7e41dd72e4cc07ec18d498ba0` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/complexrampantiderivative-tendsto--2349700bf4bf0e063b2f3626.md) | 147 | `result-track:2349700bf4bf0e063b2f3626109c2bf7fb01098f3a471143c3732ef31ff78fd8` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative01/Variant57c51fc69697cb6a1eeb9d3fb2d336e1d575265db8393a27981d2434b24a7698.lean/declarations/actualsinglerieszramp-integral--55b86a0cb49c2212a4949e6f.md) | 161 | `result-track:55b86a0cb49c2212a4949e6f33531496754908ff81fb4e37ca18d74023508c14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
