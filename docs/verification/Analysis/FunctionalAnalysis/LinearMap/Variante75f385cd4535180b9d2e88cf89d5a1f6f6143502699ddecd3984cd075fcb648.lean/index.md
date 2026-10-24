# Verification target: GRWTSK.Analysis.FunctionalAnalysis.LinearMap.Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9455aca504e27ca966170128be77a5c661e2298a",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9455aca504e27ca966170128be77a5c661e2298a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner_map_polarization](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/inner-map-polarization--28103cce78b7a63cf46f5af9.md) | 59 | `result-track:28103cce78b7a63cf46f5af9ce6c132839c29a77022976fd107c4933b41e8b6a` |
| 2 | `theorem` | [inner_map_polarization'](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/inner-map-polarization--d4be022c0ab39b49409b5bb2.md) | 70 | `result-track:d4be022c0ab39b49409b5bb2a177cd8e044aa6969fcf423400c5d7a9d0ce3e65` |
| 3 | `theorem` | [inner_map_self_eq_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/inner-map-self-eq-zero--aa44ae564e63ab53a7ccc960.md) | 89 | `result-track:aa44ae564e63ab53a7ccc96014e768a0438721d72d70cf43b058e341e0fd6771` |
| 4 | `theorem` | [ext_inner_map](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/ext-inner-map--71eb103b710b146abed913a0.md) | 103 | `result-track:71eb103b710b146abed913a0e4b4906d7b45225b0514fe185dc83203b53388c9` |
| 5 | `theorem` | [LinearIsometry.inner_map_map](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/linearisometry-inner-map-map--c5b347ee76f29d85872ffb72.md) | 118 | `result-track:c5b347ee76f29d85872ffb727fb5026e5fa7e3d8a2b2a5906d24ec0b5656786b` |
| 6 | `theorem` | [LinearIsometryEquiv.inner_map_map](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/linearisometryequiv-inner-map-map--1b8f537e30aaaeba174691b7.md) | 123 | `result-track:1b8f537e30aaaeba174691b788f1b26384fee55202d4c74d4d45a490bacdbb9a` |
| 7 | `theorem` | [LinearIsometryEquiv.inner_map_eq_flip](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/linearisometryequiv-inner-map-eq-flip--2c966418abb21cbe8b67d7d1.md) | 127 | `result-track:2c966418abb21cbe8b67d7d18960c56e380c0b2722b71b23b103bfb286cc3f08` |
| 8 | `def` | [LinearMap.isometryOfInner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/linearmap-isometryofinner--e35f0c4845d3bb044137f4a7.md) | 132 | `declaration-track:e35f0c4845d3bb044137f4a736b2111747fc57eed9f4c6bb2bad86021d09d630` |
| 9 | `theorem` | [LinearMap.coe_isometryOfInner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/linearmap-coe-isometryofinner--f7704834637ab4c5dec08275.md) | 136 | `result-track:f7704834637ab4c5dec082753d390421a5e54e5848eccede67b5c408cd5978aa` |
| 10 | `theorem` | [LinearMap.isometryOfInner_toLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/linearmap-isometryofinner-tolinearmap--9535c18279bbe7977c947706.md) | 140 | `result-track:9535c18279bbe7977c947706cb00f61341b6f416f1765f08a70231e4e21f3a0b` |
| 11 | `def` | [LinearEquiv.isometryOfInner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/linearequiv-isometryofinner--65fadb2e2ec2beb98a06aba6.md) | 145 | `declaration-track:65fadb2e2ec2beb98a06aba626d4164eea6efa73babb4d08a9d707ce08ae9bc2` |
| 12 | `theorem` | [LinearEquiv.coe_isometryOfInner](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/linearequiv-coe-isometryofinner--fac0cc57b7b342969708ae2a.md) | 149 | `result-track:fac0cc57b7b342969708ae2a29c697fbbfe7e680739296e9dba63413e48d8b2b` |
| 13 | `theorem` | [LinearEquiv.isometryOfInner_toLinearEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/linearequiv-isometryofinner-tolinearequiv--c88f521598098d6a0eaf6ae8.md) | 153 | `result-track:c88f521598098d6a0eaf6ae8588bb4bbdd5786f8e48a1ad40200e4e19401fb64` |
| 14 | `theorem` | [LinearMap.norm_map_iff_inner_map_map](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/linearmap-norm-map-iff-inner-map-map--91ebfa70ac16716f10d7931e.md) | 158 | `result-track:91ebfa70ac16716f10d7931e543038c2d99619a764cc59b79c827f0af7d7fc08` |
| 15 | `def` | [innerₛₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/inner--c5787153637ec54c5e314e80.md) | 168 | `declaration-track:c5787153637ec54c5e314e80a5ad95fc02a6e648eb5e11725bccf7eb21f8589c` |
| 16 | `theorem` | [innerₛₗ_apply_coe](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/inner-apply-coe--5db7e98c7ddf48e81ac7abba.md) | 173 | `result-track:5db7e98c7ddf48e81ac7abbacc665fb4cdb4d275a20b04dc40a7c3eb246d0ade` |
| 17 | `theorem` | [innerₛₗ_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/inner-apply--992a8702277682d3d1179079.md) | 177 | `result-track:992a8702277682d3d1179079afced3777d53c8e04ec5e057ab352624cb8eb0d9` |
| 18 | `def` | [innerₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/inner--aeff59176c8cb61765bf77c7.md) | 182 | `declaration-track:aeff59176c8cb61765bf77c7086cfb20d9d384f0de76d22d8d9b376c52273632` |
| 19 | `lemma` | [flip_innerₗ](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/flip-inner--864a172a66551d8252988d89.md) | 184 | `result-track:864a172a66551d8252988d8931c2a3c5a7707a77a269df9141aebc3b5e7dcdfe` |
| 20 | `lemma` | [innerₗ_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/inner-apply--9550c45e51b82e0c48f63195.md) | 190 | `result-track:9550c45e51b82e0c48f6319588584730ff4c1dd985b0c9399e66e76c2fc3e94e` |
| 21 | `def` | [innerSL](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/innersl--2fa6be6daa3c0cd9ac06ede3.md) | 195 | `declaration-track:2fa6be6daa3c0cd9ac06ede37f04e53da237fc75ab9b952d7b9e8a3ffdc19cbe` |
| 22 | `theorem` | [innerSL_apply_coe](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/innersl-apply-coe--07c4549b9d1ff440937fff15.md) | 200 | `result-track:07c4549b9d1ff440937fff15400ceb8f1a6c35029901e6ae41662c05d8896d34` |
| 23 | `theorem` | [innerSL_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/innersl-apply--60e116298139675e32d512f0.md) | 204 | `result-track:60e116298139675e32d512f02a9f54848aefbf4172bbc60a23d37eb664a57470` |
| 24 | `def` | [innerSLFlip](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/innerslflip--560cd76ac24be84653fa17e1.md) | 208 | `declaration-track:560cd76ac24be84653fa17e13e59b62a859e414c6011e16bc0cbf6f6b7168e9c` |
| 25 | `theorem` | [innerSLFlip_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/innerslflip-apply--5a4f00cac555941181fbdef2.md) | 213 | `result-track:5a4f00cac555941181fbdef2029316916c2863021b62b42abf3902985d6969e1` |
| 26 | `lemma` | [innerSL_real_flip](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/innersl-real-flip--bebc5c7447467202f5c17144.md) | 220 | `result-track:bebc5c7447467202f5c17144fd64cad4f30ff2edee47822db312951478ee98fc` |
| 27 | `def` | [toSesqForm](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/tosesqform--54a9ef3d2c6acebd4a838fbd.md) | 233 | `declaration-track:54a9ef3d2c6acebd4a838fbddea5f1f5ddca81597ad5c733473a7428d1f7361d` |
| 28 | `theorem` | [toSesqForm_apply_coe](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/tosesqform-apply-coe--243c9e6962987fb243af9055.md) | 238 | `result-track:243c9e6962987fb243af90557e199280e805629825a783f36ba9095e8778af95` |
| 29 | `theorem` | [toSesqForm_apply_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/tosesqform-apply-norm-le--9768a6926b58d7e47c694264.md) | 241 | `result-track:9768a6926b58d7e47c6942646ca53f742b5bec82f1020df20c74855927380330` |
| 30 | `theorem` | [innerSL_apply_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/innersl-apply-norm--57b9a0b63f002104f34bc1e2.md) | 257 | `result-track:57b9a0b63f002104f34bc1e25dbc10d958451384a1dd1f44631e9e583b8628dd` |
| 31 | `lemma` | [norm_innerSL_le](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/norm-innersl-le--004e0702be98afb01db9bfe5.md) | 268 | `result-track:004e0702be98afb01db9bfe5278a024a27fffcb24fdbef29ec8f892bb36946c4` |
| 32 | `theorem` | [inner_map_complex](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/inner-map-complex--74ce41a63ac2f8f3ea38053a.md) | 281 | `result-track:74ce41a63ac2f8f3ea38053a1cead7130feb33b4e0ec93a876cac5ed7dc53c1e` |
| 33 | `def` | [ContinuousLinearMap.reApplyInnerSelf](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/continuouslinearmap-reapplyinnerself--a8983279868d06079c958629.md) | 294 | `declaration-track:a8983279868d06079c958629b43ce389112b1edbb4e1edc80950306a6e2fd72e` |
| 34 | `theorem` | [ContinuousLinearMap.reApplyInnerSelf_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/continuouslinearmap-reapplyinnerself-apply--63511b53634ecc5de6fb69a8.md) | 297 | `result-track:63511b53634ecc5de6fb69a8eeda1c933a0d46c2019ec557bce7b260397801f6` |
| 35 | `theorem` | [ContinuousLinearMap.reApplyInnerSelf_continuous](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/continuouslinearmap-reapplyinnerself-continuous--467d06a1151327b5e3cc3ae4.md) | 309 | `result-track:467d06a1151327b5e3cc3ae42d460bae45f22675d9b6cc3ef35f7a576353244d` |
| 36 | `theorem` | [ContinuousLinearMap.reApplyInnerSelf_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/LinearMap/Variante75f385cd4535180b9d2e88cf89d5a1f6f6143502699ddecd3984cd075fcb648.lean/declarations/continuouslinearmap-reapplyinnerself-smul--4520c531491c2769532b62ae.md) | 313 | `result-track:4520c531491c2769532b62aeb0b3dbd3d259da717ae37f4bf026cd064bb19ba4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
