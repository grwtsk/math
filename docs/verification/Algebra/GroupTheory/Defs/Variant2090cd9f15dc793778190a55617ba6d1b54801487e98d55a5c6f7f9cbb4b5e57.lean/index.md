# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8510df860c12e3dea6e2708c256450ec7885355e",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8510df860c12e3dea6e2708c256450ec7885355e`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanonicallyOrderedAdd](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/canonicallyorderedadd--e0c6dae0902fc4a0507e1b4d.md) | 25 | `declaration-track:e0c6dae0902fc4a0507e1b4da88996f4c05574bc4d8c47f016d7bc501c0bc66d` |
| 2 | `class` | [CanonicallyOrderedMul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/canonicallyorderedmul--6bb01b39f8564e9832e25566.md) | 41 | `declaration-track:6bb01b39f8564e9832e25566b55d5cc4862bf407a448f6761d5b35c2ba1323eb` |
| 3 | `structure` | [CanonicallyOrderedAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/canonicallyorderedaddcommmonoid--1272039d3c94c35324a12a90.md) | 56 | `declaration-track:1272039d3c94c35324a12a90b085316f4ec214c24da3def0cc747d7696be6019` |
| 4 | `structure` | [CanonicallyOrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/canonicallyorderedcommmonoid--04ca20f39bdfec4e2a387729.md) | 77 | `declaration-track:04ca20f39bdfec4e2a387729b61aceb97e0077cc8145af5e77c77f5a8eeee4b5` |
| 5 | `theorem` | [le_self_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/le-self-mul--5787bbe5044b683979126eda.md) | 90 | `result-track:5787bbe5044b683979126eda1e012031e51f780057f7510f3d400979cc65cf0c` |
| 6 | `theorem` | [self_le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/self-le-mul-right--24640cd43d23536776530da1.md) | 94 | `result-track:24640cd43d23536776530da1215a5fdb536344a49e14db39c6b3b333a83da609` |
| 7 | `theorem` | [le_iff_exists_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/le-iff-exists-mul--bdb2400efb076834d2ef8018.md) | 98 | `result-track:bdb2400efb076834d2ef8018f1cef64c6576d3a50da45c1615c2ea90c24f21b5` |
| 8 | `theorem` | [le_of_mul_le_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/le-of-mul-le-left--43bc9833093013cd84f441ff.md) | 109 | `result-track:43bc9833093013cd84f441ffeeb87469c7259c9a9e88a34c3ae69954d7b49a7d` |
| 9 | `theorem` | [le_mul_of_le_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/le-mul-of-le-left--91af8b3fc7a6af4ea864ea7d.md) | 113 | `result-track:91af8b3fc7a6af4ea864ea7da6b572c7689f2ab3e59c0ff8428ed4a4dfc66ad6` |
| 10 | `theorem` | [le_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/le-mul-self--065edd174cb4aef859b6bea7.md) | 129 | `result-track:065edd174cb4aef859b6bea76dcf923af88f80178a5b40aaf6bdab4fe7280668` |
| 11 | `theorem` | [self_le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/self-le-mul-left--2940310f6f08c371d925c2c2.md) | 134 | `result-track:2940310f6f08c371d925c2c24c15aba721fb3579ba15871089f5fd4e648b1a19` |
| 12 | `theorem` | [le_of_mul_le_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/le-of-mul-le-right--9cf5a61811171950b86a091a.md) | 143 | `result-track:9cf5a61811171950b86a091a50da973f37e3195eecbb06f2b401afe3da6a79b8` |
| 13 | `theorem` | [le_mul_of_le_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/le-mul-of-le-right--38b3afb74840207a300a2cf2.md) | 147 | `result-track:38b3afb74840207a300a2cf2477184ce3eea5aef2bfcec7ead464ddc44948309` |
| 14 | `theorem` | [le_iff_exists_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/le-iff-exists-mul--d71a3862e1a78618c18abab3.md) | 153 | `result-track:d71a3862e1a78618c18abab38a73aa3b7e608faedf7ce4f3a4774226e8066f45` |
| 15 | `theorem` | [one_le](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/one-le--ab8072d6ccdebe4dbe60c677.md) | 167 | `result-track:ab8072d6ccdebe4dbe60c677154ac6fa105bf822713120837e5309bd416405de` |
| 16 | `theorem` | [isBot_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/isbot-one--81a46dc92d32fbd08dad6fb9.md) | 170 | `result-track:81a46dc92d32fbd08dad6fb93e994c8075ebecdbc207772dfc669b60f95d36e6` |
| 17 | `theorem` | [one_lt_of_gt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/one-lt-of-gt--868a46fd51b05096ba1f9c6c.md) | 178 | `result-track:868a46fd51b05096ba1f9c6cbbfd6bf646a76c6dadc77b5a2c73dccbb6cd655c` |
| 18 | `theorem` | [bot_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/bot-eq-one--51587db68be1b5217b964534.md) | 190 | `result-track:51587db68be1b5217b964534c97daa29826d67e3f9e7ce5059cdb3631c6042b2` |
| 19 | `theorem` | [le_one_iff_eq_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/le-one-iff-eq-one--6d8845af5764b183bda09f0b.md) | 193 | `result-track:6d8845af5764b183bda09f0b2716cf0d0ba5eae98e23024136c5e9fbddaae3a1` |
| 20 | `theorem` | [one_lt_iff_ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/one-lt-iff-ne-one--6fb393ecbff8aaaa478f35b8.md) | 197 | `result-track:6fb393ecbff8aaaa478f35b828ebc92831861dfcbd9e194cdc5ec7327683456f` |
| 21 | `theorem` | [one_lt_of_ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/one-lt-of-ne-one--2c4b0ad08ba750de57543964.md) | 201 | `result-track:2c4b0ad08ba750de57543964a1585f2ca2faa3057a68db144c4ea7dac9ecfa3f` |
| 22 | `theorem` | [eq_one_or_one_lt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/eq-one-or-one-lt--54c6ce0924c95417848c1bba.md) | 205 | `result-track:54c6ce0924c95417848c1bba0d362392a6c4caa78b310074631487743832462a` |
| 23 | `lemma` | [one_notMem_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/one-notmem-iff--9856af2279c0483136d8d583.md) | 208 | `result-track:9856af2279c0483136d8d58326aa502167b8813765aab58b9febd7685fa25f86` |
| 24 | `theorem` | [exists_one_lt_mul_of_lt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/exists-one-lt-mul-of-lt--80497f59b2689a23277b2873.md) | 218 | `result-track:80497f59b2689a23277b28735cc14af18d2ac849eaca171d61acba859bee8599` |
| 25 | `theorem` | [lt_iff_exists_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/lt-iff-exists-mul--62a964bc2db40b53a2f8d003.md) | 225 | `result-track:62a964bc2db40b53a2f8d003ecd53e196a9b90367e0a1707dcd2eb34e705519e` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/instance--31c9b456441a09f40a1dd02b.md) | 251 | `declaration-track:31c9b456441a09f40a1dd02b9a023c08938a6fa4159134618e3a081c505bc287` |
| 27 | `lemma` | [CanonicallyOrderedMul.toIsOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/canonicallyorderedmul-toisorderedmonoid--fcec2e25d3090877e760189b.md) | 264 | `result-track:fcec2e25d3090877e760189b648f7973b719820d10b82695d94e2a55747cc059` |
| 28 | `instance` | [CanonicallyOrderedCommMonoid.toUniqueUnits](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/canonicallyorderedcommmonoid-touniqueunits--2027e76a23e9635cd0de0758.md) | 274 | `declaration-track:2027e76a23e9635cd0de07588ab41bc3403cc1603f6b60f9fc6a0db0c0be3829` |
| 29 | `theorem` | [one_lt_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/one-lt-mul-iff--f0cbb894cf7902faaf178ee4.md) | 288 | `result-track:f0cbb894cf7902faaf178ee4e37ea2599ec6d85fff3963778ed88d9b9eef1167` |
| 30 | `theorem` | [pos](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/pos--47ce259c5c25f2a08da1fa66.md) | 297 | `result-track:47ce259c5c25f2a08da1fa66fb908168c1bce58ee19313dfe57bcc3e013a7177` |
| 31 | `theorem` | [of_gt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/of-gt--127f95990ce1ce9fafc1c620.md) | 301 | `result-track:127f95990ce1ce9fafc1c6203727b6a99d101c39ff43c7e9d8a7df0925bd489d` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/instance--32919f68718c40e3a611b43f.md) | 308 | `declaration-track:32919f68718c40e3a611b43f69256cc13d27b002c26a5682d81eb1006f60f855` |
| 33 | `structure` | [CanonicallyLinearOrderedAddCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/canonicallylinearorderedaddcommmonoid--1b0f3124df18969232c31330.md) | 319 | `declaration-track:1b0f3124df18969232c31330b209962119f1334f0b7feca3ee4ece6dbd0cd071` |
| 34 | `structure` | [CanonicallyLinearOrderedCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/canonicallylinearorderedcommmonoid--8b5a162b34344fef02327915.md) | 329 | `declaration-track:8b5a162b34344fef02327915430a67bfb48215fa053616e2bd5d1ab99814f8f8` |
| 35 | `theorem` | [min_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/min-mul-distrib--7c8c78e6d611802d8476aa82.md) | 340 | `result-track:7c8c78e6d611802d8476aa8240f9af41c5055c3eeafa55ed44bb0658c67b8148` |
| 36 | `theorem` | [min_mul_distrib'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/min-mul-distrib--35c1929282b20a792b8596a7.md) | 348 | `result-track:35c1929282b20a792b8596a771dd94fa6d651e1727dcf2a5a32ff1ff139b43b7` |
| 37 | `theorem` | [one_min](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/one-min--0a1bfe118093e0c0208d970a.md) | 352 | `result-track:0a1bfe118093e0c0208d970a1de914477db39c308d10c04d405325e33c852b76` |
| 38 | `theorem` | [min_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/min-one--76e5a35e0df4aaf4a45694f4.md) | 356 | `result-track:76e5a35e0df4aaf4a45694f49504fbb88d2d4fb8960d9fc65da25145a1dc597e` |
| 39 | `theorem` | [bot_eq_one'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/declarations/bot-eq-one--7e482729192cbd9cab23dd52.md) | 362 | `result-track:7e482729192cbd9cab23dd52c0799d18845002d643ee222869dedae66bfe497e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
