# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d38e89bc23eb28cf2f2ddd6906bd88e9ae2cdb03",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d38e89bc23eb28cf2f2ddd6906bd88e9ae2cdb03`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean.json)

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
| 1 | `def` | [subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/subtype--d5c0774c399564e69dbde19f.md) | 48 | `declaration-track:d5c0774c399564e69dbde19fabf139bbea0b01e63ae17d55530a26c78de35504` |
| 2 | `lemma` | [subtype_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/subtype-apply--ed28af5dbc9528583f3c63c0.md) | 55 | `result-track:ed28af5dbc9528583f3c63c0b29cb13ce65e1358c9a50e235fe9414eef356a52` |
| 3 | `lemma` | [subtype_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/subtype-injective--83ebea882ecae1a45faba517.md) | 58 | `result-track:83ebea882ecae1a45faba517a64aee60bc1f7f863542cb1a01712db03b5db70d` |
| 4 | `theorem` | [coe_subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/coe-subtype--5a20effd79f1b29a7333607b.md) | 63 | `result-track:5a20effd79f1b29a7333607bcb694902a787038fbcda821b3b4274f2628eddfd` |
| 5 | `def` | [subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/subtype--58b4153d03bbb26e6f22ec8d.md) | 82 | `declaration-track:58b4153d03bbb26e6f22ec8db56662852690cab4be7183abbbc1577e0ddf7e10` |
| 6 | `theorem` | [subtype_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/subtype-apply--cd9ad056e48d96836b4c1f1a.md) | 89 | `result-track:cd9ad056e48d96836b4c1f1ad62c5af581d0668d033fb17f69e4aad934adade2` |
| 7 | `lemma` | [subtype_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/subtype-injective--a8130ec8e3bd16aca0227962.md) | 92 | `result-track:a8130ec8e3bd16aca0227962bdd725d489b7577423219694e2fd6ca533b2f8f3` |
| 8 | `theorem` | [coe_subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/coe-subtype--872135202cc5cb50a939d4fc.md) | 97 | `result-track:872135202cc5cb50a939d4fc26ebdddca6fb7725934fe5947a0654c43f172307` |
| 9 | `theorem` | [injective_subtype](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/injective-subtype--78c426b668bfa8f1dccdd92b.md) | 100 | `result-track:78c426b668bfa8f1dccdd92bb090556fc29accff65e085156450e4c5c8582dcb` |
| 10 | `theorem` | [coe_sum](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/coe-sum--0910a193e8c0dab693f241a3.md) | 104 | `result-track:0910a193e8c0dab693f241a3ca76bb908284712e6df574b764265aad80a4af68` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/instance--481a630fb0c660530ea35559.md) | 112 | `declaration-track:481a630fb0c660530ea355596fc5f23ed931f94cd90a983ce578667451f914a0` |
| 12 | `def` | [domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/domrestrict--585a489dbd3ab2245b548754.md) | 142 | `declaration-track:585a489dbd3ab2245b54875478a48cb5d3d8020a485f93cc0ba8b30b4055f607` |
| 13 | `theorem` | [domRestrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/domrestrict-apply--ca6ec4d41d44eeea6142db49.md) | 146 | `result-track:ca6ec4d41d44eeea6142db4967f37176451630ad7c60ae2d94671a3a11b1368c` |
| 14 | `lemma` | [coe_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/coe-domrestrict--0a5c3b76ea993178ea5734fa.md) | 150 | `result-track:0a5c3b76ea993178ea5734fa6457c436bb02571247d5853aadd57c7333f3bd87` |
| 15 | `def` | [codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/codrestrict--5910ffd6706edcb01c99344d.md) | 157 | `declaration-track:5910ffd6706edcb01c99344d6ce88f2670f4e743d587686ee61cd71d90c7bdb4` |
| 16 | `theorem` | [codRestrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/codrestrict-apply--be7970d27570c05cff5c38e4.md) | 163 | `result-track:be7970d27570c05cff5c38e4f0602f8f0b8148639b913032fd4df27c082082d0` |
| 17 | `theorem` | [comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/comp-codrestrict--2743fe6284fc8001ee1b0798.md) | 168 | `result-track:2743fe6284fc8001ee1b079812993080af2c00b08a13b123f8563436bbbbb92d` |
| 18 | `theorem` | [subtype_comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/subtype-comp-codrestrict--edd19aca63e8e25956361382.md) | 173 | `result-track:edd19aca63e8e25956361382d4ec3e09352a530138b58e5dc756f3f55db77256` |
| 19 | `theorem` | [domRestrict_comp_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/domrestrict-comp-codrestrict--db15b46cdc6d2cf2ff77e08d.md) | 178 | `result-track:db15b46cdc6d2cf2ff77e08db5b26ed986ea3426e2d80d1663f814f8b22817b7` |
| 20 | `def` | [codLift](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/codlift--d25108da063630a2d3156867.md) | 190 | `declaration-track:d25108da063630a2d31568672f28e7aa493f34f9efb02140a820c2195b7de39a` |
| 21 | `theorem` | [codLift_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/codlift-apply--55cc72e54cfee964481e2f92.md) | 196 | `result-track:55cc72e54cfee964481e2f925e731a84276caff4ee1c6f98881fa80011a3d086` |
| 22 | `theorem` | [comp_codLift](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/comp-codlift--143482de4ad940fe09019938.md) | 201 | `result-track:143482de4ad940fe09019938ea637045db476ae5efeb411d10887823534c8015` |
| 23 | `def` | [restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/restrict--14a661eb23724765436ed353.md) | 209 | `declaration-track:14a661eb23724765436ed35392bd8c204dc76ce91f9e05bd27391e0df58a80aa` |
| 24 | `theorem` | [coe_restrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/coe-restrict-apply--0688e05d68a63e824a982307.md) | 214 | `result-track:0688e05d68a63e824a98230738435f04f28167f9987404ab15a127f0e9a5d58c` |
| 25 | `theorem` | [restrict_coe_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/restrict-coe-apply--7b5bcd67acaa3691f8218e76.md) | 219 | `result-track:7b5bcd67acaa3691f8218e76c704aba4c1d4ca074a68ed18c21f583b69103f5c` |
| 26 | `theorem` | [restrict_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/restrict-apply--0ebbfadcdebcbc51c994dfee.md) | 223 | `result-track:0ebbfadcdebcbc51c994dfeeb695f6b22c825738cc9475c08424f8fa6786bd51` |
| 27 | `lemma` | [restrict_sub](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/restrict-sub--0aeddee65716908f5f52bf8f.md) | 228 | `result-track:0aeddee65716908f5f52bf8ff3cd2711dab44737783e7719edbe1a166fb0a7bc` |
| 28 | `lemma` | [restrict_comp](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/restrict-comp--37d867316e2526ace4188933.md) | 236 | `result-track:37d867316e2526ace418893374be7d675234c209bd60fe2fefa7a51a6a679d68` |
| 29 | `lemma` | [restrict_smul_one](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/restrict-smul-one--888ab96bc4ce61745de39b2b.md) | 243 | `result-track:888ab96bc4ce61745de39b2b51adde9489f0d984a9cebdadec7e67b88003d168` |
| 30 | `lemma` | [restrict_commute](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/restrict-commute--421fe32d852325b2edec8d2c.md) | 249 | `result-track:421fe32d852325b2edec8d2cb1a9e0ae3ffa941c6ae22977e183e387da498a21` |
| 31 | `theorem` | [subtype_comp_restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/subtype-comp-restrict--2a7e827285993cb34a56f771.md) | 255 | `result-track:2a7e827285993cb34a56f771832e8dce2cceae02a43acded8144833389f93a37` |
| 32 | `theorem` | [restrict_eq_codRestrict_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/restrict-eq-codrestrict-domrestrict--7014d0257e98199b7584e3a3.md) | 259 | `result-track:7014d0257e98199b7584e3a381ad34549905f7dbcac833886c8e9d36f1ae4b25` |
| 33 | `theorem` | [restrict_eq_domRestrict_codRestrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/restrict-eq-domrestrict-codrestrict--90af7ab350932776c656ec0b.md) | 264 | `result-track:90af7ab350932776c656ec0b4cb9f59c1107fb4e4a06f46f8ae9d3ac30e6c02b` |
| 34 | `theorem` | [sum_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/sum-apply--974c676d65b468ec9a4ae0f9.md) | 269 | `result-track:974c676d65b468ec9a4ae0f99de2eb8bb02a985ce0388a783c4a24f04e299617` |
| 35 | `theorem` | [coe_sum](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/coe-sum--a709b7e21dfc368c95c1576a.md) | 274 | `result-track:a709b7e21dfc368c95c1576a1bd9eabd942300bea58100c8de8c74b2032cf885` |
| 36 | `theorem` | [_root_.Module.End.submodule_pow_eq_zero_of_pow_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/root-module-end-submodule-pow-eq-zero-of-pow-eq-zero--74cb0252f1a54c1e42effa24.md) | 282 | `result-track:74cb0252f1a54c1e42effa2440da246bf78f707f7c234b9bcf2b78278c00e41f` |
| 37 | `theorem` | [_root_.Module.End.pow_apply_mem_of_forall_mem](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/root-module-end-pow-apply-mem-of-forall-mem--20a266443f2238d44eccc87d.md) | 294 | `result-track:20a266443f2238d44eccc87dd91b628e5f08b599941a85da34d9d32d2e92534c` |
| 38 | `theorem` | [_root_.Module.End.pow_restrict](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/root-module-end-pow-restrict--456165ab22a4b7e15e672d8f.md) | 301 | `result-track:456165ab22a4b7e15e672d8f0fc9667e826827215d68932e55f0d8101cda034e` |
| 39 | `def` | [domRestrict'](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/domrestrict--dcdd6dfc2f47c8728f25cc56.md) | 319 | `declaration-track:dcdd6dfc2f47c8728f25cc56630604528cfae639fc688394a914bce633fe3b6c` |
| 40 | `theorem` | [domRestrict'_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/domrestrict-apply--f868fd46c1067049a1fafde4.md) | 325 | `result-track:f868fd46c1067049a1fafde41b47a490b9842dc88e8c568cfba8703eac1369d7` |
| 41 | `def` | [inclusion](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/inclusion--9dc36faa46f9880e5f9aaaa2.md) | 343 | `declaration-track:9dc36faa46f9880e5f9aaaa2cb353160aabb21770595b542a8a232736460e2a8` |
| 42 | `theorem` | [coe_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/coe-inclusion--9c515eb0bc0c0d9c002edfac.md) | 347 | `result-track:9c515eb0bc0c0d9c002edfacc5229ab2298dd2303b293f5011c8efba2dd3d619` |
| 43 | `theorem` | [inclusion_apply](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/inclusion-apply--2276d83443f8ada8e1a3132b.md) | 350 | `result-track:2276d83443f8ada8e1a3132b639a0054863c8b9102a17ecafbfcc6a880ceeb0c` |
| 44 | `theorem` | [inclusion_injective](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/inclusion-injective--9aaa1bae35830e46c2f9aef3.md) | 353 | `result-track:9aaa1bae35830e46c2f9aef383e8232e06170b9c41ede2479718d6083ca8a8e7` |
| 45 | `theorem` | [subtype_comp_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/Variant51b927c0a53b41f443cb053f81d6c065e0e462f1a016ea813111a0ecfa81f145.lean/declarations/subtype-comp-inclusion--a5f461b6e4f5e64b9241b1eb.md) | 358 | `result-track:a5f461b6e4f5e64b9241b1ebfae5c8d81a29dc9b1128787659dff9a43f3c6530` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
