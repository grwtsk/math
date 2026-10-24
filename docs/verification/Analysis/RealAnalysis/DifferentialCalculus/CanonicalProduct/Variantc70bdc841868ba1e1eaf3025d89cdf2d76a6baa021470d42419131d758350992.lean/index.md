# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CanonicalProduct.Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd51e178629114f53ab5abb18060d931b1bade00",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd51e178629114f53ab5abb18060d931b1bade00`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean.json)

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
| 1 | `def` | [canonicalProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/canonicalproduct--d4bbd61f77dc8e7752ac9745.md) | 41 | `declaration-track:d4bbd61f77dc8e7752ac9745b87d97c9a38e60c1ddef16ee94b1a3495e3329b4` |
| 2 | `theorem` | [canonicalProduct_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/canonicalproduct-def--c17654b562616359890152f3.md) | 44 | `result-track:c17654b562616359890152f323a88062b7d2a928ba3139e425c30bee4b8c3abf` |
| 3 | `theorem` | [hasProdLocallyUniformlyOn_canonicalProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/hasprodlocallyuniformlyon-canonicalproduct--e1cce9a61ffa7e75b4c0fd64.md) | 50 | `result-track:e1cce9a61ffa7e75b4c0fd64ec397784c9a3fdb548177606929eec2f5bcbb87a` |
| 4 | `theorem` | [multipliableLocallyUniformlyOn_canonicalProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/multipliablelocallyuniformlyon-canonicalproduct--fd7ba82ff0ca4a8bd53a5e92.md) | 60 | `result-track:fd7ba82ff0ca4a8bd53a5e92737e37a2942d264c71b1e6993fa36b25c3983c47` |
| 5 | `theorem` | [hasProdUniformlyOn_canonicalProduct_compact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/hasproduniformlyon-canonicalproduct-compact--b5c2421605c0b2590cb01c59.md) | 69 | `result-track:b5c2421605c0b2590cb01c598a67fe47af357df3d0425dd6fed64062ef99fa57` |
| 6 | `theorem` | [canonicalProduct_converges_uniformOn_compact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/canonicalproduct-converges-uniformon-compact--5fba29ac235f203ea6204d85.md) | 80 | `result-track:5fba29ac235f203ea6204d8531c4c4a9686f963110700cc2db955702441fb54c` |
| 7 | `theorem` | [differentiable_canonicalProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/differentiable-canonicalproduct--213a0746ca5840cb59ed3beb.md) | 90 | `result-track:213a0746ca5840cb59ed3beb2326b49c03e8b6a22eb2a9e91d4df2ce8206f706` |
| 8 | `theorem` | [analyticOnNhd_canonicalProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/analyticonnhd-canonicalproduct--834444537a130af661e29400.md) | 109 | `result-track:834444537a130af661e29400f5220632f8a68df6c637f72abeba26744b90d1b6` |
| 9 | `theorem` | [logDeriv_weierstrassFactor_one_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/logderiv-weierstrassfactor-one-div--cc3eef2e4e4b3cfd352972cb.md) | 117 | `result-track:cc3eef2e4e4b3cfd352972cb9eebed997d12863e63e607b7c334ff7d356fdd87` |
| 10 | `theorem` | [canonicalProduct_apply_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/canonicalproduct-apply-eq-zero--a88fd18c05292b0eb699c84a.md) | 154 | `result-track:a88fd18c05292b0eb699c84ab19584fc368b27aa281c150f0e51c4025e877327` |
| 11 | `theorem` | [canonicalProduct_eq_zero_of_mem_range](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/canonicalproduct-eq-zero-of-mem-range--ce2279517660356fe5c45feb.md) | 173 | `result-track:ce2279517660356fe5c45feb90762dcb90106b07b10c8984113d76ec181e7bc4` |
| 12 | `theorem` | [canonicalProduct_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/canonicalproduct-ne-zero--709f12f55b911c72b114c989.md) | 181 | `result-track:709f12f55b911c72b114c989c5408aad10a16234497a7fd8a8e34565608c22f3` |
| 13 | `theorem` | [differentiableOn_canonicalPartialProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/differentiableon-canonicalpartialproduct--0965f3303ed5b782511e3288.md) | 200 | `result-track:0965f3303ed5b782511e3288aed701253b7e55f8b78155658babee9280b68070` |
| 14 | `theorem` | [tendsto_deriv_canonicalPartialProduct](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/tendsto-deriv-canonicalpartialproduct--9f2188eddd983e73d26bd7b2.md) | 206 | `result-track:9f2188eddd983e73d26bd7b286c411c3a27007d505f39b3e6d62e51fe5e352f1` |
| 15 | `theorem` | [canonicalProduct_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/canonicalproduct-eq-zero-iff--ee36866f890148006cb3c346.md) | 225 | `result-track:ee36866f890148006cb3c346e0ee321e462f86fe0868481efe61536bbdfc24e9` |
| 16 | `theorem` | [canonicalProduct_ne_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/canonicalproduct-ne-zero-iff--9fe6ec7732bff8fb8ca37a60.md) | 236 | `result-track:9fe6ec7732bff8fb8ca37a601b3308123c1d7eeb59876d41ec071ec9b84ba92c` |
| 17 | `theorem` | [logDeriv_canonicalProduct_one_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/CanonicalProduct/Variantc70bdc841868ba1e1eaf3025d89cdf2d76a6baa021470d42419131d758350992.lean/declarations/logderiv-canonicalproduct-one-eq-tsum--a1735770d7822c758e6cac4c.md) | 245 | `result-track:a1735770d7822c758e6cac4c14f32fed89ec2947f9d65aa9cdc8eb4d5573724b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
