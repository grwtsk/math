# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedSpace.Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62e1765ee5b6f94eadca1e9d687dede3be401cc6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62e1765ee5b6f94eadca1e9d687dede3be401cc6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Bilinear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NNNorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Span` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bound_of_shell](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/bound-of-shell--d66ae38f622a6ff9d5381671.md) | 41 | `result-track:d66ae38f622a6ff9d5381671009c5e66daa582ff4be427a3494cb16849d3ba54` |
| 2 | `theorem` | [bound_of_ball_bound](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/bound-of-ball-bound--907fa34e5ec87370ce2b2f7f.md) | 50 | `result-track:907fa34e5ec87370ce2b2f7f918da710091aa326c2cbf3dea1b10d1739cbb67d` |
| 3 | `theorem` | [antilipschitz_of_comap_nhds_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/antilipschitz-of-comap-nhds-le--a423a8fdd478eefedda836db.md) | 64 | `result-track:a423a8fdd478eefedda836db09e713b957684fb9f4774dd30bd0b56dff13f10d` |
| 4 | `theorem` | [opNorm_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/opnorm-zero-iff--b89202c1fafce1137da5891c.md) | 95 | `result-track:b89202c1fafce1137da5891ca72c833d5d14868e100f00dbf025eb7c446f1b3b` |
| 5 | `theorem` | [norm_id](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/norm-id--ee5ea33cc305dc97ec8d3789.md) | 108 | `result-track:ee5ea33cc305dc97ec8d37896ffbb757d3a0552b32abe8eeace978cc9b680234` |
| 6 | `lemma` | [nnnorm_id](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/nnnorm-id--d871033f451cc9928f4d3e38.md) | 114 | `result-track:d871033f451cc9928f4d3e3809a723b9b42c71ae20f21b8c53963b29b6543eb9` |
| 7 | `instance` | [normOneClass](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/normoneclass--123baf149b808d20310153b9.md) | 116 | `declaration-track:123baf149b808d20310153b9bc3c4844bf3676ce409329c2cdf456a859f9ff0d` |
| 8 | `instance` | [toNormedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/tonormedaddcommgroup--cde4494b40774af2e8a09f33.md) | 121 | `declaration-track:cde4494b40774af2e8a09f33a132d75493f0794acc9a35c3dd201346084c74e9` |
| 9 | `instance` | [toNormedRing](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/tonormedring--1d63dd01342a277cd92a38a5.md) | 125 | `declaration-track:1d63dd01342a277cd92a38a5c882fd0c2b6e61be19f6367867bf4270d56ff2aa` |
| 10 | `theorem` | [homothety_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/homothety-norm--de239ea093fb4ed27d2e9350.md) | 130 | `result-track:de239ea093fb4ed27d2e9350b80b47680bef1993925412f79fbefd15eb49f104` |
| 11 | `theorem` | [antilipschitz_of_isEmbedding](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/antilipschitz-of-isembedding--8089b8444fc32ae1909af455.md) | 140 | `result-track:8089b8444fc32ae1909af4558dc1025c75e7dd5256abbbabed1a52d6a9aedefe` |
| 12 | `theorem` | [norm_toContinuousLinearMap](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/norm-tocontinuouslinearmap--ad5895d9104eb7d4cd415cfe.md) | 154 | `result-track:ad5895d9104eb7d4cd415cfe88868b12a79d315e73a1763cd3b3c3a9c71e0152` |
| 13 | `theorem` | [norm_toContinuousLinearMap_comp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/norm-tocontinuouslinearmap-comp--eedb271baab1872f81a16897.md) | 162 | `result-track:eedb271baab1872f81a16897fd53c455b124b92db4b9eb3e61bfe31332458e54` |
| 14 | `def` | [postcomp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/postcomp--a482e4202263ab8cd0835929.md) | 169 | `declaration-track:a482e4202263ab8cd0835929a5b60c4288d6a8f74d5894065ba7ff6cc768cae9` |
| 15 | `theorem` | [opNorm_comp_linearIsometryEquiv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/opnorm-comp-linearisometryequiv--a25808d28c62ec2e6659e499.md) | 193 | `result-track:a25808d28c62ec2e6659e4997f5041af2b8b0b4e95333c54b8f8ca006ff0ed6a` |
| 16 | `theorem` | [norm_smulRightL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/norm-smulrightl--80e47a528e6fcd3edbd066a8.md) | 209 | `result-track:80e47a528e6fcd3edbd066a85f3c1e698b177bc19c76f73603061c95a37d3d93` |
| 17 | `lemma` | [norm_smulRightL_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/norm-smulrightl-le--87971fe989bf4180b6db212a.md) | 212 | `result-track:87971fe989bf4180b6db212a875585bff1ffd775d04aea8088206fde18dae630` |
| 18 | `theorem` | [norm_subtypeL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/norm-subtypel--136dfe288076a5b08d5fc7fa.md) | 221 | `result-track:136dfe288076a5b08d5fc7fa8c296bb0c3a7a0ee000e105654ffa415fad1ca68` |
| 19 | `theorem` | [antilipschitz](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/antilipschitz--7834b722086ed2da8ddea388.md) | 236 | `result-track:7834b722086ed2da8ddea3883a206dbd259bc0bc5775a29a19416d7f92ffe7ef` |
| 20 | `theorem` | [one_le_norm_mul_norm_symm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/one-le-norm-mul-norm-symm--90f450f4cc13e14f33ba990a.md) | 240 | `result-track:90f450f4cc13e14f33ba990a98e744d089bb71ad2cea887bb701200f253b7cfb` |
| 21 | `theorem` | [norm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/norm-pos--d5804021d27e6325f910cdbb.md) | 246 | `result-track:d5804021d27e6325f910cdbb004c913f69395f2efc34c4de068708e29ec2fc80` |
| 22 | `theorem` | [norm_symm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/norm-symm-pos--ed821502298bfb7685f26cc6.md) | 250 | `result-track:ed821502298bfb7685f26cc6730000d25fd1456e53f347c1721c020013d61499` |
| 23 | `theorem` | [nnnorm_symm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/nnnorm-symm-pos--12b4fb59a71abf46d936d4ab.md) | 254 | `result-track:12b4fb59a71abf46d936d4ab59be5d4605271f6f6cbfcbf89049bc3c69336a2c` |
| 24 | `theorem` | [subsingleton_or_norm_symm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/subsingleton-or-norm-symm-pos--8954bdf34567006b87243e83.md) | 258 | `result-track:8954bdf34567006b87243e83a54ed9071fb475fd7138c7b197f9e08fb92ab1fd` |
| 25 | `theorem` | [subsingleton_or_nnnorm_symm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/subsingleton-or-nnnorm-symm-pos--2d9e3f06a187a33c5bcf49a5.md) | 266 | `result-track:2d9e3f06a187a33c5bcf49a50e65e4d9255a2db2f71c8d1e4104657909f38e07` |
| 26 | `theorem` | [coord_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/coord-norm--6f0eb80f82db6750aae1911c.md) | 273 | `result-track:6f0eb80f82db6750aae1911cafe30265906ebb5d17a5df2400d17d61025ba3c7` |
| 27 | `def` | [IsCoercive](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/iscoercive--81cb259d43ea5321bcc97412.md) | 288 | `declaration-track:81cb259d43ea5321bcc974128e4eb82db7dc006a0f5c5c316bc2756bb4675995` |
| 28 | `theorem` | [NormedSpace.equicontinuous_TFAE](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedSpace/Variant9405b513851ae2e86491c2f710c5fbd4781a75fe86def2da66e6d14610b344fb.lean/declarations/normedspace-equicontinuous-tfae--681d6f76e105228e861d6c21.md) | 300 | `result-track:681d6f76e105228e861d6c21c12cad5c0ca7c7f37badc02957c7229be5ecaf62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
