# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba440227664f5658fece039b8f5b5edf866e6a17",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba440227664f5658fece039b8f5b5edf866e6a17`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [posTangentConeAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/postangentconeat--516c96da819b69cde4c0a684.md) | 75 | `declaration-track:516c96da819b69cde4c0a6845097482e7a149a98498260f6f646a4822c303d28` |
| 2 | `theorem` | [posTangentConeAt_mono](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/postangentconeat-mono--375a3139f15c0044b8fdcd42.md) | 79 | `result-track:375a3139f15c0044b8fdcd42a5ff6ac5f46297080f0f09cd8861e0c86c73c4e3` |
| 3 | `theorem` | [mem_posTangentConeAt_of_frequently_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/mem-postangentconeat-of-frequently-mem--683cf07223a2f774b3530567.md) | 83 | `result-track:683cf07223a2f774b3530567708518d9ab68fd5fd8b0211d095290db26b10259` |
| 4 | `theorem` | [mem_posTangentConeAt_of_segment_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/mem-postangentconeat-of-segment-subset--a388e486bdb2948034f845c7.md) | 96 | `result-track:a388e486bdb2948034f845c719883aa30dec7bbc4bdea66227772b0fbbce88e6` |
| 5 | `theorem` | [sub_mem_posTangentConeAt_of_segment_subset](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/sub-mem-postangentconeat-of-segment-subset--ce17eee4452c192e661aa112.md) | 105 | `result-track:ce17eee4452c192e661aa112eeeeb7213fb5923a27d5e888d3b8de2f65290e7f` |
| 6 | `theorem` | [posTangentConeAt_univ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/postangentconeat-univ--27133674de06584dbeac8a34.md) | 110 | `result-track:27133674de06584dbeac8a34b169041b7dac3ef474c7726543e93882320c98cb` |
| 7 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmaxon-hasfderivwithinat-nonpos--bab60a59df8bb14a5a39ddb3.md) | 119 | `result-track:bab60a59df8bb14a5a39ddb346c37c8cf7b70537f3b2356029d5df22cf5144e7` |
| 8 | `theorem` | [IsLocalMaxOn.fderivWithin_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmaxon-fderivwithin-nonpos--0295e4a21e0bb5ea0455ae74.md) | 133 | `result-track:0295e4a21e0bb5ea0455ae747bba4cea034c69821bdb9d7db77106fcef15521f` |
| 9 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmaxon-hasfderivwithinat-eq-zero--3cd9bc95e231495e997e19e2.md) | 142 | `result-track:3cd9bc95e231495e997e19e239c4ae8b460364108f20445a3c8814192c45be66` |
| 10 | `theorem` | [IsLocalMaxOn.fderivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmaxon-fderivwithin-eq-zero--3ed05767197b0b3cffc049e4.md) | 149 | `result-track:3ed05767197b0b3cffc049e463af5f882b3805ea489d3f550322394e5e265d25` |
| 11 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalminon-hasfderivwithinat-nonneg--00398b9a741c6a7138884a8e.md) | 159 | `result-track:00398b9a741c6a7138884a8e17753597c222673ec65625b0b972ee643f8011c8` |
| 12 | `theorem` | [IsLocalMinOn.fderivWithin_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalminon-fderivwithin-nonneg--254cfbce1166e73a95f3af7b.md) | 165 | `result-track:254cfbce1166e73a95f3af7b62f500ac57f6a8ceaee51d78d6d8b474f95cd30e` |
| 13 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalminon-hasfderivwithinat-eq-zero--9c2486297ba7a1205865dddf.md) | 174 | `result-track:9c2486297ba7a1205865dddf915d1be82299e4bacd30820ae1b2556cfe45963b` |
| 14 | `theorem` | [IsLocalMinOn.fderivWithin_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalminon-fderivwithin-eq-zero--68bfe9737b98d3e04818059a.md) | 181 | `result-track:68bfe9737b98d3e04818059a44d018c7c63a06463abb60cb14c3682b74a1bcfe` |
| 15 | `theorem` | [IsLocalMin.hasFDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmin-hasfderivat-eq-zero--02d951ae777e746ae9da5c3a.md) | 190 | `result-track:02d951ae777e746ae9da5c3abc95558c99e57aec93466cbd486573dd97b4b0b3` |
| 16 | `theorem` | [IsLocalMin.fderiv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmin-fderiv-eq-zero--abbf8a16ef8d45847e61dc1b.md) | 197 | `result-track:abbf8a16ef8d45847e61dc1bb7eb62ad5a7659af5415b289d531fb19dc7096e5` |
| 17 | `theorem` | [IsLocalMax.hasFDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmax-hasfderivat-eq-zero--7b297d85f4c9209d7c3f6b06.md) | 203 | `result-track:7b297d85f4c9209d7c3f6b06b20e65e67821885616ef2187ece5838727396458` |
| 18 | `theorem` | [IsLocalMax.fderiv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmax-fderiv-eq-zero--30568ddac190919fb4ef5146.md) | 207 | `result-track:30568ddac190919fb4ef51469209cdb0868a62ca308fceb94ec1657972234264` |
| 19 | `theorem` | [IsLocalExtr.hasFDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalextr-hasfderivat-eq-zero--38461946e0e5675c9b53d36e.md) | 213 | `result-track:38461946e0e5675c9b53d36ecba8ec2381cdd85523423a0161380370a9ea0cf2` |
| 20 | `theorem` | [IsLocalExtr.fderiv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalextr-fderiv-eq-zero--6849459358f79445c3df2eb9.md) | 217 | `result-track:6849459358f79445c3df2eb921fdfcd46569c56a714d4bfb549b43187eb3f6ea` |
| 21 | `lemma` | [one_mem_posTangentConeAt_iff_mem_closure](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/one-mem-postangentconeat-iff-mem-closure--0afe95d94346b1980cb85cec.md) | 230 | `result-track:0afe95d94346b1980cb85cec03039dbd4584caf8158ef587cd51f344e4e6c2a4` |
| 22 | `lemma` | [one_mem_posTangentConeAt_iff_frequently](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/one-mem-postangentconeat-iff-frequently--124b5ad55fb498a0018a8349.md) | 246 | `result-track:124b5ad55fb498a0018a834993971d02c1e1e9ae87bb31a20272dfece7a9290b` |
| 23 | `theorem` | [IsLocalMin.hasDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmin-hasderivat-eq-zero--c08be9ab56efaf6273490103.md) | 253 | `result-track:c08be9ab56efaf6273490103f8a3146f0466e1cdc3d80771a74dc39c204b4f16` |
| 24 | `theorem` | [IsLocalMin.deriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmin-deriv-eq-zero--229feebfca857908e3772ace.md) | 257 | `result-track:229feebfca857908e3772acee6c164e5a544a21390b5fc397f3c0cd1f7dfe4aa` |
| 25 | `theorem` | [IsLocalMax.hasDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmax-hasderivat-eq-zero--05068724407ca4a4212ba441.md) | 263 | `result-track:05068724407ca4a4212ba441b7568b1b0d8797e72400afcf8c6e4b890f08b5db` |
| 26 | `theorem` | [IsLocalMax.deriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalmax-deriv-eq-zero--d60795308692fbb6254ecac7.md) | 267 | `result-track:d60795308692fbb6254ecac75c6ef133bc1e1f01544d2b0d6931c4393a514509` |
| 27 | `theorem` | [IsLocalExtr.hasDerivAt_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalextr-hasderivat-eq-zero--a845c76d19ac508bd9272451.md) | 273 | `result-track:a845c76d19ac508bd92724511c17bfb8acc13fb30a1e3a5d4cc0429c76d165f8` |
| 28 | `theorem` | [IsLocalExtr.deriv_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean/declarations/islocalextr-deriv-eq-zero--99c56a886a0d4936d149affe.md) | 277 | `result-track:99c56a886a0d4936d149affec89ccbfd100bb07ab765b97300f18f5ffa7fdaa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
