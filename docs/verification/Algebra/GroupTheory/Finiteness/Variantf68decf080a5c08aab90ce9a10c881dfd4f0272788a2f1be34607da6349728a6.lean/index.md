# Verification target: GRWTSK.Algebra.GroupTheory.Finiteness.Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68060eb29f204c69ac67aa416750394a45f893a0",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68060eb29f204c69ac67aa416750394a45f893a0`.

Source path: `GRWTSK/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submonoid.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/submonoid-fg--b5e57a7614fb8a206388d29d.md) | 49 | `declaration-track:b5e57a7614fb8a206388d29d0e95c1943dce2c5a1e2c1e2efbb452b5e437a45e` |
| 2 | `theorem` | [Submonoid.fg_iff](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/submonoid-fg-iff--20fd5cfcff986b12dad59da4.md) | 59 | `result-track:20fd5cfcff986b12dad59da4cacf0463fafdd98bb36883280b667bf0b27f5ff5` |
| 3 | `lemma` | [Submonoid.FG.exists_minimal_closure_eq](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/submonoid-fg-exists-minimal-closure-eq--e37004a2603b151d8f71b3f4.md) | 66 | `result-track:e37004a2603b151d8f71b3f40043dbbce27c9e775c004ad8e9ad54267481b2e6` |
| 4 | `theorem` | [Submonoid.fg_iff_add_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/submonoid-fg-iff-add-fg--d62905c0c18fe9c635955246.md) | 69 | `result-track:d62905c0c18fe9c635955246617d4fe687317de0d6d67c1ac6e1a589bb034f9a` |
| 5 | `theorem` | [AddSubmonoid.fg_iff_mul_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/addsubmonoid-fg-iff-mul-fg--d896775f41d06a5ce0a70a1c.md) | 79 | `result-track:d896775f41d06a5ce0a70a1c86f64d823b5821e0a7884cb0eaa4b6cb37c37472` |
| 6 | `lemma` | [Submonoid.FG.prod](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/submonoid-fg-prod--509b07358a1946b6fb70552f.md) | 85 | `result-track:509b07358a1946b6fb70552f932d1e15ceb6fa88cfc63cde4b6f2628a4069f21` |
| 7 | `class` | [AddMonoid.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/addmonoid-fg--b36673944274522f2d996de8.md) | 100 | `declaration-track:b36673944274522f2d996de808bc809de2590bf3d96748f24df8c834891d548b` |
| 8 | `class` | [Monoid.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-fg--58e7975ca3fe7a7bca526b18.md) | 106 | `declaration-track:58e7975ca3fe7a7bca526b186e82ff64f9d20951e647d3e03d92cff32d89b7ec` |
| 9 | `theorem` | [Monoid.fg_def](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-fg-def--d446aa338a01fac6f9f5ee3e.md) | 110 | `result-track:d446aa338a01fac6f9f5ee3e57e9e71a7ebc9c49b3314a6cada7c1197078791e` |
| 10 | `theorem` | [Monoid.fg_iff](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-fg-iff--95d86a13a3db7ce69025a077.md) | 116 | `result-track:95d86a13a3db7ce69025a077af8c2051bc8b7a35c641af1cf6d4626ddc358eae` |
| 11 | `lemma` | [Submonoid.exists_minimal_closure_eq_top](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/submonoid-exists-minimal-closure-eq-top--d828649eaa75a0c55e26bd58.md) | 123 | `result-track:d828649eaa75a0c55e26bd587ad2ae936b0288a977f68a62dec66bca91552906` |
| 12 | `theorem` | [Monoid.fg_iff_add_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-fg-iff-add-fg--1ea0689618186659e85127f3.md) | 127 | `result-track:1ea0689618186659e85127f39a47e17cef906ac6df8c5833872da664d33f6341` |
| 13 | `theorem` | [AddMonoid.fg_iff_mul_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/addmonoid-fg-iff-mul-fg--57baa6f3f4a9413e8f3ce492.md) | 131 | `result-track:57baa6f3f4a9413e8f3ce4923daedaa5b02cab548d89ac694a476d548f16a8cd` |
| 14 | `instance` | [AddMonoid.fg_of_monoid_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/addmonoid-fg-of-monoid-fg--632d1e289923ef340b29bde1.md) | 136 | `declaration-track:632d1e289923ef340b29bde1eba1e7f667e9fa77b7bad817da5e8e5472b530a8` |
| 15 | `instance` | [Monoid.fg_of_addMonoid_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-fg-of-addmonoid-fg--f1c758a7251d5e4269ea752a.md) | 139 | `declaration-track:f1c758a7251d5e4269ea752a712a3a8136ee0ee7c49c515553c2cb369c4e54e1` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/instance--c1e93baaa4ce0337a1ceecfc.md) | 144 | `declaration-track:c1e93baaa4ce0337a1ceecfca19911189ea38745a85eb83ad51cb8d578e31b5d` |
| 17 | `theorem` | [Submonoid.FG.map](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/submonoid-fg-map--021ce560563d827d0e9c1e58.md) | 151 | `result-track:021ce560563d827d0e9c1e58a0dc144b5a930682f460f0f1eefc038a720c21ec` |
| 18 | `theorem` | [Submonoid.FG.map_injective](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/submonoid-fg-map-injective--a5162e772ec96a14ce5f6ce9.md) | 158 | `result-track:a5162e772ec96a14ce5f6ce951d88745779f101ffa08d4f689b56e767c2a9606` |
| 19 | `theorem` | [Monoid.fg_iff_submonoid_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-fg-iff-submonoid-fg--95c4ba922fdb876f5429cb64.md) | 170 | `result-track:95c4ba922fdb876f5429cb6418d229cf57e99ed9827af17cc65a0baae2fdbbec` |
| 20 | `theorem` | [Monoid.fg_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-fg-of-surjective--d0e2d4ca80bad7dcd07643ff.md) | 175 | `result-track:d0e2d4ca80bad7dcd07643ffc73c187cd1a7a37b58dadb52c0f6480b49dc5981` |
| 21 | `instance` | [Monoid.fg_range](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-fg-range--7813b0e70bd76ceadb71fa18.md) | 184 | `declaration-track:7813b0e70bd76ceadb71fa18473d05f782a2ef812437cfa5c4e6f18640ae40cb` |
| 22 | `theorem` | [Submonoid.powers_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/submonoid-powers-fg--987164b03f5cea38de3211ef.md) | 189 | `result-track:987164b03f5cea38de3211ef81ec998f95c1c5ce86eb48f702a80e77aeff3264` |
| 23 | `instance` | [Monoid.powers_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-powers-fg--e2d77e659ee31415e910f8c5.md) | 193 | `declaration-track:e2d77e659ee31415e910f8c5dec2ef80346b7fe5201eab29f98db610dcd722d6` |
| 24 | `instance` | [Monoid.closure_finset_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-closure-finset-fg--217f212e1829a62fbd2846f7.md) | 197 | `declaration-track:217f212e1829a62fbd2846f706d2ece2224a3a464165dbfbdc30759dcfebf6c3` |
| 25 | `instance` | [Monoid.closure_finite_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/monoid-closure-finite-fg--dc4ee628be7142a6f18193e7.md) | 202 | `declaration-track:dc4ee628be7142a6f18193e72e8caeb28911e809390150598edeb3cfc951772d` |
| 26 | `def` | [Subgroup.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/subgroup-fg--c781c47694b7601296ff0aad.md) | 215 | `declaration-track:c781c47694b7601296ff0aad111b2016fb055c4f8f7f0b650dfaf3ceea29894a` |
| 27 | `theorem` | [Subgroup.fg_iff](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/subgroup-fg-iff--37719ab9e95bddb149632660.md) | 225 | `result-track:37719ab9e95bddb149632660e631a1957510a09c927bf1228542ac7eb384e0ff` |
| 28 | `theorem` | [Subgroup.fg_iff_submonoid_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/subgroup-fg-iff-submonoid-fg--dd791aa105f0a1209c52f52b.md) | 233 | `result-track:dd791aa105f0a1209c52f52b7ede8fea492ffd8c794c48cb307bb88a1bac2dd7` |
| 29 | `theorem` | [Subgroup.fg_iff_add_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/subgroup-fg-iff-add-fg--55f28328dea58dcbcea443e7.md) | 246 | `result-track:55f28328dea58dcbcea443e7f31eddf76aedecf034b56f906c799184a172b2fe` |
| 30 | `theorem` | [AddSubgroup.fg_iff_mul_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/addsubgroup-fg-iff-mul-fg--7ad5174133879a64ce86aa67.md) | 250 | `result-track:7ad5174133879a64ce86aa67c364e93a22920a1bd545a788f382cbde6b3da490` |
| 31 | `class` | [Group.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-fg--b97d85fa88afabd0a6bb5873.md) | 261 | `declaration-track:b97d85fa88afabd0a6bb58733ec44201d8a252bfda96c8c959c177f8a29dc2cc` |
| 32 | `class` | [AddGroup.FG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/addgroup-fg--158dc77ddfe2b34bda34217c.md) | 266 | `declaration-track:158dc77ddfe2b34bda34217cedeaa05f8db9f7ddf44298e0cfb8a84e3b463a5d` |
| 33 | `theorem` | [Group.fg_def](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-fg-def--aa51210824d99afc6c958825.md) | 273 | `result-track:aa51210824d99afc6c9588250d791e8853c65d61f7f8e5c256592de67b507843` |
| 34 | `theorem` | [AddGroup.fg_def](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/addgroup-fg-def--2846a8838bf8aceed49dace5.md) | 276 | `result-track:2846a8838bf8aceed49dace5a18ae5f71271d711f742f0df1fb3e29842e3402f` |
| 35 | `theorem` | [Group.fg_iff](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-fg-iff--9be9b14b78deb60f472fd6e4.md) | 282 | `result-track:9be9b14b78deb60f472fd6e4630d84f4625fa5567c1928efd7f2348e28caeab2` |
| 36 | `theorem` | [Group.fg_iff'](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-fg-iff--2fe06a2e8249b72d477a97a2.md) | 286 | `result-track:2fe06a2e8249b72d477a97a2d01410f0998da5af55999d632902843f26440521` |
| 37 | `theorem` | [Group.fg_iff_monoid_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-fg-iff-monoid-fg--c9d17d30e5ad3ce5fc2e4902.md) | 293 | `result-track:c9d17d30e5ad3ce5fc2e4902d40d7ba3dd5db707725b6363ef81063f7677cd77` |
| 38 | `theorem` | [Group.fg_iff_subgroup_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-fg-iff-subgroup-fg--a6173a076088e6733e9eab02.md) | 298 | `result-track:a6173a076088e6733e9eab02691d1222666e7bd51db138ba83566ff6497d9cf8` |
| 39 | `theorem` | [GroupFG.iff_add_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/groupfg-iff-add-fg--b71610674c19f70dd3374165.md) | 302 | `result-track:b71610674c19f70dd33741655cbeeae63005907bc481b8d20059580035c4da1a` |
| 40 | `theorem` | [AddGroup.fg_iff_mul_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/addgroup-fg-iff-mul-fg--05446c4ab949f960fd2166c2.md) | 305 | `result-track:05446c4ab949f960fd2166c2997bc04f5c085f15388df06ab21265e44c3e5f34` |
| 41 | `instance` | [AddGroup.fg_of_group_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/addgroup-fg-of-group-fg--c0da70f2055f177fcf3504be.md) | 309 | `declaration-track:c0da70f2055f177fcf3504be6b3e1dd0e6d93b32760fccb2dd8bcc54f9b66920` |
| 42 | `instance` | [Group.fg_of_mul_group_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-fg-of-mul-group-fg--8be282303292beb31bc1db08.md) | 312 | `declaration-track:8be282303292beb31bc1db08e1485affe8394005db926bdbf5819314740737e8` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/instance--f3ecbca9ca8e0d0df2ae2786.md) | 316 | `declaration-track:f3ecbca9ca8e0d0df2ae27865cf645128d1f284a5da9449e325a7046c5e015fe` |
| 44 | `theorem` | [Group.fg_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-fg-of-surjective--59592695e7f7effa1a858790.md) | 321 | `result-track:59592695e7f7effa1a8587901fbc84cfb4c930c261900f7a0bf866dcdacbdc6f` |
| 45 | `instance` | [Group.fg_range](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-fg-range--d192c0e64d38f99535716f39.md) | 327 | `declaration-track:d192c0e64d38f99535716f39568036cf1abe3a16599c617a9f09fa4920ca37bb` |
| 46 | `instance` | [Group.closure_finset_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-closure-finset-fg--06c2c0ca83cc433b967add92.md) | 331 | `declaration-track:06c2c0ca83cc433b967add927b83ed01ebc11b702603dc706e7f2aa04f11a19f` |
| 47 | `instance` | [Group.closure_finite_fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/group-closure-finite-fg--573d296ea037ee1c6df5b32f.md) | 336 | `declaration-track:573d296ea037ee1c6df5b32f69662c3277bd8e74811ef39c3484d92892e7fcda` |
| 48 | `instance` | [QuotientGroup.fg](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/quotientgroup-fg--45afd8edf18feb6a514bd9fe.md) | 345 | `declaration-track:45afd8edf18feb6a514bd9fe6426d93258bb58dafa5238563d2e53d03d0d70c3` |
| 49 | `instance` | [instMonoidFG](../../../../../mathematics/Algebra/GroupTheory/Finiteness/Variantf68decf080a5c08aab90ce9a10c881dfd4f0272788a2f1be34607da6349728a6.lean/declarations/instmonoidfg--cb5a4d917c9751861cb32a9f.md) | 356 | `declaration-track:cb5a4d917c9751861cb32a9fa29adc9b7edff971e127460cb820ae35c89a7512` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
