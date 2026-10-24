# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PeakFunction.Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b90cfa897ae7acdc1cdd0d9595a2cbb381859c43",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b90cfa897ae7acdc1cdd0d9595a2cbb381859c43`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/declarations/macro-rules--ce6932108e9fe3530953a3e5.md) | 42 | `declaration-track:ce6932108e9fe3530953a3e5e7daea3030b0ac7180699c001d48a16b480c0cc3` |
| 2 | `theorem` | [Set.disjoint_sdiff_inter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/declarations/set-disjoint-sdiff-inter--759ce614e8f40c1628d45b7e.md) | 50 | `result-track:759ce614e8f40c1628d45b7e8201844be6685c786e36159ddc22c0d6a3f74b20` |
| 3 | `theorem` | [integrableOn_peak_smul_of_integrableOn_of_continuousWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/declarations/integrableon-peak-smul-of-integrableon-of-continuouswithinat--dc073cecbf64713da855b65b.md) | 62 | `result-track:dc073cecbf64713da855b65b11492fa21d5b0375e01bfd96eae9fb0760c26d5a` |
| 4 | `theorem` | [tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/declarations/tendsto-set-integral-peak-smul-of-integrableon-of-continuouswithinat-aux--a4917e2ca8c26b4115378a55.md) | 93 | `result-track:a4917e2ca8c26b4115378a55f9c9977caf4317aec702924adceae1e8f9e832f2` |
| 5 | `theorem` | [tendsto_set_integral_peak_smul_of_integrableOn_of_continuousWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/declarations/tendsto-set-integral-peak-smul-of-integrableon-of-continuouswithinat--294eb144ff967df794317878.md) | 168 | `result-track:294eb144ff967df7943178781d7ba1fcef3722f86228ea05db9685d316b2855f` |
| 6 | `theorem` | [tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_measure_nhdsWithin_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/declarations/tendsto-set-integral-pow-smul-of-unique-maximum-of-iscompact-of-measure--749dbab62a4c0e33f83fe748.md) | 203 | `result-track:749dbab62a4c0e33f83fe748186491c73247556071c647dcf362e218164058e0` |
| 7 | `theorem` | [tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/declarations/tendsto-set-integral-pow-smul-of-unique-maximum-of-iscompact-of-integrab--5731b7a87a4a22cc36a285fe.md) | 302 | `result-track:5731b7a87a4a22cc36a285fe714a722d9e16c055092469020a79584390594541` |
| 8 | `theorem` | [tendsto_set_integral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant69cccf5551bbaf8d46665138eae8a066c8e8037086db0cbf13c6df98730a21c1.lean/declarations/tendsto-set-integral-pow-smul-of-unique-maximum-of-iscompact-of-continuo--c64dcb485a081b6396c543b8.md) | 324 | `result-track:c64dcb485a081b6396c543b88746270f2b1ecaf9927387c2931b048250b259d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
