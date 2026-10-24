# Verification target: GRWTSK.Algebra.Truncated.Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b48e5167f046900b569d36efdc2f8d34e8b4ab9",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/index.md) · [Full source](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b48e5167f046900b569d36efdc2f8d34e8b4ab9`.

Source path: `GRWTSK/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.WittVector.InitTail` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TruncatedWittVector](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatedwittvector--0a633a577a685d7f64c4f03c.md) | 58 | `declaration-track:0a633a577a685d7f64c4f03c632642d58967cc2f5468a5350d765923ac8dac31` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instance--ced0c7376b2962581e3a94dd.md) | 61 | `declaration-track:ced0c7376b2962581e3a94dd7385bdd2d3293bca5f1c2a2645af2e0a8193498e` |
| 3 | `def` | [mk](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/mk--1208799b59698a21d7cb01e5.md) | 70 | `declaration-track:1208799b59698a21d7cb01e59b90d52d80b7f9ce115f7524debe7612b122dccc` |
| 4 | `def` | [coeff](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/coeff--9170e207f1b1e5baff707572.md) | 74 | `declaration-track:9170e207f1b1e5baff707572a66edf92aa0e906f0791b6dcb23b57dfdb99f8a4` |
| 5 | `theorem` | [ext](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/ext--4c528bf966d9db89d29c0855.md) | 78 | `result-track:4c528bf966d9db89d29c0855095cb312ca4005481f9684f75586d8654e30b82a` |
| 6 | `theorem` | [coeff_mk](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/coeff-mk--2e942ace60451f7f079a9c32.md) | 82 | `result-track:2e942ace60451f7f079a9c322a2f4a570f0fa101624602b81ed7cfb06ca3c4a8` |
| 7 | `theorem` | [mk_coeff](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/mk-coeff--123e437e195cd64c238ae757.md) | 86 | `result-track:123e437e195cd64c238ae757874de3021c55a247d047fab7e2283d938ce17328` |
| 8 | `def` | [out](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/out--4e134ee4fbf2db384dfe3c29.md) | 94 | `declaration-track:4e134ee4fbf2db384dfe3c29b06e2be6af54cf011fab07f3cb5b711aa43d2cd8` |
| 9 | `theorem` | [coeff_out](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/coeff-out--c1be8137a6fe49a0a7cc2076.md) | 98 | `result-track:c1be8137a6fe49a0a7cc2076bfa42e4e49f1197e7bc88850a49a7b9976ba524b` |
| 10 | `theorem` | [out_injective](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/out-injective--2f34a828c4c77554d867c4b7.md) | 101 | `result-track:2f34a828c4c77554d867c4b7bf42a58f5dd7e5c444b8fc2ea4da9c961e794a65` |
| 11 | `def` | [truncateFun](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun--4240c0502f765b2ab9f0421d.md) | 118 | `declaration-track:4240c0502f765b2ab9f0421d83f744cbeaf446ffe73a040243058a4ba4d09ed1` |
| 12 | `theorem` | [coeff_truncateFun](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/coeff-truncatefun--3a7ba7cc7f65d6e4c9f20054.md) | 126 | `result-track:3a7ba7cc7f65d6e4c9f20054fa3e41583e6925bdc37e22dd30e4a74207ebabd2` |
| 13 | `theorem` | [out_truncateFun](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/out-truncatefun--d4fa62cdd196c249160647e1.md) | 132 | `result-track:d4fa62cdd196c249160647e1132c865742a0cb86d06a1f87ac43e20dce8b863d` |
| 14 | `theorem` | [truncateFun_out](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-out--32d35af5dcd304ca7c78b6e9.md) | 145 | `result-track:32d35af5dcd304ca7c78b6e969421210e93ad6d485fec5760e951c834d1e352a` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instance--0dcb33a550bba96c13dd8374.md) | 153 | `declaration-track:0dcb33a550bba96c13dd837476a00aaae52038b97e584e9246652e124115e31c` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instance--bb10b5dccb89627518803920.md) | 156 | `declaration-track:bb10b5dccb89627518803920877c16608a0bb33a4ee3a0cadb20c72549febaad` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instance--2cb2a07d77e0ab1b9898d2df.md) | 159 | `declaration-track:2cb2a07d77e0ab1b9898d2df8bb69423ada99bca73cc020b7db61445a3b651f4` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instance--53d0a371b70457704edee931.md) | 162 | `declaration-track:53d0a371b70457704edee931288352d020c5f25b0d73724cda140014a8cb6a29` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instance--a5bca735cd2f5e0675abe3d8.md) | 165 | `declaration-track:a5bca735cd2f5e0675abe3d8a2a631dead1701de551c361db04e588d187a63b4` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instance--1f86ac3a5e0ca7d0bf24a413.md) | 168 | `declaration-track:1f86ac3a5e0ca7d0bf24a4134db159027b8887cfeaaca159942a29169aeac846` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instance--f3d713b7e24b4a1ac71c5664.md) | 171 | `declaration-track:f3d713b7e24b4a1ac71c5664058e3e14e3c2fc0f15799eb1e2cd1a897f3e0d95` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instance--7ffc0553ae61bcd87db92b99.md) | 174 | `declaration-track:7ffc0553ae61bcd87db92b99bc1404242f3af5a78e49911d178b1fe800d98ac8` |
| 23 | `instance` | [hasNatScalar](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/hasnatscalar--8bfc2743873c2b2c80352431.md) | 177 | `declaration-track:8bfc2743873c2b2c80352431df9ec07f70ba3c5d93735836802fb9892be188b4` |
| 24 | `instance` | [hasIntScalar](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/hasintscalar--92484600be98ca1ac2edacd6.md) | 180 | `declaration-track:92484600be98ca1ac2edacd6b79b60e8b0732eb62a322de240c95a84f96651e3` |
| 25 | `instance` | [hasNatPow](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/hasnatpow--b2dc13d147f08a73b90ddd7f.md) | 183 | `declaration-track:b2dc13d147f08a73b90ddd7fe8f1e8a70b7a8d60c1e07259c818e275e1bac17d` |
| 26 | `theorem` | [coeff_zero](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/coeff-zero--436ad18e29016d346aaa5999.md) | 187 | `result-track:436ad18e29016d346aaa5999df2cb4b7f7e9bc1f19a88d78da77047eee427d36` |
| 27 | `macro` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/macro--5202fb6b7a31865e7665b465.md) | 194 | `declaration-track:5202fb6b7a31865e7665b4655b9c89980a01411c34e9c010323e8f00c6d19854` |
| 28 | `theorem` | [truncateFun_surjective](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-surjective--dd31f9fb9da389dc6d00bfbf.md) | 213 | `result-track:dd31f9fb9da389dc6d00bfbf433b0c5c54fbf2d81f39ba20cb9bf5838cf82b7f` |
| 29 | `theorem` | [truncateFun_zero](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-zero--c52ad8f234d5f9b4a5784279.md) | 219 | `result-track:c52ad8f234d5f9b4a578427962c4b8511797b01b6ebb218e163368400a594039` |
| 30 | `theorem` | [truncateFun_one](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-one--e07fe6ec2d25a4a39ee981ba.md) | 222 | `result-track:e07fe6ec2d25a4a39ee981bae7de02fa677e132f7ab900245b2516f7f905d519` |
| 31 | `theorem` | [truncateFun_add](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-add--a10c77bcf59b13bddb05b5a9.md) | 227 | `result-track:a10c77bcf59b13bddb05b5a9d466767ae9995fdcd11be0b87845c3e7501cb13f` |
| 32 | `theorem` | [truncateFun_mul](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-mul--a4d4c3429269e97aaf8cf26f.md) | 232 | `result-track:a4d4c3429269e97aaf8cf26f00eebca28ae61d1857c09c4ecbc47053e1e540f8` |
| 33 | `theorem` | [truncateFun_neg](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-neg--2df25bacde5ba9da65ed3be0.md) | 236 | `result-track:2df25bacde5ba9da65ed3be0c7cd9f18f14d884fc91bf061307760364e24ad54` |
| 34 | `theorem` | [truncateFun_sub](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-sub--c29f82f1831a77708eec7738.md) | 239 | `result-track:c29f82f1831a77708eec77380a75af1f992a89d5849f11fbe22c9af50b5310c9` |
| 35 | `theorem` | [truncateFun_nsmul](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-nsmul--dc6c2952abbb0a9c354a8e32.md) | 243 | `result-track:dc6c2952abbb0a9c354a8e32d725014357bbbc797d45d91f7fb5c33e2fc8a8fa` |
| 36 | `theorem` | [truncateFun_zsmul](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-zsmul--21bffba7afe6bbf8e51b12ac.md) | 246 | `result-track:21bffba7afe6bbf8e51b12acf4cf900c486bb7d3d417f6d5634a128ffa8921de` |
| 37 | `theorem` | [truncateFun_pow](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-pow--3e5ea6a5f93f4373e9819314.md) | 249 | `result-track:3e5ea6a5f93f4373e981931407263589544fd863ad50c244bbc73f19c4953abc` |
| 38 | `theorem` | [truncateFun_natCast](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-natcast--a19940c7073356801cbf0a9d.md) | 252 | `result-track:a19940c7073356801cbf0a9d7abd26d2a3cd1bf859c89ff9c98130b1ca6e4c4c` |
| 39 | `theorem` | [truncateFun_intCast](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncatefun-intcast--3018b788bb1bbde1097c5291.md) | 254 | `result-track:3018b788bb1bbde1097c52915897e307cc7579363bb09d1960848e4590904cf2` |
| 40 | `instance` | [instCommRing](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instcommring--19b4852ddcf2a85f57a638bb.md) | 266 | `declaration-track:19b4852ddcf2a85f57a638bba3be4768ce4c4ed2fab0784881858f31942f87ab` |
| 41 | `def` | [truncate](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate--8f87e4d25da660d2ca22ea75.md) | 284 | `declaration-track:8f87e4d25da660d2ca22ea75ab482f580353b0b24b3dfe51222d379212fa03a7` |
| 42 | `theorem` | [truncate_surjective](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate-surjective--812e393174376c422f24e671.md) | 293 | `result-track:812e393174376c422f24e671dda162fecc58f5e0fdb02b0b28d6344345f4e680` |
| 43 | `theorem` | [coeff_truncate](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/coeff-truncate--81841826bd647b4fe82980e3.md) | 299 | `result-track:81841826bd647b4fe82980e33c4d3095cd8594f83fa771c7453be91df09cbc3b` |
| 44 | `theorem` | [mem_ker_truncate](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/mem-ker-truncate--780645d04198384d218dd795.md) | 304 | `result-track:780645d04198384d218dd795163d607770d267fb9cbd66561aefc731e001cfa7` |
| 45 | `theorem` | [truncate_mk'](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate-mk--4c220d8d370e768b8e422d32.md) | 313 | `result-track:4c220d8d370e768b8e422d321f8eae1a499c0893c0536fe65238c5272127a2d4` |
| 46 | `def` | [truncate](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate--07a43306465897176a24e8da.md) | 330 | `declaration-track:07a43306465897176a24e8daa89b349d04e7388471796ee4fcec173ca965cd04` |
| 47 | `theorem` | [truncate_comp_wittVector_truncate](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate-comp-wittvector-truncate--bb9eca29fee0e36a8bda73e2.md) | 339 | `result-track:bb9eca29fee0e36a8bda73e2a7e863435f1c425bad14a9e18cf499a0a497cb8f` |
| 48 | `theorem` | [truncate_wittVector_truncate](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate-wittvector-truncate--ac41dd0c5cf14c9715d62ddc.md) | 344 | `result-track:ac41dd0c5cf14c9715d62ddc885c40cfb3451096d39a25b55a9dd723775c0f9b` |
| 49 | `theorem` | [truncate_truncate](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate-truncate--9651388020ea12df8959c5b5.md) | 349 | `result-track:9651388020ea12df8959c5b5d94cacadf42572c31f83c830fd88a09480bbe271` |
| 50 | `theorem` | [truncate_comp](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate-comp--fef01245f01f5374391c0fb7.md) | 356 | `result-track:fef01245f01f5374391c0fb74bb51cab030a7073e9ef8669d13b19b85ea25e25` |
| 51 | `theorem` | [truncate_surjective](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate-surjective--35e2698f05148dc38cb3b5d2.md) | 360 | `result-track:35e2698f05148dc38cb3b5d24f428efbfecf8045f805c68dac7a51cb93435fec` |
| 52 | `theorem` | [coeff_truncate](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/coeff-truncate--792f332430cf39287dd33b80.md) | 366 | `result-track:792f332430cf39287dd33b800d1a1186af731f6ccfd1bc002bd6deb0b2f08294` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/instance--fcff96e04afb19606ebe3ff1.md) | 375 | `declaration-track:fcff96e04afb19606ebe3ff1b037a0089a721043b8e179d7e7839a4191fe6246` |
| 54 | `theorem` | [card](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/card--64533ce714e23f642fed0fc8.md) | 380 | `result-track:64533ce714e23f642fed0fc8c3f0102f53e7c64ed9a85fa72cade8bb1171b90b` |
| 55 | `theorem` | [iInf_ker_truncate](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/iinf-ker-truncate--d838e79c6c9ccd8cc5bd9565.md) | 388 | `result-track:d838e79c6c9ccd8cc5bd9565cc0acd5d4e0dbe989b9e2ebb74b8e757ca06b758` |
| 56 | `def` | [liftFun](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/liftfun--5ddd16159c4b204364fdf4a0.md) | 415 | `declaration-track:5ddd16159c4b204364fdf4a0e5269f2d84ef7d3af1fba9fff42b0e17d72a1091` |
| 57 | `theorem` | [truncate_liftFun](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate-liftfun--0caf7942c28909dee64652bd.md) | 421 | `result-track:0caf7942c28909dee64652bdcd41967931f1aeb41894e0a86574d37f3b160b6c` |
| 58 | `def` | [lift](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/lift--88106132b716ebc945d5a83b.md) | 433 | `declaration-track:88106132b716ebc945d5a83bed951029bd4c94e696ce343d188bf10f38675588` |
| 59 | `theorem` | [truncate_lift](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate-lift--8a6d157c2476e0c7f8e69d9e.md) | 446 | `result-track:8a6d157c2476e0c7f8e69d9ec978a63df84e6bf65b80dd832e08aa6987813785` |
| 60 | `theorem` | [truncate_comp_lift](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/truncate-comp-lift--938b6592fafdee26241f15d8.md) | 450 | `result-track:938b6592fafdee26241f15d87b65dd0533e365dbef180b131d940354400fdbae` |
| 61 | `theorem` | [lift_unique](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/lift-unique--682a2f15754c99fee516b117.md) | 454 | `result-track:682a2f15754c99fee516b117ae8aff638126a81e25d1cac426ed99f02ea716f9` |
| 62 | `def` | [liftEquiv](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/liftequiv--fe014f1d32b5dc9db59dc7b7.md) | 464 | `declaration-track:fe014f1d32b5dc9db59dc7b745f4f563b9a0ee992951aa2a7bc42786db037ecc` |
| 63 | `theorem` | [hom_ext](../../../../mathematics/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/declarations/hom-ext--58d12975c8be2d69adabcd14.md) | 474 | `result-track:58d12975c8be2d69adabcd140cc7e4be1a3b6a10834c3ea736795838299d9faf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
