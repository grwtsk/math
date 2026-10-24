# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Auxiliary.Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85cc06e0a6af7f83cce704223be6bd3912a7a31b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85cc06e0a6af7f83cce704223be6bd3912a7a31b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.RealDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/hasderivat-ofreal--5cd55c82f1bd67df32e33c7b.md) | 24 | `result-track:5cd55c82f1bd67df32e33c7b193f37451dc167d187a12697e507db80ab1fca79` |
| 2 | `lemma` | [deriv_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/deriv-ofreal--2e2a9e2663da3a63aa61ac81.md) | 27 | `result-track:2e2a9e2663da3a63aa61ac8139483b02be0b67e850bfe6cab05aa79840ee8fb3` |
| 3 | `lemma` | [differentiableAt_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/differentiableat-ofreal--67230e807f8da7d8239e0e35.md) | 30 | `result-track:67230e807f8da7d8239e0e359d0997aaf9932c67fd33cc7c63725ff414a127d6` |
| 4 | `lemma` | [differentiable_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/differentiable-ofreal--68eedab30aab4f433fae4682.md) | 33 | `result-track:68eedab30aab4f433fae4682015eb533bd73240686cf61ffa93ed330ab7e218c` |
| 5 | `lemma` | [DifferentiableAt.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/differentiableat-comp-ofreal--2399cd3d704c97da3aa648f4.md) | 38 | `result-track:2399cd3d704c97da3aa648f409a1aa7fc0345d1138bc389dd0ebe926d232b3a8` |
| 6 | `lemma` | [deriv.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/deriv-comp-ofreal--b8608d6db35d49eee0194b07.md) | 42 | `result-track:b8608d6db35d49eee0194b072510c3e9f48a318ce5d57e8b2eb30dba601c8e85` |
| 7 | `lemma` | [Differentiable.comp_ofReal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/differentiable-comp-ofreal--8c47695d8a4fe45075971828.md) | 46 | `result-track:8c47695d8a4fe45075971828bf96d5ad73d61ba06dedf023894ebb92c3f7118c` |
| 8 | `lemma` | [DifferentiableAt.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/differentiableat-ofreal-comp--bfbf5db28f09d1e8a8617640.md) | 50 | `result-track:bfbf5db28f09d1e8a8617640215ad67064d8ab1d9f95856ac9ed908ed6a05e9b` |
| 9 | `lemma` | [Differentiable.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/differentiable-ofreal-comp--86644aa2bef156beb40d1d13.md) | 54 | `result-track:86644aa2bef156beb40d1d13e9776829d231c8538b738215ce60de36415030fc` |
| 10 | `lemma` | [HasDerivAt.of_hasDerivAt_ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/hasderivat-of-hasderivat-ofreal-comp--70157473717c98d2ec4ac186.md) | 59 | `result-track:70157473717c98d2ec4ac1861d1f4ab9f6f303a9a5a4e9fb95f9900d6a1af244` |
| 11 | `lemma` | [DifferentiableAt.ofReal_comp_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/differentiableat-ofreal-comp-iff--c4aaa0ef531204e20bd001b0.md) | 70 | `result-track:c4aaa0ef531204e20bd001b06031dcd12d3b21309165e4538141627815bbeb37` |
| 12 | `lemma` | [Differentiable.ofReal_comp_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/differentiable-ofreal-comp-iff--b76b6018c6bd2f69349c6515.md) | 76 | `result-track:b76b6018c6bd2f69349c6515f5c981dc451ecafb53c6ca0e1be936159575c796` |
| 13 | `lemma` | [deriv.ofReal_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Auxiliary/Variant5b2e83c062b668c03576404f185b13b8fb29ab5c62c027b27dcb7df6b095989f.lean/declarations/deriv-ofreal-comp--d13e54abcebcb7281afd3996.md) | 80 | `result-track:d13e54abcebcb7281afd39965c5dfce8faca6e8e9eaa69e406d0028b08ccc2c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
