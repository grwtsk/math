# Verification target: GRWTSK.Analysis.MeasureTheory.Jordan.Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4625d244f80003ca2470bf1a082946de985ff170",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4625d244f80003ca2470bf1a082946de985ff170`.

Source path: `GRWTSK/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean.json)

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
| 1 | `structure` | [JordanDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/jordandecomposition--21118d4cb4f5c2527a1ad630.md) | 59 | `declaration-track:21118d4cb4f5c2527a1ad630032d37e663c213197af0f3f4030833bc99dc501b` |
| 2 | `instance` | [instZero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/instzero--bed7ff47934a76addb1225dc.md) | 78 | `declaration-track:bed7ff47934a76addb1225dca3c62914cb2cb5d582a6f1ea88da5a04b5496571` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/instinhabited--14991090d9dfb447218f87af.md) | 80 | `declaration-track:14991090d9dfb447218f87aff9df76c95f75d236d41fc66667faecad0f9cab78` |
| 4 | `instance` | [instInvolutiveNeg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/instinvolutiveneg--7d1c28a015fd05491b4ff964.md) | 82 | `declaration-track:7d1c28a015fd05491b4ff964385de5e82b9fc0d36b010fef42962db0d6f77fbd` |
| 5 | `instance` | [instSMul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/instsmul--78da5cd07eee2092da8bea78.md) | 86 | `declaration-track:78da5cd07eee2092da8bea780f2a8529d0d6f8ec63c793ea770a309f3b22273e` |
| 6 | `instance` | [instSMulReal](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/instsmulreal--1d2faba5dad92626973f3d70.md) | 91 | `declaration-track:1d2faba5dad92626973f3d70f68ea40b37a9158a20b2e3ea1732f6f388d94128` |
| 7 | `theorem` | [zero_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/zero-pospart--c7cbfc589a8778ae39f93d7c.md) | 95 | `result-track:c7cbfc589a8778ae39f93d7cf98bffc32f67165139d138e49a9773565acfa3a0` |
| 8 | `theorem` | [zero_negPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/zero-negpart--3378bde836b7c2558a7d8efd.md) | 99 | `result-track:3378bde836b7c2558a7d8efdef32df7fc12a91030b7b020098741980188eba25` |
| 9 | `theorem` | [neg_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/neg-pospart--23957ae7fc5a60759ce892d6.md) | 103 | `result-track:23957ae7fc5a60759ce892d61325ab87f5fa7a79dab5c919cf09a87685f588b8` |
| 10 | `theorem` | [neg_negPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/neg-negpart--2bccc92286198c6b5165008c.md) | 107 | `result-track:2bccc92286198c6b5165008cd5822df1a58d03b63362a846b8b48372d6c8e1a4` |
| 11 | `theorem` | [smul_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/smul-pospart--bb8f2126149ae85e4faa6950.md) | 111 | `result-track:bb8f2126149ae85e4faa6950a847649722250900d63c921722e5b2cd871918bd` |
| 12 | `theorem` | [smul_negPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/smul-negpart--f0cb89c073bac5a59592c32a.md) | 115 | `result-track:f0cb89c073bac5a59592c32ad0a3c2b4f6b883f934d3d8195263f0178eda3f4e` |
| 13 | `theorem` | [real_smul_def](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/real-smul-def--9ce7d199e2556b1ed15dd7ce.md) | 118 | `result-track:9ce7d199e2556b1ed15dd7ce9ce5324abad547edb04a37a38efd9ddfff5c0715` |
| 14 | `theorem` | [coe_smul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/coe-smul--b626631e31f20e977cc8a20a.md) | 123 | `result-track:b626631e31f20e977cc8a20a07094982f9e2c394d8810fbdc07750758b2f7236` |
| 15 | `theorem` | [real_smul_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/real-smul-nonneg--8c92e32e65c2bb2a022868cb.md) | 126 | `result-track:8c92e32e65c2bb2a022868cb1134750746aa662c3d365a00ee55070905f1dd11` |
| 16 | `theorem` | [real_smul_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/real-smul-neg--c03bd8f7f718f32028bac786.md) | 129 | `result-track:c03bd8f7f718f32028bac78694bdb310fad3eb98ef376c4f5661963cc3b1b21b` |
| 17 | `theorem` | [real_smul_posPart_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/real-smul-pospart-nonneg--033a3a39ecf4acc59d58ad3e.md) | 132 | `result-track:033a3a39ecf4acc59d58ad3e9d316f82e5266454cf1e3d930bf8450f3ee322c8` |
| 18 | `theorem` | [real_smul_negPart_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/real-smul-negpart-nonneg--d82fb95596908437ab27d58c.md) | 136 | `result-track:d82fb95596908437ab27d58c0ee4c4e02704e9deda24493a904a35380f4f2be4` |
| 19 | `theorem` | [real_smul_posPart_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/real-smul-pospart-neg--d55ec2dcaf1cec8cceed5da6.md) | 140 | `result-track:d55ec2dcaf1cec8cceed5da6522302063f521490287f85ed9d04b78624f7be03` |
| 20 | `theorem` | [real_smul_negPart_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/real-smul-negpart-neg--58fe6c47a6b3521f3ceef2fe.md) | 144 | `result-track:58fe6c47a6b3521f3ceef2fe70290f68c2652f6c59b1b62dde555f99cfbb8a47` |
| 21 | `def` | [toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tosignedmeasure--1dee2e286050797683557f50.md) | 149 | `declaration-track:1dee2e286050797683557f508ac7f2efc4be61cbef9e6146346adfeaae921052` |
| 22 | `theorem` | [toSignedMeasure_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tosignedmeasure-zero--12a43b45fa9c6e75534b5cb2.md) | 152 | `result-track:12a43b45fa9c6e75534b5cb290a9991a2bb658bef1ea2b71f44ce50e651c7249` |
| 23 | `theorem` | [toSignedMeasure_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tosignedmeasure-neg--498d0e73eb8f52c38b40d0cc.md) | 157 | `result-track:498d0e73eb8f52c38b40d0cc4a2b1d34bb33eec879c7ec31016cacde1741702b` |
| 24 | `theorem` | [toSignedMeasure_smul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tosignedmeasure-smul--9d29287146695d0c66571a14.md) | 162 | `result-track:9d29287146695d0c66571a14ca57cf9b7077074ff97a32b5acc9586e9104f3a4` |
| 25 | `theorem` | [exists_compl_positive_negative](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/exists-compl-positive-negative--5431b71fab48462a11dc562c.md) | 170 | `result-track:5431b71fab48462a11dc562c575d4ff02c88cc4cbce87322fb4d89b783ec6107` |
| 26 | `def` | [toJordanDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tojordandecomposition--1a7d556324a4ba74587d5088.md) | 200 | `declaration-track:1a7d556324a4ba74587d5088c6a917e102e4c1598a5df54a132d8ccb4ee6a4e9` |
| 27 | `theorem` | [toJordanDecomposition_spec](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tojordandecomposition-spec--6adca54206a9042065b098fe.md) | 212 | `result-track:6adca54206a9042065b098fe393e40b8b1c042d7a66db6e1377ba8c11c181c69` |
| 28 | `theorem` | [toSignedMeasure_toJordanDecomposition](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tosignedmeasure-tojordandecomposition--eb6bc4041b35037de071c72f.md) | 229 | `result-track:eb6bc4041b35037de071c72fad29232bef61f6343361cedb9a0b3e9ce691f316` |
| 29 | `theorem` | [subset_positive_null_set](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/subset-positive-null-set--c0416ab9473a6b8ad3bf1ee0.md) | 246 | `result-track:c0416ab9473a6b8ad3bf1ee023edb565ff2a2344a360baec0d518bca57531161` |
| 30 | `theorem` | [subset_negative_null_set](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/subset-negative-null-set--ad9e2b110be3f6b4c1379e34.md) | 259 | `result-track:ad9e2b110be3f6b4c1379e343f7b83e4b75afbfabda720f000bc5b1ae0be4c43` |
| 31 | `theorem` | [of_sdiff_eq_zero_of_symmDiff_eq_zero_positive](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/of-sdiff-eq-zero-of-symmdiff-eq-zero-positive--633dc2fb94aa94ca60ced6da.md) | 271 | `result-track:633dc2fb94aa94ca60ced6daa0a0aa249b5170d05818c7cc49b0580e74e8f782` |
| 32 | `theorem` | [of_sdiff_eq_zero_of_symmDiff_eq_zero_negative](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/of-sdiff-eq-zero-of-symmdiff-eq-zero-negative--e6f47f9adac2df153fc05a6a.md) | 292 | `result-track:e6f47f9adac2df153fc05a6afe8c26684ce2ec7e8fc7da1cef6ba5dd068f6e12` |
| 33 | `theorem` | [of_inter_eq_of_symmDiff_eq_zero_positive](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/of-inter-eq-of-symmdiff-eq-zero-positive--d03b6129b801b50a4d1ab32f.md) | 303 | `result-track:d03b6129b801b50a4d1ab32f51d364c64e7b467e0112803f9356ea22b7ca13c2` |
| 34 | `theorem` | [of_inter_eq_of_symmDiff_eq_zero_negative](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/of-inter-eq-of-symmdiff-eq-zero-negative--92f4c9b287ca61accc51dedf.md) | 319 | `result-track:92f4c9b287ca61accc51dedff47c86bc0a1557377adb8d135b700756737ef8d9` |
| 35 | `theorem` | [eq_of_posPart_eq_posPart](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/eq-of-pospart-eq-pospart--e57847471511f3ff6745fba8.md) | 336 | `result-track:e57847471511f3ff6745fba80d4b583ab290f6e9584f734e3b7509287eb2ed39` |
| 36 | `theorem` | [toSignedMeasure_injective](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tosignedmeasure-injective--0ecfca55cf0a973d72d61945.md) | 346 | `result-track:0ecfca55cf0a973d72d61945d6f6f040d0d9a5a0f80cf4a7510574b33631cbe3` |
| 37 | `theorem` | [toJordanDecomposition_toSignedMeasure](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tojordandecomposition-tosignedmeasure--f8e2bf714d97fb5810ebea49.md) | 401 | `result-track:f8e2bf714d97fb5810ebea496bdf8ff94f565ddc3a9e9e0116b886ee2c40060c` |
| 38 | `def` | [toJordanDecompositionEquiv](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tojordandecompositionequiv--aace6352f5c789be3a759433.md) | 414 | `declaration-track:aace6352f5c789be3a7594338a92f6030cc182b6c4ed0e5fa41e436840b67b53` |
| 39 | `theorem` | [toJordanDecomposition_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tojordandecomposition-zero--2671d80bc44ff64fa594b763.md) | 421 | `result-track:2671d80bc44ff64fa594b7638202b2f1ca148bd5deb529d4e7ef5fd0fddefa91` |
| 40 | `theorem` | [toJordanDecomposition_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tojordandecomposition-neg--cfba6aaec10c530033decebe.md) | 425 | `result-track:cfba6aaec10c530033decebe1d1ff9ba94827569b00cd8a779d6def04c663b8e` |
| 41 | `theorem` | [toJordanDecomposition_smul](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tojordandecomposition-smul--680ecf6f6945dcc0f7746deb.md) | 430 | `result-track:680ecf6f6945dcc0f7746deb8f65d4bd32e5a58e4cfb5c520b08ca4d62e62424` |
| 42 | `theorem` | [toJordanDecomposition_smul_real_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tojordandecomposition-smul-real-nonneg--aca6b712e19d31a944a8fcdf.md) | 435 | `result-track:aca6b712e19d31a944a8fcdfeca7831e0269dffd06f8c679fdbf3316cec47f79` |
| 43 | `theorem` | [toJordanDecomposition_smul_real](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tojordandecomposition-smul-real--f1f9104f0b4600098bd2ebf2.md) | 441 | `result-track:f1f9104f0b4600098bd2ebf223027ad927767a4672f1dc4e03b9f8012fb902bb` |
| 44 | `theorem` | [toJordanDecomposition_eq](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/tojordandecomposition-eq--f5ecc52ffe50aaf8fb20bacb.md) | 455 | `result-track:f5ecc52ffe50aaf8fb20bacbf494aee335e30e2b69e3d6c4b60e7a64ea4e1cb4` |
| 45 | `def` | [totalVariation](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/totalvariation--943a013057151cb346434541.md) | 460 | `declaration-track:943a013057151cb346434541f8649e0ed610a244284cdaae19ef7dbfaf5e9801` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/instance--366a2f21bec325a7e0bdcabe.md) | 463 | `declaration-track:366a2f21bec325a7e0bdcabe4ed78fed0f4ba19d59f8d3efb4ff5ed775d9c6bd` |
| 47 | `theorem` | [totalVariation_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/totalvariation-zero--b5ffe270d0f47efc5988ba48.md) | 466 | `result-track:b5ffe270d0f47efc5988ba483156a5f407cbbd6d019b17b62cafb68e0c8c41be` |
| 48 | `theorem` | [totalVariation_neg](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/totalvariation-neg--99614cec618a68660ba07b65.md) | 469 | `result-track:99614cec618a68660ba07b6599e21b792a7748d30d2c4f71534d022b9d78469a` |
| 49 | `theorem` | [apply_eq_posPart_real_sub_negPart_real](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/apply-eq-pospart-real-sub-negpart-real--b34df27c451f6a716a153896.md) | 473 | `result-track:b34df27c451f6a716a153896afd5a1c444962abcfa9e0239b2e6e44906a6f42d` |
| 50 | `theorem` | [null_of_totalVariation_zero](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/null-of-totalvariation-zero--7299ddfd0fab758b313a6884.md) | 478 | `result-track:7299ddfd0fab758b313a68843a93529bf342b19a0445681813d49ce3785b632a` |
| 51 | `theorem` | [absolutelyContinuous_ennreal_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/absolutelycontinuous-ennreal-iff--e26f853194183bc95575ec78.md) | 486 | `result-track:e26f853194183bc95575ec78d0d964cb71c8c7835450ccfad8e147afab8add87` |
| 52 | `theorem` | [totalVariation_absolutelyContinuous_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/totalvariation-absolutelycontinuous-iff--530df30aeb7fa2edb420849f.md) | 500 | `result-track:530df30aeb7fa2edb420849f280da5bebd4c3304ee0ba256814818f2f4373474` |
| 53 | `theorem` | [mutuallySingular_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/mutuallysingular-iff--bb85fc974be4c0f771b1aef3.md) | 514 | `result-track:bb85fc974be4c0f771b1aef363f90106404017ab5e60095e888da9ca684e6723` |
| 54 | `theorem` | [mutuallySingular_ennreal_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/mutuallysingular-ennreal-iff--cfb271d3f0eb07b9cc89c993.md) | 533 | `result-track:cfb271d3f0eb07b9cc89c9930b6d8b2736e7e1fabe3b1bcc9059855733d4ebc4` |
| 55 | `theorem` | [totalVariation_mutuallySingular_iff](../../../../../mathematics/Analysis/MeasureTheory/Jordan/Variant498fbbe317d536b67feefddc702d31d5192c55ef81194dea4556e385129392bb.lean/declarations/totalvariation-mutuallysingular-iff--2fb8717ab469dd6979307013.md) | 552 | `result-track:2fb8717ab469dd6979307013b14ab8685ea7e387942468b01ddd950a8e906a8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
