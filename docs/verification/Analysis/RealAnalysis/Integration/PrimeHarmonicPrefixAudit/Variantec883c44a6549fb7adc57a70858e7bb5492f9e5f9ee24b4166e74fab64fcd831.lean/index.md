# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimeHarmonicPrefixAudit.Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "734d2cb1575c53176cbcebf3daf4a4b56729dff3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `734d2cb1575c53176cbcebf3daf4a4b56729dff3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeHarmonicPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/primeharmonicprefix--f208251fa00b7c0eb3429c76.md) | 13 | `declaration-track:f208251fa00b7c0eb3429c76a111686c05c782e804b480402d87b964b3f934ef` |
| 2 | `theorem` | [primeHarmonicPrefix_eq_log_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/primeharmonicprefix-eq-log-sum--7bf3e3a9e08af6a87911476b.md) | 18 | `result-track:7bf3e3a9e08af6a87911476bc34d938496b497663dd8100dd51f5104e3b5fbe7` |
| 3 | `theorem` | [primeHarmonicPrefix_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/primeharmonicprefix-zero--79b99e97bb38cb2cdb568320.md) | 28 | `result-track:79b99e97bb38cb2cdb568320a42ce86cc3f8cffc071fca9239ae85abbc753aef` |
| 4 | `theorem` | [primeHarmonicPrefix_log_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/primeharmonicprefix-log-two--60fd96a0aae05646b23fa3df.md) | 32 | `result-track:60fd96a0aae05646b23fa3dfa5cc8f1943f00263db2a5fb4bd2ac63f6fac6ab2` |
| 5 | `theorem` | [thetaLogError_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/thetalogerror-zero--b331c38813fdfab3f3e3cee1.md) | 37 | `result-track:b331c38813fdfab3f3e3cee1ec83ea6f96c9893ef5ae0f225295d0f4e7241f27` |
| 6 | `def` | [primeWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/primeweight--7861cc986c7be210f5ce154a.md) | 40 | `declaration-track:7861cc986c7be210f5ce154a741599154895af4de30c51affea730f1f9b12735` |
| 7 | `theorem` | [primeWeight_prefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/primeweight-prefix--59fcd3927981d61c5136d58b.md) | 42 | `result-track:59fcd3927981d61c5136d58b3be3808b20641439f9c5c85bda44ec0f82bf11d5` |
| 8 | `theorem` | [primeHarmonicPrefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/primeharmonicprefix-eq--2ff9d05f823c31fd67d928c7.md) | 47 | `result-track:2ff9d05f823c31fd67d928c7628409c6350e2d244703a23176a8e58e3f8b8b6a` |
| 9 | `theorem` | [theta_div_sq_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/theta-div-sq-integrableon--95ad75b3e58a2a5d7817becf.md) | 77 | `result-track:95ad75b3e58a2a5d7817becfc3e1563652253ffa691f15ecf93d9eb798d8e7a6` |
| 10 | `theorem` | [primeHarmonicPrefix_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/primeharmonicprefix-abel--6b8289db24cd4ee037896c8b.md) | 92 | `result-track:6b8289db24cd4ee037896c8bbb021be6b91adaaf6cab1ed2c7236818b864539e` |
| 11 | `theorem` | [thetaLogError_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/thetalogerror-intervalintegrable--5ec0436a5b1282e217e80127.md) | 123 | `result-track:5ec0436a5b1282e217e80127962ec4bfbfb9f927cbd9d750f2dbbe03715e3b30` |
| 12 | `theorem` | [theta_div_sq_log_substitution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/theta-div-sq-log-substitution--6c5591df75c4ca1c2a1317fe.md) | 143 | `result-track:6c5591df75c4ca1c2a1317fe5401382c70489fbe461ce50a715fd9a958710e41` |
| 13 | `theorem` | [primeHarmonicPrefix_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variantec883c44a6549fb7adc57a70858e7bb5492f9e5f9ee24b4166e74fab64fcd831.lean/declarations/primeharmonicprefix-formula--85e35dadcc25b7da00f34976.md) | 160 | `result-track:85e35dadcc25b7da00f34976ad4c73bb0f86a517e59756c7327f3f79c59adc8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
