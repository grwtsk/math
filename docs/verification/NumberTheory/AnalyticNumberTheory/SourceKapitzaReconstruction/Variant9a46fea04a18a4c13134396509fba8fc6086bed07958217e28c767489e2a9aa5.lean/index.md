# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceKapitzaReconstruction.Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11a56e0850bd4f682e76cb96cc033613c74968ed",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11a56e0850bd4f682e76cb96cc033613c74968ed`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedPsiError](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/normalizedpsierror--b7f879a358765900fc39e3e0.md) | 41 | `declaration-track:b7f879a358765900fc39e3e029de3dc735b1ae3cfa7dc36c11d74a888b0955d5` |
| 2 | `def` | [kapitzaKernel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/kapitzakernel--fa140e719a0e1fd84164e693.md) | 45 | `declaration-track:fa140e719a0e1fd84164e6931f9359a3c6aacfa161e1ac6da6f56d3bfdad747a` |
| 3 | `def` | [kapitzaWeight](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/kapitzaweight--29469776f2825156f6fc52f5.md) | 50 | `declaration-track:29469776f2825156f6fc52f5dd8e0c617feeb64681986569dbb065be37d39ce8` |
| 4 | `def` | [endpointValue](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/endpointvalue--bbd4740bd8ed3125fd6531f7.md) | 53 | `declaration-track:bbd4740bd8ed3125fd6531f71ca6edbc0a76dc924c3a9a65db04f1e98f8c1486` |
| 5 | `def` | [endpointSlope](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/endpointslope--b975e390561148b6b9362c5b.md) | 56 | `declaration-track:b975e390561148b6b9362c5b262b70db612fe2e471903f314f01e76bf73aa38d` |
| 6 | `def` | [affineTrend](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/affinetrend--fa9d1542eca34402cc135694.md) | 60 | `declaration-track:fa9d1542eca34402cc135694608247c14be9f1e9028af2127b3bfbb56bcc4a02` |
| 7 | `def` | [nonaffineDiscrepancy](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/nonaffinediscrepancy--df7ebfeda5b637de7ca8858d.md) | 63 | `declaration-track:df7ebfeda5b637de7ca8858d06ef80d889796a8af5da63fa8bd4a7025c0c6f4c` |
| 8 | `def` | [kernelMomentZero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/kernelmomentzero--74fc60e7c3ad666b166952b0.md) | 66 | `declaration-track:74fc60e7c3ad666b166952b0d12906fe808d04f789bd3c8a008c6b77ea73c7a2` |
| 9 | `def` | [kernelMomentOne](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/kernelmomentone--a4f135a90ef099957f4ba2ac.md) | 69 | `declaration-track:a4f135a90ef099957f4ba2ace6ffe2c09b45869ccd8d5800d08f41e0bc654c50` |
| 10 | `def` | [trendValue](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/trendvalue--6f46cdeef0c7183d5c63b8e4.md) | 72 | `declaration-track:6f46cdeef0c7183d5c63b8e4def7a34fbe1d31ea53760ec8c7cbc8436b355532` |
| 11 | `def` | [nonaffineWork](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/nonaffinework--c5e48e1242b5ce93768cbbf4.md) | 76 | `declaration-track:c5e48e1242b5ce93768cbbf47ba625f91fa71200325b9c32a4fad4bd7538535e` |
| 12 | `def` | [continuousDefect](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/continuousdefect--7f74dc6572a8711609c98fb0.md) | 80 | `declaration-track:7f74dc6572a8711609c98fb0de60f73b198b64bfe4f606fbfbddc05b97eb8c4a` |
| 13 | `theorem` | [normalizedPsiError_zero](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/normalizedpsierror-zero--376441034d5c59dbd726ea8d.md) | 83 | `result-track:376441034d5c59dbd726ea8da0ba74613f6ccf4db147a4adec12938ce7ddc655` |
| 14 | `theorem` | [nonaffineDiscrepancy_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/nonaffinediscrepancy-upper--6f9119b922f390e1255a1618.md) | 86 | `result-track:6f9119b922f390e1255a1618aa86c62a840dc248d86d10bc372a0e5b03a76736` |
| 15 | `theorem` | [normalizedPsiError_eq_prefix](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/normalizedpsierror-eq-prefix--b52be305a455f1f98e62c989.md) | 89 | `result-track:b52be305a455f1f98e62c989c616dff520166cd7eeea1a0014dd72f20d82e779` |
| 16 | `theorem` | [chebyshev_mul_continuous_intervalIntegrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/chebyshev-mul-continuous-intervalintegrable--f68e300c2aa36f3c53c2e416.md) | 95 | `result-track:f68e300c2aa36f3c53c2e416ca0837e55849d17d9da855de34c5d6e690395e78` |
| 17 | `theorem` | [normalizedPsiError_intervalIntegrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/normalizedpsierror-intervalintegrable--6e42f121bc29a3411617e138.md) | 116 | `result-track:6e42f121bc29a3411617e138d9afe7b15a8fee1aa047b942c0b10813c0983a4a` |
| 18 | `theorem` | [kapitzaWeight_continuous](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/kapitzaweight-continuous--ad49640ec3d5a246839111d1.md) | 126 | `result-track:ad49640ec3d5a246839111d11c1b7a031f01af84ea09338211d1c7692ba63c45` |
| 19 | `theorem` | [weightedPsiError_intervalIntegrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/weightedpsierror-intervalintegrable--1210015d04eb9ac0c2658ba8.md) | 131 | `result-track:1210015d04eb9ac0c2658ba804d434f1ce34e6f81f1c6c643c97a46fc2a9aa45` |
| 20 | `theorem` | [kernelMomentZero_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/kernelmomentzero-eq--d2515d76b9e0736389faf274.md) | 138 | `result-track:d2515d76b9e0736389faf2749b1ddcdccd44cd86b00cdb1b7ae78e1e92a8d4ce` |
| 21 | `theorem` | [mertensResidual_eq_weightedPsi](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/mertensresidual-eq-weightedpsi--44915a21f382441892625ba3.md) | 157 | `result-track:44915a21f382441892625ba3f2586dda0ef060679058199b029de78c1b490fb8` |
| 22 | `theorem` | [mertensResidual_eq_affine_nonaffine](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/mertensresidual-eq-affine-nonaffine--a04648d85f3126f864e263f4.md) | 214 | `result-track:a04648d85f3126f864e263f493fc80ee3778fa9a865759b944c1201e197d8be4` |
| 23 | `theorem` | [one_add_continuous_eq_defect](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/one-add-continuous-eq-defect--ee41fee83fff2291432cc930.md) | 255 | `result-track:ee41fee83fff2291432cc930b82ec046aab037dcb31814c3a9a1e79a2baf462f` |
| 24 | `theorem` | [mertensResidual_eq_defect_trend_nonaffine](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/mertensresidual-eq-defect-trend-nonaffine--7c869b0cb62860fce59fd27f.md) | 264 | `result-track:7c869b0cb62860fce59fd27f8f5068a3dffdfd2b221a88091ce53899635f6f10` |
| 25 | `def` | [negativeFirstMoment](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/negativefirstmoment--ae4107ea7c4e7587e3d3aee2.md) | 271 | `declaration-track:ae4107ea7c4e7587e3d3aee254fb2e68c18326e7b4d295367d9103326f32d1d0` |
| 26 | `theorem` | [positiveFirstMoment_eq_negative](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/positivefirstmoment-eq-negative--7bb0ccc1887c544d39789204.md) | 275 | `result-track:7bb0ccc1887c544d39789204cf278bc85f74d01c44fb74cbf86c1153006a737b` |
| 27 | `theorem` | [kernelMomentOne_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/kernelmomentone-eq--bc44db4cfa3678eb5bc853e1.md) | 323 | `result-track:bc44db4cfa3678eb5bc853e1198e8dc4a97dd8c0c0d823c59541e1ae92f03f22` |
| 28 | `theorem` | [negativeFirstMoment_abs_le_four](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/negativefirstmoment-abs-le-four--019f5b496fa61f347f723194.md) | 366 | `result-track:019f5b496fa61f347f7231942fa519ef4acfb416d9c5750436b48ad340cac173` |
| 29 | `theorem` | [kernelMomentZero_abs_le_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/kernelmomentzero-abs-le-one--67fa7479587ff4df7fa5f34f.md) | 395 | `result-track:67fa7479587ff4df7fa5f34f7db245d6af9e60b3efce0574c1e16e416dfe4c43` |
| 30 | `theorem` | [kernelMomentOne_abs_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/kernelmomentone-abs-le--52b5426afbf71f089a34248d.md) | 401 | `result-track:52b5426afbf71f089a34248db8e633bffd60eee11f39eef8563e76bd899af406` |
| 31 | `theorem` | [trendValue_abs_le_of_samples](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/trendvalue-abs-le-of-samples--c376b2ede9e83ed2a7ebabc0.md) | 418 | `result-track:c376b2ede9e83ed2a7ebabc09bb0f196f3db26a79aabaec7580985017ee64a7f` |
| 32 | `theorem` | [continuousDefect_antitone](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/continuousdefect-antitone--77990ab3985c94042a3282e3.md) | 445 | `result-track:77990ab3985c94042a3282e3d59c6595c405f7da457e98f775f1c8902bef3174` |
| 33 | `def` | [originalPrefixFloor](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/originalprefixfloor--913f38be534759a29c0eaea6.md) | 459 | `declaration-track:913f38be534759a29c0eaea6e8f7af886f1893ce2dd9b30021ce05aef3c8ae41` |
| 34 | `theorem` | [originalPrefixFloor_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/originalprefixfloor-le--5fea7ee0c51dfaba94c70aa1.md) | 463 | `result-track:5fea7ee0c51dfaba94c70aa1712993234c3cada71749e1b8f401d2c66f9332ef` |
| 35 | `theorem` | [residual_le_of_nonaffine_cap](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/residual-le-of-nonaffine-cap--d498a805e05af981849491de.md) | 471 | `result-track:d498a805e05af981849491debe04a2ee67b8cbb972a7f4c111c7074e191d4beb` |
| 36 | `theorem` | [original_lower_of_nonaffine_cap](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/original-lower-of-nonaffine-cap--625586980f44ed96603a924c.md) | 481 | `result-track:625586980f44ed96603a924cf02937b2439f9d141caaf994381e06bc55a500d3` |
| 37 | `theorem` | [estimate_of_nonaffine_cap](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/estimate-of-nonaffine-cap--0fde0bd05153ed613453e813.md) | 503 | `result-track:0fde0bd05153ed613453e8134a58c07e3d840f559c01bee38ed73f0cb0a79d73` |
| 38 | `def` | [consumerRadius](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/consumerradius--4a269f85ad463b5b425fe551.md) | 510 | `declaration-track:4a269f85ad463b5b425fe5510b263c4ae9723e181fb9f72ece3a95d73588fd2e` |
| 39 | `theorem` | [original_lower_of_separate_nonaffine_caps](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SourceKapitzaReconstruction/Variant9a46fea04a18a4c13134396509fba8fc6086bed07958217e28c767489e2a9aa5.lean/declarations/original-lower-of-separate-nonaffine-caps--40fc4c721acba2786eada221.md) | 513 | `result-track:40fc4c721acba2786eada2216fec915ddb3977e805cfdb6788ab4e74fecf6ca6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
