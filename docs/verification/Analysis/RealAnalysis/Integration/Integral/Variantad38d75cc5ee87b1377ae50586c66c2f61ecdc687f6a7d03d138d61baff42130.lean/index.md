# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68542e8dac8e1592afd318c05a8cd226b9abc819",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68542e8dac8e1592afd318c05a8cd226b9abc819`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [volume_regionBetween_eq_integral'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130.lean/declarations/volume-regionbetween-eq-integral--722b5d767aba6188ee1a0347.md) | 30 | `result-track:722b5d767aba6188ee1a034742ed3fe99a0a4dac399a96f6a26a3acf273bf8ec` |
| 2 | `theorem` | [volume_regionBetween_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130.lean/declarations/volume-regionbetween-eq-integral--5e74a4e2bd81ab99cc6ebdbf.md) | 45 | `result-track:5e74a4e2bd81ab99cc6ebdbf4890fe29df3a7448cd086cc7d63f3f6fa5e03a87` |
| 3 | `theorem` | [Real.integrable_of_summable_norm_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130.lean/declarations/real-integrable-of-summable-norm-icc--9dac51dd98d99e1baddf95b4.md) | 63 | `result-track:9dac51dd98d99e1baddf95b4c3112db8d358945705ef5b59cb00351096dec1ef` |
| 4 | `theorem` | [integral_comp_neg_Iic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130.lean/declarations/integral-comp-neg-iic--1fdb29fdd070837767dbd50a.md) | 99 | `result-track:1fdb29fdd070837767dbd50a7e07ce08df923ea1d2ea50bc8d74e0a109d6c572` |
| 5 | `theorem` | [integral_comp_neg_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variantad38d75cc5ee87b1377ae50586c66c2f61ecdc687f6a7d03d138d61baff42130.lean/declarations/integral-comp-neg-ioi--dc413fdd32c6ca6774faedea.md) | 110 | `result-track:dc413fdd32c6ca6774faedeae05d00b5b784a4b20a5e4c2e1cb721c074d58979` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
