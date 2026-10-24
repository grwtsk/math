# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ArithmeticDirichletGramAudit.Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.FullQuadraticObstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Mu` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.HalfLinePolynomialLaplace` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [archimedean_zero_add_four_lt_neg_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/archimedean-zero-add-four-lt-neg-half--0807c8a7e8058359de8e2f6e.md) | 29 | `result-track:0807c8a7e8058359de8e2f6e297d56213d57fd269e5794f0d738649f32946b39` |
| 2 | `theorem` | [archimedean_zero_add_four_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/archimedean-zero-add-four-neg--b59c584af518a39f318e992f.md) | 67 | `result-track:b59c584af518a39f318e992f7a29c194b9d5077520ec3881d6fbb36b0216b754` |
| 3 | `theorem` | [exponential_cosine_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/exponential-cosine-laplace-integrable--92a7aa964036f346548e4b8d.md) | 78 | `result-track:92a7aa964036f346548e4b8d9a5000281f07506fde6b8a1049e0c716ab4ceaff` |
| 4 | `theorem` | [exponential_cosine_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/exponential-cosine-laplace-integral--3f92db3ff4c7075efcacae7f.md) | 89 | `result-track:3f92db3ff4c7075efcacae7fa7daf099523c75b16361f57d44e1ee72cd39f177` |
| 5 | `theorem` | [reciprocal_kernel_difference_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/reciprocal-kernel-difference-integrable--a8355a3de8c113c653f7c90b.md) | 109 | `result-track:a8355a3de8c113c653f7c90b3f1d28e5243c1edbd4102cd8c4f3fb6d7221c003` |
| 6 | `theorem` | [reciprocal_kernel_difference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/reciprocal-kernel-difference-integral--47c32822da86f676a7016b84.md) | 118 | `result-track:47c32822da86f676a7016b84187b973109c6dc5fdf91abb77d2e35a19a6da5f1` |
| 7 | `def` | [gammaDifferenceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gammadifferenceatom--e21949c23125b5a1f86ab344.md) | 135 | `declaration-track:e21949c23125b5a1f86ab344e18934b2c75a6f7134a2278ef0f10118bc5ed985` |
| 8 | `def` | [gammaDirichletDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gammadirichletdensity--417f2aef5f7f3e7ccbeb1fc5.md) | 139 | `declaration-track:417f2aef5f7f3e7ccbeb1fc57b6bf6e95ec3ab005e5f9ff844f888d346a3bb36` |
| 9 | `def` | [gammaGramIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gammagramintegrand--225edb5327c39f72c31b0add.md) | 143 | `declaration-track:225edb5327c39f72c31b0add18bb83a242c266010f444010b31c7fe685883360` |
| 10 | `theorem` | [gamma_gram_integrand_eq_cosine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gamma-gram-integrand-eq-cosine--260483493a32ccf4361f0be4.md) | 146 | `result-track:260483493a32ccf4361f0be43a6f3fb1e0e3066effcf3cb23d7043bfc592a692` |
| 11 | `theorem` | [gamma_difference_atom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gamma-difference-atom-nonneg--36b3c947d7e203b6e71dbd19.md) | 154 | `result-track:36b3c947d7e203b6e71dbd193a203f4e4ece632ebefa13a487d60e947ff62105` |
| 12 | `theorem` | [gamma_difference_atom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gamma-difference-atom-integrable--7a855354e3fa45aed8d20f8b.md) | 159 | `result-track:7a855354e3fa45aed8d20f8b5be746abe99b113ede6fb2c1c53588238ab59973` |
| 13 | `theorem` | [gamma_difference_atom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gamma-difference-atom-integral--c132953841d02e5156044372.md) | 163 | `result-track:c132953841d02e5156044372e5cd973e19bd6eaccf54aa90895eef00bc04630e` |
| 14 | `theorem` | [gamma_difference_atom_eq_geometric](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gamma-difference-atom-eq-geometric--f1edbd24483fbc48b1099841.md) | 167 | `result-track:f1edbd24483fbc48b109984116a5bc65bc83569fb723ebd13f93047bc36e7b91` |
| 15 | `theorem` | [gamma_difference_atoms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gamma-difference-atoms-summable--5dd07cab93a2c9ea8f4c87c8.md) | 175 | `result-track:5dd07cab93a2c9ea8f4c87c8421ebd24feb461d2516c82cb915fd64cbc3251fa` |
| 16 | `theorem` | [gamma_difference_atoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gamma-difference-atoms-tsum--5a1431805fb747d5b0e40a01.md) | 181 | `result-track:5a1431805fb747d5b0e40a01d73066ef0973460da016a175ebec799a68f6fc25` |
| 17 | `theorem` | [gamma_gram_integrand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gamma-gram-integrand-nonneg--8e6c78be591ddf1656ac29f6.md) | 190 | `result-track:8e6c78be591ddf1656ac29f6d1dbbd3823c30e42c2d5604e60a24766f2421e48` |
| 18 | `theorem` | [gamma_atom_integral_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gamma-atom-integral-norms-summable--2dece25affde520f921de394.md) | 198 | `result-track:2dece25affde520f921de394fa0365623afba88776c0d40d4cad795324f310cd` |
| 19 | `theorem` | [gamma_gram_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/gamma-gram-integrand-integrable--7a6c72f76294b37d24b7427e.md) | 204 | `result-track:7a6c72f76294b37d24b7427e59642b8b0797541e06c269c374b24f2607d5a0b7` |
| 20 | `theorem` | [archimedean_difference_eq_gamma_gram_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/archimedean-difference-eq-gamma-gram-integral--dbcaaa588011ca206ea02c7e.md) | 240 | `result-track:dbcaaa588011ca206ea02c7e9c3fecf50cb64c0ad26a389b58b7945b49a7ff70` |
| 21 | `theorem` | [full_symbol_eq_scalar_add_gamma_gram_add_prime_power_defect](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/full-symbol-eq-scalar-add-gamma-gram-add-prime-power-defect--665c9f827f4dbfc0bf2af9e7.md) | 262 | `result-track:665c9f827f4dbfc0bf2af9e72ccdf2030f24ef7025f9acd9ebf52ea282dc1be7` |
| 22 | `theorem` | [full_symbol_zero_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/full-symbol-zero-le--2a423e862693642775b156cc.md) | 270 | `result-track:2a423e862693642775b156cc56b8344ac9c6471e8dbdc4e8e77485ce9f2b3d35` |
| 23 | `def` | [translationGramForm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/translationgramform--87d4ddf650ff70cd224f9eeb.md) | 284 | `declaration-track:87d4ddf650ff70cd224f9eebb16f1cd839c91a2d3e5f42c2f5e45f7c92b28101` |
| 24 | `theorem` | [translation_gram_form_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/translation-gram-form-nonneg--ef2f0ff32df94b10de2e150c.md) | 287 | `result-track:ef2f0ff32df94b10de2e150cbebc0b6a0ce3407d6684770ff40a02d2e3d402d4` |
| 25 | `theorem` | [no_uniform_translation_gram_certificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/declarations/no-uniform-translation-gram-certificate--6ffa8e8fc7d7618c0df15ead.md) | 293 | `result-track:6ffa8e8fc7d7618c0df15ead2cc96d4cc2c9c9d7196645ba5d2502ea1c86d787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
