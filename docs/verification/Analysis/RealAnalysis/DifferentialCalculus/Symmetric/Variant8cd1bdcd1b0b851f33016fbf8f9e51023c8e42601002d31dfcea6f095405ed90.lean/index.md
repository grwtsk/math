# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Symmetric.Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4ab4652a30b92ccfd172a3911a1eb77cee60984",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4ab4652a30b92ccfd172a3911a1eb77cee60984`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.IteratedFDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymmSndFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/issymmsndfderivwithinat--69deaf15e5e506aaef60d551.md) | 79 | `declaration-track:69deaf15e5e506aaef60d551eb799cda99cb3a4da10283942e7e80765041a9c7` |
| 2 | `def` | [IsSymmSndFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/issymmsndfderivat--23f49579e80e4eda7f159f81.md) | 87 | `declaration-track:23f49579e80e4eda7f159f81e3a56f47225f697348747ad8f07abc0c88b8956f` |
| 3 | `lemma` | [IsSymmSndFDerivWithinAt.eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/issymmsndfderivwithinat-eq--f57bb680fb4993706bf0acc6.md) | 90 | `result-track:f57bb680fb4993706bf0acc6fc7b0dde34b4833da041ee591addcd9f4b081501` |
| 4 | `lemma` | [IsSymmSndFDerivAt.eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/issymmsndfderivat-eq--6b9153aa357c77423164d680.md) | 94 | `result-track:6b9153aa357c77423164d680244b3c4d7f23cd4413c1f772049da29e32978ce8` |
| 5 | `lemma` | [fderivWithin_fderivWithin_eq_of_mem_nhdsWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/fderivwithin-fderivwithin-eq-of-mem-nhdswithin--22cbd7bca65e6acfe64fd2e5.md) | 99 | `result-track:22cbd7bca65e6acfe64fd2e59d15f842d401cb3f2be48dac77ad032f2d836e54` |
| 6 | `lemma` | [fderivWithin_fderivWithin_eq_of_eventuallyEq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/fderivwithin-fderivwithin-eq-of-eventuallyeq--91e8e7a9afd8d99a90829046.md) | 116 | `result-track:91e8e7a9afd8d99a908290463ba80afbe0bc7d4d95f80453c456f9d1cca41eed` |
| 7 | `lemma` | [fderivWithin_fderivWithin_eq_of_mem_nhds](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/fderivwithin-fderivwithin-eq-of-mem-nhds--6fd34a3ce2e455f11d2f37e9.md) | 123 | `result-track:6fd34a3ce2e455f11d2f37e9d5825a7fa85f8103ab5d8e65d075e23a70dddf26` |
| 8 | `lemma` | [isSymmSndFDerivWithinAt_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/issymmsndfderivwithinat-univ--a441c5d30dd9f75263da0861.md) | 130 | `result-track:a441c5d30dd9f75263da086106e13bdf3cbf567ab6aab6c0970e51b7200b0418` |
| 9 | `theorem` | [IsSymmSndFDerivWithinAt.mono_of_mem_nhdsWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/issymmsndfderivwithinat-mono-of-mem-nhdswithin--633b00e55ecf942bc9c9d79d.md) | 134 | `result-track:633b00e55ecf942bc9c9d79d7a75d3f08a856664b6ba4ff7efcaf584250e787c` |
| 10 | `theorem` | [IsSymmSndFDerivWithinAt.congr_set](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/issymmsndfderivwithinat-congr-set--b2558705bf37a8f82740663d.md) | 142 | `result-track:b2558705bf37a8f82740663daa4ecfab7535265035533a6d1f9e160b535ee571` |
| 11 | `theorem` | [isSymmSndFDerivWithinAt_congr_set](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/issymmsndfderivwithinat-congr-set--cbc69620268770f44fd584cd.md) | 148 | `result-track:cbc69620268770f44fd584cdee25af728677cabfa9a521adafd4c7967d2fc862` |
| 12 | `theorem` | [IsSymmSndFDerivAt.isSymmSndFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/issymmsndfderivat-issymmsndfderivwithinat--b1cf63b284eb1fb2d1991c49.md) | 152 | `result-track:b1cf63b284eb1fb2d1991c49907fb4d9111a38e6dfce16ba84cfa1f88e88fca0` |
| 13 | `theorem` | [ContDiffWithinAt.isSymmSndFDerivWithinAt_of_omega](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/contdiffwithinat-issymmsndfderivwithinat-of-omega--c50d5405ee68ac1bff39dd27.md) | 159 | `result-track:c50d5405ee68ac1bff39dd274b956a8431df509137996db9a39e1cf9dd495fff` |
| 14 | `theorem` | [ContDiffAt.isSymmSndFDerivAt_of_omega](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/contdiffat-issymmsndfderivat-of-omega--40bae7934e43c7b8007adea9.md) | 170 | `result-track:40bae7934e43c7b8007adea93e1e0cff6da04e535c404e31610906da7ef79af7` |
| 15 | `theorem` | [Convex.taylor_approx_two_segment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/convex-taylor-approx-two-segment--5ae478b3209d3bfa717f098a.md) | 194 | `result-track:5ae478b3209d3bfa717f098ac6b2b8a9eb4158084ce9d5542958934e021d3d55` |
| 16 | `theorem` | [Convex.isLittleO_alternate_sum_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/convex-islittleo-alternate-sum-square--00d0cec7ad332786589c6d86.md) | 303 | `result-track:00d0cec7ad332786589c6d863ec2bc5f4e10c94b4db9dc8d8a40ab4cc63226ef` |
| 17 | `theorem` | [Convex.second_derivative_within_at_symmetric_of_mem_interior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/convex-second-derivative-within-at-symmetric-of-mem-interior--2ce2d6300ce405df23b17912.md) | 344 | `result-track:2ce2d6300ce405df23b17912d0a9873a11b40a85a6225a18745a47afce7b1176` |
| 18 | `theorem` | [Convex.second_derivative_within_at_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/convex-second-derivative-within-at-symmetric--c017f15a445e856d9a70da4a.md) | 368 | `result-track:c017f15a445e856d9a70da4a5d56f2d0d164846b5cb2a00aa06578d6024a74e3` |
| 19 | `theorem` | [second_derivative_symmetric_of_eventually_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/second-derivative-symmetric-of-eventually-of-real--3068f6afb758711eea4c0146.md) | 418 | `result-track:3068f6afb758711eea4c0146568d296c37a03f95f1640359027eebde0eb6e4a2` |
| 20 | `theorem` | [second_derivative_symmetric_of_eventually](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/second-derivative-symmetric-of-eventually--3cab3fd71da3d82a63fbcf2d.md) | 436 | `result-track:3cab3fd71da3d82a63fbcf2dfa49ee979528724db7ae626870518103fb65a9c1` |
| 21 | `theorem` | [second_derivative_symmetric](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/second-derivative-symmetric--ac04c72ddb467c57bab9b0aa.md) | 467 | `result-track:ac04c72ddb467c57bab9b0aaad1e12de36825b58223909f282dd917ad805af66` |
| 22 | `lemma` | [minSmoothness_of_isRCLikeNormedField](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/minsmoothness-of-isrclikenormedfield--1941e58ddd9b9d88d30cb145.md) | 480 | `result-track:1941e58ddd9b9d88d30cb1455a8a5bba0bd5b17fc7b10c243936af7b4f819147` |
| 23 | `lemma` | [le_minSmoothness](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/le-minsmoothness--9093a59ad809de9dc99c0738.md) | 484 | `result-track:9093a59ad809de9dc99c0738ce4564bfd9a9ae5ce1b04c2984882db503cc104a` |
| 24 | `lemma` | [minSmoothness_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/minsmoothness-add--6c3b130296dd53852d2afbb7.md) | 488 | `result-track:6c3b130296dd53852d2afbb78647cbf769258da7c629226d39e5d2c69e48bca1` |
| 25 | `lemma` | [minSmoothness_monotone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/minsmoothness-monotone--2a1a122c0d7d6e16db565b2f.md) | 492 | `result-track:2a1a122c0d7d6e16db565b2f282b991a4ef634caaea24d694f719d2744fd0372` |
| 26 | `lemma` | [minSmoothness_eq_infty](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/minsmoothness-eq-infty--fe2d38b1bbea14a6cbe92834.md) | 497 | `result-track:fe2d38b1bbea14a6cbe92834c684626dd258e8600279f981389548d841c93b39` |
| 27 | `lemma` | [exist_minSmoothness_le_ne_infty](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/exist-minsmoothness-le-ne-infty--79ab52d9f65e8aa5e5b5fa56.md) | 507 | `result-track:79ab52d9f65e8aa5e5b5fa56718844a6ce8e8c5e138b5742746cd932cbc12324` |
| 28 | `theorem` | [ContDiffAt.isSymmSndFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/contdiffat-issymmsndfderivat--9a7a7e4e52ecf01c487f6f60.md) | 518 | `result-track:9a7a7e4e52ecf01c487f6f608169742d61331acafd11a1bd78451ade2de88743` |
| 29 | `theorem` | [ContDiffWithinAt.isSymmSndFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant8cd1bdcd1b0b851f33016fbf8f9e51023c8e42601002d31dfcea6f095405ed90.lean/declarations/contdiffwithinat-issymmsndfderivwithinat--e2ab6b97ca85044bf5f69f59.md) | 544 | `result-track:e2ab6b97ca85044bf5f69f590c78c5e66020be276d3dceae9ae58c5f45b37c5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
