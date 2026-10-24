# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PolynomialBridge.Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a779a56ab0b0fd86f831c973ca3af4a91fe3923e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a779a56ab0b0fd86f831c973ca3af4a91fe3923e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Landau.Bridge` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePolynomialResidual` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/sourcemeasure--8f90ffad8156d181e2a8ef31.md) | 46 | `declaration-track:8f90ffad8156d181e2a8ef317e136b30f2f97757e6c931c230ed54614771ade8` |
| 2 | `theorem` | [corrected_source_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/corrected-source-aemeasurable--6c4b7c7669d1891fcfdf56ed.md) | 52 | `result-track:6c4b7c7669d1891fcfdf56ed1842899605620292f36a2e375506d0e9f6780e73` |
| 3 | `theorem` | [density_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/density-aemeasurable--ff17debb7a21cac323d9d85f.md) | 75 | `result-track:ff17debb7a21cac323d9d85ffa0e9a85324f4d64da63d253314f91bbab328525` |
| 4 | `theorem` | [density_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/density-lt-top--8d48cd9681550bf24dbf2d71.md) | 82 | `result-track:8d48cd9681550bf24dbf2d7176dfefbc34873abcbf84a15dba8a52e7752cc504` |
| 5 | `theorem` | [density_toReal_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/density-toreal-ae--5d29512a0b7c27c8b52e6b16.md) | 91 | `result-track:5d29512a0b7c27c8b52e6b169bbeac34cdb005c951acfceaa390a0e41e7e5a47` |
| 6 | `theorem` | [one_lt_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/one-lt-ae--18d2826e54e352bddde71dbe.md) | 102 | `result-track:18d2826e54e352bddde71dbeb04d4c789e1735117b54d9e14a76f7d1fd7807b5` |
| 7 | `theorem` | [id_nonneg_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/id-nonneg-ae--ef82124da34d65f4e1ba625b.md) | 109 | `result-track:ef82124da34d65f4e1ba625b6b1041b87c3e0e68487c927f7ecbb8c04648987d` |
| 8 | `theorem` | [exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/exp-integrable--f5a7211650d7d9fc87d2f849.md) | 117 | `result-track:f5a7211650d7d9fc87d2f849617c254bd38b55d8288a8141d393ddbf783671bf` |
| 9 | `theorem` | [integral_exp_eq_correctedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/integral-exp-eq-correctedtransform--3e0f999d4a7abe54094a6801.md) | 136 | `result-track:3e0f999d4a7abe54094a6801ce17a02f5d301624b954f730adc5c4650e4f029d` |
| 10 | `theorem` | [complexMGF_eq_correctedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/complexmgf-eq-correctedtransform--73c154911ce5450ab22a9652.md) | 159 | `result-track:73c154911ce5450ab22a9652c6b108bd194925bf3ccd83b858e74c75715c7915` |
| 11 | `theorem` | [real_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/real-laplace-integrable--76ad507fd638efd9233d5ef1.md) | 168 | `result-track:76ad507fd638efd9233d5ef1da291807475920bb017e004189742165fc56ba2c` |
| 12 | `theorem` | [correction_at_shifted_center_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/correction-at-shifted-center-analytic--2098350bcd46a1754932b165.md) | 184 | `result-track:2098350bcd46a1754932b165e46a9e9060cf64e41b20a2adaf1c7d4b289e1251` |
| 13 | `theorem` | [corrected_transform_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/corrected-transform-cleared-tendsto--871df729449e4facba9921eb.md) | 210 | `result-track:871df729449e4facba9921eb50add3d34bde4fb8a8ebd60bb4f825d8f84a0377` |
| 14 | `theorem` | [correctedTransform_punctured_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/correctedtransform-punctured-differentiable--02de9c7b27761cb3abfc88f4.md) | 230 | `result-track:02de9c7b27761cb3abfc88f499e6d22f2487c7d17f7a5c57f7c51b5836b587a4` |
| 15 | `theorem` | [corrected_transform_exact_pole](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/corrected-transform-exact-pole--c8b845492448c15080334f1d.md) | 252 | `result-track:c8b845492448c15080334f1df8334181fd288456c82f6203ae7fec0f67a5aca7` |
| 16 | `theorem` | [corrected_order_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/corrected-order-nonneg--203c2520e6d630c53cf7a190.md) | 291 | `result-track:203c2520e6d630c53cf7a1909088e3db202c8e5034ebfa09389b0a851ef3d56b` |
| 17 | `theorem` | [riemann_hypothesis_of_polynomial_residual_tail_upper_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PolynomialBridge/Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d.lean/declarations/riemann-hypothesis-of-polynomial-residual-tail-upper-bound--b1bee2aa32a4102d27648b9d.md) | 318 | `result-track:b1bee2aa32a4102d27648b9ddc3abd04803b298b607374df1cbe921b94267ff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
