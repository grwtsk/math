# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69b8a1348dca813fab5a5e804e3115dd57755bac",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69b8a1348dca813fab5a5e804e3115dd57755bac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Ord` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.Simpa` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ordering.swap_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/ordering-swap-swap--ce9edee8509d2709ce0868f9.md) | 19 | `result-track:ce9edee8509d2709ce0868f985b113556233da4769ca640d467d26628aea90d2` |
| 2 | `theorem` | [Ordering.swap_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/ordering-swap-inj--042fdbfdf769ea2312049745.md) | 21 | `result-track:042fdbfdf769ea2312049745f27cfd2c821890b1cda3aef907b25bf8f0fe34f4` |
| 3 | `class` | [TotalBLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/totalble--372abf764545de95a7307bf6.md) | 27 | `declaration-track:372abf764545de95a7307bf63bd5b71aedf43a1525a8ec4c9450fc396f2958cf` |
| 4 | `class` | [OrientedCmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/orientedcmp--2047d75aec1bc2e4b7e1e99e.md) | 32 | `declaration-track:2047d75aec1bc2e4b7e1e99e35a82b4291c886cf316f3e6b44c6820e1f86a055` |
| 5 | `theorem` | [cmp_eq_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/cmp-eq-gt--54d3c88be413ccb095128691.md) | 39 | `result-track:54d3c88be413ccb0951286913207ff4229a1a057b13117174376ca53dfc0230b` |
| 6 | `theorem` | [cmp_eq_eq_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/cmp-eq-eq-symm--1130edd7d9cec029eca4a6da.md) | 42 | `result-track:1130edd7d9cec029eca4a6da5953b92fadbdedda0b495a0b2e78c668068edf9b` |
| 7 | `theorem` | [cmp_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/cmp-refl--aaca6fc881fa566d56fcd1b9.md) | 45 | `result-track:aaca6fc881fa566d56fcd1b909b11b4a4fed329f45f494d954aec60997f65a20` |
| 8 | `class` | [TransCmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/transcmp--d04b4e65dc2e437cddf98832.md) | 54 | `declaration-track:d04b4e65dc2e437cddf98832996c1bb2e7c01fed677369c840e460d47a3c8bf9` |
| 9 | `theorem` | [ge_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/ge-trans--2441b2b19b63b03459b9d856.md) | 62 | `result-track:2441b2b19b63b03459b9d85647ab3c7af6ce8ae2a95e517f568e24334383725b` |
| 10 | `theorem` | [lt_asymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/lt-asymm--c04e374333ab842f78528216.md) | 66 | `result-track:c04e374333ab842f785282169badeb1648268edacd1d736e10c176a90837d827` |
| 11 | `theorem` | [gt_asymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/gt-asymm--28b8d5c15cfff49b3a7e3170.md) | 69 | `result-track:28b8d5c15cfff49b3a7e31706dfea1bc63dcb5d4b1dfad2776a725a634c8abb4` |
| 12 | `theorem` | [le_lt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/le-lt-trans--1f74093e1e39fc9bf17fc127.md) | 72 | `result-track:1f74093e1e39fc9bf17fc127326ea72e039b7dec842ad033ec519d10c0bb3bf4` |
| 13 | `theorem` | [lt_le_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/lt-le-trans--3d59f75ed8ddddcbcf1b3efd.md) | 75 | `result-track:3d59f75ed8ddddcbcf1b3efd4fbefa79b7823540c7f1f6d45f41fd4e08a239b3` |
| 14 | `theorem` | [lt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/lt-trans--f4ae4bdf6e42d24c947df00d.md) | 78 | `result-track:f4ae4bdf6e42d24c947df00d33944045c0e687ddf69a3e4a14524ee05a4a944d` |
| 15 | `theorem` | [gt_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/gt-trans--49de225fa5baee090d9dc8f8.md) | 81 | `result-track:49de225fa5baee090d9dc8f8f4bc6bb1b7fdfa6a672844e4baf79812b4c328c1` |
| 16 | `theorem` | [cmp_congr_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/cmp-congr-left--4a64e5d1276f64f63cd3be0e.md) | 84 | `result-track:4a64e5d1276f64f63cd3be0ef22d65d1373e625dc758934a3038ee81081dcf61` |
| 17 | `theorem` | [cmp_congr_left'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/cmp-congr-left--3a17f1614ff0ee1f14892857.md) | 93 | `result-track:3a17f1614ff0ee1f14892857af27eaca5939da27ed088fbced080c6ac3e258f2` |
| 18 | `theorem` | [cmp_congr_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/cmp-congr-right--fd744c01378338c059e08197.md) | 96 | `result-track:fd744c01378338c059e0819769e202d916dd15beab4cee52954e30668d073ca9` |
| 19 | `def` | [byKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/bykey--7be27a268bafaea9e832c4b3.md) | 108 | `declaration-track:7be27a268bafaea9e832c4b38c969ad6006a8210472e88f68f716812a563b039` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/instance--78129e5a05183cbfe949c067.md) | 110 | `declaration-track:78129e5a05183cbfe949c067e27a13d74240022c8541b77ed44cb8324ffb35e7` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/instance--d1276a834cfcb074a83a313b.md) | 113 | `declaration-track:d1276a834cfcb074a83a313b4c43388579677f5eb0947f454375670deba1d27d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/instance--86794b47db5004339c596c97.md) | 116 | `declaration-track:86794b47db5004339c596c9709afad432ae44637aa2ae203f93e64359c02aeb4` |
| 23 | `theorem` | [ge_iff_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/ge-iff-le--b19ebea4aaaf51c222776b6a.md) | 121 | `result-track:b19ebea4aaaf51c222776b6ad8becf9e12fdae9d029c231f5616e6401982563e` |
| 24 | `theorem` | [gt_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/gt-iff-lt--8737ff7ea3b540e53321b9b1.md) | 123 | `result-track:8737ff7ea3b540e53321b9b1442580fc7e6ebe1ab5ce20b36a48c2f0f2d7fd1c` |
| 25 | `theorem` | [le_of_eq_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/le-of-eq-of-le--457d78c64abbb2dfc6fe8b12.md) | 125 | `result-track:457d78c64abbb2dfc6fe8b12968fe30088c08840fa3c73f849d4c8cfcd003912` |
| 26 | `theorem` | [le_of_le_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/le-of-le-of-eq--2d5f73708a90adb85d948e03.md) | 127 | `result-track:2d5f73708a90adb85d948e03885023e7fd15487fd8689c7997967f0602ff18a0` |
| 27 | `theorem` | [lt_of_eq_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/lt-of-eq-of-lt--0d3de06513be11121c800d5d.md) | 129 | `result-track:0d3de06513be11121c800d5d2f2935392f9b9f1e6b0bf891d39dcc69ee200abe` |
| 28 | `theorem` | [lt_of_lt_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant9f96787af20e3bf0b7bdb5bcf0b7ae66574a9a90bd07ff83b3a8d6315e3872d3.lean/declarations/lt-of-lt-of-eq--1cb77abca6af699855325866.md) | 131 | `result-track:1cb77abca6af69985532586674822e9c292e11a7ea1fe8f82957c250e5d6c89c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
