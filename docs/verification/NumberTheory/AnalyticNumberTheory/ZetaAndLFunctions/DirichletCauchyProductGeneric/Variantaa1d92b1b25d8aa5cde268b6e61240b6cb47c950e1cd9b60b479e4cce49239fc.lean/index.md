# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletCauchyProductGeneric.Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0431e04b711b98794c4db30bd180d84df7400b68",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0431e04b711b98794c4db30bd180d84df7400b68`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PositivePairReindexing` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.MobiusDirichletSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convolution` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complexWeight_eq_cpow_neg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/complexweight-eq-cpow-neg--d35a88a4b09182a9579b2a64.md) | 34 | `result-track:d35a88a4b09182a9579b2a64a9ce32caaf9e1f15695faf8d8a2827d3ea4afcbc` |
| 2 | `theorem` | [complexWeight_eq_one_div_cpow](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/complexweight-eq-one-div-cpow--c4d22010f6f4a13a16905512.md) | 50 | `result-track:c4d22010f6f4a13a169055125707a80dd57dfd1f26a658c2a4655b92ddd8fb2b` |
| 3 | `theorem` | [complexDirichletTerm_eq_lseries_term](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/complexdirichletterm-eq-lseries-term--c03ce3307b53ed90fd13878b.md) | 58 | `result-track:c03ce3307b53ed90fd13878bd84cea5fb75120ea21e93c2262cd1cd7f829feb9` |
| 4 | `theorem` | [complexDirichletSeries_eq_lseries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/complexdirichletseries-eq-lseries--8b379c17dae53dcd4636629c.md) | 69 | `result-track:8b379c17dae53dcd4636629c5a471bf2079bf6824d8f57df21aa31596611e585` |
| 5 | `theorem` | [zetaComplexHalfPlane_eq_complexDirichletSeries_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/zetacomplexhalfplane-eq-complexdirichletseries-one--5842981893a2ab255bbc00df.md) | 75 | `result-track:5842981893a2ab255bbc00dfe269a4c51b5ca364202d66234b7e8cc4b1cabefb` |
| 6 | `theorem` | [zetaComplexHalfPlane_eq_lseries_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/zetacomplexhalfplane-eq-lseries-one--aa35b0f59d60336e05519ca4.md) | 82 | `result-track:aa35b0f59d60336e05519ca441d3780d97a63040bbab12db60bdea9f2158acf7` |
| 7 | `theorem` | [mobiusDirichletSeries_eq_lseries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/mobiusdirichletseries-eq-lseries--803f5946f1776046931d9f89.md) | 88 | `result-track:803f5946f1776046931d9f893c45d8fb889836e10fa56cc27d3d69c187c34141` |
| 8 | `theorem` | [complexDirichletSeries_epsilon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/complexdirichletseries-epsilon--c71ae0dc4b9ab00402edddb0.md) | 93 | `result-track:c71ae0dc4b9ab00402edddb027976c9a7a1997a748ab290f60e498ba6a563ef6` |
| 9 | `theorem` | [complexDirichletSeries_term_norm_summable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/complexdirichletseries-term-norm-summable--b4083516c22ba40ea4c104c2.md) | 106 | `result-track:b4083516c22ba40ea4c104c2856b3c3407f0e2ffc242ca48209fcae4e4adce1c` |
| 10 | `theorem` | [complexDirichletSeries_terms_summable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/complexdirichletseries-terms-summable--655fab0e1b52721b5da0d233.md) | 113 | `result-track:655fab0e1b52721b5da0d233d242c68c8a007dce2c668dae7cb3a4e6f84ad69d` |
| 11 | `theorem` | [lseriesSummable_of_complexDirichletAbsSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/lseriessummable-of-complexdirichletabssummable--98459b2daf376208714a6b79.md) | 120 | `result-track:98459b2daf376208714a6b795940a9e73dd8699f44c7d02d46d547511758c4a3` |
| 12 | `theorem` | [lseries_convolution_eq_dirichletConv_of_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/lseries-convolution-eq-dirichletconv-of-ne-zero--790e003e695bd00c75719f6c.md) | 128 | `result-track:790e003e695bd00c75719f6c23afb723d63fec8866b957efe5af26488b486eeb` |
| 13 | `theorem` | [complexDirichletSeries_mul_expanded_pair_tsum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/complexdirichletseries-mul-expanded-pair-tsum--70cfe3ef8de8ae8e1a12f4ed.md) | 136 | `result-track:70cfe3ef8de8ae8e1a12f4edf8f8f3f44d8e86060157e6b1e8ddec66f18ccfee` |
| 14 | `theorem` | [complexDirichletSeries_mul_of_absSummable](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/complexdirichletseries-mul-of-abssummable--377e18fd59dfa89951ca5a6a.md) | 163 | `result-track:377e18fd59dfa89951ca5a6a841e19972bb8f597866db8e9b3d9505a4a983f72` |
| 15 | `theorem` | [tsum_dirichlet_pair_reindex_by_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaa1d92b1b25d8aa5cde268b6e61240b6cb47c950e1cd9b60b479e4cce49239fc.lean/declarations/tsum-dirichlet-pair-reindex-by-mul--444c8bae94d3ffcd9fc4591d.md) | 195 | `result-track:444c8bae94d3ffcd9fc4591d1e160b08a0c6f1632df4bf46ca6e85d825b0bfe4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
