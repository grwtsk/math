# Verification target: GRWTSK.Algebra.LinearAlgebra.SpinGroup.Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f06d1130ec5d8d4a552fdb9e670c650135e75f9c",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f06d1130ec5d8d4a552fdb9e670c650135e75f9c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean.json)

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
| 1 | `def` | [lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/lipschitzgroup--5164f40203852d77d3baea5b.md) | 62 | `declaration-track:5164f40203852d77d3baea5bd259888151a152cb68d7f2dad6d856780b6326e4` |
| 2 | `theorem` | [conjAct_smul_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/conjact-smul-mem-range--c867d930ddecd57b9b8711f8.md) | 68 | `result-track:c867d930ddecd57b9b8711f80777dbe8b409ca554d203175e50db5918aba63d9` |
| 3 | `theorem` | [involute_act_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/involute-act-mem-range--b996fdc4c81f62192d1c3b70.md) | 96 | `result-track:b996fdc4c81f62192d1c3b7020651b63da3ffd7d1172fb85d036a5406207ec9c` |
| 4 | `theorem` | [conjAct_smul_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/conjact-smul-range--faff24503e9f64224c94e9c5.md) | 128 | `result-track:faff24503e9f64224c94e9c5db7a8bb146b5261ef5b644e0336f8a7866c13918` |
| 5 | `theorem` | [coe_mem_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/coe-mem-iff-mem--34a1a91d73fe05463f1f3de6.md) | 143 | `result-track:34a1a91d73fe05463f1f3de68fe0da4e42c226161907705e0c7d2674d73c4a13` |
| 6 | `def` | [pinGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/pingroup--06ba113577af765515d06685.md) | 154 | `declaration-track:06ba113577af765515d0668521c812019cc4ff4735ddaffabe62ed5c51607f59` |
| 7 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/mem-iff--544c3b2c0f2307e84beef731.md) | 160 | `result-track:544c3b2c0f2307e84beef731246ca9e296400706348999eae2577046c81740f6` |
| 8 | `theorem` | [mem_lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/mem-lipschitzgroup--0287027e4a97ca919a6f3514.md) | 166 | `result-track:0287027e4a97ca919a6f3514e0a96a022cf9952ae3cbcebd953d7e8a23ec9ec3` |
| 9 | `theorem` | [mem_unitary](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/mem-unitary--b3c003cc26d8a45de8ee4b5a.md) | 170 | `result-track:b3c003cc26d8a45de8ee4b5a75b648fd7e2ab4076f0b6f87126ae385fbb0b1b6` |
| 10 | `theorem` | [units_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/units-mem-iff--e57f94caa1348d7bef28974a.md) | 174 | `result-track:e57f94caa1348d7bef28974aedd096416764d25d452da71f90e35d721e61ec04` |
| 11 | `theorem` | [units_mem_lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/units-mem-lipschitzgroup--17cfb3845fe2b98a59bc2b88.md) | 178 | `result-track:17cfb3845fe2b98a59bc2b885defc6b70d72d88f1227ae99de3cfb35b1dd92d7` |
| 12 | `theorem` | [conjAct_smul_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/conjact-smul-mem-range--9a411fe6f5498be16816ea2b.md) | 183 | `result-track:9a411fe6f5498be16816ea2b9a001cce199d7ce9661db8c58e7f74a9dadd6b40` |
| 13 | `theorem` | [involute_act_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/involute-act-mem-range--f98c44a893c57ee79074bc3c.md) | 188 | `result-track:f98c44a893c57ee79074bc3c329cf288e96e4132a75fa669ae5ef27310df70ab` |
| 14 | `theorem` | [conjAct_smul_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/conjact-smul-range--a497bfbc8c284c4ad468ef2e.md) | 194 | `result-track:a497bfbc8c284c4ad468ef2ee397ed770c8baa3fd97500379b958e64a0e5a54b` |
| 15 | `theorem` | [star_mul_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-mul-self-of-mem--01f2050b64a860315169b1cc.md) | 199 | `result-track:01f2050b64a860315169b1cca57dddae8fae03cd241e60a3de7954f3a528d6fb` |
| 16 | `theorem` | [mul_star_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/mul-star-self-of-mem--a12e26deed75feb27a8c9eac.md) | 203 | `result-track:a12e26deed75feb27a8c9eac5f6f5311b53e4f26eea02687ed789f673d9c3197` |
| 17 | `theorem` | [star_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-mem--09a25da3d63d422b4f0cf36c.md) | 207 | `result-track:09a25da3d63d422b4f0cf36c97bcd2e7425e45b7175ddc062da86d61925a93f9` |
| 18 | `theorem` | [star_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-mem-iff--374dc292f2b739fecb00cd08.md) | 226 | `result-track:374dc292f2b739fecb00cd088ed9314fcc9f5b186b99a11227b8ebdaea9ff805` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/instance--cc845ed152b3c7ad125b3adb.md) | 232 | `declaration-track:cc845ed152b3c7ad125b3adbfd05b3d55e05ad6b4e68dbd8eaeb465f9e5a7b6d` |
| 20 | `theorem` | [coe_star](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/coe-star--e401215ff510310be9ad8c7d.md) | 236 | `result-track:e401215ff510310be9ad8c7dce8bb42d92186b244f3c70e141cc76f755a99a71` |
| 21 | `theorem` | [coe_star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/coe-star-mul-self--44f659302ea7398a1e8dbc79.md) | 239 | `result-track:44f659302ea7398a1e8dbc7997d44ea7eb51f8b4e5e89d924e177bde648a3cb6` |
| 22 | `theorem` | [coe_mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/coe-mul-star-self--e48330d518f66f2b83b507a7.md) | 242 | `result-track:e48330d518f66f2b83b507a7f1db614d91a5233f70ca1d9b4fe6cda8589496ba` |
| 23 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-mul-self--6bd981f8f137a3c319137d82.md) | 246 | `result-track:6bd981f8f137a3c319137d8221c49863bdab6e45ba22c7a0181612ad1a23c715` |
| 24 | `theorem` | [mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/mul-star-self--8349357e2686a4166187cb12.md) | 250 | `result-track:8349357e2686a4166187cb1256d42435834c61f24da909f95794a8198762ec6b` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/instance--33f4be2b331b22a9559cc468.md) | 254 | `declaration-track:33f4be2b331b22a9559cc4683e1df293d753d04ea3e32571d757cd74c9a84225` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/instance--debc1f50af173358fb033d2f.md) | 258 | `declaration-track:debc1f50af173358fb033d2ff66af66aff9d5ac56eb35bd1f8fe655d0c3bf9ae` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/instance--5749bf110529872cd47fc320.md) | 262 | `declaration-track:5749bf110529872cd47fc320aa2b04ca29b217750d8bf36044a8c0e28538465f` |
| 28 | `theorem` | [star_eq_inv](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-eq-inv--cd9d162d29a80ca3ab95c914.md) | 265 | `result-track:cd9d162d29a80ca3ab95c914a3d6d78e80b71f262c233ac68b990cd2ef4d2e3f` |
| 29 | `theorem` | [star_eq_inv'](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-eq-inv--67cad137073f1277fd6fbfe5.md) | 268 | `result-track:67cad137073f1277fd6fbfe57f503042e2ef25ece93179846bc1da97dadc2aab` |
| 30 | `def` | [toUnits](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/tounits--7d0eb29414553713cc0347b2.md) | 273 | `declaration-track:7d0eb29414553713cc0347b2ac8cf446a2e7a9a080e258541efd08ecda7af1c7` |
| 31 | `theorem` | [toUnits_injective](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/tounits-injective--4160b9677c20177d264cb26b.md) | 278 | `result-track:4160b9677c20177d264cb26b886578e3fcb10c5b07d088874142dd10009100a8` |
| 32 | `def` | [spinGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/spingroup--288d555eedb6e5f00b1df33f.md) | 293 | `declaration-track:288d555eedb6e5f00b1df33f68d619be8b087a30eadaf2f944dde885c7f15dcc` |
| 33 | `theorem` | [mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/mem-iff--7bedccf01fcb75aad7045660.md) | 299 | `result-track:7bedccf01fcb75aad7045660d3f6fcfd1808320c4ce8a8c02ba436a3f45af37d` |
| 34 | `theorem` | [mem_pin](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/mem-pin--b776412d63acb521cb119cb9.md) | 302 | `result-track:b776412d63acb521cb119cb9648d089394632c07691c44750685b33c1c6696f9` |
| 35 | `theorem` | [mem_even](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/mem-even--3280dc7b9436900396a416e5.md) | 305 | `result-track:3280dc7b9436900396a416e5473e89a00dad291728db3d8ac1a3e20d282dca95` |
| 36 | `theorem` | [units_mem_lipschitzGroup](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/units-mem-lipschitzgroup--01416f1bd007686f757b11d2.md) | 308 | `result-track:01416f1bd007686f757b11d2f03a2394b3740216993ebce4ec6c37a11b3c5388` |
| 37 | `theorem` | [involute_eq](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/involute-eq--6efc22e8c7ac55c0c8b600af.md) | 313 | `result-track:6efc22e8c7ac55c0c8b600afdccb19d40e471af8566736561f3cb9db7042b216` |
| 38 | `theorem` | [units_involute_act_eq_conjAct](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/units-involute-act-eq-conjact--aaf984fe51cc4de3c4ef9f7d.md) | 316 | `result-track:aaf984fe51cc4de3c4ef9f7d692b075a8ab936609335bcca96e5561d858427ab` |
| 39 | `theorem` | [conjAct_smul_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/conjact-smul-mem-range--bc2422d590e70f26d142d4b1.md) | 321 | `result-track:bc2422d590e70f26d142d4b185759f5cfd98046b922313763f51ff2503ed6017` |
| 40 | `theorem` | [involute_act_ι_mem_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/involute-act-mem-range--c36639eb82a4966892fb1e81.md) | 326 | `result-track:c36639eb82a4966892fb1e81092b98627ade2ee38ad9ffc18751a444ef0885dc` |
| 41 | `theorem` | [conjAct_smul_range_ι](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/conjact-smul-range--9c0b34b1f3e15b585ccab0c4.md) | 332 | `result-track:9c0b34b1f3e15b585ccab0c4701d1ab6c3c48e6ad436abe6ffe49893ba1f61d5` |
| 42 | `theorem` | [star_mul_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-mul-self-of-mem--7ddc163aa28b577971d1dfa9.md) | 337 | `result-track:7ddc163aa28b577971d1dfa9465ac7cab5ee7f8d651e2affa57f0759f7208b1b` |
| 43 | `theorem` | [mul_star_self_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/mul-star-self-of-mem--1566b45da871b1c3e95619ed.md) | 341 | `result-track:1566b45da871b1c3e95619edc2d6204739ac614231acbef90d1918f7585f4f01` |
| 44 | `theorem` | [star_mem](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-mem--7c0683c82246d000c27b4b95.md) | 345 | `result-track:7c0683c82246d000c27b4b95015206ed80345b08793bb2d817de2d4ee19c2f41` |
| 45 | `theorem` | [star_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-mem-iff--cd2ef5a4a67e232e6eba5138.md) | 357 | `result-track:cd2ef5a4a67e232e6eba51386a721aac3900463ad412bbe75e279648493f833a` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/instance--36568e63b455eb1a509d8ce3.md) | 363 | `declaration-track:36568e63b455eb1a509d8ce3771622036b74bd675a58665507ac45e62402737f` |
| 47 | `theorem` | [coe_star](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/coe-star--39f29e58dae155661b5f7427.md) | 367 | `result-track:39f29e58dae155661b5f7427e5466740355f4c2f09d14c103bfda0ec75c79f83` |
| 48 | `theorem` | [coe_star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/coe-star-mul-self--06d9b7e2c127e5098b1e2fca.md) | 370 | `result-track:06d9b7e2c127e5098b1e2fcadc92095c01596ffa9ee200f15008da171353ec49` |
| 49 | `theorem` | [coe_mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/coe-mul-star-self--b79f6babe16daf0548913e42.md) | 373 | `result-track:b79f6babe16daf0548913e42ffa4d287c0b182329b8d8d8643fdb208878910df` |
| 50 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-mul-self--625b2e7373b3509150c63e98.md) | 377 | `result-track:625b2e7373b3509150c63e987d44d723f08149d231422e363b89b04bf05b542e` |
| 51 | `theorem` | [mul_star_self](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/mul-star-self--840812282e2794f3fd64c224.md) | 381 | `result-track:840812282e2794f3fd64c224e532bf6f2283068b366972ebfb0007b307697431` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/instance--f2ebc2e0d281dc5aaa5a8dc3.md) | 385 | `declaration-track:f2ebc2e0d281dc5aaa5a8dc3ccda03cb060351840f1d6ae8b5f45fd3f37c3d7f` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/instance--89789c4868e8c88fbe4b53ed.md) | 389 | `declaration-track:89789c4868e8c88fbe4b53edfe01f038b66cf37984b21fd6b1f3b0a5584cca0d` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/instance--cc6cb3ee0fa737a322140561.md) | 393 | `declaration-track:cc6cb3ee0fa737a322140561f3dac30157ce39b8071997d6948dcfbdccc3e51c` |
| 55 | `theorem` | [star_eq_inv](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-eq-inv--ff79d22d733c381e5a45470e.md) | 396 | `result-track:ff79d22d733c381e5a45470e20ac03c83d0c386cb37c60a9326433543d0a6048` |
| 56 | `theorem` | [star_eq_inv'](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/star-eq-inv--c0709868bcdbacb8e6743c8a.md) | 399 | `result-track:c0709868bcdbacb8e6743c8a8c8bc3ff1a3f7654781a20a21bbd534c146a143b` |
| 57 | `def` | [toUnits](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/tounits--796ee326c02c66e12bd20435.md) | 404 | `declaration-track:796ee326c02c66e12bd2043560f0527ae435096730effcc7bd79d634280c634f` |
| 58 | `theorem` | [toUnits_injective](../../../../../mathematics/Algebra/LinearAlgebra/SpinGroup/Variant2855334998bfca8c3960fa9db60b04a71a32b761819b9b5a7dcf48569ea2cc4a.lean/declarations/tounits-injective--d7e84f0c5e3c5fa8f0ae0f85.md) | 409 | `result-track:d7e84f0c5e3c5fa8f0ae0f858753b78dbff63163ed7085ddf7e7a6ab3188ff49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
