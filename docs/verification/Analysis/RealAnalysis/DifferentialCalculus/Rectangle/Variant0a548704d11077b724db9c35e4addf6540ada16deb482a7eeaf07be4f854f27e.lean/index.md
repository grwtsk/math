# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Rectangle.Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96bd1bc274ce2ce54309784184b38eeb568d6650",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96bd1bc274ce2ce54309784184b38eeb568d6650`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.EFContour.Poles` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.FullLine` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/zc--854f867b32dd16e2f569c77b.md) | 41 | `declaration-track:854f867b32dd16e2f569c77be5508d08b724ecc818dd20972cc6d3c95a601f3d` |
| 2 | `def` | [wc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/wc--56465b0a1130dab695a2bbf7.md) | 43 | `declaration-track:56465b0a1130dab695a2bbf739338c38960befc35c88946b669e9ff1e0bb8daa` |
| 3 | `lemma` | [zc_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/zc-re--df0ee7abeb1d2b0393436767.md) | 45 | `result-track:df0ee7abeb1d2b039343676790ea53a69e8f65988e98cfa868a888d3c863a2d2` |
| 4 | `lemma` | [zc_im](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/zc-im--bc77271ca59039b80641f784.md) | 46 | `result-track:bc77271ca59039b80641f784d4fcf8b53c6892b0e75c998650092cf83518b3a6` |
| 5 | `lemma` | [wc_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/wc-re--447b9399e9cf18186b6f2f7c.md) | 47 | `result-track:447b9399e9cf18186b6f2f7cdee7019c800e8ad23c28d6311bbe222fa8599fec` |
| 6 | `lemma` | [wc_im](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/wc-im--9bedbea22a6f4daee9886273.md) | 48 | `result-track:9bedbea22a6f4daee9886273bc6043c3f675715cdaa7e8a159d3701ee8a62c37` |
| 7 | `lemma` | [mem_rect_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/mem-rect-iff--35c6d1c855ff274a8021d022.md) | 50 | `result-track:35c6d1c855ff274a8021d0221fc1325b0a317ed5bf457f3889fc584824b3b1fe` |
| 8 | `lemma` | [border_cases](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/border-cases--f700fa096633dbf1cfde0b2d.md) | 55 | `result-track:f700fa096633dbf1cfde0b2db2645625525730dc6aba76322400db1e43df968d` |
| 9 | `lemma` | [zc_le_wc_re](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/zc-le-wc-re--d67d6fb2faa75bb7e82d50ac.md) | 70 | `result-track:d67d6fb2faa75bb7e82d50acc1adace987f29baa32bf406dff594613c316a1a7` |
| 10 | `lemma` | [zc_le_wc_im](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/zc-le-wc-im--3d4ce56728d540e3158f60cc.md) | 72 | `result-track:3d4ce56728d540e3158f60cc9347e35c4c52d6229282ca14083f4809ff8bd9db` |
| 11 | `lemma` | [re_bounds_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/re-bounds-of-mem--59310707ecb32dd8ea3de713.md) | 75 | `result-track:59310707ecb32dd8ea3de713ebfa4d79e594afce2e2966a4257ba198df7ed07b` |
| 12 | `lemma` | [border_ne_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/border-ne-zero-one--fca244e4aaa5a70ace490b30.md) | 80 | `result-track:fca244e4aaa5a70ace490b30c57ee4e90264c51f42955e12b3d6f9fea816e84c` |
| 13 | `lemma` | [mem_stripReg_of_border](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/mem-stripreg-of-border--fc3a02f8f4b135ffd160c3b2.md) | 84 | `result-track:fc3a02f8f4b135ffd160c3b2e90c754dd09122423693d2a1ef8dba88e9055689` |
| 14 | `lemma` | [zero_mem_rect](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/zero-mem-rect--81c867b590b713a701197995.md) | 89 | `result-track:81c867b590b713a701197995583aa299ca36f5014c2d3162fa0c3bdefb4f3149` |
| 15 | `lemma` | [one_mem_rect](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/one-mem-rect--3895970a1e1f0aef093155cb.md) | 92 | `result-track:3895970a1e1f0aef093155cb4a06073e086e6a560b47ce755d23a61c921daeaa` |
| 16 | `lemma` | [Gammaℝ_ne_zero_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/gamma-ne-zero-of-mem--4c4437fc13e902f94d4aacfb.md) | 95 | `result-track:4c4437fc13e902f94d4aacfb89a383ab8af16d832d46b465cc3802ebbc394f84` |
| 17 | `lemma` | [Gammaℝ_one_sub_ne_zero_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/gamma-one-sub-ne-zero-of-mem--5f6ad5d8b468c1aa0d4b4c58.md) | 98 | `result-track:5f6ad5d8b468c1aa0d4b4c58844cc4d10bff2262844683c148832b9035c23f90` |
| 18 | `lemma` | [Hfn_analyticOnNhd](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/hfn-analyticonnhd--8f2aa93eba2cfc7f972e677b.md) | 110 | `result-track:8f2aa93eba2cfc7f972e677bb82d9ac72b57714b70d3912ba099f166ab7bef83` |
| 19 | `theorem` | [rect_invGammaℝ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/rect-invgamma--db83262cc884ccc2a3641f43.md) | 113 | `result-track:db83262cc884ccc2a3641f43360623de7dec930804026d80b385afe92ffeeb12` |
| 20 | `theorem` | [rect_invGammaℝ_one_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/rect-invgamma-one-sub--ca849fbf345f15118e43c140.md) | 130 | `result-track:ca849fbf345f15118e43c14024668182a4c62711f5a57bb60b7fb32a01d9a1e1` |
| 21 | `theorem` | [rect_mulSubOne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/rect-mulsubone--622fcdc152dbc7330d3f7480.md) | 150 | `result-track:622fcdc152dbc7330d3f748084566765c65f092c2a359645e1c062fc853365ae` |
| 22 | `lemma` | [differentiable_subOne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/differentiable-subone--e4f3b34a336fea6e3790c459.md) | 174 | `result-track:e4f3b34a336fea6e3790c459a8538ab3b568d50a32e0c33267f4ef43d4917b3f` |
| 23 | `def` | [subOne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/subone--ed2de330ed429c2e9bf9379e.md) | 177 | `declaration-track:ed2de330ed429c2e9bf9379e27a4074ee23d405f1f9b3fa3d00eeefc89686d42` |
| 24 | `lemma` | [differentiable_subOne'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/differentiable-subone--c47d4911fb3d03c8ae99f472.md) | 180 | `result-track:c47d4911fb3d03c8ae99f47278a3e5b5c99de0c0c812ad304e206ed994db4f7b` |
| 25 | `lemma` | [polarPoly_eq_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/polarpoly-eq-mul--8f68721ba3efa01fbaeea695.md) | 183 | `result-track:8f68721ba3efa01fbaeea695b3d23cb756e340de1f44ac861229cd9c98a38ab6` |
| 26 | `lemma` | [analyticOrderAt_subOne_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/analyticorderat-subone-zero--174fa438ddae72af00766269.md) | 187 | `result-track:174fa438ddae72af00766269eb31a09b55e2ce71c6bb66413a2ac4a998c27f87` |
| 27 | `lemma` | [analyticOrderAt_subOne_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/analyticorderat-subone-one--64323c28c5b795659f7913af.md) | 191 | `result-track:64323c28c5b795659f7913af8e1aa1279e44997f3b5b9393ffdaf4e60a02d504` |
| 28 | `lemma` | [analyticOrderAt_of_nat](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/analyticorderat-of-nat--2dedb37a764f07fda5389373.md) | 197 | `result-track:2dedb37a764f07fda53893737528eaac476b9519d89d538046f4867832ce128d` |
| 29 | `lemma` | [differentiable_polarPoly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/differentiable-polarpoly--01d80934abd40cb76d1e9da5.md) | 206 | `result-track:01d80934abd40cb76d1e9da5d01fba9bf64fe3d1d04b4fbd84b54fed97247fa2` |
| 30 | `lemma` | [polarPoly_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/polarpoly-eq-zero-iff--3d4e03f2a0a8bcd7803e64fd.md) | 210 | `result-track:3d4e03f2a0a8bcd7803e64fdac70eb24f5a4c03fc960ae70850641ac3afae8ab` |
| 31 | `lemma` | [analyticOrderNatAt_polarPoly_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/analyticordernatat-polarpoly-zero--b3714bbfd9bb1321c5d25053.md) | 214 | `result-track:b3714bbfd9bb1321c5d25053d56ae282548a987e9f2db17f73732ae6a271f691` |
| 32 | `lemma` | [analyticOrderNatAt_polarPoly_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/analyticordernatat-polarpoly-one--738b7788c62f0b02d3b618c5.md) | 221 | `result-track:738b7788c62f0b02d3b618c598526bb71b91925978174b45ee045a594431106a` |
| 33 | `theorem` | [rect_polarPoly](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/rect-polarpoly--d0089870476d871933409871.md) | 228 | `result-track:d0089870476d8719334098719c900c170fac469123de1768f5a3c61c890faec2` |
| 34 | `theorem` | [rect_Wreg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/rect-wreg--6bf1bd11dc62090c97b5766d.md) | 251 | `result-track:6bf1bd11dc62090c97b5766de13ce2495ff8af7f17978b61a0af3c6a34739d61` |
| 35 | `lemma` | [L2_border](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/l2-border--f75700f246177d5ef5659abd.md) | 304 | `result-track:f75700f246177d5ef5659abd022c78ff11d771aae23b41aa478cf8c1b74506b3` |
| 36 | `lemma` | [Lminus_border](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/lminus-border--1ca15ecf25490835c9f4c7b8.md) | 315 | `result-track:1ca15ecf25490835c9f4c7b8229e456330026301c8b137371f9182610f8ab740` |
| 37 | `lemma` | [FZ_border](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/fz-border--135294ed7f71a7377e27882e.md) | 326 | `result-track:135294ed7f71a7377e27882e7b8b8234e2c836320ef30edca9fbb97a1a3d2856` |
| 38 | `lemma` | [borderIntegrable_of_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/borderintegrable-of-continuouson--f7395a487e966c8852aea253.md) | 335 | `result-track:f7395a487e966c8852aea25357edb6c2ab50f00922b60afcb458aae4ce609d0d` |
| 39 | `lemma` | [continuousOn_logDeriv_border](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/continuouson-logderiv-border--911e18844980c8ad3a236669.md) | 342 | `result-track:911e18844980c8ad3a23666928549d9d61023047a30df9a1459c7e0d59883b71` |
| 40 | `lemma` | [rect'_lincomb](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/rect-lincomb--5ae3fb859965f38f2955b754.md) | 351 | `result-track:5ae3fb859965f38f2955b7543c542b6991c0d07eb898c9a8448e5ef3851474a9` |
| 41 | `theorem` | [rect_Lminus](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/rect-lminus--4845ae724be4e2a59d797b54.md) | 383 | `result-track:4845ae724be4e2a59d797b540eaac96b298edf60f973f6f30e8c037afa4e6260` |
| 42 | `theorem` | [rect_FZ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variant0a548704d11077b724db9c35e4addf6540ada16deb482a7eeaf07be4f854f27e.lean/declarations/rect-fz--f2ad2eaab128aa1a86a7ae50.md) | 411 | `result-track:f2ad2eaab128aa1a86a7ae505a6a2d825fc31b4954f3724acaa5e5753016b3d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
