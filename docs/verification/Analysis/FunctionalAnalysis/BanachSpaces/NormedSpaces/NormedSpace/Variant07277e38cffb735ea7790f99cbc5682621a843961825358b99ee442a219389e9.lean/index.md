# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedSpace.Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11bbc1d741a8776422b98a57d15f0cfd972b08eb",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11bbc1d741a8776422b98a57d15f0cfd972b08eb`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Bilinear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NNNorm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Span` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bound_of_shell](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/bound-of-shell--41b1d3433a52de1c59c1425e.md) | 49 | `result-track:41b1d3433a52de1c59c1425eebdb567e0fa8aad93de12abd7e316055fe7a64b4` |
| 2 | `theorem` | [bound_of_ball_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/bound-of-ball-bound--852a32121838eddb9524b5c7.md) | 58 | `result-track:852a32121838eddb9524b5c7b1c1477b24b99bb7ff36667d59b584fcf5f8ec62` |
| 3 | `theorem` | [antilipschitz_of_comap_nhds_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/antilipschitz-of-comap-nhds-le--4f84593093a575fef942a54f.md) | 72 | `result-track:4f84593093a575fef942a54f25e6cda2662127d1308b55eae48693cba0e5aa08` |
| 4 | `theorem` | [opNorm_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/opnorm-zero-iff--f70c87f050a93bfb32cd9736.md) | 103 | `result-track:f70c87f050a93bfb32cd9736555ec29b13e0dc294fd5b7ea87cbb08d9e1c29f4` |
| 5 | `theorem` | [norm_id](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/norm-id--d337fb34ac6ee53df6738a25.md) | 116 | `result-track:d337fb34ac6ee53df6738a25a8ec7d69939d85f6dace55ba8df72267daa59eef` |
| 6 | `lemma` | [nnnorm_id](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/nnnorm-id--2f37f8f9f8d39634fef7f06e.md) | 122 | `result-track:2f37f8f9f8d39634fef7f06e23520612d6edf556319d78a05404d4014d67ef24` |
| 7 | `instance` | [normOneClass](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/normoneclass--a199522d4e0536553102b4e4.md) | 124 | `declaration-track:a199522d4e0536553102b4e4452aee11d76ced3da44653fee5b048d966030690` |
| 8 | `instance` | [toNormedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/tonormedaddcommgroup--ac784b35c596139f7a0ea0e9.md) | 129 | `declaration-track:ac784b35c596139f7a0ea0e90211c8686910b4685138e544d850e7c0b5dc396e` |
| 9 | `instance` | [toNormedRing](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/tonormedring--7b8af42ea167d14b32bd3d25.md) | 133 | `declaration-track:7b8af42ea167d14b32bd3d2584fbc7a20ca5f7a85428a587597d51e596d9a999` |
| 10 | `theorem` | [homothety_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/homothety-norm--d3fc86e3315911edde2241ea.md) | 138 | `result-track:d3fc86e3315911edde2241ea0c650c374603e6e3f46fb8af01ef6e533599a805` |
| 11 | `theorem` | [antilipschitz_of_isEmbedding](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/antilipschitz-of-isembedding--bee21013a1f75e429a231ad1.md) | 148 | `result-track:bee21013a1f75e429a231ad1308387630bed61c3e7b64aa9856e6acf3ed130af` |
| 12 | `theorem` | [norm_toContinuousLinearMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/norm-tocontinuouslinearmap--af4256987c7d9420dd0d29f3.md) | 162 | `result-track:af4256987c7d9420dd0d29f34f4d57918ecd4785be91c4db883888fdd7189685` |
| 13 | `theorem` | [norm_toContinuousLinearMap_comp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/norm-tocontinuouslinearmap-comp--c372440fee05ef533f76479b.md) | 170 | `result-track:c372440fee05ef533f76479b43448ea0c93169bf2fbc40947464ac9f8c5c79c4` |
| 14 | `def` | [postcomp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/postcomp--691dfb2950f3bc1d2d7c2fed.md) | 177 | `declaration-track:691dfb2950f3bc1d2d7c2fed06ece54aac833b5bb18347a422815458b92a339c` |
| 15 | `theorem` | [opNorm_comp_linearIsometryEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/opnorm-comp-linearisometryequiv--96ebad05564816d176b80823.md) | 201 | `result-track:96ebad05564816d176b8082382ac2300ef99d0a8416b14b56abd1d3cac6bc8d1` |
| 16 | `theorem` | [norm_smulRightL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/norm-smulrightl--c309d60cc3cc7000be9a0ad8.md) | 217 | `result-track:c309d60cc3cc7000be9a0ad8c695b688a844fe9fe3c29610b8f83bf87d023ed7` |
| 17 | `lemma` | [norm_smulRightL_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/norm-smulrightl-le--e80f0036db082c528d1138f3.md) | 220 | `result-track:e80f0036db082c528d1138f36a8ad10e24dac36e0795682d7f9368343c96b1d1` |
| 18 | `theorem` | [norm_subtypeL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/norm-subtypel--f0bf99d47ad7dcb4f9c6b521.md) | 229 | `result-track:f0bf99d47ad7dcb4f9c6b521e34a32eab0eab6d3ceedb43e2f85daca5d12b507` |
| 19 | `theorem` | [antilipschitz](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/antilipschitz--9d90bedd9d0924b7ceba3e83.md) | 244 | `result-track:9d90bedd9d0924b7ceba3e830295a56f720d3537de7ff4f155524371cf3f2c2b` |
| 20 | `theorem` | [one_le_norm_mul_norm_symm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/one-le-norm-mul-norm-symm--7c8cbe21ddbe17501cac161e.md) | 248 | `result-track:7c8cbe21ddbe17501cac161e82e7acda22ac528020a99c85fda8808fed139e63` |
| 21 | `theorem` | [norm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/norm-pos--449d7c4e0642e84cf8023354.md) | 254 | `result-track:449d7c4e0642e84cf80233545a1622d4e61cbe272599e74adb44e88d0054b9f4` |
| 22 | `theorem` | [norm_symm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/norm-symm-pos--d33cbd93ac70080a959efa79.md) | 258 | `result-track:d33cbd93ac70080a959efa79a5af4974936c5d858ead6993cfffa6fbffa7ded6` |
| 23 | `theorem` | [nnnorm_symm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/nnnorm-symm-pos--bff9381c988be30508d059d1.md) | 262 | `result-track:bff9381c988be30508d059d1e7a0bbd96b09993b5b022d97e54ed80a9bfa8f02` |
| 24 | `theorem` | [subsingleton_or_norm_symm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/subsingleton-or-norm-symm-pos--70230a72271e27a85397987e.md) | 266 | `result-track:70230a72271e27a85397987ebf0d03dafe8d1b4a79134c81cd4cae2752fe1819` |
| 25 | `theorem` | [subsingleton_or_nnnorm_symm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/subsingleton-or-nnnorm-symm-pos--34239df79dedb46f15d26e7f.md) | 274 | `result-track:34239df79dedb46f15d26e7f1aa461c164512e51055eeab11989f09127cbafea` |
| 26 | `theorem` | [coord_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/coord-norm--0e1d354a72f20905c671d73f.md) | 281 | `result-track:0e1d354a72f20905c671d73f53be6266852e9162cfd2ddd9ed16e1ff022939df` |
| 27 | `def` | [IsCoercive](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/iscoercive--57d57d4f3f9a47140fc674b3.md) | 296 | `declaration-track:57d57d4f3f9a47140fc674b3294bd8b329b490041e9c68569463c0c2a41da391` |
| 28 | `theorem` | [NormedSpace.equicontinuous_TFAE](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant07277e38cffb735ea7790f99cbc5682621a843961825358b99ee442a219389e9.lean/declarations/normedspace-equicontinuous-tfae--0bc4f31be3df373306a848c0.md) | 308 | `result-track:0bc4f31be3df373306a848c048d9bf8b80fd44f4c62766e3e96b75bcf86ba4d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
