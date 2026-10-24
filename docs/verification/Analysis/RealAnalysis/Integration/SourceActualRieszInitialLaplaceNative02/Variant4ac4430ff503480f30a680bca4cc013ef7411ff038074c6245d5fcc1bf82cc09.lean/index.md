# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative02.Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0117390235acc5e54513799708557c06028323c9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0117390235acc5e54513799708557c06028323c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean.json)

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
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/realrampantiderivative--3432a2dfca09c4e20e04c6a0.md) | 20 | `declaration-track:3432a2dfca09c4e20e04c6a008dd7fdf669da12ca7842a36e48707e32b287a17` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/realrampantiderivative-hasderivat--dfa781a9dc68bc7cc5d1b143.md) | 23 | `result-track:dfa781a9dc68bc7cc5d1b14369320c7d141fc527a135a68ed368dcbca0354d13` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/realrampantiderivative-tendsto--73b8ab972c13e9ed618d10bc.md) | 33 | `result-track:73b8ab972c13e9ed618d10bc0a7be5ba358760484410c826c0c75bd6392a28ab` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/realramp-tail-integrable--31743019ad3176d3d1c795d7.md) | 47 | `result-track:31743019ad3176d3d1c795d7cf3deb0d9f895c52cbf06111b654e90d62df44a2` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/realramp-tail-integral--ca041a1903055b90317933fb.md) | 55 | `result-track:ca041a1903055b90317933fb60c3ab954b97d76ad5f98ee693057a5d90ec512b` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/zeroon-lower-integrable--c8ddd36926afc89783a47c19.md) | 62 | `result-track:c8ddd36926afc89783a47c19abfebee1a1a09e5d20031cb5fbae781e63747692` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/realramp-integrable--772a92a2490ce503ca42c400.md) | 68 | `result-track:772a92a2490ce503ca42c4005944c8636fbca762f1da6570d3a0b49148f0278d` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/realramp-integral--e0d19212dd3beeb5656dd4cb.md) | 78 | `result-track:e0d19212dd3beeb5656dd4cb01b316ec105d0e08cf995506071826b1b629c1fc` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/complexramp-norm--f10af0953a8a448d2f204a5f.md) | 96 | `result-track:f10af0953a8a448d2f204a5f56e1e18b99ff8f51f2bf66b8f85bba62a251b457` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/actualsinglerieszramp-integrable--7e657722a99b685dd0024c85.md) | 105 | `result-track:7e657722a99b685dd0024c85f9d469fee888e80665daf74125594e83eb985366` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/actualsinglerieszramp-integral-norm--987dd39e9c34ead726c9261d.md) | 115 | `result-track:987dd39e9c34ead726c9261d0e5915497104f77672a2c5576049de32d7cffe60` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/complexrampantiderivative--1f7b23effe182a033e3c161d.md) | 121 | `declaration-track:1f7b23effe182a033e3c161d87379e59d7366c4c366227cbacdf88fc324e53c0` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/complexrampantiderivative-hasderivat--eeb1ba4dfa1f2dd1526cfa81.md) | 124 | `result-track:eeb1ba4dfa1f2dd1526cfa819db78784390d5db27a8fb0b1f4565d1f5fd5d45a` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/complex-exp-monomial-zero--f46fa7b52ec9d7829f9f3139.md) | 136 | `result-track:f46fa7b52ec9d7829f9f3139f89d88d6e254d788fce5d4daa09df4ee877b7114` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/complexrampantiderivative-tendsto--3007be7ce55a18ee136bf3ab.md) | 150 | `result-track:3007be7ce55a18ee136bf3abdc5ff7e37095288eb37ff27685aa93510ab77f23` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative02/Variant4ac4430ff503480f30a680bca4cc013ef7411ff038074c6245d5fcc1bf82cc09.lean/declarations/actualsinglerieszramp-integral--60d18e87f3cd8399e8f494b7.md) | 164 | `result-track:60d18e87f3cd8399e8f494b73358692bfd10d8e9eaeaa11c8cc825c9a6861da7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
