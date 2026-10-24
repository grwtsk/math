# Verification target: GRWTSK.Analysis.MeasureTheory.Conservative.Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "035f978aa871877a4fe58fdd2966c86426f6e01e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `035f978aa871877a4fe58fdd2966c86426f6e01e`.

Source path: `GRWTSK/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean.json)

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
| 1 | `structure` | [Conservative](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/conservative--19bed447a004604d632f13b2.md) | 66 | `declaration-track:19bed447a004604d632f13b204cf7765b89eed4c050aa47eecf6e7f6cf89e6aa` |
| 2 | `theorem` | [MeasurePreserving.conservative](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/measurepreserving-conservative--713862b56b18815d84835869.md) | 72 | `result-track:713862b56b18815d848358698df155a6ab62519bc74b2f0c183c863bafe0177b` |
| 3 | `theorem` | [id](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/id--0aa43d8899998d43c030359a.md) | 79 | `result-track:0aa43d8899998d43c030359a7b6035d93a3d85c42492203a5fd2a53221c57573` |
| 4 | `theorem` | [of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/of-absolutelycontinuous--fbd12578c71f19cd71c1a96f.md) | 84 | `result-track:fbd12578c71f19cd71c1a96fa50351fba6b22e346f3ec4cda8678d919bd9c588` |
| 5 | `theorem` | [measureRestrict](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/measurerestrict--42d2e068545503d8467635c4.md) | 90 | `result-track:42d2e068545503d8467635c426d975585af71bcc05d62cb9d1cbd7de7876f7ee` |
| 6 | `theorem` | [congr_ae](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/congr-ae--0b47ff6bb21d295520c81211.md) | 95 | `result-track:0b47ff6bb21d295520c81211eedaa4e5503fcc55876d1c4fa0e39c0b6de25508` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Conservative.Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.MeasureTheory.conservative_congr](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/root-grwtsk-analysis-measuretheory-conservative-variantc0707cded530f910e--07e7ef785c4b2e713439f882.md) | 100 | `result-track:07e7ef785c4b2e713439f8824042656f5a01d1ce2796f0810dff33e60dcb6232` |
| 8 | `theorem` | [exists_mem_iterate_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/exists-mem-iterate-mem--fb5feeaaf4aac7f1926aec1e.md) | 106 | `result-track:fb5feeaaf4aac7f1926aec1e026e1dd43df659da3a09a942ee2bec0f5ff01a51` |
| 9 | `theorem` | [frequently_measure_inter_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/frequently-measure-inter-ne-zero--1e014489b1483dcae267172c.md) | 116 | `result-track:1e014489b1483dcae267172ca8988cfa3ef875957e5799cc813344b592cdece0` |
| 10 | `theorem` | [exists_gt_measure_inter_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/exists-gt-measure-inter-ne-zero--f2aca646eba8d07da1ad9cdf.md) | 145 | `result-track:f2aca646eba8d07da1ad9cdf5831e301e4abb14e57d1a0e499dd137fb9b7e678` |
| 11 | `theorem` | [measure_mem_forall_ge_image_notMem_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/measure-mem-forall-ge-image-notmem-eq-zero--946b781600ec02cfbb98a9cf.md) | 153 | `result-track:946b781600ec02cfbb98a9cfeb97c165fe38613e71a13aecb54892868c0fb9b8` |
| 12 | `theorem` | [ae_mem_imp_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/ae-mem-imp-frequently-image-mem--68f06a3812140a1f1799ae04.md) | 167 | `result-track:68f06a3812140a1f1799ae04df9437a83e6552b746544e358f2b889b47946fd2` |
| 13 | `theorem` | [inter_frequently_image_mem_ae_eq](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/inter-frequently-image-mem-ae-eq--9ff76dcbd2517c54c5696426.md) | 175 | `result-track:9ff76dcbd2517c54c5696426625e85ff4b49109d94cf9da363ddc098c7ad3045` |
| 14 | `theorem` | [measure_inter_frequently_image_mem_eq](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/measure-inter-frequently-image-mem-eq--ffde79c8c7bdba8c4b4e2409.md) | 179 | `result-track:ffde79c8c7bdba8c4b4e2409d149c061d314aa15999fefab0bf1566bf1f342c0` |
| 15 | `theorem` | [ae_forall_image_mem_imp_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/ae-forall-image-mem-imp-frequently-image-mem--70cacd9d91fe1495f1f2fa79.md) | 186 | `result-track:70cacd9d91fe1495f1f2fa791c69cb083b3c0218a757b8cf2dd7dfa819bb0f5b` |
| 16 | `theorem` | [frequently_ae_mem_and_frequently_image_mem](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/frequently-ae-mem-and-frequently-image-mem--85877afa8bb04fea6d56ccb5.md) | 197 | `result-track:85877afa8bb04fea6d56ccb53a84421cc1253209c257e55c7dbc6a9b8533761b` |
| 17 | `theorem` | [ae_frequently_mem_of_mem_nhds](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/ae-frequently-mem-of-mem-nhds--4325c4a3e07a25cb93602b48.md) | 205 | `result-track:4325c4a3e07a25cb93602b48191f18ada1a853ec05d929817d050d9883e069c9` |
| 18 | `theorem` | [iterate](../../../../../mathematics/Analysis/MeasureTheory/Conservative/Variant0aa2455b6fb397f8ead6a26a199368d6490ac134e46df6a6a11e285e7daaddd0.lean/declarations/iterate--3c2617ad15baa9bc6ce453eb.md) | 215 | `result-track:3c2617ad15baa9bc6ce453eb3be9b7bb31f42b7a70bd52d5166ceb10de2fa8d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
