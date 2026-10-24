# Verification target: GRWTSK.Topology.GeneralTopology.LiouvilleWith.Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d022821046513abca1b68b992a4bab45b54ff43d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d022821046513abca1b68b992a4bab45b54ff43d`.

Source path: `GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Transcendental.Liouville.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Irrational` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LiouvilleWith](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/liouvillewith--aad7fc6ae093ef54b5ca2992.md) | 55 | `declaration-track:aad7fc6ae093ef54b5ca299273bd7c9cf790d545cd8b4ca3bf3a888a3f2a9c87` |
| 2 | `theorem` | [liouvilleWith_one](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/liouvillewith-one--514a3185575a4869d0367e94.md) | 59 | `result-track:514a3185575a4869d0367e94d0f2e92b75bf2d094bb6b950ff1cb45dc92a5423` |
| 3 | `theorem` | [exists_pos](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/exists-pos--d1708f37e1225044886b0692.md) | 80 | `result-track:d1708f37e1225044886b0692fb33c7d1e5af8674c31a5864aee9cea89ee13dea` |
| 4 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/mono--eaa163b575e83b704f8e0439.md) | 92 | `result-track:eaa163b575e83b704f8e0439083f37500d8484052e364570f059c5467d357c0c` |
| 5 | `theorem` | [frequently_lt_rpow_neg](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/frequently-lt-rpow-neg--0a3e050916e444b35d2886fd.md) | 101 | `result-track:0a3e050916e444b35d2886fd631b2364ec0fd687a2b0f2916bf3b2851166ef5c` |
| 6 | `theorem` | [mul_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/mul-rat--d197f1fe12cb230526251895.md) | 115 | `result-track:d197f1fe12cb23052625189523595842df2052d08c635d18a10648f79d2f3abf` |
| 7 | `theorem` | [mul_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/mul-rat-iff--6c0d404c564cc88c59ae3d06.md) | 133 | `result-track:6c0d404c564cc88c59ae3d06284c8b9feb775de73c8efe3cad114c6bab337b65` |
| 8 | `theorem` | [rat_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/rat-mul-iff--5ff322cddd0d2896d0405077.md) | 141 | `result-track:5ff322cddd0d2896d0405077d093e69a6e5c3796e44e87cffad0734d671915d0` |
| 9 | `theorem` | [rat_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/rat-mul--5042c1a3c1d92ed078d2a755.md) | 144 | `result-track:5042c1a3c1d92ed078d2a75596d084e95ab449ab0e402dedbeb405296eb9c578` |
| 10 | `theorem` | [mul_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/mul-int-iff--ec45d9ee27cda7eff5f5787d.md) | 147 | `result-track:ec45d9ee27cda7eff5f5787d6c598059f86eae27cf65b9cd692f7f185cce9863` |
| 11 | `theorem` | [mul_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/mul-int--66549d46cd5cae7b53ec4eb3.md) | 150 | `result-track:66549d46cd5cae7b53ec4eb376d2d858f23bf6b28b8ba4a387aa569b50067723` |
| 12 | `theorem` | [int_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/int-mul-iff--1cc9767178d4e1b394012f6f.md) | 153 | `result-track:1cc9767178d4e1b394012f6fdc0d416608afa223bc0a548f9b03f1bbf0e90da2` |
| 13 | `theorem` | [int_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/int-mul--b673d2b03d1a549cb7e434e1.md) | 156 | `result-track:b673d2b03d1a549cb7e434e16f338f58cef5b3771d173ccfcb0c61679c507e2c` |
| 14 | `theorem` | [mul_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/mul-nat-iff--c321c019cb2e1222029080fe.md) | 159 | `result-track:c321c019cb2e1222029080fe2ea7fffe6df4a6a8206f462c87924df5c0c56ca3` |
| 15 | `theorem` | [mul_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/mul-nat--fd89838157c839d0c12b87c7.md) | 162 | `result-track:fd89838157c839d0c12b87c72d19439a5a5b60711f651d4cb132259815389d09` |
| 16 | `theorem` | [nat_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/nat-mul-iff--299051d93d159cde888370a3.md) | 165 | `result-track:299051d93d159cde888370a32e875fd2dd45806ec70b30e30197d9698a30db3f` |
| 17 | `theorem` | [nat_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/nat-mul--07c0c7344bb61aa4ffc64b32.md) | 168 | `result-track:07c0c7344bb61aa4ffc64b32aff491b5d26fc59a1a65ade1cd1bf7d85fcc51ff` |
| 18 | `theorem` | [add_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/add-rat--7fae9626555b652226d919d0.md) | 171 | `result-track:7fae9626555b652226d919d06813218844a24dd63d3f551fbe1de7e5ce678a15` |
| 19 | `theorem` | [add_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/add-rat-iff--cf854dd2ddda96ff6faace5c.md) | 186 | `result-track:cf854dd2ddda96ff6faace5c6d048b9961d36c07c4525c692d8f0bfba97275f0` |
| 20 | `theorem` | [rat_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/rat-add-iff--64c3c44e9f9de8045c82f853.md) | 190 | `result-track:64c3c44e9f9de8045c82f853f7f954eebc383f1e8ba128fc542bde1abe779fb2` |
| 21 | `theorem` | [rat_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/rat-add--ca11485d7d6774f3fd1c989b.md) | 192 | `result-track:ca11485d7d6774f3fd1c989b191d763b5de414fc2e950906373a953c8c002972` |
| 22 | `theorem` | [add_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/add-int-iff--ee1b8efb49f2f55276569a76.md) | 196 | `result-track:ee1b8efb49f2f55276569a769085859000218d1b2cf2891cb7bfcbed211ea15e` |
| 23 | `theorem` | [int_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/int-add-iff--9947b731edd87481d99385d0.md) | 200 | `result-track:9947b731edd87481d99385d07d3870fad7085fe136ae13beb937166877ad8243` |
| 24 | `theorem` | [add_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/add-nat-iff--c913f977536158a27bcb2ca9.md) | 203 | `result-track:c913f977536158a27bcb2ca9ed8d53522fe510034cc2a360671e152e63574334` |
| 25 | `theorem` | [nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/nat-add-iff--e56e0bdaae64b29d659db4d5.md) | 207 | `result-track:e56e0bdaae64b29d659db4d5b9b3074fed871a1fe578d743d85ce81aff224ad0` |
| 26 | `theorem` | [add_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/add-int--fe698f11179bd0bd58e37a38.md) | 209 | `result-track:fe698f11179bd0bd58e37a38df22dc62c0489fd979e05bebf852aa96bfc33bd3` |
| 27 | `theorem` | [int_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/int-add--797e5eee3ebf6eff10ed98bc.md) | 212 | `result-track:797e5eee3ebf6eff10ed98bc8b47577aff2f2484ee347587f1ef0f7d7226a4ad` |
| 28 | `theorem` | [add_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/add-nat--de5791def2c0b4fc72e5cb3c.md) | 215 | `result-track:de5791def2c0b4fc72e5cb3c30a1189f1fd70a633d132c9a2b833ea50eed0f4c` |
| 29 | `theorem` | [nat_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/nat-add--7ea03b0941db1620c733b935.md) | 218 | `result-track:7ea03b0941db1620c733b9358aa2806baf089077285db4d3b0dd5159922fd632` |
| 30 | `theorem` | [neg](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/neg--76dff79ceb552f5d232de03c.md) | 221 | `result-track:76dff79ceb552f5d232de03cd18295f8863f84a6891b7d5004b92a1c851a99b1` |
| 31 | `theorem` | [neg_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/neg-iff--d9b5f0ef16e2977afff71367.md) | 231 | `result-track:d9b5f0ef16e2977afff71367a5504e37fe0a8ce4abc898ff0c26a643a58b5ab5` |
| 32 | `theorem` | [sub_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/sub-rat-iff--e9017def21fc0ac2f16ffb1c.md) | 235 | `result-track:e9017def21fc0ac2f16ffb1cd2b1af72c65ea015d5a9da7f9450e9531636b470` |
| 33 | `theorem` | [sub_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/sub-rat--7ee6d9a8226e047d5957c737.md) | 238 | `result-track:7ee6d9a8226e047d5957c737e5abbe84c52c78265beef12ce67303c227e5a157` |
| 34 | `theorem` | [sub_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/sub-int-iff--5e7946c54292f046f3d992da.md) | 242 | `result-track:5e7946c54292f046f3d992da9028d91db287fe4cb9350aabeda985ca6da35071` |
| 35 | `theorem` | [sub_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/sub-int--b02a12776244a32ecc560b03.md) | 245 | `result-track:b02a12776244a32ecc560b0303df6424db568873c1b0c7988558dc75a36eca0d` |
| 36 | `theorem` | [sub_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/sub-nat-iff--dcaba31b2e936ee9d41cb648.md) | 249 | `result-track:dcaba31b2e936ee9d41cb64873f03a72cfe697ec73037a867d2c191c65206abc` |
| 37 | `theorem` | [sub_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/sub-nat--0e2b5449e50715046070e609.md) | 252 | `result-track:0e2b5449e50715046070e609cceab40949e2a676416b55789878a143533ffe6b` |
| 38 | `theorem` | [rat_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/rat-sub-iff--84f26228f82d2c69f686495a.md) | 256 | `result-track:84f26228f82d2c69f686495abc82d46e4ecb452ae6e205b4a8c883da0203c82b` |
| 39 | `theorem` | [rat_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/rat-sub--d34b404b13fe3f6432d4575a.md) | 258 | `result-track:d34b404b13fe3f6432d4575a78af3f9dd2e212a0f50073ee2f753bafb35550c8` |
| 40 | `theorem` | [int_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/int-sub-iff--f3cbf4981e54f2b79ec24b27.md) | 262 | `result-track:f3cbf4981e54f2b79ec24b27544903cde5714412c6b55e1332d3802c6c49b915` |
| 41 | `theorem` | [int_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/int-sub--2d3503e5faba1d9ceafbbb84.md) | 264 | `result-track:2d3503e5faba1d9ceafbbb846765013302ce907afd349d0efad55488b825d5e0` |
| 42 | `theorem` | [nat_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/nat-sub-iff--3900abcd33783301a957a8f0.md) | 268 | `result-track:3900abcd33783301a957a8f05f630e3a445abf5748243adc45988ce502fb501a` |
| 43 | `theorem` | [nat_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/nat-sub--393f6998519437f4951f0c8c.md) | 270 | `result-track:393f6998519437f4951f0c8ccd53b2fb5f3a11da1bb3f52293ab3096f5a68f29` |
| 44 | `theorem` | [ne_cast_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/ne-cast-int--e509abc8a67a836c8f552703.md) | 273 | `result-track:e509abc8a67a836c8f5527037926f31fafbc0f17536e60052de222d44281e193` |
| 45 | `theorem` | [irrational](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/irrational--8e572a23f9fa2f5d50cce190.md) | 287 | `result-track:8e572a23f9fa2f5d50cce19005fbfbad8a58a311fbde1b89a5b45c81487c597b` |
| 46 | `theorem` | [frequently_exists_num](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/frequently-exists-num--736a29b1d9b6873b6b0befa6.md) | 303 | `result-track:736a29b1d9b6873b6b0befa6c015e0c0c10b4ea4a3721e4f588e9ae3a852b283` |
| 47 | `theorem` | [liouvilleWith](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/liouvillewith--678be06089d4fbd88316f48e.md) | 329 | `result-track:678be06089d4fbd88316f48eaf2c0258cb4cde1f892b8d381894c6fceaa17179` |
| 48 | `theorem` | [forall_liouvilleWith_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variantd2c642042ef409409360b648d14627c5d42e523c8cb9a9103faf95d53705ff84.lean/declarations/forall-liouvillewith-iff--06b9c6eeb721c83efab94b12.md) | 340 | `result-track:06b9c6eeb721c83efab94b1251e52d5d2d9ce64716809e2f82c75c13a5494a86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
