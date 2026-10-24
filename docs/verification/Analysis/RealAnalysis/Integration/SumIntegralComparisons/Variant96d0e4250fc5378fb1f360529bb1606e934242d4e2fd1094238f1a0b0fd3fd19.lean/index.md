# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SumIntegralComparisons.Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8fd71d7496685894762dfb5ad2b07fda3fce7a3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8fd71d7496685894762dfb5ad2b07fda3fce7a3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_Ico_le_integral_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/sum-ico-le-integral-of-le--1f902239f540f9fe4fedce0b.md) | 56 | `result-track:1f902239f540f9fe4fedce0b350f9eab199ec2bfacd70dee3f7f9de220a358ac` |
| 2 | `lemma` | [integral_le_sum_Ico_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/integral-le-sum-ico-of-le--3a38e50b4d4afec7671523ff.md) | 78 | `result-track:3a38e50b4d4afec7671523ff196e151924f031e8ce4b3b27f3ce44b88d9947e7` |
| 3 | `theorem` | [AntitoneOn.integral_le_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/antitoneon-integral-le-sum--e863129a7093908ead4b2c2b.md) | 85 | `result-track:e863129a7093908ead4b2c2ba3c82ef2a65bf70d084ba4140fb0f0b8c4b47d8b` |
| 4 | `theorem` | [AntitoneOn.integral_le_sum_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/antitoneon-integral-le-sum-ico--0b5240d11b041512cba699b3.md) | 110 | `result-track:0b5240d11b041512cba699b33950b4da9681803d7d28e42e2e263dc1d94bf0c1` |
| 5 | `theorem` | [AntitoneOn.sum_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/antitoneon-sum-le-integral--3bfbd68a79c2a1cd66c2f3fa.md) | 134 | `result-track:3bfbd68a79c2a1cd66c2f3fa42b3c5268e0ebf7b19a39229d039e74c4150cbd7` |
| 6 | `theorem` | [AntitoneOn.sum_le_integral_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/antitoneon-sum-le-integral-ico--962440d17be0c5b72ed4cf6c.md) | 161 | `result-track:962440d17be0c5b72ed4cf6c22d97410bcd0ed209313d99caf00231cf261117d` |
| 7 | `theorem` | [MonotoneOn.sum_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/monotoneon-sum-le-integral--1b4bab9263d519184ac8542f.md) | 184 | `result-track:1b4bab9263d519184ac8542f00f18c4816daf032d6202af7f518c55d1acddf2c` |
| 8 | `theorem` | [MonotoneOn.sum_le_integral_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/monotoneon-sum-le-integral-ico--9531f016f1a32365d91f15a5.md) | 189 | `result-track:9531f016f1a32365d91f15a56d1fae03f70c4357e4c7550f11d950f39f489df2` |
| 9 | `theorem` | [MonotoneOn.integral_le_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/monotoneon-integral-le-sum--73b38e859bbd05f81fadc111.md) | 194 | `result-track:73b38e859bbd05f81fadc111ca218b286fc8de8e14043747c6db125eddbec46b` |
| 10 | `theorem` | [MonotoneOn.integral_le_sum_Ico](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/monotoneon-integral-le-sum-ico--1073c488e1b523847aefe57a.md) | 199 | `result-track:1073c488e1b523847aefe57aaf79f22fcd69b345bb347242438ccd9a343e2f13` |
| 11 | `lemma` | [sum_mul_Ico_le_integral_of_monotone_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/sum-mul-ico-le-integral-of-monotone-antitone--a2555abba73688a50203e218.md) | 204 | `result-track:a2555abba73688a50203e218bda712433b409bda604eb392f413cd9994d8acee` |
| 12 | `lemma` | [integral_le_sum_mul_Ico_of_antitone_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variant96d0e4250fc5378fb1f360529bb1606e934242d4e2fd1094238f1a0b0fd3fd19.lean/declarations/integral-le-sum-mul-ico-of-antitone-monotone--873ba3233b7fccdc27b97062.md) | 250 | `result-track:873ba3233b7fccdc27b9706241e20856713667292b049a15d83ca8fde7e575c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
