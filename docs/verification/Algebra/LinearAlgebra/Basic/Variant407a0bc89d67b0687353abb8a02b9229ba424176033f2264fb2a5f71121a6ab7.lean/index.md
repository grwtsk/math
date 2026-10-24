# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a32f805ea3ed5128a47269fbf1553f25d265b806",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a32f805ea3ed5128a47269fbf1553f25d265b806`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Alternating` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExteriorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/exterioralgebra--ef6da58b2279eb01075fda60.md) | 62 | `declaration-track:ef6da58b2279eb01075fda606a7bb63bbef88bf3b3ede4ed6b4449a6cd146791` |
| 2 | `def` | [ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/anonymous--92e0d6fd83b71af348aeed28.md) | 73 | `declaration-track:92e0d6fd83b71af348aeed2840d81ab164434b70fcc29f7e884f6c671d8aa958` |
| 3 | `theorem` | [ι_sq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/sq-zero--14a1dff997fd5db06e2ac122.md) | 81 | `result-track:14a1dff997fd5db06e2ac122ccd1bf87d282510577baed83477889bfa9fff834` |
| 4 | `theorem` | [comp_ι_sq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/comp-sq-zero--d43bacc9f8c5eb23f7b317da.md) | 88 | `result-track:d43bacc9f8c5eb23f7b317da3d41f0254634182cac1c83e5192d3fd36f8bb53c` |
| 5 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/lift--023b2226d4ac31f418058f34.md) | 99 | `declaration-track:023b2226d4ac31f418058f34ad196600e2859000e307264d657c16658046eddb` |
| 6 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/comp-lift--4ca18012480114ea7ab5067c.md) | 104 | `result-track:4ca18012480114ea7ab5067caa56a25764302b4fa77915abcf1f69bd2044176b` |
| 7 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/lift-apply--954cdae0a0bea71a49b4a643.md) | 110 | `result-track:954cdae0a0bea71a49b4a643f4cb19396f526abcd9246071b4a7061e3ad2a6f1` |
| 8 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/lift-unique--a8accff375f0accd545744c5.md) | 116 | `result-track:a8accff375f0accd545744c51204a79be6b8b266d706cd4cb67debf0b88b7797` |
| 9 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/lift-comp--670c54a1429f53a8efa98e5c.md) | 124 | `result-track:670c54a1429f53a8efa98e5c34cbc8fb45e073baedda93acb28a012404c77796` |
| 10 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/hom-ext--9b2ae64d643679a18cfb3461.md) | 131 | `result-track:9b2ae64d643679a18cfb34619f28bcd76c6cf367633acc230cfb679e380afea9` |
| 11 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/induction--22909ea7ab264593cb83933a.md) | 140 | `result-track:22909ea7ab264593cb83933af51166b3bb6b3bfff53fa905540593cbdbfc0b3e` |
| 12 | `def` | [algebraMapInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/algebramapinv--b04ea6d6bf7c4a61e12757b5.md) | 148 | `declaration-track:b04ea6d6bf7c4a61e12757b5ec09a7d6ed2e3c4e4c4cd53e5f02b07c4c814d4f` |
| 13 | `theorem` | [algebraMap_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/algebramap-leftinverse--43711db2686600a403f5b030.md) | 154 | `result-track:43711db2686600a403f5b030a9ff260e09478879db57893a175eaa598600f409` |
| 14 | `theorem` | [algebraMap_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/algebramap-inj--1d0b82245dfa9befd3a22ce0.md) | 160 | `result-track:1d0b82245dfa9befd3a22ce06846f1ce741f27c1297ac4c8b4f32ee217818b56` |
| 15 | `theorem` | [algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/algebramap-eq-zero-iff--d2e3a707cca3cc6851738670.md) | 166 | `result-track:d2e3a707cca3cc6851738670ff1b6ae886c8e25058839ab7c5ea2ccc9f315687` |
| 16 | `theorem` | [algebraMap_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/algebramap-eq-one-iff--826ae175d0d101f22b07f707.md) | 171 | `result-track:826ae175d0d101f22b07f707652340e3dcc6fd390be93e613fdb656d28b71063` |
| 17 | `theorem` | [isUnit_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/isunit-algebramap--fbec924833bb5bca93399752.md) | 175 | `result-track:fbec924833bb5bca93399752df569c57bfec1d9d35b3ae5a65e655270d3cde51` |
| 18 | `def` | [invertibleAlgebraMapEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/invertiblealgebramapequiv--23db2fcebb891390c29a2c58.md) | 181 | `declaration-track:23db2fcebb891390c29a2c586696a56042470f13c0a147c73d6a60b7211db678` |
| 19 | `def` | [toTrivSqZeroExt](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/totrivsqzeroext--afcd545a7580628fe4704caf.md) | 190 | `declaration-track:afcd545a7580628fe4704cafd9fbeb7d1dac255076847a17f8d9d77101ebd2fd` |
| 20 | `theorem` | [toTrivSqZeroExt_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/totrivsqzeroext--77b4373484b0718eac9fd195.md) | 196 | `result-track:77b4373484b0718eac9fd1951cd4f547a1504c588011741faf49530f51859f8a` |
| 21 | `def` | [ιInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/inv--9b0844567c9bda6569ec7ae6.md) | 205 | `declaration-track:9b0844567c9bda6569ec7ae6665ef5f431bcb918d40c92499f5400de6b7fc21f` |
| 22 | `theorem` | [ι_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/leftinverse--8b7d76cd5f78c61ba659040c.md) | 212 | `result-track:8b7d76cd5f78c61ba659040cf7275d111b71eb36a42a557c64a839d8defc6e96` |
| 23 | `theorem` | [ι_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/inj--75c8d290bba00a350958e2e9.md) | 222 | `result-track:75c8d290bba00a350958e2e988e62302394d00586fb4d8639fd333fc07df84bf` |
| 24 | `theorem` | [ι_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/eq-zero-iff--8ab68f50e03a2414a92bec0c.md) | 229 | `result-track:8ab68f50e03a2414a92bec0c2655fdb6b354855f8bfeab8cb105bddf44591467` |
| 25 | `theorem` | [ι_eq_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/eq-algebramap-iff--5a086ab2afa49dbd9236f636.md) | 233 | `result-track:5a086ab2afa49dbd9236f6363c6d5109060e36f3011f091d28471ad6258c8bd7` |
| 26 | `theorem` | [ι_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/ne-one--bd7750ff38a852a26add15bc.md) | 246 | `result-track:bd7750ff38a852a26add15bc3915ef706ba2dfaf45bc5067bbda42e19e666c60` |
| 27 | `theorem` | [ι_range_disjoint_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/range-disjoint-one--538ded2d5a53d1920eccdeef.md) | 252 | `result-track:538ded2d5a53d1920eccdeef0c3163d31d81930a565b16f80c42d187158e5bc1` |
| 28 | `theorem` | [ι_add_mul_swap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/add-mul-swap--5d04b57c7a5963061f20a436.md) | 262 | `result-track:5d04b57c7a5963061f20a4360d104a5d519f5525b0b5453b6317e81528020946` |
| 29 | `theorem` | [ι_mul_prod_list](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/mul-prod-list--6f91e2c1640fbb2788da6f4d.md) | 268 | `result-track:6f91e2c1640fbb2788da6f4d125080f035236d4cb92d94a830fa4664f75e34f4` |
| 30 | `def` | [ιMulti](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/multi--32dfe446535d6d2ce73979fc.md) | 290 | `declaration-track:32dfe446535d6d2ce73979fcb0bec82b69665668e107d53c37680d5d66769986` |
| 31 | `theorem` | [ιMulti_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/multi-apply--3f0db97e83d4a438998ad4f1.md) | 321 | `result-track:3f0db97e83d4a438998ad4f1abc6d5c0fd72eeefc0ae182fe74a68b1592f8954` |
| 32 | `theorem` | [ιMulti_zero_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/multi-zero-apply--ccdd2e3fddc37b22f0e358d5.md) | 326 | `result-track:ccdd2e3fddc37b22f0e358d5bab3e5db97844a9baf32504c0c5b32bafb24ad23` |
| 33 | `theorem` | [ιMulti_succ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/multi-succ-apply--476eba38de0a428fad361196.md) | 331 | `result-track:476eba38de0a428fad361196ab2921f75807ebf1cbc0fef278a542fd60eb6279` |
| 34 | `theorem` | [ιMulti_succ_curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/multi-succ-curryleft--187676636e8efebeb83e4152.md) | 336 | `result-track:187676636e8efebeb83e415287e2f705a61e691b280c01c6aa62daaa3e349fe6` |
| 35 | `def` | [toExterior](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/toexterior--e89be9d8cf19039aa17e4d80.md) | 352 | `declaration-track:e89be9d8cf19039aa17e4d8039c38111238b1f21c52420cf0595bb0dc41b4b40` |
| 36 | `theorem` | [toExterior_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/declarations/toexterior--6d3356837be61bf5ab6f96c6.md) | 357 | `result-track:6d3356837be61bf5ab6f96c607eb06ae8c36433de38b01c8f8746c1ab7f15247` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
