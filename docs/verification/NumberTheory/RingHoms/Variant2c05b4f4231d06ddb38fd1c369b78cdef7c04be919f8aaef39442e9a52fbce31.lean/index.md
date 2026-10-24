# Verification target: GRWTSK.NumberTheory.RingHoms.Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d6e63e6774a1826ab35c35833354a3029a48d17",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d6e63e6774a1826ab35c35833354a3029a48d17`.

Source path: `GRWTSK/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicIntegers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ZMod` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modPart](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/modpart--a97bf3cb52c1137fdfe82541.md) | 74 | `declaration-track:a97bf3cb52c1137fdfe8254135e54633b2987db9cfa9e04323962a91beabe081` |
| 2 | `theorem` | [modPart_lt_p](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/modpart-lt-p--217a0d1d59ec1219982f50e4.md) | 79 | `result-track:217a0d1d59ec1219982f50e4c779291a86cf3ae6e568756fc7fe1792e881b1ab` |
| 3 | `theorem` | [modPart_nonneg](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/modpart-nonneg--97997051fb3d5e449c5fa5fc.md) | 84 | `result-track:97997051fb3d5e449c5fa5fc592356712d0d15831348e33e6e300a6fd4f1360b` |
| 4 | `theorem` | [isUnit_den](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/isunit-den--4e8fb22fb176c2e399b950bb.md) | 87 | `result-track:4e8fb22fb176c2e399b950bb17d09e81b705c2f8e86445077146c541c38febb5` |
| 5 | `theorem` | [norm_sub_modPart_aux](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/norm-sub-modpart-aux--d5f1a45e3e1277af9f1e3322.md) | 108 | `result-track:d5f1a45e3e1277af9f1e33225142009f1ed484b6f72e447616420d6e482637c7` |
| 6 | `theorem` | [norm_sub_modPart](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/norm-sub-modpart--6f2ed9792670dee829d11885.md) | 127 | `result-track:6f2ed9792670dee829d11885659c03992c75e4842998fbfa94b5a1418a59b4d7` |
| 7 | `theorem` | [exists_mem_range_of_norm_rat_le_one](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/exists-mem-range-of-norm-rat-le-one--fb192f515cd6556c64b8a1d4.md) | 140 | `result-track:fb192f515cd6556c64b8a1d4f7be14423c8c98ebac6017d8040d0777b7cb3eac` |
| 8 | `theorem` | [zmod_congr_of_sub_mem_span_aux](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/zmod-congr-of-sub-mem-span-aux--50f06c1124570c5ec10327a1.md) | 144 | `result-track:50f06c1124570c5ec10327a1146b984aac528be94c6054abb61f8fd110936e44` |
| 9 | `theorem` | [zmod_congr_of_sub_mem_span](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/zmod-congr-of-sub-mem-span--093920eef582f87844b38bce.md) | 154 | `result-track:093920eef582f87844b38bce61b467d4480be09db39747456dee9728468192c7` |
| 10 | `theorem` | [zmod_congr_of_sub_mem_max_ideal](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/zmod-congr-of-sub-mem-max-ideal--2446b48e189ac62fe4bb8711.md) | 159 | `result-track:2446b48e189ac62fe4bb8711e3f00b7796cbfc08074abfdce793e548b0052f8f` |
| 11 | `theorem` | [exists_mem_range](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/exists-mem-range--be77abde0d00ef1ea175f686.md) | 171 | `result-track:be77abde0d00ef1ea175f686e2c496e645842680aa83c5b9f36f85e014263ce7` |
| 12 | `theorem` | [existsUnique_mem_range](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/existsunique-mem-range--6d56181425b27d3657752509.md) | 192 | `result-track:6d56181425b27d365775250988b5533962c63d787808901529d493537e2461a1` |
| 13 | `def` | [zmodRepr](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/zmodrepr--de0fc056081f48a487ce1d1b.md) | 203 | `declaration-track:de0fc056081f48a487ce1d1ba7dc463ef27940a2055cdef21f51f7fb34340c0f` |
| 14 | `theorem` | [zmodRepr_spec](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/zmodrepr-spec--52001bb30684460c545c5449.md) | 206 | `result-track:52001bb30684460c545c5449ff01bb48845ad390876e30f318b3884f2a6fab25` |
| 15 | `theorem` | [zmodRepr_unique](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/zmodrepr-unique--469a2bc56e03aa53a656d8af.md) | 209 | `result-track:469a2bc56e03aa53a656d8aff6aa589593d2124caf0a67f613ba0ae9c729a8d5` |
| 16 | `theorem` | [zmodRepr_lt_p](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/zmodrepr-lt-p--1820e654e6a390b1187a201f.md) | 213 | `result-track:1820e654e6a390b1187a201f65750e2fe1e6b9d1e002f51a57e7b3aa90bb34da` |
| 17 | `theorem` | [sub_zmodRepr_mem](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/sub-zmodrepr-mem--64c679b976b869c96426859a.md) | 216 | `result-track:64c679b976b869c96426859ad6d0935a49281a5f3355ec69e7f24333610da44e` |
| 18 | `def` | [toZModHom](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/tozmodhom--40a192252cbf28e5f2dd270c.md) | 221 | `declaration-track:40a192252cbf28e5f2dd270cc56730e7c8c3d07fe40714c40a449a68f1ab7889` |
| 19 | `def` | [toZMod](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/tozmod--f8284e8a029081a4b8d2503d.md) | 255 | `declaration-track:f8284e8a029081a4b8d2503dfe938c949673a25711709da41dfb99661f86d2e3` |
| 20 | `theorem` | [toZMod_spec](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/tozmod-spec--7bf48dacdc327f25dce2ffd2.md) | 273 | `result-track:7bf48dacdc327f25dce2ffd2059a5c49688e6b2b27fcdf4ac3de3bfaa94f1a0a` |
| 21 | `theorem` | [ker_toZMod](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/ker-tozmod--df929da4c652f7058c1cb985.md) | 282 | `result-track:df929da4c652f7058c1cb985ac813c528c994900eb3fc5f8d8a5bab0ea3339c1` |
| 22 | `def` | [residueField](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/residuefield--b72cb1868a16b622a6f27b33.md) | 296 | `declaration-track:b72cb1868a16b622a6f27b336d1b43663ab144451aee04860d2272d355f0bb34` |
| 23 | `def` | [appr](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/appr--7fb2b23a73b4b317e931c484.md) | 303 | `declaration-track:7fb2b23a73b4b317e931c484ceb5a6e9dbc5866f5ee4f91ac47650d84e63770a` |
| 24 | `theorem` | [appr_lt](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/appr-lt--ca07d31046301e8bf3cbe897.md) | 312 | `result-track:ca07d31046301e8bf3cbe8974c7b8ceed69a04019859147307f24680a3c96892` |
| 25 | `theorem` | [appr_mono](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/appr-mono--45c0cb49e2fb81fd0629df58.md) | 331 | `result-track:45c0cb49e2fb81fd0629df5859ed13eb029834e514aa7bad9dea3d6f209c69d4` |
| 26 | `theorem` | [dvd_appr_sub_appr](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/dvd-appr-sub-appr--62c404c453d8cf368b0636d1.md) | 338 | `result-track:62c404c453d8cf368b0636d13bce2d278a066b284d60b36507056b56b5dd3f36` |
| 27 | `theorem` | [appr_spec](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/appr-spec--b4fa49e871d12b8471cf9fb9.md) | 353 | `result-track:b4fa49e871d12b8471cf9fb9abbca97c3e8e0d9fc4b745066ac0386b9f3c487b` |
| 28 | `def` | [toZModPow](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/tozmodpow--1e6ff84b5cba2bd6453c6fd6.md) | 391 | `declaration-track:1e6ff84b5cba2bd6453c6fd61f3055162539917062ff05f841019387d20c9828` |
| 29 | `theorem` | [ker_toZModPow](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/ker-tozmodpow--45549fb10b593508ec822150.md) | 403 | `result-track:45549fb10b593508ec822150ae7c9e9d4534af6564813422b57cf8980a0d8620` |
| 30 | `theorem` | [zmod_cast_comp_toZModPow](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/zmod-cast-comp-tozmodpow--488265bd4e238c4d56c8254a.md) | 422 | `result-track:488265bd4e238c4d56c8254a43a2ab9db90d58877c025e5a321d0dc1c7b3fb29` |
| 31 | `theorem` | [cast_toZModPow](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/cast-tozmodpow--0487c98ed6c951a311fe93ff.md) | 440 | `result-track:0487c98ed6c951a311fe93ffde572ff8771f66b3e61b083b687ea72092bf5231` |
| 32 | `theorem` | [denseRange_natCast](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/denserange-natcast--7da2a71961babc0ec4182da9.md) | 445 | `result-track:7da2a71961babc0ec4182da935c83ff18711a5e87cb1e91839d282a4cb902ae5` |
| 33 | `theorem` | [denseRange_intCast](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/denserange-intcast--48cf11b41e5f9d14f8190d0c.md) | 456 | `result-track:48cf11b41e5f9d14f8190d0c3db9e9d30706f0f7a4b520ec4e11b4f2f59d651f` |
| 34 | `def` | [nthHom](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/nthhom--51c4e33b7084fc76b8213df3.md) | 481 | `declaration-track:51c4e33b7084fc76b8213df3cd734338e47dd29207efd64d10c1b49f50f15072` |
| 35 | `theorem` | [nthHom_zero](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/nthhom-zero--c4556084f07036b1f92b6aa4.md) | 484 | `result-track:c4556084f07036b1f92b6aa4323a2f06d99b6cbd3f39ae06d1908cd834d1fba2` |
| 36 | `theorem` | [pow_dvd_nthHom_sub](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/pow-dvd-nthhom-sub--facf14013593da74516c973c.md) | 495 | `result-track:facf14013593da74516c973c79bb56cfc9d5682e3902ead2e5065402ece081b9` |
| 37 | `theorem` | [isCauSeq_nthHom](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/iscauseq-nthhom--8a795873273d4580d0c9a966.md) | 503 | `result-track:8a795873273d4580d0c9a966a6dd565cff5eb88fce56a0cffae1b37526226c50` |
| 38 | `def` | [nthHomSeq](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/nthhomseq--106e38ce0b4f9f2e547cce54.md) | 520 | `declaration-track:106e38ce0b4f9f2e547cce546df8533b5096ba9c203d3388be8109487cbc3808` |
| 39 | `theorem` | [nthHomSeq_one](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/nthhomseq-one--9dc883fcc739d3cc9ea05fa0.md) | 524 | `result-track:9dc883fcc739d3cc9ea05fa0861430c1c61d6cc08b09ee406d3f143dc1a39e21` |
| 40 | `theorem` | [nthHomSeq_add](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/nthhomseq-add--cce7f359a101d18aeb4c14cc.md) | 533 | `result-track:cce7f359a101d18aeb4c14cc05315c55f1f5c2dea5361001acbb5e89b7ba42e4` |
| 41 | `theorem` | [nthHomSeq_mul](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/nthhomseq-mul--2efffe95e750bb13987aabd2.md) | 548 | `result-track:2efffe95e750bb13987aabd27de647ba1925033ade352a898c7aa1cc87416bb4` |
| 42 | `def` | [limNthHom](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/limnthhom--4198f284d31341b36a66cf4e.md) | 566 | `declaration-track:4198f284d31341b36a66cf4e764b10439c2f6840d436d5e4eedcfac07ab73c69` |
| 43 | `theorem` | [limNthHom_spec](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/limnthhom-spec--1c86c04a26f05113d62b2866.md) | 569 | `result-track:1c86c04a26f05113d62b28662c0e5e5ada1e3e19baca5591aef1257eb8321220` |
| 44 | `theorem` | [limNthHom_zero](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/limnthhom-zero--751089699e7a5fa8ec374c56.md) | 582 | `result-track:751089699e7a5fa8ec374c5613f3dfd7d9609007599f48052b0086d400ca5e68` |
| 45 | `theorem` | [limNthHom_one](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/limnthhom-one--505cdd15718ab04bfa354dea.md) | 584 | `result-track:505cdd15718ab04bfa354dea2bf26a85f03bb7478966ab6de110c435e72ac74d` |
| 46 | `theorem` | [limNthHom_add](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/limnthhom-add--9cdf780509498fded438209c.md) | 587 | `result-track:9cdf780509498fded438209c5aca5ecc9d9cb95e0e358fd0e7ea6aec43b70f80` |
| 47 | `theorem` | [limNthHom_mul](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/limnthhom-mul--2eab46164ad8131ae63f39ab.md) | 591 | `result-track:2eab46164ad8131ae63f39ab68f77b890c7f63ef32d1113771d7d5d7cc248edc` |
| 48 | `def` | [lift](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/lift--863b78ac4e036d5284231482.md) | 599 | `declaration-track:863b78ac4e036d5284231482305511f675cbccf02924a352168cd7e2ef664fba` |
| 49 | `theorem` | [lift_sub_val_mem_span](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/lift-sub-val-mem-span--e9f998ce93f5b3a5917915f9.md) | 606 | `result-track:e9f998ce93f5b3a5917915f9f1643c038483d78806a23403a4ae01e5e3eb5939` |
| 50 | `theorem` | [lift_spec](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/lift-spec--aaa18c9736b9e1b373676a26.md) | 625 | `result-track:aaa18c9736b9e1b373676a264a59300a9b5c813a38aea32ecd2c5988145a384f` |
| 51 | `theorem` | [lift_unique](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/lift-unique--069e72d62233806c7999574e.md) | 634 | `result-track:069e72d62233806c7999574efad608d41781cc60f57d5eb8baee535057a11f14` |
| 52 | `theorem` | [lift_self](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/lift-self--d0fdd9290620e8155fd66a41.md) | 647 | `result-track:d0fdd9290620e8155fd66a4147f8dc6d8bbaff5ebac28ecd0a065e4a072069f8` |
| 53 | `theorem` | [ext_of_toZModPow](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/ext-of-tozmodpow--8b3c6e8373c35676c7bd330b.md) | 654 | `result-track:8b3c6e8373c35676c7bd330b09d6b62c5d62cc6570910d19d8b02a5b90a9e60f` |
| 54 | `theorem` | [toZModPow_eq_iff_ext](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/tozmodpow-eq-iff-ext--1ff1ab35b04f1a76eb4e5ac9.md) | 662 | `result-track:1ff1ab35b04f1a76eb4e5ac9ebe7314013e5417f17f0500c5170f7ec4144529c` |
| 55 | `lemma` | [isCauSeq_padicNorm_of_pow_dvd_sub](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/iscauseq-padicnorm-of-pow-dvd-sub--270625030627f5cc73530087.md) | 674 | `result-track:270625030627f5cc735300876ead46264ec3ad61b641a19cf9b5ebbe764bd485` |
| 56 | `lemma` | [toZModPow_ofIntSeq_of_pow_dvd_sub](../../../../mathematics/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/declarations/tozmodpow-ofintseq-of-pow-dvd-sub--a34a05313f4d6dbd60611c08.md) | 689 | `result-track:a34a05313f4d6dbd60611c084f8d514503f32479f38198897fe1817a447bd42a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
