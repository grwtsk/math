# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.DiscreteConvolution.Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f3110fadd29439a0cc1b425bc885ddf741e580e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f3110fadd29439a0cc1b425bc885ddf741e580e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulFiber](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/mulfiber--22268ba0d08c0c35217f6fa3.md) | 91 | `declaration-track:22268ba0d08c0c35217f6fa3c8939423ba9ffffa98789b2f438cfa65536e3a8f` |
| 2 | `lemma` | [mem_mulFiber](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/mem-mulfiber--a8d7f76bd91856387b5fa934.md) | 94 | `result-track:a8d7f76bd91856387b5fa934e49a8bc8f1fde72ffa187c0a0af8427923712a82` |
| 3 | `lemma` | [mulFiber_one_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/mulfiber-one-mem--3cb03be5481b431475e346cd.md) | 97 | `result-track:3cb03be5481b431475e346cd8ed10262a5ed12e64a972c992840293807c2b825` |
| 4 | `def` | [convolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolution--1b9554c8e25e9e321f91c91f.md) | 114 | `declaration-track:1b9554c8e25e9e321f91c91fa87a3bd562c946f56e9e2455965c47cb87c4d92e` |
| 5 | `lemma` | [zero_convolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/zero-convolution--735a3a53a4f0612f47341ccb.md) | 134 | `result-track:735a3a53a4f0612f47341ccbb2efc0ee6ab85b831957f273b3ec979ad5857fea` |
| 6 | `lemma` | [convolution_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolution-zero--4fa22465bce717dfac562be7.md) | 139 | `result-track:4fa22465bce717dfac562be7a55fa858a4f85704f0d3e0f1de77580fa0d2568a` |
| 7 | `lemma` | [single_convolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/single-convolution--03f9f7cc60594871f448e846.md) | 144 | `result-track:03f9f7cc60594871f448e84602fd4f8186d11a24213372f6ab9409b9664f04f8` |
| 8 | `lemma` | [convolution_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolution-single--8493e6a120f333d422bf2aee.md) | 152 | `result-track:8493e6a120f333d422bf2aee43cba2419d2cbc4dd37025945771dd915d46a503` |
| 9 | `def` | [ConvolutionExistsAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolutionexistsat--1092fbc79d999d06d9457dec.md) | 172 | `declaration-track:1092fbc79d999d06d9457dec31427ec8269e1fcf57a2b0485ba391c6b9ffd32c` |
| 10 | `def` | [ConvolutionExists](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolutionexists--b0504d202174744fe56c6894.md) | 184 | `declaration-track:b0504d202174744fe56c68947bef55989d0533d6c4c27a4f6609d2a7f818f0a8` |
| 11 | `lemma` | [ConvolutionExistsAt.distrib_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolutionexistsat-distrib-add--bf198036460a8a3616441519.md) | 190 | `result-track:bf198036460a8a361644151967ec02dcb8b27658ffa41f795def7808208b2bcc` |
| 12 | `lemma` | [ConvolutionExists.distrib_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolutionexists-distrib-add--1c71b6f1499bdf06cf41ce4d.md) | 197 | `result-track:1c71b6f1499bdf06cf41ce4dafab68089a90971789561811c1213c47ffcc76b6` |
| 13 | `lemma` | [ConvolutionExistsAt.add_distrib](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolutionexistsat-add-distrib--e270df212db75b14f5e4c97e.md) | 203 | `result-track:e270df212db75b14f5e4c97eaf614e0fac2729e4fda6d60415e0bbbf025b71bd` |
| 14 | `lemma` | [ConvolutionExists.add_distrib](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolutionexists-add-distrib--bed5705fadbb10455eec83a0.md) | 210 | `result-track:bed5705fadbb10455eec83a07d430ade4e9dcda9053f7832eaf46d4ef5e4be74` |
| 15 | `lemma` | [ConvolutionExistsAt.smul_convolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolutionexistsat-smul-convolution--33dff7009423cea17f2f5829.md) | 219 | `result-track:33dff7009423cea17f2f58291feeba3e8ebf3fe62544b8d7eda6f38755ae9b66` |
| 16 | `lemma` | [ConvolutionExistsAt.convolution_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolutionexistsat-convolution-smul--3c516ce1a69e6579e319f3ee.md) | 225 | `result-track:3c516ce1a69e6579e319f3eec34b94245ea5ea1be3a100918f19a0352937e527` |
| 17 | `lemma` | [mulFiber_eq_mulAntidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/mulfiber-eq-mulantidiagonal--5146e6bb9774cea63c58bc53.md) | 239 | `result-track:5146e6bb9774cea63c58bc530612a852b6c6c85a7d431989b9ba0141fb36c633` |
| 18 | `lemma` | [mulFiber_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/mulfiber-finite--a32ce7c654a791497c3cb64f.md) | 247 | `result-track:a32ce7c654a791497c3cb64fa027c3f05275046fe05f328b3d2d3eb841bcf00d` |
| 19 | `lemma` | [convolution_eq_sum_mulAntidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolution-eq-sum-mulantidiagonal--a9d7a094f9a2f21b8a320807.md) | 258 | `result-track:a9d7a094f9a2f21b8a3208074443cb71356ee4bd7208555cd6d49cc77b2f570a` |
| 20 | `lemma` | [convolutionExists_of_hasMulAntidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolutionexists-of-hasmulantidiagonal--4a21283f9368f62a2d68d6fd.md) | 270 | `result-track:4a21283f9368f62a2d68d6fd7461890e9dfc6581382cccd885ca81bbb52ee243` |
| 21 | `def` | [mulFiber_swapEquiv](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/mulfiber-swapequiv--f349912f4f68769b0f706fa5.md) | 285 | `declaration-track:f349912f4f68769b0f706fa5a5f7329045648bef7b12ce4873f40bf9d7d5f1cc` |
| 22 | `theorem` | [convolution_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/convolution-comm--41b6da618e75c5b884ed0da4.md) | 292 | `result-track:41b6da618e75c5b884ed0da4c87f0a3e470eefe9253f01f6b758292ba0d9194e` |
| 23 | `def` | [ringConvolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/ringconvolution--7d6623564580b1920ec029ac.md) | 311 | `declaration-track:7d6623564580b1920ec029ac43d7971ff2d0ba5793d5b505396a29ac8fa6bd40` |
| 24 | `lemma` | [ringConvolution_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/ringconvolution-apply--f30f7d401355c7ccec4ac7c5.md) | 321 | `result-track:f30f7d401355c7ccec4ac7c5d14f627fc409058f201ce504e251fcfffb660fb2` |
| 25 | `lemma` | [zero_ringConvolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/zero-ringconvolution--6cfe19566a2bd2630a415092.md) | 325 | `result-track:6cfe19566a2bd2630a415092fe17aff576f576d71d50af5812ead0cfffbd140c` |
| 26 | `lemma` | [ringConvolution_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/ringconvolution-zero--60ff876c7c26f5137885bea1.md) | 330 | `result-track:60ff876c7c26f5137885bea1fc94479edc83f78a64cff0f52d2edf2216773b66` |
| 27 | `lemma` | [single_ringConvolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/single-ringconvolution--b5d90c8bf266ad6abf534b51.md) | 341 | `result-track:b5d90c8bf266ad6abf534b5142f90bf48637ec12d9718790f45ddeeeb0e0a0f7` |
| 28 | `lemma` | [ringConvolution_single](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/ringconvolution-single--094b28ebc350e7074647c91c.md) | 346 | `result-track:094b28ebc350e7074647c91c6c2bddd386da766d4985007300a977608108be53` |
| 29 | `lemma` | [ringConvolution_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/ringconvolution-add--d261e84b4d8491ffb2dc3a01.md) | 358 | `result-track:d261e84b4d8491ffb2dc3a01d5b912a201fa2e858bf06fabc24865fe6df605cf` |
| 30 | `lemma` | [add_ringConvolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/add-ringconvolution--6cad744969b61d77a168d80f.md) | 364 | `result-track:6cad744969b61d77a168d80fa16fd1482966f4f4f6d968764c88018753204abb` |
| 31 | `lemma` | [smul_ringConvolution](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/smul-ringconvolution--99cc924925476fceb9a43808.md) | 378 | `result-track:99cc924925476fceb9a43808b593444b6db775030358e1f00b0b24211643565b` |
| 32 | `lemma` | [ringConvolution_smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/ringconvolution-smul--bca588bdbd2256daf70dcf81.md) | 385 | `result-track:bca588bdbd2256daf70dcf812598417d89afd4d30a7f6dcc8e56117e8f206831` |
| 33 | `lemma` | [ringConvolution_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/ringconvolution-comm--356bacf5e3905d17585410ec.md) | 397 | `result-track:356bacf5e3905d17585410ecfda1df92721aa88ed189868b343856b307659919` |
| 34 | `lemma` | [ringConvolution_eq_sum_mulAntidiagonal](../../../../../mathematics/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean/declarations/ringconvolution-eq-sum-mulantidiagonal--e450affef0ecdd33b9e610d5.md) | 411 | `result-track:e450affef0ecdd33b9e610d563ba4dfee4e54d34fb03ce58b4be8dd6d5690405` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
