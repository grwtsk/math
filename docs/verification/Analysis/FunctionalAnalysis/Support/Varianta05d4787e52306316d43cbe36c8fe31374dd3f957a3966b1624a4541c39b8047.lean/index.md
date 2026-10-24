# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Support.Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2714333e11680678384601c8b9dfb6746a0ec495",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2714333e11680678384601c8b9dfb6746a0ec495`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean.json)

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
| 1 | `def` | [IsVanishingOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/isvanishingon--20e934cea2043eec676c8827.md) | 59 | `declaration-track:20e934cea2043eec676c882733d2e5cb05e65908f85321ea0e9224529afa111a` |
| 2 | `theorem` | [IsVanishingOn.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/isvanishingon-mono--55eb21583f0d1b5c7b28f201.md) | 63 | `result-track:55eb21583f0d1b5c7b28f20144e4ad0e442a86f178fe5979d29815655377c939` |
| 3 | `theorem` | [not_isVanishingOn_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/not-isvanishingon-mono--277948e305ac3b78961dc758.md) | 67 | `result-track:277948e305ac3b78961dc7583df54ece790e97bd41a170f929dc8e688303de08` |
| 4 | `theorem` | [not_isVanishingOn_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/not-isvanishingon-iff--0f212371c44056f30810e300.md) | 71 | `result-track:0f212371c44056f30810e3005775e9381588532dcd7551c9fcce7fb92c7e7c47` |
| 5 | `def` | [dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/dsupport--bf32e5e374e83fbaf6905cdd.md) | 94 | `declaration-track:bf32e5e374e83fbaf6905cddc2114f9954f3e23cfbae41c45c78255771fa42a3` |
| 6 | `theorem` | [mem_dsupport_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/mem-dsupport-iff--0cc8061b91f56cce2527f506.md) | 96 | `result-track:0cc8061b91f56cce2527f506579884d13ab8b4793dd2bb81de16f634c35c7f83` |
| 7 | `theorem` | [dsupport_compl_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/dsupport-compl-eq--fe577c03d9c98b0e547a89b1.md) | 101 | `result-track:fe577c03d9c98b0e547a89b1360d06d29ba7c38480282620d0c4d1446995ab6f` |
| 8 | `theorem` | [notMem_dsupport_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/notmem-dsupport-iff--574da12973f721a1b196f314.md) | 105 | `result-track:574da12973f721a1b196f314c7d988fb037b2c3fb8e21943c5621c2e5ae7f001` |
| 9 | `theorem` | [mem_dsupport_iff_not_isVanishingOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/mem-dsupport-iff-not-isvanishingon--865f751e944d64ee297be21e.md) | 109 | `result-track:865f751e944d64ee297be21ef3d07cf0f9726a0899453c2fb96e65c5e4ccfeec` |
| 10 | `theorem` | [mem_dsupport_iff_forall_exists_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/mem-dsupport-iff-forall-exists-ne--ee0070edd4c3cb17a6734782.md) | 113 | `result-track:ee0070edd4c3cb17a67347822f775ead1b0e911462b212706e9a41ccfbfafe9a` |
| 11 | `theorem` | [mem_dsupport_iff_frequently](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/mem-dsupport-iff-frequently--e30106449b4e42258f8284bd.md) | 117 | `result-track:e30106449b4e42258f8284bdb0d59bb9b88c0123cad96f58d63cbf910d117175` |
| 12 | `theorem` | [_root_.Filter.HasBasis.mem_dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/root-filter-hasbasis-mem-dsupport--5cf17f9afe611df32ff8385a.md) | 122 | `result-track:5cf17f9afe611df32ff8385a19d438e66af1cfe9caf9d0b5293d698aeca66147` |
| 13 | `theorem` | [notMem_dsupport_iff_eventually](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/notmem-dsupport-iff-eventually--69b2765b70a4466290b95c81.md) | 128 | `result-track:69b2765b70a4466290b95c8121c0edf93cc6235dade402e9cbde3b1af3037d5e` |
| 14 | `theorem` | [_root_.Filter.HasBasis.notMem_dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/root-filter-hasbasis-notmem-dsupport--046ede3f70e903c16a8b870c.md) | 132 | `result-track:046ede3f70e903c16a8b870c764ef48ae4eb50719711abc539b6b1413576bb3a` |
| 15 | `theorem` | [dsupport_subset_dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/dsupport-subset-dsupport--c37e161ed9875ce194728adf.md) | 138 | `result-track:c37e161ed9875ce194728adf8b03408f6c3dd5fb5e1cca8e1f7deb0374df1365` |
| 16 | `theorem` | [isClosed_dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/isclosed-dsupport--b409855215c9305e4bdf4e8f.md) | 144 | `result-track:b409855215c9305e4bdf4e8f32657e75775f3c790ece323f68a7b280c76df327` |
| 17 | `theorem` | [IsVanishingOn.disjoint_dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/isvanishingon-disjoint-dsupport--eb51548eba594cefdd016620.md) | 147 | `result-track:eb51548eba594cefdd016620f1833ff59820058f9ca8ab58d158b46b5455e6da` |
| 18 | `theorem` | [compl_dsupport_eq_sUnion_isBounded](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/compl-dsupport-eq-sunion-isbounded--30c0abd100348cc6580e480d.md) | 163 | `result-track:30c0abd100348cc6580e480dbba5a3e7936d5b08c827304959da34242f43e0f6` |
| 19 | `theorem` | [smulLeftCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/smulleftclm--40549aa34bb14b316dc1d30a.md) | 185 | `result-track:40549aa34bb14b316dc1d30a1b4b2fcdc55e1bceca1ca991ec5db6d054f85265` |
| 20 | `theorem` | [lineDerivOp](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/linederivop--9ca219c1d8da9abdbfabc5a3.md) | 198 | `result-track:9ca219c1d8da9abdbfabc5a320d1dfcba47ef6fb7013c556c774e22ed9bacb8b` |
| 21 | `theorem` | [iteratedLineDerivOp](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/iteratedlinederivop--3eb2cf7e1626baa910cf8cd9.md) | 205 | `result-track:3eb2cf7e1626baa910cf8cd9c88c9cd336d89a508d902fdcf467741e35364747` |
| 22 | `theorem` | [_root_.TemperedDistribution.isVanishingOn_delta](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/root-tempereddistribution-isvanishingon-delta--4fd1cb92ca0629b09596ca1a.md) | 214 | `result-track:4fd1cb92ca0629b09596ca1aac4cacb92528fbff6f7854cc84d7835828cc1a82` |
| 23 | `theorem` | [dsupport_smulLeftCLM_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/dsupport-smulleftclm-subset--2d9dc12ce6702954bbfaf953.md) | 224 | `result-track:2d9dc12ce6702954bbfaf95323dc78850baf6403a6f04eeddddfc8ae0691e461` |
| 24 | `theorem` | [dsupport_lineDerivOp_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/dsupport-linederivop-subset--0ab7fd8de7329acd39557161.md) | 233 | `result-track:0ab7fd8de7329acd395571613383596517859493f9d6f242198385a3034d6338` |
| 25 | `theorem` | [dsupport_iteratedLineDerivOp_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/dsupport-iteratedlinederivop-subset--8d2fff8bf3b8a9686249fb6a.md) | 236 | `result-track:8d2fff8bf3b8a9686249fb6a3d0b88751fd4099848beade6c0d2ea439c247f4e` |
| 26 | `theorem` | [dsupport_delta](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/dsupport-delta--b36dbd14b0d21cd7b7fe6179.md) | 240 | `result-track:b36dbd14b0d21cd7b7fe6179b4faba2d2ba61445b94986b6a91660c1728fd504` |
| 27 | `theorem` | [lineDerivOp](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/linederivop--5fde6976b53f020e3b327f6b.md) | 281 | `result-track:5fde6976b53f020e3b327f6b771642c03b353afe39c8d217ad2f546b02e60a47` |
| 28 | `theorem` | [iteratedLineDerivOp](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/iteratedlinederivop--e860930e1a6bdf91317c413e.md) | 288 | `result-track:e860930e1a6bdf91317c413e6aa4b6f1ad965701389c4a19d50184adb430cb32` |
| 29 | `theorem` | [_root_.Distribution.isVanishingOn_delta](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/root-distribution-isvanishingon-delta--80e88ffaa21eb0fa0bf0cfb8.md) | 297 | `result-track:80e88ffaa21eb0fa0bf0cfb8b1c4f91bb879360e0b1632f61ff3bfba470da849` |
| 30 | `theorem` | [dsupport_lineDerivOp_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/dsupport-linederivop-subset--89e0397f6dd89aaa3544ebef.md) | 309 | `result-track:89e0397f6dd89aaa3544ebef60717c3486deaf714748bfa156c282656d8da7be` |
| 31 | `theorem` | [dsupport_iteratedLineDerivOp_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/dsupport-iteratedlinederivop-subset--29d50321be48921a5d1a9fc4.md) | 312 | `result-track:29d50321be48921a5d1a9fc49d5f6e0eb885f40beb083ade3e8d0570ca9e80f4` |
| 32 | `theorem` | [dsupport_delta](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.lean/declarations/dsupport-delta--b0aabb72f552d355a7ee0497.md) | 316 | `result-track:b0aabb72f552d355a7ee04970e540e0ff0178a35ffe73071937fc632b8a5a792` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
