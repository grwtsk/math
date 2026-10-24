# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9db56067d5f9e092171b27535c8c8cd1699b8bb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9db56067d5f9e092171b27535c8c8cd1699b8bb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.ZetaReflect` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Fold` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.CountByIntegral` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.XiLogDeriv` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Shift` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ne_neg_nat_of_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/ne-neg-nat-of-im-ne-zero--c8f4c9c880f6b745e714cafe.md) | 45 | `result-track:c8f4c9c880f6b745e714cafe01590b636277e8250a45b8decc29968c8eff2f86` |
| 2 | `lemma` | [ne_one_of_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/ne-one-of-im-ne-zero--b3b7904b6a8d99bd4a7c9d41.md) | 48 | `result-track:b3b7904b6a8d99bd4a7c9d417320a9af8ae0bed07c98a5a5dfb6947e75634a25` |
| 3 | `lemma` | [ne_zero_of_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/ne-zero-of-im-ne-zero--9de77105f3c833d5a930f1fc.md) | 51 | `result-track:9de77105f3c833d5a930f1fc535c1f14e122d28484a1a1664369ff7ead0ee4a6` |
| 4 | `lemma` | [im_one_sub_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/im-one-sub-ne-zero--3aedf9cccd146cd937e15a70.md) | 54 | `result-track:3aedf9cccd146cd937e15a70659c9689fdfb98c177e6b58181b6d3aa465e1e2d` |
| 5 | `lemma` | [half_ne_neg_nat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/half-ne-neg-nat--97db415d5154a9c19188380c.md) | 57 | `result-track:97db415d5154a9c19188380cc6fa297bfd37f8541ba0b68be973166ffc2cb747` |
| 6 | `lemma` | [Gammaℝ_ne_zero_of_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/gamma-ne-zero-of-im-ne-zero--415cfcbf4bb59571db791477.md) | 62 | `result-track:415cfcbf4bb59571db791477b6d0d27879ba922550802352212d87d319798856` |
| 7 | `lemma` | [differentiableAt_Gammaℝ_of_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/differentiableat-gamma-of-im-ne-zero--06cce0060795474aaaec2845.md) | 67 | `result-track:06cce0060795474aaaec2845701bc58d0fc40c0173926cc261bd9460ee61c6a2` |
| 8 | `lemma` | [isOpen_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/isopen-im-ne-zero--8fdda6aba775ed6f8419692a.md) | 76 | `result-track:8fdda6aba775ed6f8419692a7c8c861712f48021810e8c97822171c6755321b3` |
| 9 | `lemma` | [analyticAt_Gammaℝ_of_im_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/analyticat-gamma-of-im-ne-zero--2feea8356751ae520c58b0a4.md) | 78 | `result-track:2feea8356751ae520c58b0a42271059e81651cdd2b9284f493a82d08b355b9de` |
| 10 | `lemma` | [analyticAt_Gammaℝ_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/analyticat-gamma-one-sub--a5a514529381c0966dec2a92.md) | 83 | `result-track:a5a514529381c0966dec2a9298c4a9654a3eaeea1fd99e1596fd78a4673f90aa` |
| 11 | `lemma` | [chiFE_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/chife-def--179d6f8ba2087b2aef75b7bd.md) | 88 | `result-track:179d6f8ba2087b2aef75b7bdad00ee469f4e8f8dc481d4c95f8f7c0e1533a32c` |
| 12 | `lemma` | [chiFE_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/chife-analyticat--90189df6142a704821068783.md) | 90 | `result-track:90189df6142a704821068783c8297138f3547d89ad86c0f956d19c389b749ac0` |
| 13 | `lemma` | [chiFE_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/chife-ne-zero--5a4f4af3f33dee33d8d65560.md) | 96 | `result-track:5a4f4af3f33dee33d8d655601610326c3b39c4071549bf62a5896cc4143248c6` |
| 14 | `lemma` | [chiFE_mul_chiFE_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/chife-mul-chife-one-sub--b4c5a432af4807ec87eba412.md) | 99 | `result-track:b4c5a432af4807ec87eba412a157571f2c2b56712c3fa0ae241f7b966dfe1cdd` |
| 15 | `lemma` | [logDeriv_chiFE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/logderiv-chife--ddc1d038e5cab5e031f37f75.md) | 104 | `result-track:ddc1d038e5cab5e031f37f75be6fe9d0f700cad750ee1ee58d93e7c51867c0c9` |
| 16 | `theorem` | [L2_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/l2-eq--4e8df1554eca8d1d64ac4a81.md) | 121 | `result-track:4e8df1554eca8d1d64ac4a81b76724a5e2adb911f91b0cf77618e091954abc67` |
| 17 | `theorem` | [L2_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/l2-one-sub--bab4b7ccb22f065377c30275.md) | 124 | `result-track:bab4b7ccb22f065377c30275cbee26c4413cb888af9012c3d1fa8b56ee04b326` |
| 18 | `theorem` | [L2_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/l2-conj--9b19c557aee6b484a4c7de06.md) | 127 | `result-track:9b19c557aee6b484a4c7de06b858ab4ee630ea823b05b94fa406ea5ad2d3a40c` |
| 19 | `theorem` | [L2_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/l2-analyticat--7f5b483186bfe7c854f72691.md) | 132 | `result-track:7f5b483186bfe7c854f72691c86a55e6ef33b15c7f3b1b3613e9bc16a2523d60` |
| 20 | `theorem` | [deriv_chiFE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/deriv-chife--741e69749ef2dd4bf9df7fea.md) | 139 | `result-track:741e69749ef2dd4bf9df7fea8a8b1b3299a8d97eb45dcf9d152789e04a406b7a` |
| 21 | `theorem` | [zeta_eq_chiFE_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/zeta-eq-chife-mul--6d075116ece6c16af0e0b94e.md) | 145 | `result-track:6d075116ece6c16af0e0b94e9e4a92c88bca8977e587cd31f491fffccf9d660c` |
| 22 | `lemma` | [isOpen_ne_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/isopen-ne-one--3ff0da15535e2b8014410fd5.md) | 162 | `result-track:3ff0da15535e2b8014410fd57cee8a198553033ac9c5d3f21d081d67051a6680` |
| 23 | `lemma` | [analyticAt_riemannZeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/analyticat-riemannzeta--2730b7279a4bb760463f3cbe.md) | 164 | `result-track:2730b7279a4bb760463f3cbec9a4aa761f2d7468ada01c6e1315df599f71ef88` |
| 24 | `lemma` | [analyticAt_deriv_riemannZeta](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/analyticat-deriv-riemannzeta--20c550662e27f4f85eb7e083.md) | 169 | `result-track:20c550662e27f4f85eb7e08304a1f1b260e390093de516504997c81421bed4bf` |
| 25 | `theorem` | [hardyW_analyticAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/hardyw-analyticat--1f35939f6722d9648ce4f1ed.md) | 173 | `result-track:1f35939f6722d9648ce4f1ed31b1223aef9df42c6d0951ee1635d6c77e89d967` |
| 26 | `theorem` | [hardyW_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/hardyw-differentiableat--39fbebf73263d0ec37fa215b.md) | 179 | `result-track:39fbebf73263d0ec37fa215b9a729bf9b24fc4152bcd7372e3b4c487de2a17da` |
| 27 | `theorem` | [hardyW_analyticOnNhd](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/hardyw-analyticonnhd--35ecb34e9c5bab4bd4bf4cd3.md) | 182 | `result-track:35ecb34e9c5bab4bd4bf4cd36cb12bc15c8d42495561eda6df08904088d17061` |
| 28 | `lemma` | [deriv_conj_of_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/deriv-conj-of-symm--78dc1550f175d9af6c9eaa74.md) | 185 | `result-track:78dc1550f175d9af6c9eaa74a13bac2e2e5e5e7b03080da76cfa29d2e4734471` |
| 29 | `lemma` | [deriv_riemannZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/deriv-riemannzeta-conj--8461a0ad1f6c8e1b293b5cfa.md) | 194 | `result-track:8461a0ad1f6c8e1b293b5cfa02ae52dc533478f076bc7f51633f0e28cafba6a3` |
| 30 | `theorem` | [hardyW_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/hardyw-conj--c4bae4871ec7d0a3ad3e8a61.md) | 203 | `result-track:c4bae4871ec7d0a3ad3e8a61e601999d5a86bf705e252037677627d52654d1b9` |
| 31 | `theorem` | [deriv_riemannZeta_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/deriv-riemannzeta-eq--8261ede5dcc25ed8eda69634.md) | 209 | `result-track:8261ede5dcc25ed8eda696344e80ca0d2e7b67445ce431e1ad9c55535c98b3bc` |
| 32 | `theorem` | [hardyW_eq_neg_chiFE_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/hardyw-eq-neg-chife-mul--384913e5fb67bb078b2daeb0.md) | 229 | `result-track:384913e5fb67bb078b2daeb0daed87364d5aa9e6d5bb762f99ca549592eff693` |
| 33 | `theorem` | [hardyW_one_sub_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/hardyw-one-sub-eq-zero-iff--f9b2f9fffac9cbfe801de832.md) | 234 | `result-track:f9b2f9fffac9cbfe801de832572c87cd92cf4cb0298c560c6efbb76b9b628ff3` |
| 34 | `theorem` | [hardyW_conj_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/hardyw-conj-eq-zero-iff--c0360ec509332eacc4c97dca.md) | 238 | `result-track:c0360ec509332eacc4c97dcac6fa0c3df1c5c59d659c8553f31b1f67a5b68207` |
| 35 | `theorem` | [isWZero_reflect_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/iswzero-reflect-iff--1995cc19b03b7521c76cd6fe.md) | 242 | `result-track:1995cc19b03b7521c76cd6fe3cee9a3190a0456d4cc244f6da4575eeeb38f691` |
| 36 | `theorem` | [analyticOrderAt_hardyW_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/analyticorderat-hardyw-one-sub--919e60093ec349770ba164d5.md) | 255 | `result-track:919e60093ec349770ba164d548ebfd5874150154baa9204b914c5132eb4f3908` |
| 37 | `theorem` | [analyticOrderAt_hardyW_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/analyticorderat-hardyw-conj--fbdcf949516434f9b8439b79.md) | 276 | `result-track:fbdcf949516434f9b8439b79a9cb6f90f5ac1eb94265d88610856308d764e89b` |
| 38 | `theorem` | [wMult_reflect](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant48b8db3a5f5e9a907d652abadf989dfa47c0fd17a522f079f9a3c0f46510c8d7.lean/declarations/wmult-reflect--49a0c6e2077b90c6060c0494.md) | 288 | `result-track:49a0c6e2077b90c6060c049483c528b83c37d1e1567dfb933ab3a24a6a810cbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
