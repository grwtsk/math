# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73b1e910788d9e48df805937bc73cba8df650a16",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73b1e910788d9e48df805937bc73cba8df650a16`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.FreimanHom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Fin` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ThreeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree--3800d8d9f45b283cff0adfce.md) | 76 | `declaration-track:3800d8d9f45b283cff0adfce680b71629fb0102d94d506b922bb5e541f97035b` |
| 2 | `instance` | [ThreeGPFree.instDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-instdecidable--eff2f5c30beecdc04251f00d.md) | 80 | `declaration-track:eff2f5c30beecdc04251f00d349c082c7af6a4684786b38b2790819b59a346a8` |
| 3 | `theorem` | [ThreeGPFree.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-mono--f3ec57ba90b12a84b07a038f.md) | 87 | `result-track:f3ec57ba90b12a84b07a038fcf912217fb26bc0f20424c4dcceb8095d08c1d7e` |
| 4 | `theorem` | [threeGPFree_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-empty--b359ee6ed56452895c3f2a52.md) | 91 | `result-track:b359ee6ed56452895c3f2a52ea9fc3cadefa9b6fd5a4ed55a1f33f077bf0a4fe` |
| 5 | `theorem` | [Set.Subsingleton.threeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/set-subsingleton-threegpfree--4ddaacf918f0e731f70347ae.md) | 94 | `result-track:4ddaacf918f0e731f70347ae54b0104ba4fefdfada645aaf10958b25f38d5146` |
| 6 | `theorem` | [threeGPFree_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-singleton--5cb572ec70acda89a30e42fe.md) | 98 | `result-track:5cb572ec70acda89a30e42fea7abb4eb4fe4407be4d25b779fa5a7722a70891b` |
| 7 | `theorem` | [ThreeGPFree.prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-prod--36e97c73fa45b9428ba78cd2.md) | 102 | `result-track:36e97c73fa45b9428ba78cd248feeeb7a43361634275cc7254d472720722566e` |
| 8 | `theorem` | [threeGPFree_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-pi--75dd0b5aac39c3b04124ba88.md) | 107 | `result-track:75dd0b5aac39c3b04124ba88df500b83d0b053aa3c3842203351701e4cbfbb11` |
| 9 | `lemma` | [ThreeGPFree.of_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-of-image--1a10d5b07654b1de0785f435.md) | 120 | `result-track:1a10d5b07654b1de0785f435f38677be2d19ab822bfae8bbbe44e3040fd39c4a` |
| 10 | `lemma` | [threeGPFree_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-image--e84901caddc6453678c7a7c3.md) | 129 | `result-track:e84901caddc6453678c7a7c366c17ed981f6fdb57be96c791da07994a672ebe9` |
| 11 | `lemma` | [IsMulFreimanHom.threeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/ismulfreimanhom-threegpfree--136d64ed47cb0385c4be7182.md) | 142 | `result-track:136d64ed47cb0385c4be7182abba3aede13a822fc8b21a45ddc42f10e8e9fa48` |
| 12 | `lemma` | [IsMulFreimanIso.threeGPFree_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/ismulfreimaniso-threegpfree-congr--3dd95815b50c0a0a5b3c6455.md) | 149 | `result-track:3dd95815b50c0a0a5b3c64555e92e53b1c2be8c9b5113c20d7468f8472406b7c` |
| 13 | `theorem` | [ThreeGPFree.image'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-image--332fb4bd7d185e6f22b9733f.md) | 156 | `result-track:332fb4bd7d185e6f22b9733f022182408c40b41f1de25f92b57551c23aa43471` |
| 14 | `lemma` | [ThreeGPFree.eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-eq-right--a0a2e1a30af14eff02b14b2b.md) | 167 | `result-track:a0a2e1a30af14eff02b14b2bb99fc0bfa6bf45a5093480c8748dd1baf4dde76e` |
| 15 | `lemma` | [threeGPFree_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-insert--d91d89dcb888a7e4e98a885a.md) | 173 | `result-track:d91d89dcb888a7e4e98a885a812775ed09aa11a3a28213da2749f33371eb6d48` |
| 16 | `theorem` | [ThreeGPFree.smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-smul-set--82e99b3da6be2f4a041e17a2.md) | 194 | `result-track:82e99b3da6be2f4a041e17a253e1d1d3a711dd40d5c4f871277f47c59fd0a32e` |
| 17 | `lemma` | [threeGPFree_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-smul-set--2cf6132029a017686c1ec019.md) | 198 | `result-track:2cf6132029a017686c1ec019350bb8ff500745dbd8271e71b35c5df65b49b320` |
| 18 | `theorem` | [threeGPFree_insert_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-insert-of-lt--2dd8121c9bf9e6643a159176.md) | 211 | `result-track:2dd8121c9bf9e6643a1591764e140125e6700e877f9d677c34492ef62e52cffb` |
| 19 | `lemma` | [ThreeGPFree.smul_set₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-smul-set--266f7f756c523b9c4db9e759.md) | 224 | `result-track:266f7f756c523b9c4db9e7596fb5865c2bd412b22773ebdcbbabd0e40c54a463` |
| 20 | `theorem` | [threeGPFree_smul_set₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-smul-set--679b406f5499143de2414879.md) | 228 | `result-track:679b406f5499143de24148795632bb2e56aa930cc878bbeb4508eda3597c0e77` |
| 21 | `theorem` | [threeAPFree_iff_eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threeapfree-iff-eq-right--dc05ecc9232f8116449e96f9.md) | 239 | `result-track:dc05ecc9232f8116449e96f9c4debdaf3d996ce66b445dff37cd41f16220980b` |
| 22 | `def` | [mulRothNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/mulrothnumber--1b8bc1cc85ac24a40040c24f.md) | 266 | `declaration-track:1b8bc1cc85ac24a40040c24fcb771aa5df536e68946fe22514aa2cc637e3c5f9` |
| 23 | `theorem` | [mulRothNumber_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/mulrothnumber-le--abaff7ea92b8bac04b779c29.md) | 274 | `result-track:abaff7ea92b8bac04b779c2972391e3250b744f0ff73f3f46d8f2b106bf86983` |
| 24 | `theorem` | [mulRothNumber_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/mulrothnumber-spec--4363c492ef752a5a23440074.md) | 277 | `result-track:4363c492ef752a5a23440074df3b33eb3c235a73438e9c93faffd1ccb01590f3` |
| 25 | `theorem` | [ThreeGPFree.le_mulRothNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-le-mulrothnumber--86e4ae2558aa28ac3e50dd92.md) | 285 | `result-track:86e4ae2558aa28ac3e50dd92f75666a6e1d1cbe67f5cff944928f03b665b9c30` |
| 26 | `theorem` | [ThreeGPFree.mulRothNumber_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threegpfree-mulrothnumber-eq--167dec5071526d653c859cd9.md) | 290 | `result-track:167dec5071526d653c859cd95bab348ae8f19445e4c6fede4dd8bdfda622b60e` |
| 27 | `theorem` | [mulRothNumber_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/mulrothnumber-empty--25ee5d38f1ba22a5a25c2dcd.md) | 295 | `result-track:25ee5d38f1ba22a5a25c2dcd91eb565504d8ba634509728d655e1b6c8a71e3fc` |
| 28 | `theorem` | [mulRothNumber_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/mulrothnumber-singleton--25a75bb427e3b46b66baadfd.md) | 299 | `result-track:25a75bb427e3b46b66baadfd380d2784a715a18202bb0fe1a67d36a25eb7e24f` |
| 29 | `theorem` | [mulRothNumber_union_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/mulrothnumber-union-le--cc2b037c2f9fcd262ed0a60f.md) | 305 | `result-track:cc2b037c2f9fcd262ed0a60fdabda4daeec85f378ecb358c6fef89dde3e31975` |
| 30 | `theorem` | [le_mulRothNumber_product](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/le-mulrothnumber-product--b294d5d61bbe4af2284c1912.md) | 317 | `result-track:b294d5d61bbe4af2284c19122408cec8489d7bc33a5aa2fdef6ddb5526820160` |
| 31 | `theorem` | [mulRothNumber_lt_of_forall_not_threeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/mulrothnumber-lt-of-forall-not-threegpfree--8b3c3554b8fd3ec0e7f471d2.md) | 327 | `result-track:8b3c3554b8fd3ec0e7f471d2b4e9fbb2229b74f37c040125f7b48313187bcab9` |
| 32 | `lemma` | [IsMulFreimanHom.mulRothNumber_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/ismulfreimanhom-mulrothnumber-mono--c03e338cc896864823e6a714.md) | 343 | `result-track:c03e338cc896864823e6a714f24f6d2abd842da61e1c355a8a614f4d64d10269` |
| 33 | `lemma` | [IsMulFreimanIso.mulRothNumber_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/ismulfreimaniso-mulrothnumber-congr--51bb10082293478aa7ebec08.md) | 357 | `result-track:51bb10082293478aa7ebec08c62e03e5c44441568c5bbc1f72f35adc90693b25` |
| 34 | `theorem` | [mulRothNumber_map_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/mulrothnumber-map-mul-left--bd6528b5309899316d0d7b5b.md) | 377 | `result-track:bd6528b5309899316d0d7b5bd6092b10293f4f7c379eda583ef82a223cc82b58` |
| 35 | `theorem` | [mulRothNumber_map_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/mulrothnumber-map-mul-right--0243a931d6a658b9f255228b.md) | 392 | `result-track:0243a931d6a658b9f255228b7691124e6be3acfdef82cc8e25630af48feff908` |
| 36 | `def` | [rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/rothnumbernat--be016b607ece085c576492e1.md) | 411 | `declaration-track:be016b607ece085c576492e1046938b2422b2512b316c7d4cea1ee9f3ca4a94a` |
| 37 | `theorem` | [rothNumberNat_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/rothnumbernat-def--d3eba0061e2941edac31b3fe.md) | 414 | `result-track:d3eba0061e2941edac31b3fe42acfd5fa332e1f0f34e1ed49cc46999042cd7bd` |
| 38 | `theorem` | [rothNumberNat_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/rothnumbernat-le--62f96072cebef8a6a601f843.md) | 417 | `result-track:62f96072cebef8a6a601f843b70fef8d50ec3879d94a0d92f9685d1c29b61e73` |
| 39 | `theorem` | [rothNumberNat_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/rothnumbernat-spec--0596d3e11bbcca297c19649a.md) | 420 | `result-track:0596d3e11bbcca297c19649a81c9632e5a7ecb653e98899dc109321a30055ff9` |
| 40 | `theorem` | [ThreeAPFree.le_rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/threeapfree-le-rothnumbernat--92f12662fff208ef256e79ee.md) | 426 | `result-track:92f12662fff208ef256e79eefcd3b0e2e540cb0379500f14b4dc27b84deba8eb` |
| 41 | `theorem` | [rothNumberNat_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/rothnumbernat-add-le--5bc42a6803ff1b47eccdf076.md) | 433 | `result-track:5bc42a6803ff1b47eccdf076c7185e9c116817a27b2f5692dd67ecab31438cb6` |
| 42 | `theorem` | [rothNumberNat_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/rothnumbernat-zero--0938ff1da0693ecc09a032c2.md) | 440 | `result-track:0938ff1da0693ecc09a032c27b623b0647ecd3d323849202a605370e003a051d` |
| 43 | `theorem` | [addRothNumber_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/addrothnumber-ico--7bc821c048de60b38af2ef17.md) | 443 | `result-track:7bc821c048de60b38af2ef17a0398c56d8268d7b13a7a2353e21f29943375de4` |
| 44 | `lemma` | [Fin.addRothNumber_eq_rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/fin-addrothnumber-eq-rothnumbernat--ab9562f7d9ea0e90e541da36.md) | 451 | `result-track:ab9562f7d9ea0e90e541da3674519ae756748ba844b74ede3825b893586da3d1` |
| 45 | `lemma` | [Fin.addRothNumber_le_rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3999832e574682e02d2fbd0bded92ab7cb046ebf395d53e81c4b47ee94ca691e.lean/declarations/fin-addrothnumber-le-rothnumbernat--05a0f46a4a418b648cdb8b4f.md) | 455 | `result-track:05a0f46a4a418b648cdb8b4fbac6ec4f2c4c4071f1b4c5a5d1ff3841f23abf39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
