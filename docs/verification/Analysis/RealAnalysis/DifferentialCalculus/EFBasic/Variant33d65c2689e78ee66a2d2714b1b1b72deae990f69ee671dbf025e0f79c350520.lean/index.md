# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EFBasic.Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "987f6c585cf712ebfb3430a2d8819ef5be564a15",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `987f6c585cf712ebfb3430a2d8819ef5be564a15`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.TwoLine` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.Expansion` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [differentiableAt_Gammaℝ_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/differentiableat-gamma-of-ne--4980152691ae9382d8d325cf.md) | 40 | `result-track:4980152691ae9382d8d325cfdc14a6f878c7aad0bc0a99fcbc6e54106c76afe1` |
| 2 | `def` | [GoodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/goodstrip--daaa9a99ac25a35862381212.md) | 51 | `declaration-track:daaa9a99ac25a3586238121213a5f92a267e971202f47f596aa0db154a54eadf` |
| 3 | `lemma` | [isOpen_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/isopen-goodstrip--ba2d5cd1363ead27433f2be4.md) | 53 | `result-track:ba2d5cd1363ead27433f2be4fac965b727fb36f0cc701318dc4eb743d41c46df` |
| 4 | `lemma` | [goodStrip_half_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/goodstrip-half-ne--9d0edb5c76713e93e87493f5.md) | 56 | `result-track:9d0edb5c76713e93e87493f5cefc050f6cc349f9c96addde74c2b35c00bb109f` |
| 5 | `lemma` | [goodStrip_one_sub_half_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/goodstrip-one-sub-half-ne--c31d59e54912c4595eb90348.md) | 64 | `result-track:c31d59e54912c4595eb90348fa91b1220e3bfd7f8cc293c4bfc272458a510102` |
| 6 | `lemma` | [goodStrip_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/goodstrip-ne-zero--5c079b16220f4046f60a5f8e.md) | 75 | `result-track:5c079b16220f4046f60a5f8e4c7e781b648e9ad91b619fab07ce3df64d70c42f` |
| 7 | `lemma` | [goodStrip_ne_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/goodstrip-ne-one--9f8d621cde81d1e5b76e41ab.md) | 77 | `result-track:9f8d621cde81d1e5b76e41abf4a148711a5e06731d65496e5084587554db432e` |
| 8 | `lemma` | [Gammaℝ_ne_zero_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/gamma-ne-zero-of-ne--41a8ca07365dea13f9cf0841.md) | 80 | `result-track:41a8ca07365dea13f9cf08413a486b1abcfa9ad63ebd4b9cf3f97f5bd52644ad` |
| 9 | `lemma` | [analyticAt_Gammaℝ_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/analyticat-gamma-goodstrip--e67aa4b7284839ca39eb1d92.md) | 86 | `result-track:e67aa4b7284839ca39eb1d920011a9c40cf22cdea48d401560f1920ed31d35a7` |
| 10 | `lemma` | [analyticAt_Gammaℝ_one_sub_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/analyticat-gamma-one-sub-goodstrip--caefdfb2d48035c31db74b85.md) | 91 | `result-track:caefdfb2d48035c31db74b8529ce12eeda3685e3900f6141c96580dc0788d3eb` |
| 11 | `lemma` | [chiFE_analyticAt_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/chife-analyticat-goodstrip--4c6a5cfbb719650dd9c00582.md) | 104 | `result-track:4c6a5cfbb719650dd9c005826c14c9b4678c4a3aeca8994058b929ec5398061c` |
| 12 | `lemma` | [chiFE_ne_zero_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/chife-ne-zero-goodstrip--8ad0a7abc17bf652a3465f4a.md) | 110 | `result-track:8ad0a7abc17bf652a3465f4a095427e5d8b0829fbc514f10344d09815ee5bbb3` |
| 13 | `lemma` | [L2_analyticAt_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/l2-analyticat-goodstrip--fe6bd7f15f4df0bd5f3a1018.md) | 113 | `result-track:fe6bd7f15f4df0bd5f3a10187a4d15b5cff3c0252bf6ad056c7ccac1973058b5` |
| 14 | `lemma` | [hardyW_analyticAt_goodStrip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/hardyw-analyticat-goodstrip--ca0be9a0bf2e938f83725771.md) | 120 | `result-track:ca0be9a0bf2e938f83725771e437fd8267801e4f30ddddad44dd3ebcf1010f42` |
| 15 | `def` | [E2fn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/e2fn--371814028e9d7f4990597fef.md) | 129 | `declaration-track:371814028e9d7f4990597fefda6b54b16dbd8b6e5868d3ac9e199c409f6883e0` |
| 16 | `def` | [FZfn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/fzfn--4be6d5c8ac2c13cad9855088.md) | 132 | `declaration-track:4be6d5c8ac2c13cad9855088f7b5cb7540e511c8bf11fb8e08fff3997cbd9beb` |
| 17 | `theorem` | [hardyW_eq_zeta_mul_E2fn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/hardyw-eq-zeta-mul-e2fn--4a6b7d2106059224810f836f.md) | 134 | `result-track:4a6b7d2106059224810f836f1f5c61ec48ad3d42fdc465db391daea063713956` |
| 18 | `theorem` | [E2fn_eq_L2_sub_Afn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/e2fn-eq-l2-sub-afn--ca98d7995473f0d0ef7379cd.md) | 137 | `result-track:ca98d7995473f0d0ef7379cd7d9e00eb3df3066648cfc96b451d77b7a83d3ebe` |
| 19 | `theorem` | [E2fn_eq_Efn_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/e2fn-eq-efn-add--b516ee7fbae6bca1dd219a2d.md) | 140 | `result-track:b516ee7fbae6bca1dd219a2d99110d31722a4519ec0156f529cc291747f552c0` |
| 20 | `theorem` | [analyticAt_E2fn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/analyticat-e2fn--f17edabc225110b8344b1392.md) | 143 | `result-track:f17edabc225110b8344b1392f8ddafe9b73a2510884c4787ccc42f5a72e2ba84` |
| 21 | `theorem` | [differentiableAt_E2fn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/differentiableat-e2fn--67e4f6052bbb8fb633734536.md) | 153 | `result-track:67e4f6052bbb8fb63373453697d581696cfb84c0c566268aa296ade5cff9c018` |
| 22 | `theorem` | [differentiableAt_L2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/differentiableat-l2--61c8c81d0c03579bab66ba91.md) | 156 | `result-track:61c8c81d0c03579bab66ba91a59ecd0042551af461bcac7911fe93a8285d80b7` |
| 23 | `theorem` | [deriv_E2fn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/deriv-e2fn--2a8dd333116683710b535a7c.md) | 159 | `result-track:2a8dd333116683710b535a7c6d1c2cc4429baa2d58e8229e27e8e1743bb51895` |
| 24 | `theorem` | [E2fn_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/e2fn-ne-zero--19b3f48a3f8cd063ff071bcf.md) | 164 | `result-track:19b3f48a3f8cd063ff071bcfc4f3fed45456b65ef587cd6d09680f7038c39a14` |
| 25 | `theorem` | [FZfn_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/fzfn-eq--87e54a1ec91d465477347685.md) | 169 | `result-track:87e54a1ec91d46547734768566c24e2433849613e055d608bcb8097af169632a` |
| 26 | `theorem` | [derivE2_div_E2_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/derive2-div-e2-eq--a523773494f7a999b4d70cbd.md) | 183 | `result-track:a523773494f7a999b4d70cbddeeb3518f68071b12c9b0b9ea29423403217d2f6` |
| 27 | `theorem` | [logDeriv_riemannZeta_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/logderiv-riemannzeta-conj--12a4c7b55b277f00191789c7.md) | 189 | `result-track:12a4c7b55b277f00191789c7c63f39eb170cb316321984087970433ff416bbd4` |
| 28 | `theorem` | [E2fn_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/e2fn-conj--baea4851ca89e16284447f36.md) | 193 | `result-track:baea4851ca89e16284447f363f3aadc0126e2b01b6d2987416b7cb83b6d9ed89` |
| 29 | `theorem` | [logDeriv_hardyW_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/logderiv-hardyw-conj--04aefaac9d729af3e1ac894c.md) | 196 | `result-track:04aefaac9d729af3e1ac894c01ffb0ed9161b68f0ace54669d4f48b3dbed9687` |
| 30 | `theorem` | [FZfn_conj](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/fzfn-conj--afb026616201d6917c5d4289.md) | 204 | `result-track:afb026616201d6917c5d428991e04ddb831f981ae4a6a55e814cca6c61abb788` |
| 31 | `theorem` | [logDeriv_hardyW_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/logderiv-hardyw-one-sub--93ae2eb1a9796447f5b33f29.md) | 208 | `result-track:93ae2eb1a9796447f5b33f296dc0e13684901dcb1a7a5643a51ff15ad4d57d58` |
| 32 | `theorem` | [FZfn_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/fzfn-one-sub--d67d5414d46bf47e69719294.md) | 238 | `result-track:d67d5414d46bf47e697192947fcbfb954136c30a1e395c8a336dd1ba44bd2d1e` |
| 33 | `theorem` | [finite_lowZeros_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/finite-lowzeros-right--f19ed11f33dfc61991d3d03e.md) | 244 | `result-track:f19ed11f33dfc61991d3d03ee132d6cd57465091e63a4a23ba26f3f92922c520` |
| 34 | `theorem` | [exists_zeroFree_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/exists-zerofree-line--aa1fcc31f10784fcf8d63694.md) | 329 | `result-track:aa1fcc31f10784fcf8d63694e6e70091aa0b2d186865b720b95e4ce49d305c2f` |
| 35 | `theorem` | [hardyW_ne_zero_reflect_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/declarations/hardyw-ne-zero-reflect-line--bfc7d1373999ab59fb5ae157.md) | 340 | `result-track:bfc7d1373999ab59fb5ae157b7d7090178be4aa9d7233925c5802922910a7607` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
