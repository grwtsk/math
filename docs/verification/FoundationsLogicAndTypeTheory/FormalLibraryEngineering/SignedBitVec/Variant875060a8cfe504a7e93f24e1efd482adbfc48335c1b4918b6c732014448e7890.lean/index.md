# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SignedBitVec.Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f76a64f6ba6aad26ff38c553fee23d9847883768",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f76a64f6ba6aad26ff38c553fee23d9847883768`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean.json)

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
| 1 | `def` | [intMinSealed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/intminsealed--80f6327a46183f9d4538a482.md) | 36 | `declaration-track:80f6327a46183f9d4538a482c3a03ae04f96d6e7fa595bcc3fed8fd788acce99` |
| 2 | `def` | [intMaxSealed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/intmaxsealed--8e0c497ff392da65334254ec.md) | 37 | `declaration-track:8e0c497ff392da65334254ec5a1aa9d818d50d3d786ec11e606b53a0f38d4ffc` |
| 3 | `theorem` | [intMinSealed_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/intminsealed-def--d290e5ee151220f43c486570.md) | 38 | `result-track:d290e5ee151220f43c486570af546388fe57b6e9646de59daa1a3741134b0e7b` |
| 4 | `theorem` | [intMaxSealed_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/intmaxsealed-def--3ff2f882f26ef00c836fdc05.md) | 39 | `result-track:3ff2f882f26ef00c836fdc052227eead5c582c0d9fc850879cafd7de6eaa3591` |
| 5 | `def` | [rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/rotate--6f63250f8758bcf0419098b9.md) | 42 | `declaration-track:6f63250f8758bcf0419098b910d0c440746ca549d0c780e3369c6d623955fd9a` |
| 6 | `theorem` | [intMaxSealed_eq_intMinSealed_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/intmaxsealed-eq-intminsealed-add--f90ed855b49d1de3516ca841.md) | 44 | `result-track:f90ed855b49d1de3516ca84185c195360bb39a2a5186dd3d6c5b761f7d04e2d9` |
| 7 | `theorem` | [intMinSealed_add_intMinSealed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/intminsealed-add-intminsealed--9ed0f28038dd4a90fdb9d4cb.md) | 53 | `result-track:9ed0f28038dd4a90fdb9d4cb0d272cfd016c1b3f93614fe621df16bb048345f6` |
| 8 | `theorem` | [rotate_neg_eq_intMinSealed_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/rotate-neg-eq-intminsealed-sub--54225d5e5e425c01f78ec179.md) | 61 | `result-track:54225d5e5e425c01f78ec1792a2f3a713460eba2f76467643f58b520a1a1e467` |
| 9 | `theorem` | [rotate_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/rotate-add--ddee2e7b45bea6ea6dfa37c7.md) | 67 | `result-track:ddee2e7b45bea6ea6dfa37c76831b1a2de67238a2e183caa3d65004d7df2bc1a` |
| 10 | `theorem` | [rotate_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/rotate-sub--8e5d1904ecf25aca6090b47e.md) | 70 | `result-track:8e5d1904ecf25aca6090b47e6648c1f21a2af5b62c6cbe6fb2f1ffec03954163` |
| 11 | `theorem` | [rotate_intMinSealed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/rotate-intminsealed--adc0589e6e975fcbc332d7d6.md) | 73 | `result-track:adc0589e6e975fcbc332d7d650043c387c10633ccee01dcc47e0ddf4770832ba` |
| 12 | `theorem` | [rotate_intMaxSealed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/rotate-intmaxsealed--94a7e7fb3599b690aa26b929.md) | 76 | `result-track:94a7e7fb3599b690aa26b9293a6b67e72d2ad87eb868dedab971d1fffaf7fd00` |
| 13 | `theorem` | [rotate_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/rotate-rotate--73bd0015947bfbb003716db3.md) | 79 | `result-track:73bd0015947bfbb003716db3e69a050535093d79c2acafe3de80ed0e12601b93` |
| 14 | `theorem` | [rotate_map_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/rotate-map-eq-iff--126c108bd81c51ab6384242d.md) | 86 | `result-track:126c108bd81c51ab6384242d028cf323d6ea489a42e0f8985c19d173bf2170af` |
| 15 | `instance` | [instUpwardEnumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instupwardenumerable--5bca410eda4d6a09d752c7b4.md) | 94 | `declaration-track:5bca410eda4d6a09d752c7b42d8a267a12a4a60e158e67b315935d503938e57e` |
| 16 | `theorem` | [succ?_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/succ-rotate--d53d58c8f4643524827a5764.md) | 98 | `result-track:d53d58c8f4643524827a5764162531d1bf34ccb6cdbf2b1676b4904ebc22e690` |
| 17 | `theorem` | [succMany?_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/succmany-rotate--46a1faf3cd9adcdd54a01ee4.md) | 102 | `result-track:46a1faf3cd9adcdd54a01ee4014a8b75cf6f212cd26eb29600ffaa6e0e11c3ca` |
| 18 | `theorem` | [sle_iff_rotate_le_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/sle-iff-rotate-le-rotate--f491e0c70a626c8c00827a92.md) | 107 | `result-track:f491e0c70a626c8c00827a921f4e8b265e912b4a6fb7f4827bab92dbca8ee57f` |
| 19 | `theorem` | [rotate_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/rotate-inj--be2358b27e3559dce0f677c0.md) | 151 | `result-track:be2358b27e3559dce0f677c04766246843992e7da5739481a33de61601c0d82a` |
| 20 | `theorem` | [rotate_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/rotate-eq-iff--60fe07a054f9a299013f577c.md) | 158 | `result-track:60fe07a054f9a299013f577c3c0d40656b48ffbce7b71defb73d0e1cfa52d527` |
| 21 | `theorem` | [toInt_eq_ofNat_toNat_rotate_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/toint-eq-ofnat-tonat-rotate-sub--915825c49904b4e2a3507709.md) | 161 | `result-track:915825c49904b4e2a35077096ddc89c436c69c689f75921e3ca61422d3dd9d90` |
| 22 | `theorem` | [ofNat_eq_rotate_ofInt_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/ofnat-eq-rotate-ofint-sub--e138c28d15b96d6e83072cac.md) | 193 | `result-track:e138c28d15b96d6e83072cacebcbf81f8557e3dc56ae3e0c897c828c6b0d5983` |
| 23 | `instance` | [instLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instle--f6d8a5fb031cfc1296e43002.md) | 204 | `declaration-track:f6d8a5fb031cfc1296e430028ac10c934923b4831340169323ccd31189472831` |
| 24 | `instance` | [instLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instlt--b8c90fc06a7ebb4b3a9d769a.md) | 205 | `declaration-track:b8c90fc06a7ebb4b3a9d769ace7ddf8f58d4f34a15d57a2465e0224f0fe37d90` |
| 25 | `instance` | [instDecidableLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instdecidablele--1c4a1dcea3744dd3c5dfb4aa.md) | 206 | `declaration-track:1c4a1dcea3744dd3c5dfb4aa7995e15db5974f85ccda5930c78f4d21cebaedce` |
| 26 | `instance` | [instDecidableLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instdecidablelt--6855eb22e1aa4490e72e8fa0.md) | 208 | `declaration-track:6855eb22e1aa4490e72e8fa02a4c17b45a2ea256ae4c4f1df5913a57f3033178` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instance--3c8bf722de276c938b32628f.md) | 211 | `declaration-track:3c8bf722de276c938b32628fe383d93313a603282fb0a1b11cf93f80cfb4e29e` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instance--ca07ebf8eac04201fb9ad441.md) | 216 | `declaration-track:ca07ebf8eac04201fb9ad44177518b6332e46ec5d1829fb9b3f1e37621032505` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instance--172ad56dc8f47132340b1350.md) | 225 | `declaration-track:172ad56dc8f47132340b1350540a9fabdf509b36204ac9ee39ea9a3dc7a0c609` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instance--e31a56f21974d02a85d0af4e.md) | 235 | `declaration-track:e31a56f21974d02a85d0af4ed776bc362f1916ccc7272b985afc940e5804bbe1` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instance--a3d84ceeddc93586d7a96e80.md) | 260 | `declaration-track:a3d84ceeddc93586d7a96e80886d9032fd4837b4d6806fbc4396dc84c09545b3` |
| 32 | `instance` | [instRxcHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instrxchassize--5a8a33096d35911dd0f6adec.md) | 262 | `declaration-track:5a8a33096d35911dd0f6adece08d0b80924380cbcbbf422e47c056379f1908b6` |
| 33 | `instance` | [instRxcLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instrxclawfulhassize--7d9452d10a0edb6924af383c.md) | 267 | `declaration-track:7d9452d10a0edb6924af383c4584b595a5db2d026d5fb5630679da1b24fb231f` |
| 34 | `instance` | [instRxcIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instrxcisalwaysfinite--0e5d7f24646cee1d4e760979.md) | 301 | `declaration-track:0e5d7f24646cee1d4e760979384ab1cf68d590186fe317aa6dba629c0d53f0df` |
| 35 | `instance` | [instRxoHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instrxohassize--8e5212b142e70c4867b6e32b.md) | 303 | `declaration-track:8e5212b142e70c4867b6e32bad99532279b32ee598af2dcafb6c4adb5ebb3b62` |
| 36 | `instance` | [instRxoLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instrxolawfulhassize--395c58239a297ee6e2bb8980.md) | 304 | `declaration-track:395c58239a297ee6e2bb89805bcf9fc7eded8805aedf3e020cf2b7acb70c598e` |
| 37 | `instance` | [instRxoIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instrxoisalwaysfinite--c265fce0d06f72766b01777f.md) | 305 | `declaration-track:c265fce0d06f72766b01777ff98850b87ba4e285006b4dabcfaeba47684d1148` |
| 38 | `instance` | [instRxiHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instrxihassize--611c5b28cfb1d1372aebbed0.md) | 307 | `declaration-track:611c5b28cfb1d1372aebbed036b983f4b78a69640e3b51b289f89543f8358606` |
| 39 | `instance` | [instRxiLawfulHasSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instrxilawfulhassize--63f25e8dae475147f6eb2141.md) | 310 | `declaration-track:63f25e8dae475147f6eb2141543941558156af96631d1c74c0462a56d02f1aa3` |
| 40 | `instance` | [instRxiIsAlwaysFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variant875060a8cfe504a7e93f24e1efd482adbfc48335c1b4918b6c732014448e7890.lean/declarations/instrxiisalwaysfinite--1651c4704355209a13fdc423.md) | 327 | `declaration-track:1651c4704355209a13fdc4233f5925b952931be9196f037a6879f1aeb38e8b08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
