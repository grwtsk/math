# Verification target: GRWTSK.Algebra.LinearAlgebra.Equalizer.Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10ee1cdddfba10606249558bc7e1b9babe3f0bd7",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10ee1cdddfba10606249558bc7e1b9babe3f0bd7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean.json)

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
| 1 | `lemma` | [Module.Flat.ker_lTensor_eq](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/module-flat-ker-ltensor-eq--cc5587419928b9f72870d0f1.md) | 35 | `result-track:cc5587419928b9f72870d0f1e94b6f9af4dab87c8d3586fdb719fff2da407501` |
| 2 | `lemma` | [Module.Flat.eqLocus_lTensor_eq](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/module-flat-eqlocus-ltensor-eq--c147148388f07a5f9b697111.md) | 41 | `result-track:c147148388f07a5f9b69711113f124f17a71c0a59edc2ae83a0bcea0031597b2` |
| 3 | `def` | [LinearMap.tensorEqLocusBil](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensoreqlocusbil--09de543c23e9b173a43f3339.md) | 49 | `declaration-track:09de543c23e9b173a43f3339d100016c6cc7bc21316a526e48da5b0957323db4` |
| 4 | `def` | [LinearMap.tensorKerBil](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensorkerbil--2adf5ab8bd231bfd6f98e953.md) | 65 | `declaration-track:2adf5ab8bd231bfd6f98e953d1fe7e6e6f18ef0b2a9c559b1c17931da76fe6a0` |
| 5 | `def` | [LinearMap.tensorEqLocus](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensoreqlocus--d2c71c1549437f921d4954f3.md) | 75 | `declaration-track:d2c71c1549437f921d4954f3a091a16661ba8da08cada1926965bd2fb8a78caa` |
| 6 | `def` | [LinearMap.tensorKer](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensorker--16528cd8f93e75e3f7ff76d4.md) | 80 | `declaration-track:16528cd8f93e75e3f7ff76d4e442cdde4d1933734fc394f657e6f1145f9fda4e` |
| 7 | `lemma` | [LinearMap.tensorKer_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensorker-tmul--83766447a531355042ba733b.md) | 85 | `result-track:83766447a531355042ba733b76ee08ef2615ed644cfa1d482148b41da5497140` |
| 8 | `lemma` | [LinearMap.tensorKer_coe](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensorker-coe--b4da3732b79f7cd864415aa8.md) | 90 | `result-track:b4da3732b79f7cd864415aa8ba44d861c525c533467b5ef0a2799234a4c98fb7` |
| 9 | `lemma` | [LinearMap.tensorEqLocus_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensoreqlocus-tmul--8042eaef88e49ced42a7ab75.md) | 95 | `result-track:8042eaef88e49ced42a7ab7578c18f9f7dec5072e1635e63a917a9ca9a47fcc5` |
| 10 | `lemma` | [LinearMap.tensorEqLocus_coe](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensoreqlocus-coe--a7117ffa63048b957a7b7a65.md) | 100 | `result-track:a7117ffa63048b957a7b7a651ad5165e02477021531a4112c7888c36f4bebc7b` |
| 11 | `def` | [LinearMap.tensorKerInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensorkerinv--3c69f6055775af0c6fdd992b.md) | 105 | `declaration-track:3c69f6055775af0c6fdd992b715c40abd8c7c29e1c619760d153fa9e08bc9995` |
| 12 | `lemma` | [LinearMap.lTensor_ker_subtype_tensorKerInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-ltensor-ker-subtype-tensorkerinv--52fe2e190c3876609b421057.md) | 114 | `result-track:52fe2e190c3876609b421057024ab2b4a072b9b92eb553a9072f2c9913276f02` |
| 13 | `def` | [LinearMap.tensorEqLocusInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensoreqlocusinv--133bbf31b307015589d073fd.md) | 121 | `declaration-track:133bbf31b307015589d073fd7d12308e7693c14b097c176749ac5978525f98b4` |
| 14 | `lemma` | [LinearMap.lTensor_eqLocus_subtype_tensorEqLocusInv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-ltensor-eqlocus-subtype-tensoreqlocusinv--d23d8f75ac78e3def68d45da.md) | 133 | `result-track:d23d8f75ac78e3def68d45da9ad186f1929e403d006921c0b95b1a272389e9ec` |
| 15 | `def` | [LinearMap.tensorKerEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensorkerequiv--bf4bb3a49b3346d15ac0220b.md) | 140 | `declaration-track:bf4bb3a49b3346d15ac0220b2efe3841afdeb04e180d2bcc773fdc63fc647b11` |
| 16 | `lemma` | [LinearMap.tensorKerEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensorkerequiv-apply--976f762a764ae9e59f7a4b05.md) | 151 | `result-track:976f762a764ae9e59f7a4b056c45fc7b2afb925a2d15b3a1dffc764db7e298c5` |
| 17 | `lemma` | [LinearMap.lTensor_ker_subtype_tensorKerEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-ltensor-ker-subtype-tensorkerequiv-symm--b9cd72b3eefd4aa6786f6b80.md) | 156 | `result-track:b9cd72b3eefd4aa6786f6b80bb91583dba1877465ea817720bd777c4512b8e73` |
| 18 | `def` | [LinearMap.tensorEqLocusEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensoreqlocusequiv--2328aa1977fdd423faecb2c1.md) | 163 | `declaration-track:2328aa1977fdd423faecb2c1dc0f768f659c13bfadf27000aaed53746e13a07a` |
| 19 | `lemma` | [LinearMap.tensorEqLocusEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensoreqlocusequiv-apply--f780b0f6227519900b2ad076.md) | 176 | `result-track:f780b0f6227519900b2ad076fc80dc9cf2a79f9d6cfe6808978dc4cb03504472` |
| 20 | `lemma` | [LinearMap.lTensor_eqLocus_subtype_tensoreqLocusEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-ltensor-eqlocus-subtype-tensoreqlocusequiv-symm--1cf8fe999a996796ab6eb95d.md) | 181 | `result-track:1cf8fe999a996796ab6eb95dd001c9b49ed1c1eef91385258e04efb6c8167152` |
| 21 | `lemma` | [LinearMap.lTensor_injective_of_exact_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-ltensor-injective-of-exact-of-flat--2a3d21d6405f0c9aaa1bd53b.md) | 192 | `result-track:2a3d21d6405f0c9aaa1bd53b17ec8a07d92de9e3f305ef97f30591effeff6c85` |
| 22 | `def` | [LinearMap.kerLTensorEquivOfSurjective](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-kerltensorequivofsurjective--79121a35e1a39c2991625a90.md) | 229 | `declaration-track:79121a35e1a39c2991625a907b302fa32ffc8a3e5c13ec54bf53c33410a4d79e` |
| 23 | `lemma` | [LinearMap.tensorKerEquivOfSurjective_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/linearmap-tensorkerequivofsurjective-symm-tmul--c2671f3618dcf3a073ae41d1.md) | 237 | `result-track:c2671f3618dcf3a073ae41d1e94dca474afda93cfbca6df766d89d8231097613` |
| 24 | `def` | [AlgHom.tensorEqualizerAux](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/alghom-tensorequalizeraux--0d0e1b1449c94c4be1f527f0.md) | 250 | `declaration-track:0d0e1b1449c94c4be1f527f0f774a61e727ac1b69a683c1d5cd46eac66522b3b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/instance--4c544ca3d06c6cc257921a03.md) | 256 | `declaration-track:4c544ca3d06c6cc257921a03e254ffcc6349896bec68b4d2499b8ad170e9cd66` |
| 26 | `lemma` | [AlgHom.coe_tensorEqualizerAux](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/alghom-coe-tensorequalizeraux--e8b115aa947b1df017e80055.md) | 259 | `result-track:e8b115aa947b1df017e80055bb7c68ada1e19e2c6eab607683ac2f1d38823978` |
| 27 | `lemma` | [AlgHom.tensorEqualizerAux_mul](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/alghom-tensorequalizeraux-mul--2f97ce98aff9646d37016905.md) | 266 | `result-track:2f97ce98aff9646d370169056b1eb2bde302785bdef82967c318f29393ad22d5` |
| 28 | `def` | [AlgHom.tensorEqualizer](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/alghom-tensorequalizer--56ed187d82d58b43e423292d.md) | 275 | `declaration-track:56ed187d82d58b43e423292d24b1a890d8e1b373525fdd5a23ac15df775e7270` |
| 29 | `lemma` | [AlgHom.coe_tensorEqualizer](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/alghom-coe-tensorequalizer--d619da6c561d34eecae530d9.md) | 283 | `result-track:d619da6c561d34eecae530d90707e561a9894b17e59c0aae18d27d12f7a8e404` |
| 30 | `def` | [AlgHom.tensorEqualizerEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/alghom-tensorequalizerequiv--56933dda727be4dfa33ab9c3.md) | 290 | `declaration-track:56933dda727be4dfa33ab9c31de46a7b29ffc47c583c685cc50318e79328c642` |
| 31 | `lemma` | [AlgHom.tensorEqualizerEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/alghom-tensorequalizerequiv-apply--63586373be5dc5983b9eef29.md) | 298 | `result-track:63586373be5dc5983b9eef29b97e1579bcb0752541cb9f64d4591ca56a509bd0` |
| 32 | `def` | [Algebra.kerTensorProductMapIdToAlgHomEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/algebra-kertensorproductmapidtoalghomequiv--44696a642beef8028f64c1f5.md) | 309 | `declaration-track:44696a642beef8028f64c1f56e857239e78d224543674717a7bff65dbf4b6166` |
| 33 | `lemma` | [Algebra.kerTensorProductMapIdToAlgHomEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/algebra-kertensorproductmapidtoalghomequiv-symm-apply--3eb495adf8440271eee81419.md) | 346 | `result-track:3eb495adf8440271eee81419aef9adfb7efda5081a649c9dd9e78fc93ee90c00` |
| 34 | `def` | [HasStableEqualizers](../../../../../mathematics/Algebra/LinearAlgebra/Equalizer/Variant3d7f8271904334d2697e662b2ea0c38f1ca8100e12b5c7bb77949cadae2f9c0e.lean/declarations/hasstableequalizers--1cb57eb3cf71cb61f4694837.md) | 360 | `declaration-track:1cb57eb3cf71cb61f46948379c6c9d233262224a0ed3472a1865997cee78aec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
