# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ZetaDefinitions.Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f31bebe41f7c80be6636405f9fb7077bf197276d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f31bebe41f7c80be6636405f9fb7077bf197276d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Defs` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [riemannZeta.zeroes](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-zeroes--51f666deefa3d9fa7e54833b.md) | 20 | `declaration-track:51f666deefa3d9fa7e54833b5bc9a586e0552ea3cc15645560feadb087138883` |
| 2 | `def` | [riemannZeta.zeroes_rect](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-zeroes-rect--609ca12da10ce6a3cc060cd3.md) | 24 | `declaration-track:609ca12da10ce6a3cc060cd376b16e635df39c658b1f6b34ebc9368379fdb7a5` |
| 3 | `lemma` | [riemannZeta.zeroes_rect_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-zeroes-rect-eq--94df3ea7552fa9a86e3781a1.md) | 27 | `result-track:94df3ea7552fa9a86e3781a173f28e083d35792cb5ea92d5ec31075bb5233c82` |
| 4 | `lemma` | [riemannZeta.zeroes_rect_disjoint₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-zeroes-rect-disjoint--a4ff26ba63377b3ce03dfbcb.md) | 32 | `result-track:a4ff26ba63377b3ce03dfbcb1f552a550fbc57b8f126e6b6c7f97af5a1fdcd51` |
| 5 | `lemma` | [riemannZeta.zeroes_rect_union](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-zeroes-rect-union--6e0746a929532c6d4e13439f.md) | 36 | `result-track:6e0746a929532c6d4e13439f29059ff51a0974773785b5b35f51f027ab5c26ee` |
| 6 | `lemma` | [riemannZeta_differentiableOn_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-differentiableon-compl-one--aefaf9bbd23fc6479b84cfc7.md) | 43 | `result-track:aefaf9bbd23fc6479b84cfc7c5ded0e2ab1508f4dfc18096cd0464f58eee62b1` |
| 7 | `lemma` | [riemannZeta_analyticOn_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-analyticon-compl-one--fba63f1d72fce554f5bcfd35.md) | 47 | `result-track:fba63f1d72fce554f5bcfd3561e7af489122918e0d77ee7ac83941afd9cb3a68` |
| 8 | `lemma` | [riemannZeta.zeroes_codiscreteWithin_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-zeroes-codiscretewithin-compl-one--c3a67c9dec1ee2566f314c2c.md) | 51 | `result-track:c3a67c9dec1ee2566f314c2cc319640751ab9f6a971bbc5c369d915a50719dd7` |
| 9 | `lemma` | [riemannZeta.zeroes_on_Compact_finite](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-zeroes-on-compact-finite--fa9a9c25c337690a27e1d556.md) | 61 | `result-track:fa9a9c25c337690a27e1d55604fbd44e8ddc2f99d349c7a7dc4a978dd705ac3a` |
| 10 | `lemma` | [riemannZeta_eventually_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-eventually-ne-zero--5598caa8a0c6c665ef73498f.md) | 73 | `result-track:5598caa8a0c6c665ef73498f20e4a3ca54add28c5243fd6b169744602d412db0` |
| 11 | `lemma` | [riemannZeta_no_zeroes_near_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-no-zeroes-near-one--86c19b607ceec4ddb1584836.md) | 81 | `result-track:86c19b607ceec4ddb15848360da67d499fb1701043ad173e2ba05d68d46b8e48` |
| 12 | `lemma` | [riemannZeta.zeroes_on_Compact_finite'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-zeroes-on-compact-finite--bf026c83dc43016743960bc5.md) | 90 | `result-track:bf026c83dc43016743960bc5c5ae66bde67fbebc4e2a2bc38e1e87dce105d088` |
| 13 | `def` | [riemannZeta.order](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-order--9fc22a348354ce2f78892279.md) | 103 | `declaration-track:9fc22a348354ce2f78892279588e8adce96c447288626437a64f9cc342e65efe` |
| 14 | `def` | [riemannZeta.zeroes_sum](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-zeroes-sum--e6824f2bde2c67ccdd0154c4.md) | 107 | `declaration-track:e6824f2bde2c67ccdd0154c4d67d2895b4233d6a80b80d358099e3644b097bcc` |
| 15 | `def` | [riemannZeta.RH_up_to](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-rh-up-to--c0e0f2f7b2c8abd8b31f29b2.md) | 117 | `declaration-track:c0e0f2f7b2c8abd8b31f29b23641007f2809b28654bb6a5fe6111eaa8a3b7d4a` |
| 16 | `def` | [riemannZeta.classicalZeroFree](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-classicalzerofree--0c9bd03ec8ce6f0b4ccc3fdb.md) | 127 | `declaration-track:0c9bd03ec8ce6f0b4ccc3fdbf443155b5427a67b6b582d90656bfb30b0410e97` |
| 17 | `def` | [riemannZeta.N](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-n--d3d0844780956c57cca5aa26.md) | 137 | `declaration-track:d3d0844780956c57cca5aa260cad5c034837c26eee39a716e42b2255024e2e3a` |
| 18 | `def` | [riemannZeta.N'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-n--1f24598f339940ab34c16bc5.md) | 146 | `declaration-track:1f24598f339940ab34c16bc563bcee5921c595523ca42432ae273a6306042992` |
| 19 | `def` | [riemannZeta.RvM](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-rvm--7df8410930b1899be2a61606.md) | 150 | `declaration-track:7df8410930b1899be2a61606d7014fa5fc7e9301b08279d89ab74d02dd205a3c` |
| 20 | `def` | [riemannZeta.Riemann_vonMangoldt_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/riemannzeta-riemann-vonmangoldt-bound--d321ab75728da96161b3a736.md) | 161 | `declaration-track:d321ab75728da96161b3a736bc707e9e379525565dd93d9b200dd39ee2f8c7e0` |
| 21 | `structure` | [zero_density_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/zero-density-bound--1cdddbef5a794bbdefee876f.md) | 173 | `declaration-track:1cdddbef5a794bbdefee876f48c2ff0fe05f014199e64f921c9e4adce6eb9ee1` |
| 22 | `def` | [zero_density_bound.N](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantf20547faf64165fe28da9bbd1f18617ce375a6e59d0ac6e17e0f57a091bba2ac.lean/declarations/zero-density-bound-n--93e6773a4e0fbe9e7266346b.md) | 185 | `declaration-track:93e6773a4e0fbe9e7266346bdafbe7eede8ed4b705b3678d8606d338ab7bd826` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
