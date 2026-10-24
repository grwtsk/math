# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceReflectionDuality.Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f0cbb912f6527520607fb49758b411b742172c0",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f0cbb912f6527520607fb49758b411b742172c0`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Monotonicity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComplexL2](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/complexl2--a31af1c42b733280366d4cfb.md) | 19 | `declaration-track:a31af1c42b733280366d4cfb975ab25f1dd7acc81566c3598aebe08fc4f75cb9` |
| 2 | `def` | [signSymbol](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/signsymbol--712b1a9c96f44accc20cf3e9.md) | 22 | `declaration-track:712b1a9c96f44accc20cf3e96b05c4f6be13cfab85a8d9b1a94b5a5d3e3b4992` |
| 3 | `theorem` | [signSymbol_measurable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/signsymbol-measurable--33cbea39896fc2ce8a3a8dc7.md) | 24 | `result-track:33cbea39896fc2ce8a3a8dc7c26b1a09766805b1b34f80bf44b3d9beef09d98c` |
| 4 | `theorem` | [signSymbol_norm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/signsymbol-norm--79e74f8e676513f98debd8c0.md) | 27 | `result-track:79e74f8e676513f98debd8c0fa8ee8bb683385bdf972e50c4acdf00a14f5cf16` |
| 5 | `theorem` | [multiply_memLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/multiply-memlp--dc5501f6a975769c466772b1.md) | 31 | `result-track:dc5501f6a975769c466772b16cde08b4994275bea1308ae409b0b8d5df73691f` |
| 6 | `def` | [multiply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/multiply--ced9971cac647dfb056511d5.md) | 37 | `declaration-track:ced9971cac647dfb056511d55ca9b379413441958f0939830e232b489da0299d` |
| 7 | `theorem` | [multiply_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/multiply-ae--7966a78be697dfa4f7ccfc7a.md) | 41 | `result-track:7966a78be697dfa4f7ccfc7a42dd76e85f750cb3b9fa80f554812c4f7cf15d61` |
| 8 | `def` | [multiplyLI](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/multiplyli--a01575f2a08350ff3a7c8da2.md) | 46 | `declaration-track:a01575f2a08350ff3a7c8da222a2841964bfb3335b71e8d3536bb077332a5dea` |
| 9 | `def` | [signMultiplierLI](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/signmultiplierli--6fea6824e5b1262db4f5ae73.md) | 70 | `declaration-track:6fea6824e5b1262db4f5ae730ee13e32c0358a4b3d7fea38b26e5c9f12d372bc` |
| 10 | `theorem` | [signMultiplierLI_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/signmultiplierli-coe-ae--3692e99c1f685965f7792bc6.md) | 73 | `result-track:3692e99c1f685965f7792bc6c91e51738110276cc62cb1279179b174b874301a` |
| 11 | `theorem` | [signMultiplier_involutive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/signmultiplier-involutive--471e5a907a063411e254e9b0.md) | 77 | `result-track:471e5a907a063411e254e9b05678be56101e2063ab3e682181ee43a3ea556759` |
| 12 | `def` | [signMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/signmultiplier--1e2b917ae9ff60cd22796469.md) | 86 | `declaration-track:1e2b917ae9ff60cd227964697ae4846e35a3ee2a56c9ab55a4e37baf0166b739` |
| 13 | `theorem` | [signMultiplier_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/signmultiplier-coe-ae--a0a631b7503fb3b60f05a04d.md) | 90 | `result-track:a0a631b7503fb3b60f05a04d13ab19b0f1fccb2c55329b3ee9ac5e39cf9f0064` |
| 14 | `def` | [reflectionLI](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/reflectionli--ab58d045e546dfd3571efa02.md) | 95 | `declaration-track:ab58d045e546dfd3571efa0288de934bee2451542fdc360da025df7a098a6a8c` |
| 15 | `theorem` | [reflectionLI_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/reflectionli-coe-ae--05ef2382e57151b674703721.md) | 99 | `result-track:05ef2382e57151b674703721e6340d4049c31fc00c6b445672ee5815aa32923c` |
| 16 | `theorem` | [reflectionLI_involutive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/reflectionli-involutive--aaf0feed1560bb15507fc8a7.md) | 103 | `result-track:aaf0feed1560bb15507fc8a7bc592a6e465eff66690d18ce4d4b3b9185acea51` |
| 17 | `def` | [reflection](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/reflection--cad2003d479a9db7915ccea5.md) | 111 | `declaration-track:cad2003d479a9db7915ccea586132684e6f33d5b3c3da4efcec8afbbbc3b52e7` |
| 18 | `theorem` | [reflection_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/reflection-coe-ae--2bc93b2c037974d431d229c1.md) | 115 | `result-track:2bc93b2c037974d431d229c15ffdea401c4dc26209a182a185ebcccc0f418c39` |
| 19 | `theorem` | [reflection_toLp](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/reflection-tolp--be1a4203d9154a80af5b06d3.md) | 119 | `result-track:be1a4203d9154a80af5b06d3ba8a29ef8d5eb67f1d8fea45fce499ae8ed2dab3` |
| 20 | `theorem` | [fourier_reflection](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/fourier-reflection--7f6515863f9153cac45d97a0.md) | 134 | `result-track:7f6515863f9153cac45d97a02a46433612994d8b5e0fa27a197262c935aaf7c4` |
| 21 | `theorem` | [signSymbol_neg](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/signsymbol-neg--9a7a65c7af342366161240d1.md) | 152 | `result-track:9a7a65c7af342366161240d1dbcf934583eb13847252e65dcffa744041f381b5` |
| 22 | `theorem` | [reflection_signMultiplier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/reflection-signmultiplier--4127c4f5e99916b872a08da0.md) | 160 | `result-track:4127c4f5e99916b872a08da091888b47189236f09b7f0c595cc838518bc92af3` |
| 23 | `def` | [signFourierDuality](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/signfourierduality--21f55208aa92d31fa033617d.md) | 175 | `declaration-track:21f55208aa92d31fa033617d6fee55b013d74db2a2e6e2726436470268ed7096` |
| 24 | `theorem` | [duality_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/duality-fourier--c4651bb71cb68d48762dd376.md) | 178 | `result-track:c4651bb71cb68d48762dd376c13676f1732b2b3f6249110bb52b23a86a6d23f0` |
| 25 | `theorem` | [duality_fourier_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/duality-fourier-coe-ae--fd84b40f1cc93a9eb84f7a03.md) | 181 | `result-track:fd84b40f1cc93a9eb84f7a031d612e5b76c7fcd1cf153a625f4059094d0cb73c` |
| 26 | `theorem` | [duality_involutive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/duality-involutive--885a3fd2d0a4054c9784178a.md) | 186 | `result-track:885a3fd2d0a4054c9784178aed65e09f5f2fb9873c3f249063da94d6188e87fd` |
| 27 | `theorem` | [reflection_duality_anticommute](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/reflection-duality-anticommute--a062e3df1d7c3e75fdd5a117.md) | 193 | `result-track:a062e3df1d7c3e75fdd5a1176e061742a4d0ec8f4f2191e153c15cf1e6cb6b74` |
| 28 | `def` | [translationLI](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/translationli--bcb1632026e811349fcdedcb.md) | 201 | `declaration-track:bcb1632026e811349fcdedcb7e3d4866ad2b42dde01916006f54128f3fb7864d` |
| 29 | `theorem` | [translationLI_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/translationli-coe-ae--b4ae55bb11e85021f0ffca9f.md) | 204 | `result-track:b4ae55bb11e85021f0ffca9fb6854c80b12c49dc80ff9ed78d9cfa279ff0bf9e` |
| 30 | `theorem` | [translationLI_inverse](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/translationli-inverse--e6fb5904e8e103500811f00b.md) | 208 | `result-track:e6fb5904e8e103500811f00ba219be97a2028d791370a1e651237dadf9b3bbe8` |
| 31 | `def` | [translation](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/translation--9d5aa5ba19c33f53ccd3fe9b.md) | 219 | `declaration-track:9d5aa5ba19c33f53ccd3fe9b444f3fe13457e837a4807368734e1c87ad1acfcc` |
| 32 | `theorem` | [translation_coe_ae](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/translation-coe-ae--19dde9a687dea5fec8504544.md) | 223 | `result-track:19dde9a687dea5fec8504544403efa42959e685d40ff30d1b43bce59cb7b03a1` |
| 33 | `def` | [standardSignDuality](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/standardsignduality--7655b9eedc0be2d6e66a7f66.md) | 227 | `declaration-track:7655b9eedc0be2d6e66a7f661556079f5bea7af942f56ad9396f072b78725c2a` |
| 34 | `def` | [angularSignDuality](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/angularsignduality--e99d66c72424d142939db3fb.md) | 230 | `declaration-track:e99d66c72424d142939db3fb110c7839a29b03510a1b78f1ce2f8f2beb9950ed` |
| 35 | `theorem` | [angular_duality_eq_neg_standard](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/angular-duality-eq-neg-standard--f474599605fda0aa233ad909.md) | 233 | `result-track:f474599605fda0aa233ad909b71e86061434e470b115c45afdb2bd5b115ae802` |
| 36 | `theorem` | [angular_duality_involutive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/angular-duality-involutive--04e75979723f9f0ed26e0764.md) | 236 | `result-track:04e75979723f9f0ed26e07645ab1bd33ef92f8feb1b36c8fb15cacef9d1ec0a2` |
| 37 | `theorem` | [angular_reflection_duality_anticommute](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/angular-reflection-duality-anticommute--2bcf58b4f2db78442c082be0.md) | 241 | `result-track:2bcf58b4f2db78442c082be0420d0567cde23c1164ffe6775e81e49f43cb4857` |
| 38 | `theorem` | [stationary_inner_dual](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/stationary-inner-dual--7fac1b335a43a31e413fe9ff.md) | 246 | `result-track:7fac1b335a43a31e413fe9ff4a91915881c9a45303c94d74c57729a09b5668aa` |
| 39 | `theorem` | [angular_stationary_inner_dual](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/angular-stationary-inner-dual--c6811beb70ad26f5105e65cd.md) | 250 | `result-track:c6811beb70ad26f5105e65cd3df0a0f480b94fd40cf3ae9b37e948914fbafeda` |
| 40 | `theorem` | [reflected_pairing_dual](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/reflected-pairing-dual--605ee8717753fe619c4202a9.md) | 255 | `result-track:605ee8717753fe619c4202a915e94e0720da4dbc328076c096126f0c25d78abc` |
| 41 | `theorem` | [angular_reflected_pairing_dual](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/angular-reflected-pairing-dual--629fdd805cd618e057ab7b2a.md) | 260 | `result-track:629fdd805cd618e057ab7b2aeebd939b01fe623bd05563d2ee89aac2bd312627` |
| 42 | `theorem` | [duality_inner_symmetric](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/duality-inner-symmetric--84da7353f96f96696a151562.md) | 266 | `result-track:84da7353f96f96696a151562c4f6fffd9d1ffa215d1a5fd1eb519f99dc1fab72` |
| 43 | `theorem` | [duality_selfAdjoint](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/duality-selfadjoint--06577d8037ea6c3297946459.md) | 273 | `result-track:06577d8037ea6c3297946459200750a2b6c194a9ef80f15bcee00d3e80a9d624` |
| 44 | `theorem` | [angular_duality_selfAdjoint](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variante9b61f69c8e5084fdf3148a0cde78aa6a33cd6e8fa5adf9c64b2bc01546c9af8.lean/declarations/angular-duality-selfadjoint--80dc350109df2c02e03c30e9.md) | 276 | `result-track:80dc350109df2c02e03c30e9787a7f89a08141c06ab69cc2f10707b676a8a676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
