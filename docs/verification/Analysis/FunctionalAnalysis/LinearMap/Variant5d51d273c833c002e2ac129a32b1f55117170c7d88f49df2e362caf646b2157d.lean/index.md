# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LinearMap.Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35625af0ed5874a1d1f9feccd08c41599aa133bd",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35625af0ed5874a1d1f9feccd08c41599aa133bd`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner_map_polarization](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/inner-map-polarization--ac6d20e37377b8b8ace2a2f0.md) | 51 | `result-track:ac6d20e37377b8b8ace2a2f013f181fdf52a9ee1c04e23e388ff20936559e94a` |
| 2 | `theorem` | [inner_map_polarization'](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/inner-map-polarization--8a2cee699a546495eec0e42f.md) | 62 | `result-track:8a2cee699a546495eec0e42f5705a80f138a0b0e4d03d05ab9772a5e652330b6` |
| 3 | `theorem` | [inner_map_self_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/inner-map-self-eq-zero--859e5c89221f14f3e068fd0b.md) | 81 | `result-track:859e5c89221f14f3e068fd0b39fb6e7cef5f20843baa23a37e86816d6d25658c` |
| 4 | `theorem` | [ext_inner_map](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/ext-inner-map--dfb1c44a8395fa3d3e8b7c4c.md) | 95 | `result-track:dfb1c44a8395fa3d3e8b7c4c3fbe655ace3eb42fb5bb12729fcdb47bc81d91dc` |
| 5 | `theorem` | [LinearIsometry.inner_map_map](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/linearisometry-inner-map-map--add4875a58ec75e5f92237d9.md) | 110 | `result-track:add4875a58ec75e5f92237d98485d371bb720f920ff208883e12bb66465dca60` |
| 6 | `theorem` | [LinearIsometryEquiv.inner_map_map](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/linearisometryequiv-inner-map-map--f401a9f912f85664c99fc063.md) | 115 | `result-track:f401a9f912f85664c99fc063c9595f1a8355a966742a55d69af04e378000b0f7` |
| 7 | `theorem` | [LinearIsometryEquiv.inner_map_eq_flip](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/linearisometryequiv-inner-map-eq-flip--4ff52b5620ffa1382dd5e595.md) | 119 | `result-track:4ff52b5620ffa1382dd5e595a282eb7c50b39f0e15f6773a23dc231a384b5218` |
| 8 | `def` | [LinearMap.isometryOfInner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/linearmap-isometryofinner--fd0d5a10325654b2886e9a49.md) | 124 | `declaration-track:fd0d5a10325654b2886e9a497ade4dbf2dca930ddaa931cb9485f8c411b52455` |
| 9 | `theorem` | [LinearMap.coe_isometryOfInner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/linearmap-coe-isometryofinner--a1ea3e4ffe169c4e11703e82.md) | 128 | `result-track:a1ea3e4ffe169c4e11703e82df77ed709a6071368b966dd6fd6f7cd4737d6a77` |
| 10 | `theorem` | [LinearMap.isometryOfInner_toLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/linearmap-isometryofinner-tolinearmap--cd741282e67ed6655ee29dbd.md) | 132 | `result-track:cd741282e67ed6655ee29dbd567f1c799c863fe64963ab595f7de1bebcd51911` |
| 11 | `def` | [LinearEquiv.isometryOfInner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/linearequiv-isometryofinner--622460f5bae2175c057c8269.md) | 137 | `declaration-track:622460f5bae2175c057c8269d9ebfb8546a5263c81df30062931b77c262d45bd` |
| 12 | `theorem` | [LinearEquiv.coe_isometryOfInner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/linearequiv-coe-isometryofinner--b89bbd550a5c26fdac12387f.md) | 141 | `result-track:b89bbd550a5c26fdac12387f9f359016cccb1a57c42639287a2c8523bb759ef5` |
| 13 | `theorem` | [LinearEquiv.isometryOfInner_toLinearEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/linearequiv-isometryofinner-tolinearequiv--8ce5682b72568e6d44fca36f.md) | 145 | `result-track:8ce5682b72568e6d44fca36fa76e2d945a7a5cf7124ebd47b90a853bbdfae7ee` |
| 14 | `theorem` | [LinearMap.norm_map_iff_inner_map_map](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/linearmap-norm-map-iff-inner-map-map--ff3f3b2fb8f406ca4cdc88be.md) | 150 | `result-track:ff3f3b2fb8f406ca4cdc88be1541e1f0d0af72f8c18ec45afacfc155b83e039c` |
| 15 | `def` | [innerₛₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/inner--f5ca924042584743bc72acf8.md) | 160 | `declaration-track:f5ca924042584743bc72acf817e7739174f12f70e0096a2f5da539119341f0ce` |
| 16 | `theorem` | [innerₛₗ_apply_coe](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/inner-apply-coe--d7b2239b718973aa8f2914fa.md) | 165 | `result-track:d7b2239b718973aa8f2914fa5bf4db46333d15c5335b281743f3a081c0448d1f` |
| 17 | `theorem` | [innerₛₗ_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/inner-apply--a3836f58f478ae7a910cb700.md) | 169 | `result-track:a3836f58f478ae7a910cb7000256a923e8cd9091975d2480cc1e894daf415609` |
| 18 | `def` | [innerₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/inner--93cae6fb66b64859c2634a73.md) | 174 | `declaration-track:93cae6fb66b64859c2634a73106a1d1696145f64859ae34a7ca12d57f156b67f` |
| 19 | `lemma` | [flip_innerₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/flip-inner--e355c69968f132904197eb24.md) | 176 | `result-track:e355c69968f132904197eb24c87e8e4f86c747441da6e72e21ff24f2ae5645e7` |
| 20 | `lemma` | [innerₗ_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/inner-apply--50df5eee97cfebf52990d7f8.md) | 182 | `result-track:50df5eee97cfebf52990d7f8553163e79e76c42b13bc343031a73a9502f30627` |
| 21 | `def` | [innerSL](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/innersl--63a90f84e54691364cafd27b.md) | 187 | `declaration-track:63a90f84e54691364cafd27b87c28ee164720a4d5fdd49fea1e57880a05c37b3` |
| 22 | `theorem` | [innerSL_apply_coe](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/innersl-apply-coe--15ea816cef763819ea101670.md) | 192 | `result-track:15ea816cef763819ea10167032c545eaa15e559c6bb988802f7740656e2e18ef` |
| 23 | `theorem` | [innerSL_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/innersl-apply--1d95e969d0e15164ffc4dfcb.md) | 196 | `result-track:1d95e969d0e15164ffc4dfcb53732fda860dfa13051df2a2b741107e1984f27e` |
| 24 | `def` | [innerSLFlip](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/innerslflip--84857c752e26b6be2370a271.md) | 200 | `declaration-track:84857c752e26b6be2370a271536ab527cfc0557dea53d47c7e770a3b6084e748` |
| 25 | `theorem` | [innerSLFlip_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/innerslflip-apply--ab2fb1dc4db8f629f3b55767.md) | 205 | `result-track:ab2fb1dc4db8f629f3b5576797e1b0acbf8f951421951c719dce53a106699271` |
| 26 | `lemma` | [innerSL_real_flip](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/innersl-real-flip--d5fe675a12ed4da966a6d308.md) | 212 | `result-track:d5fe675a12ed4da966a6d308146f6e4420f1d954b4913127a23f176b85509dbb` |
| 27 | `def` | [toSesqForm](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/tosesqform--d7fffb7b67c1fcbeb44ea6a2.md) | 225 | `declaration-track:d7fffb7b67c1fcbeb44ea6a27bebd88773a8aa10d3bc26fd97a53b26a5fe33ae` |
| 28 | `theorem` | [toSesqForm_apply_coe](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/tosesqform-apply-coe--d2e5e44fd8adfa04ac1f3b20.md) | 230 | `result-track:d2e5e44fd8adfa04ac1f3b20f5c034432fb2a31afa6557b2a97ccc2d7ebe2939` |
| 29 | `theorem` | [toSesqForm_apply_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/tosesqform-apply-norm-le--7b247be5f4b98893e313972f.md) | 233 | `result-track:7b247be5f4b98893e313972f551ff6f4f10a8b240ec66a069679ff98a13e816c` |
| 30 | `theorem` | [innerSL_apply_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/innersl-apply-norm--1a866e4605c127f0129a15b3.md) | 249 | `result-track:1a866e4605c127f0129a15b394202d7f7e737e2533a5bd472f23012f7dc88a5d` |
| 31 | `lemma` | [norm_innerSL_le](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/norm-innersl-le--271e14158ff952010faed068.md) | 260 | `result-track:271e14158ff952010faed068a7accf02c1c31bee600beb6384f9d8e047813363` |
| 32 | `theorem` | [inner_map_complex](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/inner-map-complex--9d12011857f963f59adb47c7.md) | 273 | `result-track:9d12011857f963f59adb47c74445b5e01dd2ba188c30cb84d7a6cab4c271a838` |
| 33 | `def` | [ContinuousLinearMap.reApplyInnerSelf](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/continuouslinearmap-reapplyinnerself--87a576b9ccf2ff3f2f7a60c8.md) | 286 | `declaration-track:87a576b9ccf2ff3f2f7a60c89b383f2abace0e739bebde8788c3a5df7532ee13` |
| 34 | `theorem` | [ContinuousLinearMap.reApplyInnerSelf_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/continuouslinearmap-reapplyinnerself-apply--bbbfe670ed999bd9e99f7b7d.md) | 289 | `result-track:bbbfe670ed999bd9e99f7b7d2293144e95a853fdfc11154ff6cf2a603fad525b` |
| 35 | `theorem` | [ContinuousLinearMap.reApplyInnerSelf_continuous](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/continuouslinearmap-reapplyinnerself-continuous--fc793da005b62b8d67496b4e.md) | 301 | `result-track:fc793da005b62b8d67496b4ed72f9f65fb1298900f4d1ca9d8549b7ea0203a67` |
| 36 | `theorem` | [ContinuousLinearMap.reApplyInnerSelf_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variant5d51d273c833c002e2ac129a32b1f55117170c7d88f49df2e362caf646b2157d.lean/declarations/continuouslinearmap-reapplyinnerself-smul--2955e5b434b6db225b44e3a0.md) | 305 | `result-track:2955e5b434b6db225b44e3a09b8cdc6b8c8f24328844b447439fa9c672a686a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
