# Verification target: GRWTSK.Analysis.FunctionalAnalysis.NormedSpace.Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "734164008bf7764323566e441eaca2547605822e",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `734164008bf7764323566e441eaca2547605822e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean.json)

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
| 1 | `lemma` | [norm_toContinuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/norm-tocontinuouslinearmap--532fa1882565c2adf1833296.md) | 47 | `result-track:532fa1882565c2adf183329616b856e49a018b7b1309c20500a4bcda4d5936a3` |
| 2 | `lemma` | [nnnorm_toContinuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/nnnorm-tocontinuouslinearmap--2476038c1f5f13dbde5b12c5.md) | 50 | `result-track:2476038c1f5f13dbde5b12c571e0e4931e542b97db866349d08229302d11c36d` |
| 3 | `lemma` | [enorm_toContinuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/enorm-tocontinuouslinearmap--c25fbff1f74fd23bfc29df0b.md) | 53 | `result-track:c25fbff1f74fd23bfc29df0bfc9952dbcbc35fc10801c2aec7bc2f89e0e23b77` |
| 4 | `lemma` | [norm_toContinuousLinearMap_comp](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/norm-tocontinuouslinearmap-comp--5c8bc1dd1632dd5f7cfec301.md) | 62 | `result-track:5c8bc1dd1632dd5f7cfec3010652ae375a0bb1ec8ef850340c98698297d25e72` |
| 5 | `def` | [postcomp](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/postcomp--b25d10cc76ce999f74bf7e2b.md) | 68 | `declaration-track:b25d10cc76ce999f74bf7e2bb56002670897b2ccf864c9c277fd8c99f4e70c4f` |
| 6 | `lemma` | [norm_toContinuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/norm-tocontinuouslinearmap--76f83d0cea88329855e43cb4.md) | 81 | `result-track:76f83d0cea88329855e43cb49dd6377dadccdcd0770eac1dbef6d58163572b04` |
| 7 | `lemma` | [nnnorm_toContinuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/nnnorm-tocontinuouslinearmap--1419c0ed5fb74f22359e0227.md) | 85 | `result-track:1419c0ed5fb74f22359e0227705eeda6aa637d516cc2e3893b1fabe9a03a99d6` |
| 8 | `lemma` | [enorm_toContinuousLinearMap](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/enorm-tocontinuouslinearmap--a27a801be40dbe8525632e9a.md) | 89 | `result-track:a27a801be40dbe8525632e9ac98b5afdd194055f51d1ef3ffd9de7cb9c6b2ed2` |
| 9 | `theorem` | [bound_of_shell](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/bound-of-shell--b5f706b5b0da9b9645a60a4c.md) | 111 | `result-track:b5f706b5b0da9b9645a60a4cd27a7a15a7a38de609bcfc5242db0a2443d73df2` |
| 10 | `theorem` | [bound_of_ball_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/bound-of-ball-bound--1a508cae03b7f3bbaeb83cca.md) | 120 | `result-track:1a508cae03b7f3bbaeb83cca3a2205db631076eb3bd2de091ce437ea9410ad31` |
| 11 | `theorem` | [antilipschitz_of_comap_nhds_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/antilipschitz-of-comap-nhds-le--e7cd34ba017d7ea29c2cc72f.md) | 134 | `result-track:e7cd34ba017d7ea29c2cc72fd251bfb71b21416436d6863ddc65d8bf30c73e12` |
| 12 | `theorem` | [opNorm_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/opnorm-zero-iff--38a9bc24a580a82fc84f253a.md) | 163 | `result-track:38a9bc24a580a82fc84f253a574ea9d60a3fd5765c9955030161e57b07489c28` |
| 13 | `instance` | [toNormedAddCommGroup](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/tonormedaddcommgroup--c0259e99c523ea728c632016.md) | 174 | `declaration-track:c0259e99c523ea728c6320167d83b03956b7bc2786e4a83faf7de9a195892d22` |
| 14 | `instance` | [toNormedRing](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/tonormedring--b35355c268aa1df189aea2fb.md) | 178 | `declaration-track:b35355c268aa1df189aea2fbce17129a2756b5da518d59a07ccb5c50f960645a` |
| 15 | `theorem` | [antilipschitz_of_isEmbedding](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/antilipschitz-of-isembedding--66f3a4cd596afa6e890cec57.md) | 184 | `result-track:66f3a4cd596afa6e890cec57294ed3240e5f3efdb188e5afde41a6d87a3a8425` |
| 16 | `theorem` | [norm_smulRightL](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/norm-smulrightl--67eedfd8c4ac735748e2e9f2.md) | 204 | `result-track:67eedfd8c4ac735748e2e9f2a09c2d68cd367b36e2e14966ab3e31a95cde06cd` |
| 17 | `lemma` | [norm_smulRightL_le](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/norm-smulrightl-le--ee38e66f31764b45e49e7198.md) | 207 | `result-track:ee38e66f31764b45e49e71986dcf68d3d1410b11d6f2557d49f2175c955813b3` |
| 18 | `lemma` | [opNNNorm_comp_linearIsometryEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/opnnnorm-comp-linearisometryequiv--6a72470cc7466f69fab603a9.md) | 214 | `result-track:6a72470cc7466f69fab603a9ca7a46c1336b7b1dfae1827313ef69f5b616df4f` |
| 19 | `lemma` | [opNNNorm_linearIsometryEquiv_comp](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/opnnnorm-linearisometryequiv-comp--c1578c962a206f9823b45e63.md) | 220 | `result-track:c1578c962a206f9823b45e63d996e7dbf88d1c6241abaefb7ca9bea5c267018b` |
| 20 | `lemma` | [opNorm_comp_linearIsometryEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/opnorm-comp-linearisometryequiv--3f0b1924e204e27665ea4a10.md) | 226 | `result-track:3f0b1924e204e27665ea4a104ddb5052fd5dbd353ae9cb519a515f12e811e8ed` |
| 21 | `lemma` | [opNorm_linearIsometryEquiv_comp](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/opnorm-linearisometryequiv-comp--c7878553e7a9e0384ccb261b.md) | 231 | `result-track:c7878553e7a9e0384ccb261b65f9ccc116f164290636b82210449a7061adf944` |
| 22 | `lemma` | [opNNNorm_mul_linearIsometryEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/opnnnorm-mul-linearisometryequiv--cad56827e6d68cc6821f2431.md) | 236 | `result-track:cad56827e6d68cc6821f2431c65dd4b021c04cc86e556fdc26c9b21a501fc57b` |
| 23 | `lemma` | [opNNNorm_linearIsometryEquiv_mul](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/opnnnorm-linearisometryequiv-mul--be5024320d0489a3d87a7fc9.md) | 241 | `result-track:be5024320d0489a3d87a7fc94d53fca8fd92340d1e67769ec3369b52b480726d` |
| 24 | `lemma` | [opNorm_mul_linearIsometryEquiv](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/opnorm-mul-linearisometryequiv--681c48250e5cbc1efc7cd27d.md) | 246 | `result-track:681c48250e5cbc1efc7cd27dd23d04aff3801c47836b97e6c569b931a0bbeee4` |
| 25 | `lemma` | [opNorm_linearIsometryEquiv_mul](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/opnorm-linearisometryequiv-mul--e21a8a147b6b0c698bbb58b4.md) | 251 | `result-track:e21a8a147b6b0c698bbb58b434be9cd054d2bd77550c0a7db50338c08ee84166` |
| 26 | `theorem` | [norm_subtypeL](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/norm-subtypel--0f75cadc0302d14dc704073c.md) | 260 | `result-track:0f75cadc0302d14dc704073c9179535c01faad39b2a87dfc9d042b095b63fec0` |
| 27 | `theorem` | [antilipschitz](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/antilipschitz--f0c1a86a962a0e240ee357cc.md) | 275 | `result-track:f0c1a86a962a0e240ee357cc17a8a7275f1fdf5c081191c0f46bfdc15c59ec51` |
| 28 | `theorem` | [one_le_norm_mul_norm_symm](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/one-le-norm-mul-norm-symm--f9cffa82ea64c4c6418388e7.md) | 279 | `result-track:f9cffa82ea64c4c6418388e7f2dfba0d8b0df5c153b15d6f363b591dea8ef7db` |
| 29 | `theorem` | [norm_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/norm-pos--9e4cc3cd4daf8f223e36d5a5.md) | 285 | `result-track:9e4cc3cd4daf8f223e36d5a577980add076b657e80b4272019bad183e1df8503` |
| 30 | `theorem` | [norm_symm_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/norm-symm-pos--ca2cbf8fcfed38e5fab72097.md) | 289 | `result-track:ca2cbf8fcfed38e5fab72097617d1138e12021497d3ba5c9d1a4780e293bccc2` |
| 31 | `theorem` | [nnnorm_symm_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/nnnorm-symm-pos--cd12a1b3602c5765510eb2f0.md) | 293 | `result-track:cd12a1b3602c5765510eb2f06f4454f652f0ddd28fa3f0cd7138a6f9e02b7721` |
| 32 | `theorem` | [subsingleton_or_norm_symm_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/subsingleton-or-norm-symm-pos--9f16c1507d82acda74c2e032.md) | 297 | `result-track:9f16c1507d82acda74c2e032ba59c7c11d1c873c3b9ed129c80fa0be40154ef4` |
| 33 | `theorem` | [subsingleton_or_nnnorm_symm_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/subsingleton-or-nnnorm-symm-pos--80246e9964396682fa859fa3.md) | 305 | `result-track:80246e9964396682fa859fa39bece083d9e17c987b1f96842142da7777785da3` |
| 34 | `theorem` | [coord_norm](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/coord-norm--7d1052035bf75f17e9bab12c.md) | 312 | `result-track:7d1052035bf75f17e9bab12c658fc3c85f73bc51d850449b4299174091e930e0` |
| 35 | `def` | [IsCoercive](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/iscoercive--18985d4a731b4f978617ba01.md) | 327 | `declaration-track:18985d4a731b4f978617ba0116a2721558cb8fe0c196277ed8b28f7014cabd4b` |
| 36 | `theorem` | [NormedSpace.equicontinuous_TFAE](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/normedspace-equicontinuous-tfae--ce5ee1406051234f2abbfaf8.md) | 339 | `result-track:ce5ee1406051234f2abbfaf823b0787633b81eacfbcbf42d7c731f9c6500956f` |
| 37 | `def` | [LinearIsometry.single](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/linearisometry-single--0008c04f02721dae10e4ecfc.md) | 394 | `declaration-track:0008c04f02721dae10e4ecfcd4d2c696e638f17a69141b0bac6cd67be281f5a7` |
| 38 | `lemma` | [ContinuousLinearMap.norm_single_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/continuouslinearmap-norm-single-le-one--33f7c3f25b3798439abec6cc.md) | 398 | `result-track:33f7c3f25b3798439abec6cc62c85e01c5d9a5aa231c9e6361f2de1d84a71e39` |
| 39 | `lemma` | [ContinuousLinearMap.norm_single](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/continuouslinearmap-norm-single--e749cba8948eebfbcd7e10bd.md) | 403 | `result-track:e749cba8948eebfbcd7e10bdc895a5734ba57ac0202cbe372f1e44f776bfaf01` |
| 40 | `def` | [LinearIsometry.inl](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/linearisometry-inl--f276948a6a4e4ae70d9f7863.md) | 415 | `declaration-track:f276948a6a4e4ae70d9f786324b7e0575bcf61f766f408f6728e8512eaed1be4` |
| 41 | `lemma` | [LinearIsometry.inl_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/linearisometry-inl-apply--55f49335083d3a28eda970be.md) | 420 | `result-track:55f49335083d3a28eda970be915f0322dd9707f0f2f1a57fba43b7fbc6e5ccba` |
| 42 | `def` | [LinearIsometry.inr](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/linearisometry-inr--4a8b620be9a6d28e11fa56fe.md) | 425 | `declaration-track:4a8b620be9a6d28e11fa56fe3ab9b23aae9b7484b77666c5ca7416dde64d26e3` |
| 43 | `lemma` | [LinearIsometry.inr_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/linearisometry-inr-apply--ea38efb9c61651faeb828358.md) | 430 | `result-track:ea38efb9c61651faeb828358b9ba9193286e92b1e1a6e790c13be877e4ae4089` |
| 44 | `lemma` | [ContinuousLinearMap.norm_inl_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/continuouslinearmap-norm-inl-le-one--59fb6ba95bebb461784cce49.md) | 434 | `result-track:59fb6ba95bebb461784cce4994fce7a60a9ebc01361df5832f580cdc0e8154ad` |
| 45 | `lemma` | [ContinuousLinearMap.norm_inr_le_one](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/continuouslinearmap-norm-inr-le-one--6cf905fdafe7a3c7e8d6072a.md) | 439 | `result-track:6cf905fdafe7a3c7e8d6072a581a51d4336aaa74ae3b37a4977221cd24c959cc` |
| 46 | `lemma` | [ContinuousLinearMap.norm_inl](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/continuouslinearmap-norm-inl--6a38a724d01891dcd30351f3.md) | 444 | `result-track:6a38a724d01891dcd30351f3b16de716fd3a921a27f821726aca8f50a8f742dd` |
| 47 | `lemma` | [ContinuousLinearMap.norm_inr](../../../../../mathematics/Analysis/FunctionalAnalysis/NormedSpace/Variant07adb6e30520293ec107bf6fb612d3c1a9d9068169d9cb9c0f319b9ab441adf8.lean/declarations/continuouslinearmap-norm-inr--bd8fa1ac785821467a3325ef.md) | 449 | `result-track:bd8fa1ac785821467a3325ef67bc54adc5806aace757acc2ec2f649b608345ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
