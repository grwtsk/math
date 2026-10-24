# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f38bfd11b77a1802c3e2c27cd39d156f3483d6e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f38bfd11b77a1802c3e2c27cd39d156f3483d6e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [limsup_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/declarations/limsup-lintegral-le--c66088fc2e96cf44ad73c35e.md) | 29 | `result-track:c66088fc2e96cf44ad73c35eda7e8b36936af0ccc836a7cb08e8851d4eb6358a` |
| 2 | `theorem` | [tendsto_lintegral_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/declarations/tendsto-lintegral-of-dominated-convergence--81228aed4f7158e88cb33c9d.md) | 48 | `result-track:81228aed4f7158e88cb33c9d1e19cddd423db5be039408c748c9989e7c36daf2` |
| 3 | `theorem` | [tendsto_lintegral_of_dominated_convergence'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/declarations/tendsto-lintegral-of-dominated-convergence--9c9fe637b6d72e4a7144ba61.md) | 63 | `result-track:9c9fe637b6d72e4a7144ba616705dc4e5af262dcb4f594ae9a084760aec08f56` |
| 4 | `theorem` | [tendsto_lintegral_filter_of_dominated_convergence'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/declarations/tendsto-lintegral-filter-of-dominated-convergence--2078bac03a3b254a484f60af.md) | 83 | `result-track:2078bac03a3b254a484f60af20ebbee05b3952f9d9ba81f205b45b3cdfd9de9e` |
| 5 | `theorem` | [tendsto_lintegral_filter_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/declarations/tendsto-lintegral-filter-of-dominated-convergence--35984e750d69cd5a118b3135.md) | 112 | `result-track:35984e750d69cd5a118b313509946b278315dc9715df41e1ab48d973c4b12953` |
| 6 | `lemma` | [tendsto_of_lintegral_tendsto_of_monotone_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/declarations/tendsto-of-lintegral-tendsto-of-monotone-aux--e2e006f2dfba15c3f50a29c3.md) | 124 | `result-track:e2e006f2dfba15c3f50a29c3b2337eb1f527ee94616fed97f8d1f64500d17fcd` |
| 7 | `lemma` | [tendsto_of_lintegral_tendsto_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/declarations/tendsto-of-lintegral-tendsto-of-monotone--b643de9bdbe6e3bcb0adb92e.md) | 163 | `result-track:b643de9bdbe6e3bcb0adb92e62af4000440141622e379015641a6b81110d867c` |
| 8 | `lemma` | [tendsto_of_lintegral_tendsto_of_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantdbe6f885de76b2d25a6f9c398dece3446066cbe8a422c6d6c113ef80eb7de9fc.lean/declarations/tendsto-of-lintegral-tendsto-of-antitone--2264e52441d69467dce2f102.md) | 205 | `result-track:2264e52441d69467dce2f1027786052e2bfe18e7d786ad56b850902e472e9579` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
