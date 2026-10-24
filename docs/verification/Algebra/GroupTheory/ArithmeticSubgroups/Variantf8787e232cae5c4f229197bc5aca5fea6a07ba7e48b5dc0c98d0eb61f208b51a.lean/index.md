# Verification target: GRWTSK.Algebra.GroupTheory.ArithmeticSubgroups.Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d23db3d901be43b71180d53a346fa6e33508ad6",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d23db3d901be43b71180d53a346fa6e33508ad6`.

Source path: `GRWTSK/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean.json)

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
| 1 | `class` | [HasDetPlusMinusOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/hasdetplusminusone--38f4e89ba59034b403ce2379.md) | 45 | `declaration-track:38f4e89ba59034b403ce2379422ad45bc9ec50bf264ae818d139144a2cb7e8ec` |
| 2 | `lemma` | [HasDetPlusMinusOne.abs_det](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/hasdetplusminusone-abs-det--0012ac54a950b41c35911ecf.md) | 49 | `result-track:0012ac54a950b41c35911ecf5973de90ed88a388b09be7d39bb3f6f5b2c6c918` |
| 3 | `lemma` | [hasDetPlusMinusOne_iff_abs_det](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/hasdetplusminusone-iff-abs-det--194363f5b5e2968e5f31c2f7.md) | 53 | `result-track:194363f5b5e2968e5f31c2f7abd9426282254d31afd337ead90275d587f7c579` |
| 4 | `class` | [HasDetOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/hasdetone--450c88f26873c6cf967db5b2.md) | 60 | `declaration-track:450c88f26873c6cf967db5b265c42aabedbe4992c78cb34bb5b1b0285c888356` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--78ad17d86f8790471b2342cf.md) | 63 | `declaration-track:78ad17d86f8790471b2342cf7d78bf0b1a27258c74f83e2a1a9f6db95df03c55` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--94186f4149946ee02b83d656.md) | 66 | `declaration-track:94186f4149946ee02b83d6565fd08e445850aefa750cee26d8e6873cc49f72e0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--0ef04a2a840f71df10007cdf.md) | 70 | `declaration-track:0ef04a2a840f71df10007cdfd529443b8bb91cf8cc0a1607b003caa814311c7f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--abbde6ef73d1d97b2271d6ac.md) | 74 | `declaration-track:abbde6ef73d1d97b2271d6ac068440e613dbbe5529fb7a84f26478781ef0fddf` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--520cc80e654cb106fc4e8ea0.md) | 76 | `declaration-track:520cc80e654cb106fc4e8ea034b4dd87209be5bef2dedce27e80bb41340ba96a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--3fc213133c4281cc67a74467.md) | 79 | `declaration-track:3fc213133c4281cc67a7446793f293b930de78b6eee0c43a838d9f1a7c33e07f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--74dc6498d11574edc379bd24.md) | 83 | `declaration-track:74dc6498d11574edc379bd24afbcf290da1fe340d993520bc3a25f49c3d5ad3e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--a40901c753ff39c365059d08.md) | 90 | `declaration-track:a40901c753ff39c365059d086ce7115ccaa3421bd858f1f90eda27c3b1f40d8d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--489be3e87fb86e7e2eea2e42.md) | 105 | `declaration-track:489be3e87fb86e7e2eea2e42a7fd1a1adc7f0d12fefafb61bc0c0e0f7bf3c815` |
| 14 | `class` | [IsArithmetic](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/isarithmetic--3eaf44e8ec215a40a0d9f844.md) | 110 | `declaration-track:3eaf44e8ec215a40a0d9f8442aadb70835a7ea2158865faf4fd3b2dcbe0223f4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--452dcd5cc9e19f978484a90e.md) | 114 | `declaration-track:452dcd5cc9e19f978484a90e12eef1458634a26c2f0b593d11758624da11fc53` |
| 16 | `lemma` | [isArithmetic_iff_finiteIndex](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/isarithmetic-iff-finiteindex--c52a94bda24f961e9ca2c421.md) | 116 | `result-track:c52a94bda24f961e9ca2c421f1018c6e8711c64a36756461b82e04a65c7805a8` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--b78d763c766961ee79016d35.md) | 121 | `declaration-track:b78d763c766961ee79016d35bd8ac052a8b3d3c460b14b3be2b3d2be622cdbe5` |
| 18 | `instance` | [IsArithmetic.finiteIndex_comap](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/isarithmetic-finiteindex-comap--99c29eb000b4d67eb869b772.md) | 125 | `declaration-track:99c29eb000b4d67eb869b7728e7975fdae85baae7eb9f04b6f3b8229bb3c817d` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--5ce99ca45d72bb84394047ae.md) | 129 | `declaration-track:5ce99ca45d72bb84394047aecad5120d4cd64a00cfbff5f4f103290db91d49ab` |
| 20 | `instance` | [IsArithmetic.isFiniteRelIndexSL](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/isarithmetic-isfiniterelindexsl--9e9448a9827eed9e1433bf61.md) | 140 | `declaration-track:9e9448a9827eed9e1433bf61db7772491e92848832da0ec2a7e353ccba518463` |
| 21 | `instance` | [IsArithmetic.inter](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/isarithmetic-inter--402adf3d75cdb2ae3840426a.md) | 144 | `declaration-track:402adf3d75cdb2ae3840426a418c3153834512d44e3c946182650dad2f048d82` |
| 22 | `instance` | [discreteSpecialLinearGroupIntRange](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/discretespeciallineargroupintrange--c4da47a9f1b42801a960ca88.md) | 154 | `declaration-track:c4da47a9f1b42801a960ca88c3901cc1baad11486b9d9a6020903ad64f9bb163` |
| 23 | `instance` | [discreteSpecialLinearGroupIntRangeSL](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/discretespeciallineargroupintrangesl--32939dcd3b9ddec2ca84392c.md) | 158 | `declaration-track:32939dcd3b9ddec2ca84392c118c190a184a931614cb707d256920a5ee346ad0` |
| 24 | `lemma` | [isClosedEmbedding_mapGLInt](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/isclosedembedding-mapglint--ba1f3334f14919c300c1e08f.md) | 163 | `result-track:ba1f3334f14919c300c1e08fc3595ac2d293fd14492256bbe4b64f32d1a1d4e1` |
| 25 | `instance` | [Subgroup.IsArithmetic.discreteTopology](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-isarithmetic-discretetopology--9ab2fd867435b1893f4d16de.md) | 169 | `declaration-track:9ab2fd867435b1893f4d16dee34761b8f57ea45a21341d58bcc17d481a871b27` |
| 26 | `def` | [Subgroup.adjoinNegOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-adjoinnegone--3d88dffbccb0b49884f9b8e0.md) | 179 | `declaration-track:3d88dffbccb0b49884f9b8e08b1954bd82fd2f1d2d654a75c25f35cd842d87ca` |
| 27 | `lemma` | [Subgroup.mem_adjoinNegOne_iff](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-mem-adjoinnegone-iff--41f1008feb6c012974a9d675.md) | 192 | `result-track:41f1008feb6c012974a9d67517b3a30203f2d5b8247e3cb403ab9d17a0ffaba6` |
| 28 | `lemma` | [Subgroup.le_adjoinNegOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-le-adjoinnegone--83ffde1986780d53d0b08564.md) | 196 | `result-track:83ffde1986780d53d0b085644e0b5926a2e3c5db4194dc1be682c875a299c7cd` |
| 29 | `lemma` | [Subgroup.negOne_mem_adjoinNegOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-negone-mem-adjoinnegone--19999264b43c6787b5b0c0e9.md) | 199 | `result-track:19999264b43c6787b5b0c0e914ff3d70ea8ade10f60d29c20c581ef909350e3e` |
| 30 | `lemma` | [Subgroup.adjoinNegOne_eq_self_iff](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-adjoinnegone-eq-self-iff--5e876b5ad395352000f1eb8d.md) | 201 | `result-track:5e876b5ad395352000f1eb8dc1af0623b96bb76e5cc99389abb058aaae630d08` |
| 31 | `lemma` | [Subgroup.relindex_adjoinNegOne_eq_two](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-relindex-adjoinnegone-eq-two--c73c4704ed812e8f577611e0.md) | 206 | `result-track:c73c4704ed812e8f577611e0f00033c816355e5f2774e8b66e2d22c751a3b9e2` |
| 32 | `lemma` | [Subgroup.relIndex_adjoinNegOne_ne_zero](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-relindex-adjoinnegone-ne-zero--3faa89e8811ab5b246e16deb.md) | 211 | `result-track:3faa89e8811ab5b246e16deb40847dc8789924b083691c04ef9d2ee3870388c1` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--234d3138250d326dca1cf562.md) | 217 | `declaration-track:234d3138250d326dca1cf562f9a84696aac8337db485c1418d503b1177b5b11c` |
| 34 | `lemma` | [Subgroup.commensurable_adjoinNegOne_self](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-commensurable-adjoinnegone-self--a62020e6dc40125e86bda4a9.md) | 220 | `result-track:a62020e6dc40125e86bda4a9e58648c1e1a3581b5f8d9cbaaa59f591fa2b79ca` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--0e2948c934cac996e0e40ba1.md) | 224 | `declaration-track:0e2948c934cac996e0e40ba10988729a949d69c5357107bba3c8253982494dfa` |
| 36 | `lemma` | [Subgroup.hasDetPlusMinusOne_adjoinNegOne_iff](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-hasdetplusminusone-adjoinnegone-iff--372674ce1b9a74b1ec5cb306.md) | 233 | `result-track:372674ce1b9a74b1ec5cb3067f665953d5da1537a374c34194b3a7a0f970495e` |
| 37 | `lemma` | [Subgroup.hasDetOne_adjoinNegOne_iff](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-hasdetone-adjoinnegone-iff--b4f964e4f82af5356e07e77e.md) | 244 | `result-track:b4f964e4f82af5356e07e77e9e644f3b0a5270c56deaed90e4576ba2c12cc0c1` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--e9e2c6e5a365148bb59352c4.md) | 251 | `declaration-track:e9e2c6e5a365148bb59352c4ce365e5459a8000209318dc29e19fdd04995f4ff` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/instance--af49478dab7d881cba9d3679.md) | 255 | `declaration-track:af49478dab7d881cba9d367951a2de1f70e7264e39af2a0bb6fe537c2519fcea` |
| 40 | `instance` | [Subgroup.instIsArithmeticAdjoinNegOne](../../../../../mathematics/Algebra/GroupTheory/ArithmeticSubgroups/Variantf8787e232cae5c4f229197bc5aca5fea6a07ba7e48b5dc0c98d0eb61f208b51a.lean/declarations/subgroup-instisarithmeticadjoinnegone--6778716ba92586f04c993ef6.md) | 261 | `declaration-track:6778716ba92586f04c993ef68c5b27e764e9dd8a1a7f259f707f5582b2c834d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
