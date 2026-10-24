# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfe92dbc1261cdcb5b6b96c43d6bfbcfbd97c11d",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfe92dbc1261cdcb5b6b96c43d6bfbcfbd97c11d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.IntegralCompProd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.StandardBorel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lintegral_condKernel_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/lintegral-condkernel-mem--f7e09bfda512c8ee7a88fc07.md) | 48 | `result-track:f7e09bfda512c8ee7a88fc07004e014bb3c11af0389d93da71c583253a8d1549` |
| 2 | `lemma` | [setLIntegral_condKernel_eq_measure_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setlintegral-condkernel-eq-measure-prod--d02a084f6f793baf823477fc.md) | 53 | `result-track:d02a084f6f793baf823477fc2a0721755892868826f8e4039564016c06d97fc6` |
| 3 | `lemma` | [lintegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/lintegral-condkernel--16771aae5f3b2d551cc3a5f9.md) | 67 | `result-track:16771aae5f3b2d551cc3a5f9e6363779eaf84c46fd6d95314ca76d154681781c` |
| 4 | `lemma` | [setLIntegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setlintegral-condkernel--b9358ad7baba12bcc0dbb327.md) | 72 | `result-track:b9358ad7baba12bcc0dbb32748a7a0c8435983de462ded6158903ff6974a41eb` |
| 5 | `lemma` | [setLIntegral_condKernel_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setlintegral-condkernel-univ-right--a7d12b73bf03ed3e9aeeddb1.md) | 79 | `result-track:a7d12b73bf03ed3e9aeeddb1956288b9d23998b759b9ece0632c2cf039a562fa` |
| 6 | `lemma` | [setLIntegral_condKernel_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setlintegral-condkernel-univ-left--51022bd21d4c770aa1c8aa68.md) | 85 | `result-track:51022bd21d4c770aa1c8aa683d9eb73370c9c8918999b75f69aef60e2d19547b` |
| 7 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.LintegralCondKernelMem.Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.MeasureTheory.AEStronglyMeasurable.integral_kernel_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/root-grwtsk-analysis-realanalysis-integration-lintegralcondkernelmem-var--c3517e26088ce54b4e08b6b2.md) | 98 | `result-track:c3517e26088ce54b4e08b6b2a896916a62e13a65d0cb60e9600aa82b43bdb02e` |
| 8 | `lemma` | [integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/integral-condkernel--7f2eb4cb739e29406ad46850.md) | 105 | `result-track:7f2eb4cb739e29406ad468503d582070770f727bb98262c77511f45933b79ba8` |
| 9 | `lemma` | [setIntegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setintegral-condkernel--fbcce8731c792a7dae8e5619.md) | 111 | `result-track:fbcce8731c792a7dae8e5619f0ddaef209e98e426b58cbedc0ae44cb9628f06e` |
| 10 | `lemma` | [setIntegral_condKernel_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setintegral-condkernel-univ-right--6526249fbca831dd8dd4666a.md) | 119 | `result-track:6526249fbca831dd8dd4666aa399171693a61dc260721b838a1a9c1e266dd91f` |
| 11 | `lemma` | [setIntegral_condKernel_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setintegral-condkernel-univ-left--0be1ba621a514cde69b34cb3.md) | 125 | `result-track:0be1ba621a514cde69b34cb3dc275bff90d2da58891362a51e948e58325e8cd0` |
| 12 | `lemma` | [lintegral_condKernel_mem](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/lintegral-condkernel-mem--6a65c02e5c44bbc3af48ea8a.md) | 145 | `result-track:6a65c02e5c44bbc3af48ea8a326047a7522d7c63c18255c287c29997436bcf37` |
| 13 | `lemma` | [setLIntegral_condKernel_eq_measure_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setlintegral-condkernel-eq-measure-prod--7ef481a822a2ebc35d154f38.md) | 151 | `result-track:7ef481a822a2ebc35d154f383cd21aad414ff42fcccc7a6bd0bc279da0c7759b` |
| 14 | `lemma` | [lintegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/lintegral-condkernel--520d2334e63fdb823c06bb9c.md) | 165 | `result-track:520d2334e63fdb823c06bb9cdc776cb05f7a6d35b605be9a2bdce7dd4a96547b` |
| 15 | `lemma` | [setLIntegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setlintegral-condkernel--8ddea6854476c5d496019a48.md) | 170 | `result-track:8ddea6854476c5d496019a483ce581924d8f1fc398ef270e79953c0171d27c85` |
| 16 | `lemma` | [setLIntegral_condKernel_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setlintegral-condkernel-univ-right--ecb970325b578ec51c5778a9.md) | 177 | `result-track:ecb970325b578ec51c5778a9740bb3abb73312bdbd1400b3f1b6541d6533abeb` |
| 17 | `lemma` | [setLIntegral_condKernel_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setlintegral-condkernel-univ-left--7c047f5171a0338767527dc7.md) | 183 | `result-track:7c047f5171a0338767527dc7072264a3513c0a8a8535a96bf28528b7edc22599` |
| 18 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.LintegralCondKernelMem.Variant3512e436a69ec30fb7c64fde5f5f9e20fd0359e94f055cc8fd2a9952e190cdfc.MeasureTheory.AEStronglyMeasurable.integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/root-grwtsk-analysis-realanalysis-integration-lintegralcondkernelmem-var--a221e7f57287b5123a857818.md) | 196 | `result-track:a221e7f57287b5123a85781840af9f170ca0082227e2788bce59cc12a7d87a48` |
| 19 | `lemma` | [integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/integral-condkernel--0622bceab4e9ad66158604bd.md) | 202 | `result-track:0622bceab4e9ad66158604bd056b986071ee6c6ca0c8fe891bd3fcf1d946314b` |
| 20 | `lemma` | [setIntegral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setintegral-condkernel--0d6c1f6d824efafe6d32029f.md) | 208 | `result-track:0d6c1f6d824efafe6d32029f60eff81af670f09018e111b2019dbfda03472d0e` |
| 21 | `lemma` | [setIntegral_condKernel_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setintegral-condkernel-univ-right--634d7434e83e18d562e36255.md) | 215 | `result-track:634d7434e83e18d562e36255cfd88c919b4444b2d2380515d41e9f551e05774a` |
| 22 | `lemma` | [setIntegral_condKernel_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/setintegral-condkernel-univ-left--5703193f846dbf1cecb7d343.md) | 220 | `result-track:5703193f846dbf1cecb7d34351fc3ee48019fba9e4ba444a100f300e22e130b7` |
| 23 | `theorem` | [AEStronglyMeasurable.ae_integrable_condKernel_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/aestronglymeasurable-ae-integrable-condkernel-iff--8a5de43df9e1271b1fcdc847.md) | 241 | `result-track:8a5de43df9e1271b1fcdc8473a458ac6f2360b780bbcfbe1b9f0210ac83b7625` |
| 24 | `theorem` | [Integrable.condKernel_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/integrable-condkernel-ae--40a5f23ea8865d911cc1098d.md) | 249 | `result-track:40a5f23ea8865d911cc1098d9a4537609d9c79e12895027d8ea35c09cab91c6d` |
| 25 | `theorem` | [Integrable.integral_norm_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/integrable-integral-norm-condkernel--401a5009f3bcf2cc1db00f31.md) | 255 | `result-track:401a5009f3bcf2cc1db00f31387a96a25377da98e8be5451a76af7f70458067a` |
| 26 | `theorem` | [Integrable.norm_integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/integrable-norm-integral-condkernel--3805b600fc78d540329467f1.md) | 261 | `result-track:3805b600fc78d540329467f195642e835a4fd7ead1095e5e5438169f1e3e924b` |
| 27 | `theorem` | [Integrable.integral_condKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant10fd31c4064cb895e2483f30cd269137128c8f1b0e2333cdaa9d2a9df8782bcf.lean/declarations/integrable-integral-condkernel--f4465d6cfadad0cdff3fb550.md) | 269 | `result-track:f4465d6cfadad0cdff3fb550bada4ca594b77491487e4a9c0de82e4762afb3f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
