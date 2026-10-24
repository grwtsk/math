# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Probe.Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95426301e8026ebc6f44a979533c38333e2ab737",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95426301e8026ebc6f44a979533c38333e2ab737`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellCorrection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/cellcorrection--c52f2e224588a165101e46c9.md) | 23 | `declaration-track:c52f2e224588a165101e46c91da6e44d55fd44d41cd46a8ea109eb79c29515e1` |
| 2 | `def` | [cellMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/cellmajorant--423cba4ba064d31476a519ad.md) | 29 | `declaration-track:423cba4ba064d31476a519ad84a6bfa832e662ad947db7ef1beca64c74bf0585` |
| 3 | `def` | [majorantPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/majorantprimitive--81379a638c6be6f2752d2762.md) | 32 | `declaration-track:81379a638c6be6f2752d2762adaa8ac3083c2f34c7f923f27c6ae01cd1c17024` |
| 4 | `theorem` | [majorantPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/majorantprimitive-hasderivat--7a75f8ff85f31adbfee6765e.md) | 34 | `result-track:7a75f8ff85f31adbfee6765e61b9d07042ecb165b5b6e938c01e76a0c66ecaaa` |
| 5 | `theorem` | [cellMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/cellmajorant-continuouson--c9c985d775888461dbf48562.md) | 45 | `result-track:c9c985d775888461dbf48562d7b4de67fb8afc245a2f7a7655cc06799bcd11fb` |
| 6 | `theorem` | [cellMajorant_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/cellmajorant-intervalintegrable--08d33c675d4ab5f0ef6a9052.md) | 51 | `result-track:08d33c675d4ab5f0ef6a905266a249e055c65a201a3a79d05374bfad65553915` |
| 7 | `theorem` | [cellMajorant_integral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/cellmajorant-integral-eq--7b15c5c0e0e3ad839d9b159e.md) | 56 | `result-track:7b15c5c0e0e3ad839d9b159e55df83c4b9ad93916a05adab106ca4223d94c70c` |
| 8 | `theorem` | [cellMajorant_integral_le_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/cellmajorant-integral-le-four--09680989f79d7946792384a0.md) | 66 | `result-track:09680989f79d7946792384a0163a021886785f10d839a8314058c4555b40242d` |
| 9 | `theorem` | [sourceCorrelation_log_increment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/sourcecorrelation-log-increment-bound--cf8969b25953924bae4bfe3b.md) | 73 | `result-track:cf8969b25953924bae4bfe3bf89744f41458a2ec8bc3ee30d347da766b0b20a2` |
| 10 | `theorem` | [log_cell_increment_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/log-cell-increment-le--29b5e200e652bcb935773024.md) | 98 | `result-track:29b5e200e652bcb935773024fff2392afdca1bbbc736935a536a568851141b1e` |
| 11 | `theorem` | [cell_integrand_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/cell-integrand-abs-le--0e0c5eaf2566cb7417a0e82d.md) | 111 | `result-track:0e0c5eaf2566cb7417a0e82d154ed0cd8aa8ca67ea471e5ce0b9761a387552e8` |
| 12 | `theorem` | [div_sqrt_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/div-sqrt-continuouson--a71cdd79e7b5d78563f52fca.md) | 132 | `result-track:a71cdd79e7b5d78563f52fca6f47311846476cdd902c430d693f5c49f5358ce2` |
| 13 | `theorem` | [cellIntegrand_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/cellintegrand-intervalintegrable--953b0a57a96b823e815c54df.md) | 139 | `result-track:953b0a57a96b823e815c54dfd148d0b8c89f2bd62d86e996d5565c067075172d` |
| 14 | `theorem` | [cellCorrection_abs_le_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/cellcorrection-abs-le-majorant--bd0f6cab23bad180f5123357.md) | 153 | `result-track:bd0f6cab23bad180f5123357cd7c31be755935422e545d0e94b4f1503155583a` |
| 15 | `theorem` | [sum_cellMajorant_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/sum-cellmajorant-integrals--91441dec860be4fe3ae27126.md) | 172 | `result-track:91441dec860be4fe3ae2712671a2a5853ba6d94587dea1d1ae97bfce290355a6` |
| 16 | `theorem` | [sum_cellCorrection_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/sum-cellcorrection-abs-le--32e96cf0598479d384d8dd6c.md) | 185 | `result-track:32e96cf0598479d384d8dd6c4b9e68232d926403e0b60da4129f8e56e91ba273` |
| 17 | `theorem` | [sum_sourceCorrelation_cell_transport_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Probe/Variant10c90b8289eb066ab96006822bc63aed251ded51a3848e15e9938b1b1c904547.lean/declarations/sum-sourcecorrelation-cell-transport-le--540d5c15aa6b47d0fd286bd7.md) | 204 | `result-track:540d5c15aa6b47d0fd286bd775e81a6609e0a61c059833dbf0a29b1ba6234dce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
