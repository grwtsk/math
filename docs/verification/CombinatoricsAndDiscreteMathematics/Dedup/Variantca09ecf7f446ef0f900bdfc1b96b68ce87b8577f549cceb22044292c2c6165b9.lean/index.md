# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Dedup.Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e6f98f4313b1f14a581ce027e266ede606d6b68",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e6f98f4313b1f14a581ce027e266ede606d6b68`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/dedup-eq-self--d5358710d435dada1ad6a386.md) | 46 | `result-track:d5358710d435dada1ad6a3863f5c07e2ee8f1125df724b6db8b54dc4e84b4f14` |
| 2 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset--4a45a5fd459570dee0b65f99.md) | 58 | `declaration-track:4a45a5fd459570dee0b65f996a8c2c22c3ecf3d3421af3aa6fa009a3db486a08` |
| 3 | `theorem` | [toFinset_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-val--5f1a6626ade9a10412d9d18e.md) | 62 | `result-track:5f1a6626ade9a10412d9d18ebe53187e6aebc7fce29e387eb772914fe9ae59a3` |
| 4 | `theorem` | [toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-eq--919567cbd65b87c2f1048f95.md) | 65 | `result-track:919567cbd65b87c2f1048f9520d456c1fdf3266bb4e316ad58a31d2dae31840f` |
| 5 | `theorem` | [Nodup.toFinset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/nodup-tofinset-inj--ef6b3efcc539b678511e4b1a.md) | 68 | `result-track:ef6b3efcc539b678511e4b1a786e018c9cafb237883abd8b03c795cac89cfe0f` |
| 6 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/mem-tofinset--2cc6ef31541a4da063fee526.md) | 73 | `result-track:2cc6ef31541a4da063fee52666920ee182a435f0005c4d40dc29b31820e5d5cb` |
| 7 | `theorem` | [coe_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/coe-tofinset--57e3c74aa147a26133b0e9d0.md) | 76 | `result-track:57e3c74aa147a26133b0e9d023386aebd6ed4e9c64cdae0e23e1dcd411af93e2` |
| 8 | `theorem` | [toFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-subset--fe28f54167e00261a3490db7.md) | 81 | `result-track:fe28f54167e00261a3490db7ba8627a3a9e3a631d6529ac82c11b72aa8049eba` |
| 9 | `theorem` | [toFinset_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-ssubset--1f33234d020908abd20a6f87.md) | 85 | `result-track:1f33234d020908abd20a6f8761883bb0ad34ffccd2979b9a3845673b06a5fe56` |
| 10 | `theorem` | [toFinset_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-dedup--ff51909c5079fb69e5689d21.md) | 90 | `result-track:ff51909c5079fb69e5689d210f0fb978a5b15efd980f2e0ba586a7326b1d4292` |
| 11 | `instance` | [isWellFounded_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/iswellfounded-ssubset--d9fa1c08ab0ba44395b36bb0.md) | 93 | `declaration-track:d9fa1c08ab0ba44395b36bb00bde168da86fea05d3d1d340ee9db23f9a1f7980` |
| 12 | `theorem` | [val_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/val-tofinset--eba2149c0ff6df88420b4857.md) | 102 | `result-track:eba2149c0ff6df88420b4857236fe16aef6e44ba836c69bc4315b6afc0c67348` |
| 13 | `theorem` | [val_le_iff_val_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/val-le-iff-val-subset--9f49a5194c0050ba7da98285.md) | 106 | `result-track:9f49a5194c0050ba7da982854f85752eeb97d559c64823b8c4aa3749723d6046` |
| 14 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset--e4af8726e341888e39bf9fd5.md) | 116 | `declaration-track:e4af8726e341888e39bf9fd5ef6d0ccb46cf0ce6b8df892e5db2854f2dd52a9a` |
| 15 | `theorem` | [toFinset_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-val--153a10976518d37b57031226.md) | 120 | `result-track:153a10976518d37b570312269a76c56780d68b5fadc3ea0f2036281c713e14f9` |
| 16 | `theorem` | [toFinset_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-coe--c2d4ddfde3b5f0d3a94d8f7b.md) | 124 | `result-track:c2d4ddfde3b5f0d3a94d8f7b9174b800c1ef985d44051d2eead41f27d54bc074` |
| 17 | `theorem` | [toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-eq--00511660e8be3f8079396da1.md) | 127 | `result-track:00511660e8be3f8079396da1fab69fb057f15a0fddf33be54d20d36c0f0613e8` |
| 18 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/mem-tofinset--32124df9be3f6a9e44852e33.md) | 131 | `result-track:32124df9be3f6a9e44852e3364e90f3a4c7c5f8f28b70d7163575bcb6c9cc5b4` |
| 19 | `theorem` | [coe_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/coe-tofinset--3ef5276ae45d24f5c01c73a8.md) | 135 | `result-track:3ef5276ae45d24f5c01c73a878f30f844931d3851c44f41598b244ff693c4c91` |
| 20 | `theorem` | [toFinset_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-dedup--3300b52993ad40d346179675.md) | 139 | `result-track:3300b52993ad40d346179675beb9cac92b70283fd1feb4e9237a421177ffbc63` |
| 21 | `theorem` | [toFinset_surj_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-surj-on--2bc792dc58a7efb5120a4470.md) | 142 | `result-track:2bc792dc58a7efb5120a4470d71329052213c5e9d2e857c509058897f61ad7d3` |
| 22 | `theorem` | [toFinset_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-surjective--d0f7ea4f52092d4b5734c4cf.md) | 146 | `result-track:d0f7ea4f52092d4b5734c4cf4fc6519f68aa9ae5deff0fda4905427b00b9f340` |
| 23 | `theorem` | [toFinset_eq_iff_perm_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-eq-iff-perm-dedup--4bd9691251f6eb2c39df4914.md) | 150 | `result-track:4bd9691251f6eb2c39df4914d2e61f7ba83319d72a30b8fddb8c6d4e3dc055bd` |
| 24 | `theorem` | [toFinset.ext_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-ext-iff--77ae4ce30da599a333b071e4.md) | 153 | `result-track:77ae4ce30da599a333b071e40242c900fca827a76434d4744b29f49ea2fe7a92` |
| 25 | `theorem` | [toFinset.ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-ext--39b318a1c5395493c9ad14b3.md) | 156 | `result-track:39b318a1c5395493c9ad14b3ba0937a596b3be7c4b1b2ef2314c0b17124dffa9` |
| 26 | `theorem` | [toFinset_eq_of_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-eq-of-perm--f88c9d0d83344bc49ce164aa.md) | 159 | `result-track:f88c9d0d83344bc49ce164aa66180cc57c985954f721524361d8be746aa26b35` |
| 27 | `theorem` | [perm_of_nodup_nodup_toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/perm-of-nodup-nodup-tofinset-eq--cb04bf6b70d8a6806eaa3986.md) | 162 | `result-track:cb04bf6b70d8a6806eaa3986844067685eb52810ce93470c35de4fed53e1fa2e` |
| 28 | `theorem` | [toFinset_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tofinset-reverse--3006b28f023cd092ae3e5f12.md) | 168 | `result-track:3006b28f023cd092ae3e5f12c233211a7a3f3edc1e07a5d33982d20aada3378a` |
| 29 | `def` | [toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tolist--93419435c6cca8989a6af986.md) | 178 | `declaration-track:93419435c6cca8989a6af986e3ddf02a6cf0d128d2bae792dd38b9ef70deaba2` |
| 30 | `theorem` | [nodup_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/nodup-tolist--c9e02c9f13571abc2b72ce3b.md) | 181 | `result-track:c9e02c9f13571abc2b72ce3b29d594748f3897282697314149a2b41433f03e6f` |
| 31 | `theorem` | [mem_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/mem-tolist--a5cf9c8c2bf52c0516d78fc6.md) | 186 | `result-track:a5cf9c8c2bf52c0516d78fc66c9248aa36e9b1cbd0fbc82c5e47847c7a041da0` |
| 32 | `theorem` | [coe_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/coe-tolist--d084fa7160d043561d842f30.md) | 190 | `result-track:d084fa7160d043561d842f30136638c1dca07da4115162aa8b1904601c6c2ceb` |
| 33 | `theorem` | [toList_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/tolist-tofinset--28e9894f586d6d9000183b5e.md) | 194 | `result-track:28e9894f586d6d9000183b5e81d771fc40a4b861ec958089d66ae2f87aaf3281` |
| 34 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.DedupEqSelf.Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.List.toFinset_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-dedupeqself-variant3613c--98e8ffa7d63f29be068c7a3b.md) | 198 | `result-track:98e8ffa7d63f29be068c7a3b9fe7a64ababb719ffe32c0dbd3967544e66a38ba` |
| 35 | `theorem` | [exists_list_nodup_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/exists-list-nodup-eq--007725e06c45cc9978df468a.md) | 203 | `result-track:007725e06c45cc9978df468a98f5918664cff30c7db3f787e53e0715adea5447` |
| 36 | `theorem` | [perm_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variantca09ecf7f446ef0f900bdfc1b96b68ce87b8577f549cceb22044292c2c6165b9.lean/declarations/perm-tolist--57817b17777638e6f9840bea.md) | 208 | `result-track:57817b17777638e6f9840bea3a429ae0555e079c3169e6e5a530d865199abf24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
