# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Basic.Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa5922acd49d9b1ea0c09e34c0306585b21db32c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa5922acd49d9b1ea0c09e34c0306585b21db32c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.CondexpL1` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condExpUnexpander](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexpunexpander--c2e2b996532986bbe729937f.md) | 115 | `declaration-track:c2e2b996532986bbe729937f16aae39770bd1bfdefc6fd589a3d5f4bb3297037` |
| 2 | `theorem` | [condExp_of_not_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-of-not-le--d09f30a8d68a26dccf508a62.md) | 126 | `result-track:d09f30a8d68a26dccf508a6259ba23addab7c820151e023d903207ac4e5bf3eb` |
| 3 | `theorem` | [condExp_of_not_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-of-not-sigmafinite--487af44bf731ccce06f87992.md) | 130 | `result-track:487af44bf731ccce06f8799285e872c2e73bef8ad488b44a1c1ff7be40622600` |
| 4 | `theorem` | [condExp_of_sigmaFinite](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-of-sigmafinite--fe68ded569cf8b7ba622b670.md) | 136 | `result-track:fe68ded569cf8b7ba622b670b75fcc79997cd9f67c6a7848862ec088e817906a` |
| 5 | `theorem` | [condExp_of_stronglyMeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-of-stronglymeasurable--45a0291e0b020ee4aaf11b74.md) | 150 | `result-track:45a0291e0b020ee4aaf11b74253eb4cf16c6a5ec2a7b7214a100a7b12d173a2a` |
| 6 | `theorem` | [condExp_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-const--d3f6bbc9e35adfe929ed45db.md) | 158 | `result-track:d3f6bbc9e35adfe929ed45db464c31816620a1875f1f45d3619122149f4f5f20` |
| 7 | `theorem` | [condExp_ae_eq_condExpL1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-ae-eq-condexpl1--6cceec0aa230e8a26dd02504.md) | 163 | `result-track:6cceec0aa230e8a26dd02504ac12d4246f2bac67e34b04ccefcaf383ef651b17` |
| 8 | `theorem` | [condExp_ae_eq_condExpL1CLM](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-ae-eq-condexpl1clm--212f7d97955d3ff83d224d9e.md) | 178 | `result-track:212f7d97955d3ff83d224d9edac5f9b3f35777bc06372cdc0bd40e33802bd98a` |
| 9 | `theorem` | [condExp_of_not_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-of-not-integrable--58377c761fafe405f838226a.md) | 185 | `result-track:58377c761fafe405f838226a93c3880573bb05e6065c8eb00f998cac8a79a8c8` |
| 10 | `theorem` | [condExp_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-zero--74557de2269a9021ea3bb80c.md) | 196 | `result-track:74557de2269a9021ea3bb80c8abcf84c7e5cd40995798d18223c7e0683aab5ba` |
| 11 | `theorem` | [stronglyMeasurable_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/stronglymeasurable-condexp--86da04e50a0c23ba465fab6f.md) | 205 | `result-track:86da04e50a0c23ba465fab6ff5d8f3ceff4b572259eadc29a13a6bac0a16a0cd` |
| 12 | `theorem` | [condExp_congr_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-congr-ae--2c0d06ed3e31d5ff4aaa5231.md) | 218 | `result-track:2c0d06ed3e31d5ff4aaa5231c6af8b412f307962c64d3bd14de60e0f648b58df` |
| 13 | `lemma` | [condExp_congr_ae_trim](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-congr-ae-trim--3e147ee352dbb1ce1e1c268b.md) | 229 | `result-track:3e147ee352dbb1ce1e1c268b04d1497cdbaa130c3e921aecb1b24cae3fa766ef` |
| 14 | `theorem` | [condExp_of_aestronglyMeasurable'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-of-aestronglymeasurable--7588c2f28847dad9d001e481.md) | 234 | `result-track:7588c2f28847dad9d001e481d4784b141d17d988e2db486b5377089e0a804fa9` |
| 15 | `theorem` | [integrable_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/integrable-condexp--f3bb094d0d5fe6758f962602.md) | 244 | `result-track:f3bb094d0d5fe6758f962602bc5e08f0b8a12a0ad1a70e9ec12adb774c3e19a7` |
| 16 | `theorem` | [setIntegral_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/setintegral-condexp--740a9fe3b145e6eab70847d3.md) | 255 | `result-track:740a9fe3b145e6eab70847d38246e417d75f59eaeebcaeeec48814eed9e223fd` |
| 17 | `theorem` | [integral_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/integral-condexp--38210c36bacc594b682736e4.md) | 262 | `result-track:38210c36bacc594b682736e43888f9d151ce91b0ec2578f6e9d069ad956c746a` |
| 18 | `theorem` | [integral_condExp_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/integral-condexp-indicator--f169b0aec1ecaa9e423d6178.md) | 273 | `result-track:f169b0aec1ecaa9e423d6178960674fe24d015c6b797a67ffc6c18b9d8b19b10` |
| 19 | `theorem` | [ae_eq_condExp_of_forall_setIntegral_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/ae-eq-condexp-of-forall-setintegral-eq--51da0139d477568a77c66b54.md) | 283 | `result-track:51da0139d477568a77c66b54ec99690519b4a490105a5e032e83eb00f98f9165` |
| 20 | `theorem` | [condExp_bot'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-bot--b711dd282a9f07c864335733.md) | 296 | `result-track:b711dd282a9f07c86433573330f2386811c39bf508fe8fb77fb4d11e92ec0d31` |
| 21 | `theorem` | [condExp_bot_ae_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-bot-ae-eq--4cff7f42203f0583b64eb540.md) | 316 | `result-track:4cff7f42203f0583b64eb540c38742de9e724446afbedce7290c956c17edd56d` |
| 22 | `theorem` | [condExp_bot](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-bot--207ea02589fca94dbd3a714b.md) | 324 | `result-track:207ea02589fca94dbd3a714be1dce3951e100227724200b095f174e6d82c3ca0` |
| 23 | `theorem` | [condExp_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-add--e328ba58a12febef5cdbd0bc.md) | 330 | `result-track:e328ba58a12febef5cdbd0bc3ba55dd1794b330560449d0b4979f83f83cd70f2` |
| 24 | `theorem` | [condExp_finset_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-finset-sum--2d18768d9f4c411f0f9acbb3.md) | 343 | `result-track:2d18768d9f4c411f0f9acbb31b62e69ca561ad89cdbea771d857eca8a1177461` |
| 25 | `theorem` | [condExp_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-smul--7141c66d9eb35cc384ea0cd5.md) | 357 | `result-track:7141c66d9eb35cc384ea0cd569c0aefb5014daee6331812d76d791c19f5a4437` |
| 26 | `theorem` | [condExp_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-neg--3fc541b8d65ae0dcbb4f509b.md) | 371 | `result-track:3fc541b8d65ae0dcbb4f509b34296fa9d125134d2754583b5e8ae6c9ac904ad1` |
| 27 | `theorem` | [condExp_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-sub--028faa409eb8c80f7d5483b3.md) | 379 | `result-track:028faa409eb8c80f7d5483b374e7376bccc85cee79e194f9f453691bea514111` |
| 28 | `theorem` | [condExp_condExp_of_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-condexp-of-le--0862c9f2b378bc95dfad2486.md) | 390 | `result-track:0862c9f2b378bc95dfad24860cdcd5c82ada4f2d3455c5dd695d108fede2dd1c` |
| 29 | `lemma` | [MemLp.condExpL2_ae_eq_condExp'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/memlp-condexpl2-ae-eq-condexp--8d5f9091fefc52825334029f.md) | 409 | `result-track:8d5f9091fefc52825334029fc85a43023a81d4f6beb3cedc4d9b3d3137a81dab` |
| 30 | `lemma` | [MemLp.condExpL2_ae_eq_condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/memlp-condexpl2-ae-eq-condexp--2ec3da820dd7001504968999.md) | 421 | `result-track:2ec3da820dd70015049689991a138e310b275aa8864e2aebf7c3e3e17eb62ff8` |
| 31 | `lemma` | [eLpNorm_condExp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/elpnorm-condexp-le--b22a79b84d69837e91ae6e15.md) | 434 | `result-track:b22a79b84d69837e91ae6e150fcb306d14d1249f8d7647763d2ca62261dc80c2` |
| 32 | `lemma` | [MemLp.condExp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/memlp-condexp--af33627b35bb4e016c13d02a.md) | 450 | `result-track:af33627b35bb4e016c13d02a0f6e674c7281a3273da9a77a3444ee44725044c4` |
| 33 | `lemma` | [condExp_ofNat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-ofnat--3f90fd2dc8482334217e5168.md) | 466 | `result-track:3f90fd2dc8482334217e51681bb88bce33f607c01d184a027bcb058c5979a979` |
| 34 | `theorem` | [tendsto_condExpL1_of_dominated_convergence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/tendsto-condexpl1-of-dominated-convergence--a9e72ac7332ffa625f5ca0e5.md) | 478 | `result-track:a9e72ac7332ffa625f5ca0e52e80f5d85c49ee19728519e9f7c141cc8f40d6de` |
| 35 | `theorem` | [tendsto_condExp_unique](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/tendsto-condexp-unique--3922df37191f56d753b335f9.md) | 492 | `result-track:3922df37191f56d753b335f9b0a6f01117789c823cc6c09e99b1ff12ed3a87e1` |
| 36 | `lemma` | [condExp_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-mono--28bd680ebff82278a06a7160.md) | 521 | `result-track:28bd680ebff82278a06a7160bbcf73aa4476f5a17d6a79ae9597f92ec6e217f0` |
| 37 | `lemma` | [condExp_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-nonneg--5d4c8987b46329dbf340fdd7.md) | 530 | `result-track:5d4c8987b46329dbf340fdd73ec006ecb0290bf360cb757c67bf38726aa32f3f` |
| 38 | `lemma` | [condExp_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Basic/Variant94554f4ee40323a877020c5ca1b33c7458b28717f66c45b9367f1e268983e570.lean/declarations/condexp-nonpos--51109afea749f0092edb02b9.md) | 536 | `result-track:51109afea749f0092edb02b9b6726259ad4a7dbeb0e7e3f2b8e3945d1d43ce57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
