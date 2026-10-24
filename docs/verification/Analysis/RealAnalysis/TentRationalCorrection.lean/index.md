# Verification target: GRWTSK.Analysis.Real.TentRationalCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3debc7101743b93b2dec8d9f013aa0e950f4d2f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Real/TentRationalCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md) · [Full source](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3debc7101743b93b2dec8d9f013aa0e950f4d2f`.

Source path: `GRWTSK/Analysis/Real/TentRationalCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/real/TentRationalCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.TentWeight`](../../../../mathematics/Analysis/RealAnalysis/TentWeight.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_tent](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/continuous-tent--439305a36f9652e44d6af284.md) | 33 | `result-track:439305a36f9652e44d6af284853914eb0dd66a9166858f2b13b67ba1425d30b4` |
| 2 | `theorem` | [integral_tent](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/integral-tent--5cefa7955f4f9c9af4f835f1.md) | 38 | `result-track:5cefa7955f4f9c9af4f835f118b852a41b1dcf1f12ca90326f615158dc83eafc` |
| 3 | `theorem` | [weighted_integral_bounds](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/weighted-integral-bounds--c8d6704b02919ecdef54e094.md) | 62 | `result-track:c8d6704b02919ecdef54e094ca79b8f7bd560e5712949b1aca4df6352a76591e` |
| 4 | `def` | [rationalDensity](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/rationaldensity--7d4fc93f48a9f9bcc7d17f01.md) | 86 | `declaration-track:7d4fc93f48a9f9bcc7d17f012651fb26112018091b52b9a856e9c247a7b20e7e` |
| 5 | `theorem` | [rationalDensity_pos](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/rationaldensity-pos--f4c420dc84a0fa552546fa07.md) | 88 | `result-track:f4c420dc84a0fa552546fa07cca6056f8b55783b46dc5810ffb9e34f0850035f` |
| 6 | `theorem` | [rationalDensity_antitone](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/rationaldensity-antitone--26b6416b784bf3bfc9dbffd2.md) | 92 | `result-track:26b6416b784bf3bfc9dbffd2aa0d6373a705f752d1efbf29dcb006cdf609f625` |
| 7 | `theorem` | [rationalDensity_continuousOn](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/rationaldensity-continuouson--79b0ea96c0e393f0e1da8ba3.md) | 103 | `result-track:79b0ea96c0e393f0e1da8ba38e542f713893d4993821755e90f0a5717cb96254` |
| 8 | `def` | [rationalTentCorrection](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/rationaltentcorrection--05182fe80ba55f6847af349c.md) | 116 | `declaration-track:05182fe80ba55f6847af349c42ebd928d9234d814a18b4b7e03d0fcd081bb370` |
| 9 | `theorem` | [rationalTentCorrection_bounds](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/rationaltentcorrection-bounds--8910e412afdde3a383d2a58f.md) | 120 | `result-track:8910e412afdde3a383d2a58f97d511b4499df96dd1ac0c99c010ea252df27b27` |
| 10 | `theorem` | [rationalTentCorrection_neg](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/rationaltentcorrection-neg--a9437448923662bd71c67f59.md) | 131 | `result-track:a9437448923662bd71c67f59a15b01bdd59cd90646bac4edcd59cc4db5367bcd` |
| 11 | `def` | [densityPrefix](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/densityprefix--761aae4d5990887f02f1ab99.md) | 140 | `declaration-track:761aae4d5990887f02f1ab9970f5afa2edd8148ec82dec54352b1c27fd5d9b0b` |
| 12 | `theorem` | [densityPrefix_succ](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/densityprefix-succ--0d84419d95ac9ac342b3fd15.md) | 143 | `result-track:0d84419d95ac9ac342b3fd1572528ed88daa1197a81041188d2cd8d31f5a0719` |
| 13 | `theorem` | [densityPrefix_eq](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/densityprefix-eq--ab151dd4c07563d90c392177.md) | 148 | `result-track:ab151dd4c07563d90c39217754afe2d4454302b97c6a9499bbc205e2031cba46` |
| 14 | `theorem` | [densityPrefix_remainder_bounds](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/densityprefix-remainder-bounds--a77a22679af11f2003378649.md) | 162 | `result-track:a77a22679af11f20033786490bc0c018e7e196f5bbff4f01f36256be72e3d9b8` |
| 15 | `theorem` | [densityPrefix_continuousOn](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/densityprefix-continuouson--0bd9bba3c715ce56c00ca3f1.md) | 183 | `result-track:0bd9bba3c715ce56c00ca3f1380badac1c1415537ae3ba46e16b36f161c71a46` |
| 16 | `def` | [correctionPrefix](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/correctionprefix--2e5a8e9b81aa7ab1f489e565.md) | 202 | `declaration-track:2e5a8e9b81aa7ab1f489e56599cc253cfae5cb6277b78bcf55bc9eb418ded808` |
| 17 | `theorem` | [correctionPrefix_error](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/correctionprefix-error--6060246d567fbd4fe951c066.md) | 206 | `result-track:6060246d567fbd4fe951c066c8789573e4ef112b24798892a0af6341f84b8710` |
| 18 | `theorem` | [correctionPrefix_lower](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/correctionprefix-lower--906df75e923fd7f5892a3fd4.md) | 236 | `result-track:906df75e923fd7f5892a3fd47f8631ece675e0df8cf17f634e3d000a5f5c4f7e` |
| 19 | `theorem` | [correctionPrefix_tendsto](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/declarations/correctionprefix-tendsto--9b32e8cfbcab48b086ed8106.md) | 245 | `result-track:9b32e8cfbcab48b086ed81067cbeb47185a7e04a5d88f64ae2e7380c5725ba88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
