# Verification target: GRWTSK.Analysis.Kernels.Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f71cfb96260d98a8a25693c00b06bd60db2b920",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/index.md) · [Full source](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f71cfb96260d98a8a25693c00b06bd60db2b920`.

Source path: `GRWTSK/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.SemiNormedGrp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cokernelCocone](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/cokernelcocone--9fdabfa02e5d476c05bb0299.md) | 44 | `declaration-track:9fdabfa02e5d476c05bb02995c5411ae80e4c51d887c1e339ebaf8d9d185d107` |
| 2 | `def` | [cokernelLift](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/cokernellift--e79e26924cee359205239f5e.md) | 60 | `declaration-track:e79e26924cee359205239f5e86e0fb389afce90035810097f7424a42a3cb9fc7` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/instance--ed66fd38a1811f7ae57e3973.md) | 71 | `declaration-track:ed66fd38a1811f7ae57e3973ddf14673cc637c164cbbf2e0dc856737142d9a63` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/example--81437634bff06140d5bc5113.md) | 89 | `declaration-track:81437634bff06140d5bc511385520adc103f3d0e91e1f1a16ac000ec2ccb72b5` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/instance--2047d36d1d4d0b709e67259c.md) | 99 | `declaration-track:2047d36d1d4d0b709e67259c85123224b2dd59e3b8f12fef02acb4a1cc750620` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/instance--15da5c5d0bfd2182f659ec57.md) | 101 | `declaration-track:15da5c5d0bfd2182f659ec5779d00d7dd2d4269a9a022be3575d93b134285286` |
| 7 | `def` | [fork](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/fork--6d807d3c5494c19587b2754a.md) | 105 | `declaration-track:6d807d3c5494c19587b2754a9487a8f6e2b6195203d69aff8811c7766c22d690` |
| 8 | `instance` | [hasLimit_parallelPair](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/haslimit-parallelpair--aa0cc316c8e3596f055647f1.md) | 112 | `declaration-track:aa0cc316c8e3596f055647f1b9128fc817239a0ed80538f56af43cd4206ca5fb` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/instance--be57a6cd07d45de2828fdcd2.md) | 128 | `declaration-track:be57a6cd07d45de2828fdcd27e7baf0dbb7fc8274c97377d44d98208128b270a` |
| 10 | `def` | [cokernelCocone](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/cokernelcocone--eea3d01aed761e2dab4e4c06.md) | 140 | `declaration-track:eea3d01aed761e2dab4e4c06842c74f3796323d0512c5cb55b53ed03893f63ca` |
| 11 | `def` | [cokernelLift](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/cokernellift--7259ba2bf26c526d82926eeb.md) | 147 | `declaration-track:7259ba2bf26c526d82926eeb6d1b82f36fe7d53461f89b2e95f2a2e4ecc71fac` |
| 12 | `def` | [isColimitCokernelCocone](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/iscolimitcokernelcocone--8a0302cecc8bd712bf528b40.md) | 157 | `declaration-track:8a0302cecc8bd712bf528b4038600bbcc9c2ae63fb3c9ea4b4b054a1345acefd` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/instance--9d8c76d9e7fda4bbac5a5ecf.md) | 169 | `declaration-track:9d8c76d9e7fda4bbac5a5ecf99b576ccdeb499d00de5de935e93dc2e32c149c4` |
| 14 | `example` | [(anonymous)](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/example--589cbc3014821f15e6287cd9.md) | 176 | `declaration-track:589cbc3014821f15e6287cd9f8c75fe5ec3f336eafaf9c6e54ad9811d4de7661` |
| 15 | `def` | [explicitCokernel](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokernel--ba485bd02333368e8d38cb7b.md) | 182 | `declaration-track:ba485bd02333368e8d38cb7bd1f6643a8c36c4ac1cbb882f3dae882c17717e00` |
| 16 | `def` | [explicitCokernelDesc](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneldesc--a5429864c7ad79adae99c8fa.md) | 187 | `declaration-track:a5429864c7ad79adae99c8fa418bdc5535f09f2dc0ffc38838b0f37a3c41e513` |
| 17 | `def` | [explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokernel--509784ae28ce6d872ef200c8.md) | 193 | `declaration-track:509784ae28ce6d872ef200c8371560d8aa5766f2384aafd4f10412cfc155c468` |
| 18 | `theorem` | [explicitCokernelπ_surjective](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokernel-surjective--31c5b93858019a99af3f9b72.md) | 196 | `result-track:31c5b93858019a99af3f9b721ae3fc6779020b87f817b562e66a245f8c8382f3` |
| 19 | `theorem` | [comp_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/comp-explicitcokernel--ba4d24cb9db86aaf25a785fe.md) | 201 | `result-track:ba4d24cb9db86aaf25a785fe22629a00f896efa6b14a3166a507dbf051c2fa36` |
| 20 | `theorem` | [explicitCokernelπ_apply_dom_eq_zero](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokernel-apply-dom-eq-zero--b191bf5cd62a6cf3ceff9173.md) | 207 | `result-track:b191bf5cd62a6cf3ceff9173a1411d2a55ff722af40e2fbf913c84bfe93eac08` |
| 21 | `theorem` | [explicitCokernelπ_desc](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokernel-desc--5c3e6ab1e12e75ef6bf6e6db.md) | 212 | `result-track:5c3e6ab1e12e75ef6bf6e6db256a50a3c4b2c8057530fdf8ec8a7558d77093bc` |
| 22 | `theorem` | [explicitCokernelπ_desc_apply](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokernel-desc-apply--3467048376f4b00930fcb2c9.md) | 217 | `result-track:3467048376f4b00930fcb2c939c1693582ee028db7e99cd91397d8b6c1c851bc` |
| 23 | `theorem` | [explicitCokernelDesc_unique](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneldesc-unique--a4f3631178cb7cb638a3958a.md) | 221 | `result-track:a4f3631178cb7cb638a3958abe92de7f0b033d63f87d92bd05c0d383f4eecb09` |
| 24 | `theorem` | [explicitCokernelDesc_comp_eq_desc](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneldesc-comp-eq-desc--4931ed2d707583752893b41e.md) | 230 | `result-track:4931ed2d707583752893b41e6c5657878b297101299324695e36a57048200848` |
| 25 | `theorem` | [explicitCokernelDesc_zero](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneldesc-zero--e60cbeebdc2c309fad532e49.md) | 239 | `result-track:e60cbeebdc2c309fad532e4973f5738e348553b3060d50913b90909e60609350` |
| 26 | `theorem` | [explicitCokernel_hom_ext](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokernel-hom-ext--568c4e78903bd376c4e5a17c.md) | 244 | `result-track:568c4e78903bd376c4e5a17cd161e581c7016baf0e7ccd76852a621e61e5c077` |
| 27 | `instance` | [explicitCokernelπ.epi](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokernel-epi--b84412d70f277e3532a07aa8.md) | 254 | `declaration-track:b84412d70f277e3532a07aa8f34d717425f19da66bb06ef123df9041e258c729` |
| 28 | `theorem` | [isQuotient_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/isquotient-explicitcokernel--86b97a343a58d07ba4e9cf63.md) | 261 | `result-track:86b97a343a58d07ba4e9cf631405b9241fcee093d57f986c48bca3b0019c3727` |
| 29 | `theorem` | [normNoninc_explicitCokernelπ](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/normnoninc-explicitcokernel--005d3a9966d40c8f89b4ee93.md) | 265 | `result-track:005d3a9966d40c8f89b4ee931a0ddc853eaba8631302035033e4e3c562144a73` |
| 30 | `theorem` | [explicitCokernelDesc_norm_le_of_norm_le](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneldesc-norm-le-of-norm-le--d0f28e87d1b1df7ae7663f07.md) | 271 | `result-track:d0f28e87d1b1df7ae7663f075dbd270cd301cc211362a5d8cd662f200f6cce78` |
| 31 | `theorem` | [explicitCokernelDesc_normNoninc](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneldesc-normnoninc--ab2c67266515db662932024f.md) | 275 | `result-track:ab2c67266515db662932024f51e4fe9229c095541bfbaff1b973b6e8b4036d26` |
| 32 | `theorem` | [explicitCokernelDesc_comp_eq_zero](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneldesc-comp-eq-zero--32f641ea5f352909fdb8694c.md) | 283 | `result-track:32f641ea5f352909fdb8694c4e288802b544ff8c489cbaf26af94a0211954d6f` |
| 33 | `theorem` | [explicitCokernelDesc_norm_le](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneldesc-norm-le--230dacaa6330c3418bed2968.md) | 288 | `result-track:230dacaa6330c3418bed2968c7219b8501a0a0f1861d4c8e256801265f9df4ad` |
| 34 | `def` | [explicitCokernelIso](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneliso--f6cdf65fef00ec8819bad0ca.md) | 294 | `declaration-track:f6cdf65fef00ec8819bad0ca88608349dacfda77b67cb14ab265089f04dc8cc5` |
| 35 | `theorem` | [explicitCokernelIso_hom_π](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneliso-hom--9a42ba75b2571fdb4f8e05bc.md) | 299 | `result-track:9a42ba75b2571fdb4f8e05bc345f782e4cd274edf03289decc4b9fc38f1a79b1` |
| 36 | `theorem` | [explicitCokernelIso_inv_π](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneliso-inv--f0e20e23dbeb544338b9e16d.md) | 304 | `result-track:f0e20e23dbeb544338b9e16db5cb63a1fe2a66c81f8b0db81da37e96b64f44e0` |
| 37 | `theorem` | [explicitCokernelIso_hom_desc](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokerneliso-hom-desc--168e30febebb23b918c322a3.md) | 309 | `result-track:168e30febebb23b918c322a3ea2e8e2fa645a163a35668bc1e4d89f64e52fbb4` |
| 38 | `def` | [explicitCokernel.map](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcokernel-map--e367368212170ff74ab04445.md) | 317 | `declaration-track:e367368212170ff74ab044458d04d8fe655cf90d9a3be359c26025306534cfe0` |
| 39 | `theorem` | [ExplicitCoker.map_desc](../../../../mathematics/Analysis/Kernels/Variant6d7f85100a47389f78f8a08138ef9280f2b06787848697a25f49cf3a1c278c98.lean/declarations/explicitcoker-map-desc--38497f5bb85d4d9d0bd82ffd.md) | 323 | `result-track:38497f5bb85d4d9d0bd82ffd7f12a8cc7ac3551a3863be91da5879451222215e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
