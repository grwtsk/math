# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Trunc.Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94512808d746f70940e6aacd4d993c1e2674c09f",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94512808d746f70940e6aacd4d993c1e2674c09f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean.json)

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
| 1 | `def` | [truncFinset](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/truncfinset--102213f8a1b012a5f4e88273.md) | 82 | `declaration-track:102213f8a1b012a5f4e88273cf7a1392e6e343ccb6572e72b190be3b178bfda5` |
| 2 | `theorem` | [truncFinset_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/truncfinset-apply--ddbfb44af1391c74aff84f04.md) | 90 | `result-track:ddbfb44af1391c74aff84f046f23e70d6057b3b1af7a0861dea545ffff587da2` |
| 3 | `theorem` | [coeff_truncFinset_of_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-truncfinset-of-mem--c0f3bda3a97367b6d14f5231.md) | 94 | `result-track:c0f3bda3a97367b6d14f5231450ae8a9750e66f9724c842df36afa3a93e0d2b1` |
| 4 | `theorem` | [coeff_truncFinset_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-truncfinset-eq-zero--aab52faa46dc770700ceb538.md) | 100 | `result-track:aab52faa46dc770700ceb538ade589c23c44716f6db9c69295e8009be0bcced1` |
| 5 | `lemma` | [coeff_truncFinset](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-truncfinset--0b17df32db003a116ab7932b.md) | 105 | `result-track:0b17df32db003a116ab7932bb866cba6d6d9e3edad3c62f5362ef0c6b6e9da05` |
| 6 | `theorem` | [truncFinset_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/truncfinset-monomial--326c150167029aed26d41841.md) | 109 | `result-track:326c150167029aed26d41841165e9cbb2d5cbd1d56f3dceddad18210c8506925` |
| 7 | `theorem` | [truncFinset_monomial_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/truncfinset-monomial-eq-zero--e94a9d23d88b04d05519d713.md) | 115 | `result-track:e94a9d23d88b04d05519d713a7f3295a07e16db6dcad409fbd86a275c3b3c910` |
| 8 | `theorem` | [truncFinset_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/truncfinset-c--2781e252f0fb67a7bd337774.md) | 121 | `result-track:2781e252f0fb67a7bd337774cf188b73c2bfaeac2a4be34dfc725b8bf502435a` |
| 9 | `theorem` | [truncFinset_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/truncfinset-one--5b735a618a9f23a936c8fc56.md) | 124 | `result-track:5b735a618a9f23a936c8fc56774053a38b6f0ce5bf14c700ccde5bbd20b1db2d` |
| 10 | `theorem` | [truncFinset_truncFinset](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/truncfinset-truncfinset--192698ed4a3151a0a46a2d1f.md) | 127 | `result-track:192698ed4a3151a0a46a2d1f3d6bdb6d210ebf5e9295d3626d8c19d1d0a129ad` |
| 11 | `theorem` | [truncFinset_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/truncfinset-map--73cc9e209fc7072e7fcbb1e0.md) | 132 | `result-track:73cc9e209fc7072e7fcbb1e0d85a1c02c72f5f6b18ee245dafb9363f564e73da` |
| 12 | `theorem` | [coeff_truncFinset_mul_truncFinset_eq_coeff_mul₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-truncfinset-mul-truncfinset-eq-coeff-mul--86a7129a0fdc57b4ef0bc3e2.md) | 139 | `result-track:86a7129a0fdc57b4ef0bc3e2022894694fe867c1c6ae00ed7913ba89f535cece` |
| 13 | `theorem` | [coeff_truncFinset_mul_truncFinset_eq_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-truncfinset-mul-truncfinset-eq-coeff-mul--a415369c078281302f885585.md) | 151 | `result-track:a415369c078281302f8855852991703a8507cd608aa08f04617c5fc65593e107` |
| 14 | `theorem` | [truncFinset_truncFinset_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/truncfinset-truncfinset-pow--54120d15ce549d1378e30faf.md) | 156 | `result-track:54120d15ce549d1378e30fafd7ef829bead39d444d18b1548d38923ad5250d1f` |
| 15 | `theorem` | [support_truncFinset_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/support-truncfinset-subset--4e03caee744233426238b3b4.md) | 168 | `result-track:4e03caee744233426238b3b4fea72c119470b07bfa4017248bfd6299546b915d` |
| 16 | `lemma` | [totalDegree_truncFinset](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/totaldegree-truncfinset--067302deb1a884681688605d.md) | 172 | `result-track:067302deb1a884681688605d4720d65b96a1691cd60b1f9003b3f6542363b170` |
| 17 | `lemma` | [truncFinset_coe_eq_self_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/truncfinset-coe-eq-self-iff--a0ed21fdbddb5bab1a606671.md) | 176 | `result-track:a0ed21fdbddb5bab1a606671d8824729223cf69e789f15329c0d78c7948138f3` |
| 18 | `def` | [trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc--b73594251ff31613b3a5ee3c.md) | 195 | `declaration-track:b73594251ff31613b3a5ee3c7952eec3ef677204c13a2a4bfa4287e76353e535` |
| 19 | `theorem` | [coeff_trunc](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunc--2c05a3a475652c48d7c24a05.md) | 198 | `result-track:2c05a3a475652c48d7c24a0552d10eb82e1f3ae243ca6aaff2acef96baece1f0` |
| 20 | `theorem` | [trunc_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc-one--6cc5780c71dba3d8001a63ad.md) | 203 | `result-track:6cc5780c71dba3d8001a63ad133d0d772d3e48857e0d487d3e52b675a571dee0` |
| 21 | `theorem` | [trunc_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc-c--c4fb926052e5520661150ab0.md) | 207 | `result-track:c4fb926052e5520661150ab0359d88f40a1c52f6c7591ed4a2e1290444426338` |
| 22 | `theorem` | [trunc_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc-c-mul--341b30d147ed303a591084b9.md) | 211 | `result-track:341b30d147ed303a591084b95cda058b2de490fb265f964d5985b4e5c4cf10dc` |
| 23 | `theorem` | [trunc_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc-map--221e6f86f498ea92d122ba11.md) | 216 | `result-track:221e6f86f498ea92d122ba1147b21c20ce44f92a38ea58a28cdd334100aa70c2` |
| 24 | `theorem` | [coeff_trunc_mul_trunc_eq_coeff_mul₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunc-mul-trunc-eq-coeff-mul--b8706d352fbd10873010b491.md) | 221 | `result-track:b8706d352fbd10873010b491dd36e57662ef91760cbf89283855489736999f4b` |
| 25 | `theorem` | [coeff_trunc_mul_trunc_eq_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunc-mul-trunc-eq-coeff-mul--f04ce9b8ff687bf4ce530bed.md) | 229 | `result-track:f04ce9b8ff687bf4ce530bedc38066521496c2513464ebf67507d3c45cb879d6` |
| 26 | `def` | [trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc--33f3d84cfb3a472a6bb35d2e.md) | 246 | `declaration-track:33f3d84cfb3a472a6bb35d2e409ad500b0c67f52038f60053497ed65f3adffe6` |
| 27 | `theorem` | [coeff_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunc--841fba52cc79f317179a3e2a.md) | 250 | `result-track:841fba52cc79f317179a3e2a196ed01fb57e198e28ee198a999369d5225635b0` |
| 28 | `theorem` | [trunc'_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc-trunc--b7ad0d4a175eb8fd1e0128f2.md) | 254 | `result-track:b7ad0d4a175eb8fd1e0128f28bb054847b3f2be32e1924b6ae946bfeb4b9c351` |
| 29 | `theorem` | [trunc'_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc-one--186c4c80d0b517bf67e7bf30.md) | 260 | `result-track:186c4c80d0b517bf67e7bf30d6948d0bc389be20aab42fb43f9e16bf954cb680` |
| 30 | `theorem` | [trunc'_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc-c--c1c2921097dbc8ec73d44643.md) | 263 | `result-track:c1c2921097dbc8ec73d4464395d353a64f2681061685490708ed8aeefc6af37e` |
| 31 | `theorem` | [coeff_trunc'_mul_trunc'_eq_coeff_mul₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunc-mul-trunc-eq-coeff-mul--023661bf89d5270c66ca3db5.md) | 268 | `result-track:023661bf89d5270c66ca3db5598cb463dee710b2f231f5748a23231faa2d3d4b` |
| 32 | `theorem` | [coeff_trunc'_mul_trunc'_eq_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunc-mul-trunc-eq-coeff-mul--162f671817d7873674969d7c.md) | 276 | `result-track:162f671817d7873674969d7cb44a2e627fb9e09321385f4802aced42c5f6a13c` |
| 33 | `theorem` | [trunc'_trunc'_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc-trunc-pow--6a6302e0a3cf74dac1b74102.md) | 281 | `result-track:6a6302e0a3cf74dac1b7410270795000e01d7b3c515d78e22e1c8dc184643dfd` |
| 34 | `theorem` | [trunc'_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc-c-mul--860c68c719cb99198fecca38.md) | 286 | `result-track:860c68c719cb99198fecca38c451c7ccbe89ae6e614d02ab2e5d22b0c87b5532` |
| 35 | `theorem` | [trunc'_map](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunc-map--0d78d09f7c60b2ea50b7b326.md) | 291 | `result-track:0d78d09f7c60b2ea50b7b3261affb752aa98edfd5eaacc7908d0c69270862323` |
| 36 | `theorem` | [totalDegree_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/totaldegree-trunc--4746d486194a07500d8182ee.md) | 296 | `result-track:4746d486194a07500d8182eed369bae860475dd09cfe373aa286ef7e5efb56a4` |
| 37 | `theorem` | [ext_trunc'](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/ext-trunc--0d4691cb603eb4c2dace9dcc.md) | 300 | `result-track:0d4691cb603eb4c2dace9dccc4d807833900fde4e2662bab27b2efdf94f92222` |
| 38 | `theorem` | [eq_iff_frequently_trunc'_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/eq-iff-frequently-trunc-eq--c4b628e482e607e75ee5500b.md) | 309 | `result-track:c4b628e482e607e75ee5500bd55865d9061455aa066f1c5e6d9712de29127e02` |
| 39 | `def` | [truncTotal](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunctotal--e4c8036f7d06492acf7fc4d8.md) | 328 | `declaration-track:e4c8036f7d06492acf7fc4d8cd6507fc03cc2b2a711b83eaef2e1b42af0dba24` |
| 40 | `theorem` | [coeff_truncTotal](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunctotal--a9a7fd252d5040455fd3138b.md) | 331 | `result-track:a9a7fd252d5040455fd3138bd2304a8c7ef249a96dbd023ecc0eb74fe09dd45c` |
| 41 | `theorem` | [coeff_truncTotal_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunctotal-eq-zero--671fb1d2c8b458ee17b20d8d.md) | 334 | `result-track:671fb1d2c8b458ee17b20d8dadabf353f02eed0ac628d79d2639567d8f6e828e` |
| 42 | `theorem` | [coeff_truncTotal_eq_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunctotal-eq-ite--7ff5f6a8c8217489d4220faa.md) | 337 | `result-track:7ff5f6a8c8217489d4220faad3d63292b159fa484538ee8776f6b01168095a37` |
| 43 | `theorem` | [constantCoeff_truncTotal_eq_ite](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/constantcoeff-trunctotal-eq-ite--20b9885b621115de6ab2e8c8.md) | 343 | `result-track:20b9885b621115de6ab2e8c885dd84970f0d6ea9239e4062c689ec830757d8a7` |
| 44 | `theorem` | [truncTotal_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunctotal-eq-sum--7999c315fb210787ae301058.md) | 347 | `result-track:7999c315fb210787ae3010582219f5521a367b61172a870b92fe748b00e25494` |
| 45 | `lemma` | [truncTotal_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunctotal-one--621ea1fce6d47dc6775b2135.md) | 351 | `result-track:621ea1fce6d47dc6775b2135b9443280f663ccb5f34b1567db4dffc8716d75e4` |
| 46 | `lemma` | [coeff_truncTotal_mul_truncTotal_eq_coeff_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunctotal-mul-trunctotal-eq-coeff-mul--a30fa62ae04b9fb3aa8d4d04.md) | 354 | `result-track:a30fa62ae04b9fb3aa8d4d04cc38cfd364df7326e60b15b253fb7dc9aa3ed1b8` |
| 47 | `lemma` | [coeff_truncTotal_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/coeff-trunctotal-pow--02728daa087f9df7825b807a.md) | 359 | `result-track:02728daa087f9df7825b807a99a07bcd95a44a075bca6babb2bf0c6f04d1e031` |
| 48 | `lemma` | [truncTotal_pow_eq_truncTotal_truncTotal_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunctotal-pow-eq-trunctotal-trunctotal-pow--0f503f94d0d3e5e0a9a33acf.md) | 370 | `result-track:0f503f94d0d3e5e0a9a33acfa632bcc7004600c48e24dd0e3aaf17a4e46d8458` |
| 49 | `theorem` | [totalDegree_truncTotal_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/totaldegree-trunctotal-lt--0dbf38d7bd5d2e8a6c4bbde6.md) | 378 | `result-track:0dbf38d7bd5d2e8a6c4bbde6a1e53986564bdb179b713ba08b0a208e4ca976ee` |
| 50 | `theorem` | [truncTotal_coe_eq_self_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Trunc/Variant72580ba2f61c265f284acb5799ef7b05ac50b1ac88f42835f323ca8863b7f8ba.lean/declarations/trunctotal-coe-eq-self-iff--22eb06cd236e8bd0818ed86d.md) | 384 | `result-track:22eb06cd236e8bd0818ed86daa941b9970f5538220b35ea9f6849df02738709a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
