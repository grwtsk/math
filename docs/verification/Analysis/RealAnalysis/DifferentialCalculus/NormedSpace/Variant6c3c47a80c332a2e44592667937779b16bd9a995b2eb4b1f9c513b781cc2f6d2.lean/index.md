# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormedSpace.Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9581137bf42c750114e60b1ce1dd66d199db424",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9581137bf42c750114e60b1ce1dd66d199db424`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.NormedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.FDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [DifferentiableWithinAt.comp_mdifferentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/differentiablewithinat-comp-mdifferentiablewithinat--6f10ea3f81e89afac6c15a84.md) | 50 | `result-track:6f10ea3f81e89afac6c15a841f0cf18c218ce8ae46ff77f57da2a498ce1b2fe3` |
| 2 | `theorem` | [DifferentiableAt.comp_mdifferentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/differentiableat-comp-mdifferentiablewithinat--df572f1b406f2fe230989135.md) | 56 | `result-track:df572f1b406f2fe230989135889167877ba784ece10a14c89fd286fe6ad2a4bd` |
| 3 | `theorem` | [DifferentiableAt.comp_mdifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/differentiableat-comp-mdifferentiableat--1f319be58108322dde72a8c3.md) | 61 | `result-track:1f319be58108322dde72a8c348aee65e222d1c85d36861dfbf8d52ab99139d5c` |
| 4 | `theorem` | [Differentiable.comp_mdifferentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/differentiable-comp-mdifferentiablewithinat--7d8ddb1808868297e052bbc1.md) | 66 | `result-track:7d8ddb1808868297e052bbc111b2e90eb542ff516a743c9cb7ae8de0414e8466` |
| 5 | `theorem` | [Differentiable.comp_mdifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/differentiable-comp-mdifferentiableat--3200d995e9792c3541755747.md) | 71 | `result-track:3200d995e9792c3541755747978b99f547dbc3383eca1f2fe34c302e439f456a` |
| 6 | `theorem` | [Differentiable.comp_mdifferentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/differentiable-comp-mdifferentiable--cdef5587126bae7c0d91cf4e.md) | 76 | `result-track:cdef5587126bae7c0d91cf4e23640f7923b7137f7b8bdc3c1699aceef039da9f` |
| 7 | `theorem` | [MDifferentiableWithinAt.clm_precomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiablewithinat-clm-precomp--8c64da106318d51b73ddcc2f.md) | 87 | `result-track:8c64da106318d51b73ddcc2f0eb7fdf8b6d3ecb7ffbed9d1d25a24e321fc4ae5` |
| 8 | `theorem` | [MDifferentiableAt.clm_precomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableat-clm-precomp--a9be123a29f7e04eee5e210e.md) | 98 | `result-track:a9be123a29f7e04eee5e210e0df9fa494c89a064090d5b3e4ef5cffeef155a41` |
| 9 | `theorem` | [MDifferentiableOn.clm_precomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableon-clm-precomp--8a843a046c16f9f41b41b417.md) | 106 | `result-track:8a843a046c16f9f41b41b41773c21a635865aa6b6f0bf9975ea9d91ad9aa651b` |
| 10 | `theorem` | [MDifferentiable.clm_precomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiable-clm-precomp--fb521022bba982d24860bb81.md) | 112 | `result-track:fb521022bba982d24860bb814af6f8964adaef70109aeca2a4a14c3198830933` |
| 11 | `theorem` | [MDifferentiableWithinAt.clm_postcomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiablewithinat-clm-postcomp--8674bef648e432d1fb30bd9d.md) | 121 | `result-track:8674bef648e432d1fb30bd9d9beb880202ddc5b805c2305b63f2eb2d44502b5d` |
| 12 | `theorem` | [MDifferentiableAt.clm_postcomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableat-clm-postcomp--bf8ed03ba66a3e3b754f6b26.md) | 133 | `result-track:bf8ed03ba66a3e3b754f6b265e9f3404b43c421985fc5c5f6d9d64081876ac31` |
| 13 | `theorem` | [MDifferentiableOn.clm_postcomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableon-clm-postcomp--27626ea2239896579ea7d20c.md) | 142 | `result-track:27626ea2239896579ea7d20c4b2889f7e016075441dd6bbaa68eb4bb1803996c` |
| 14 | `theorem` | [MDifferentiable.clm_postcomp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiable-clm-postcomp--23525d1fff70097ab5d89cb4.md) | 148 | `result-track:23525d1fff70097ab5d89cb4ded0fa472956935de7eab0ba66040ef6ad4d78fc` |
| 15 | `theorem` | [MDifferentiableWithinAt.clm_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiablewithinat-clm-comp--c73379196ac45ab38153479e.md) | 154 | `result-track:c73379196ac45ab38153479e4f15a476ab06d2bee22630449e2bbb872a4ed661` |
| 16 | `theorem` | [MDifferentiableAt.clm_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableat-clm-comp--70de1d70126ae606f9f7de4a.md) | 164 | `result-track:70de1d70126ae606f9f7de4a7de62df7365f17de6675b9f69ef64c2edee70e0f` |
| 17 | `theorem` | [MDifferentiableOn.clm_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableon-clm-comp--ecdb00aefe22218650d8cca5.md) | 170 | `result-track:ecdb00aefe22218650d8cca5a36e43b2ae039037f0572d567f2a09244e9510e0` |
| 18 | `theorem` | [MDifferentiable.clm_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiable-clm-comp--afbecd8b8251a50dff78afe1.md) | 176 | `result-track:afbecd8b8251a50dff78afe1aa0052c24ad5980b08987178826e7b154e428c57` |
| 19 | `theorem` | [MDifferentiableWithinAt.clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiablewithinat-clm-apply--70598d0c0e868066a5ebd1a9.md) | 182 | `result-track:70598d0c0e868066a5ebd1a98fa45cf8d9622d519d789ad10e36f5ee8321f9ab` |
| 20 | `theorem` | [MDifferentiableAt.clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableat-clm-apply--3c564f33aab784cb9d56f882.md) | 194 | `result-track:3c564f33aab784cb9d56f88254ce3dfbc3159e6253ca11d95dd8f31914ee07a5` |
| 21 | `theorem` | [MDifferentiableOn.clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableon-clm-apply--51e89b096755e2f5e5d709fd.md) | 203 | `result-track:51e89b096755e2f5e5d709fd26349d4459f8c7cbf9fe0291bca4ba8b1fe6b7ae` |
| 22 | `theorem` | [MDifferentiable.clm_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiable-clm-apply--f896c12153a6efc0a5d547d3.md) | 207 | `result-track:f896c12153a6efc0a5d547d39828cdc8fdeafd87a2285ff2dc76fa4322099032` |
| 23 | `theorem` | [MDifferentiableWithinAt.cle_arrowCongr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiablewithinat-cle-arrowcongr--3ea9221e2c3220b475022dd0.md) | 211 | `result-track:3ea9221e2c3220b475022dd067829d38e293bcf414a38fcc7301270d7342d8bd` |
| 24 | `theorem` | [MDifferentiableAt.cle_arrowCongr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableat-cle-arrowcongr--7ef613de8b4310912618058e.md) | 221 | `result-track:7ef613de8b4310912618058e7d5026017f74dfb92d26fb6a012271eef7024aed` |
| 25 | `theorem` | [MDifferentiableOn.cle_arrowCongr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableon-cle-arrowcongr--3370bfb55205372075d7cb09.md) | 230 | `result-track:3370bfb55205372075d7cb093089455ac15b0142b507a898f5b1e17068d945cb` |
| 26 | `theorem` | [MDifferentiable.cle_arrowCongr](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiable-cle-arrowcongr--7763dc7f33b62adb1fb223ee.md) | 237 | `result-track:7763dc7f33b62adb1fb223ee08f75852506585e4f224dfde6e003622a341cb2f` |
| 27 | `theorem` | [MDifferentiableWithinAt.clm_prodMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiablewithinat-clm-prodmap--69dbf3a2c905395a058b93c1.md) | 244 | `result-track:69dbf3a2c905395a058b93c10ce2827ccf8669f619af362aa87ba4b4160cbd9a` |
| 28 | `theorem` | [MDifferentiableAt.clm_prodMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableat-clm-prodmap--ab14e334f72516d3c90f8707.md) | 253 | `result-track:ab14e334f72516d3c90f87074da715083fd3276d1ba49c2b9663cf28118f7c19` |
| 29 | `theorem` | [MDifferentiableOn.clm_prodMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableon-clm-prodmap--02121bfeea64b56591645105.md) | 262 | `result-track:02121bfeea64b565916451055a7dbf41647485e165e93f0e2f7c6a0456f559bd` |
| 30 | `theorem` | [MDifferentiable.clm_prodMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiable-clm-prodmap--4242cbb914793b3a831dbb39.md) | 268 | `result-track:4242cbb914793b3a831dbb39c30f18803f0c7d965dde900dd515f814d54633c7` |
| 31 | `theorem` | [MDifferentiableWithinAt.smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiablewithinat-smul--adc3f6a9f68d88b6c4d425d8.md) | 277 | `result-track:adc3f6a9f68d88b6c4d425d8ccd9823a104566ed20efede8c4193ac7ef871056` |
| 32 | `theorem` | [MDifferentiableAt.smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableat-smul--5ca0ce56df8bf29c40794ce8.md) | 283 | `result-track:5ca0ce56df8bf29c40794ce84d4fdffa40bccc3af996d73d1667c6c3f697bc12` |
| 33 | `theorem` | [MDifferentiableOn.smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiableon-smul--fb40ce3b2e9b0ee2000e205f.md) | 287 | `result-track:fb40ce3b2e9b0ee2000e205f64d83ef360c64b06be6462488de725c36e6a56fa` |
| 34 | `theorem` | [MDifferentiable.smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/NormedSpace/Variant6c3c47a80c332a2e44592667937779b16bd9a995b2eb4b1f9c513b781cc2f6d2.lean/declarations/mdifferentiable-smul--a6d9975d56bc34470380c2b9.md) | 291 | `result-track:a6d9975d56bc34470380c2b9bdd38b3958a78735e720c499db763c94c75fb7e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
