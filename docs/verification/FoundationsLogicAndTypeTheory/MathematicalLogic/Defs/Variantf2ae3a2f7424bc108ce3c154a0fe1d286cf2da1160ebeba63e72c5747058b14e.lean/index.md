# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Defs.Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b15f12a88bffdbe741408ccfc942e389f962eeb",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b15f12a88bffdbe741408ccfc942e389f962eeb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.FreimanHom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Fin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ThreeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree--d0e772c06f744c00bcef3aba.md) | 68 | `declaration-track:d0e772c06f744c00bcef3aba3c5ff7b9b227ed722e04e4417d2786d27285027b` |
| 2 | `instance` | [ThreeGPFree.instDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-instdecidable--a8937662095dfbd390f4836f.md) | 72 | `declaration-track:a8937662095dfbd390f4836f9bbedd631288d13d2e442e4e9276e43202f37743` |
| 3 | `theorem` | [ThreeGPFree.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-mono--2279dc77b88d6f913bb60030.md) | 79 | `result-track:2279dc77b88d6f913bb60030ef843a3e3e8ceef1a29e0e03640b0766620109d8` |
| 4 | `theorem` | [threeGPFree_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-empty--3a769d947e5da2c91c7fab47.md) | 83 | `result-track:3a769d947e5da2c91c7fab47297e8a4c8e48258a1871af1ec079d83af5fd5519` |
| 5 | `theorem` | [Set.Subsingleton.threeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/set-subsingleton-threegpfree--c9a792c1fe9e33408aa2529a.md) | 86 | `result-track:c9a792c1fe9e33408aa2529a17c67fc39b041fefcecb68a7f12d8ef186db8c5f` |
| 6 | `theorem` | [threeGPFree_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-singleton--442037da10a3e919f960691e.md) | 90 | `result-track:442037da10a3e919f960691ed31887cf4db6d3690ae6a16f998aec2f931520ab` |
| 7 | `theorem` | [ThreeGPFree.prod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-prod--f214099869dfd763b952ad06.md) | 94 | `result-track:f214099869dfd763b952ad06bca3f8720a5896951649db7a7de128c9ae0dfbb3` |
| 8 | `theorem` | [threeGPFree_pi](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-pi--1a3f1505791a3b91b52d5322.md) | 99 | `result-track:1a3f1505791a3b91b52d5322c3e767dd1e7544611106e8aae915be9e15e96877` |
| 9 | `lemma` | [ThreeGPFree.of_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-of-image--f091a52c11d2efef5a7cce9a.md) | 112 | `result-track:f091a52c11d2efef5a7cce9a48b7722956540a8298794da27630b76ced283497` |
| 10 | `lemma` | [threeGPFree_image](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-image--6593b16151a69bd075dc46a9.md) | 121 | `result-track:6593b16151a69bd075dc46a929f6871f6a575c8959c938303ea580b3932175d0` |
| 11 | `lemma` | [IsMulFreimanHom.threeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/ismulfreimanhom-threegpfree--fd12c2d10215449e98c7817c.md) | 134 | `result-track:fd12c2d10215449e98c7817cf1642376d6c0856fb61bec765869a21a6161897d` |
| 12 | `lemma` | [IsMulFreimanIso.threeGPFree_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/ismulfreimaniso-threegpfree-congr--27ee0188b969c81142cfd2c9.md) | 141 | `result-track:27ee0188b969c81142cfd2c9807423ca593f32819eddc0718de5ff9699c0096d` |
| 13 | `theorem` | [ThreeGPFree.image'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-image--f87d1c296b1427140b7b5c14.md) | 148 | `result-track:f87d1c296b1427140b7b5c14b0b8ccc1db37090cb2fa46e401484bcea975f9ff` |
| 14 | `lemma` | [ThreeGPFree.eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-eq-right--d9a77b8ee06af27d2e5ce1dc.md) | 159 | `result-track:d9a77b8ee06af27d2e5ce1dcd7a57c72dcab951ce09a992fc04fdcfeee01cc99` |
| 15 | `lemma` | [threeGPFree_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-insert--1b1cc583f16c83350402d89b.md) | 165 | `result-track:1b1cc583f16c83350402d89bfb4c3f458f8bfb9509c37ae69112ed53297cac44` |
| 16 | `theorem` | [ThreeGPFree.smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-smul-set--a3aa3f6059f3676c5ab72b45.md) | 186 | `result-track:a3aa3f6059f3676c5ab72b452e300bbac0fde77b3601d4451b163b04b6a1149c` |
| 17 | `lemma` | [threeGPFree_smul_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-smul-set--78da62c7fab682ed78a8ab4d.md) | 190 | `result-track:78da62c7fab682ed78a8ab4d619c18e80a522042de9497a55912052da4400a6a` |
| 18 | `theorem` | [threeGPFree_insert_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-insert-of-lt--44bc04705304b7a244df237c.md) | 203 | `result-track:44bc04705304b7a244df237cf9f5faf416b51713297f1e4bb3d02f15d24d7ad1` |
| 19 | `lemma` | [ThreeGPFree.smul_set₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-smul-set--5b2d64101a74f1768eec32a1.md) | 216 | `result-track:5b2d64101a74f1768eec32a19511eda6c6974903f1fcdcbdfb3db3909b98a993` |
| 20 | `theorem` | [threeGPFree_smul_set₀](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-smul-set--03e728c4ce0b2cedfbd2c6cf.md) | 220 | `result-track:03e728c4ce0b2cedfbd2c6cf9e82e974212ccf936115693fb791cea9b40d4f91` |
| 21 | `theorem` | [threeAPFree_iff_eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threeapfree-iff-eq-right--52c56b5a6652404c52173514.md) | 231 | `result-track:52c56b5a6652404c52173514768a6d2577119f0ab416dfd9ebb6f00cd99e1424` |
| 22 | `def` | [mulRothNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/mulrothnumber--5120dd1ea33e9cab6eb2a9d3.md) | 258 | `declaration-track:5120dd1ea33e9cab6eb2a9d3dbeafd543fd1b1778de5b50699a5001c80b221bc` |
| 23 | `theorem` | [mulRothNumber_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/mulrothnumber-le--36c947cf666bf5c4674f950f.md) | 266 | `result-track:36c947cf666bf5c4674f950f9e7cb08796310a73980a8b5fcaaef9625aaec39e` |
| 24 | `theorem` | [mulRothNumber_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/mulrothnumber-spec--2c0641d81bb20da65e4752ce.md) | 269 | `result-track:2c0641d81bb20da65e4752cef68f2141be2e49f6f13a77ab2d19f06af32e3def` |
| 25 | `theorem` | [ThreeGPFree.le_mulRothNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-le-mulrothnumber--c7d936bdc56ce1557558a7bd.md) | 277 | `result-track:c7d936bdc56ce1557558a7bdb1e0a1c3aecbbc18933ddb34a086455b1f5f5aeb` |
| 26 | `theorem` | [ThreeGPFree.mulRothNumber_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threegpfree-mulrothnumber-eq--9f09b05d763c72e8d9c21b09.md) | 282 | `result-track:9f09b05d763c72e8d9c21b092704f53d85e9486cdf45c30b51a427999d59c175` |
| 27 | `theorem` | [mulRothNumber_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/mulrothnumber-empty--3ce1b72e905fcec6f4041c29.md) | 287 | `result-track:3ce1b72e905fcec6f4041c29517423cf670f6f4b5347b60e3cdefdff0ecffead` |
| 28 | `theorem` | [mulRothNumber_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/mulrothnumber-singleton--d2e5cefc6c486669ab331af3.md) | 291 | `result-track:d2e5cefc6c486669ab331af3424895e3ebb15c12482f940bb4a480a797653366` |
| 29 | `theorem` | [mulRothNumber_union_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/mulrothnumber-union-le--a3e3383ff0473a6834da8a6b.md) | 297 | `result-track:a3e3383ff0473a6834da8a6b19745e4d9aa3d404d363550e901a3082efbf0bae` |
| 30 | `theorem` | [le_mulRothNumber_product](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/le-mulrothnumber-product--47821759249caf8f565e6ddf.md) | 309 | `result-track:47821759249caf8f565e6ddff486435e3f0aa374bbaea24613404d7457eff616` |
| 31 | `theorem` | [mulRothNumber_lt_of_forall_not_threeGPFree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/mulrothnumber-lt-of-forall-not-threegpfree--25ebd00fe0507c9bd930f5a3.md) | 319 | `result-track:25ebd00fe0507c9bd930f5a3590e2eb8b132e85e60438164b7af4506a227ecd0` |
| 32 | `lemma` | [IsMulFreimanHom.mulRothNumber_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/ismulfreimanhom-mulrothnumber-mono--df9b00af2dd77e0276fe0227.md) | 335 | `result-track:df9b00af2dd77e0276fe02274236cfe1c4b58ff2adb23b269b13257983633b12` |
| 33 | `lemma` | [IsMulFreimanIso.mulRothNumber_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/ismulfreimaniso-mulrothnumber-congr--9a99f16101c371b302ebf3c9.md) | 349 | `result-track:9a99f16101c371b302ebf3c9d308381c4a7e0f5c5eb23009fc7ca0ceb146a52f` |
| 34 | `theorem` | [mulRothNumber_map_mul_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/mulrothnumber-map-mul-left--325741e20a88ca8ff88e165a.md) | 369 | `result-track:325741e20a88ca8ff88e165a4b2eff767614bfceea9efe9f1c3f6ad2b5470f3d` |
| 35 | `theorem` | [mulRothNumber_map_mul_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/mulrothnumber-map-mul-right--2904038c607923bfd368ae1e.md) | 384 | `result-track:2904038c607923bfd368ae1e62af47f9b1888feb84fffe34101dac4999f8d992` |
| 36 | `def` | [rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/rothnumbernat--599f430a867172218bf17d06.md) | 403 | `declaration-track:599f430a867172218bf17d068b320492dcb0ca1a4b386f61c056b0944060aa36` |
| 37 | `theorem` | [rothNumberNat_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/rothnumbernat-def--70869d3c1708c79a6bd7298f.md) | 406 | `result-track:70869d3c1708c79a6bd7298f0883ad05eaa5538acb48cba7b01016a39e55fe72` |
| 38 | `theorem` | [rothNumberNat_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/rothnumbernat-le--c5f63d6e4d1dce2a15e9ae2b.md) | 409 | `result-track:c5f63d6e4d1dce2a15e9ae2b293e7dc61d9e4f4aff68c73a83f929f8cd4ebc79` |
| 39 | `theorem` | [rothNumberNat_spec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/rothnumbernat-spec--a9915112c9649f339454728d.md) | 412 | `result-track:a9915112c9649f339454728d91821df891840d1dd80ea670b5d6b9d81d1328d9` |
| 40 | `theorem` | [ThreeAPFree.le_rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/threeapfree-le-rothnumbernat--8652b8266c15da3c008c7abb.md) | 418 | `result-track:8652b8266c15da3c008c7abb16b23a5150d280a83ab42dd57051fd76e59cd904` |
| 41 | `theorem` | [rothNumberNat_add_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/rothnumbernat-add-le--31301d020498e9626a5ad2ac.md) | 425 | `result-track:31301d020498e9626a5ad2ac6aa721e91f056acb659f326ee472b81317294120` |
| 42 | `theorem` | [rothNumberNat_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/rothnumbernat-zero--c079dbf97970842d1cd457bd.md) | 432 | `result-track:c079dbf97970842d1cd457bd2300ff3b9912906d478d1fd8ade422ad832040d5` |
| 43 | `theorem` | [addRothNumber_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/addrothnumber-ico--fcd1bf32f9bdf028166b223a.md) | 435 | `result-track:fcd1bf32f9bdf028166b223aa096ffc7a3809f3bc69fb15a7a8e9afbefde987a` |
| 44 | `lemma` | [Fin.addRothNumber_eq_rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/fin-addrothnumber-eq-rothnumbernat--03b7ed4287107bc35a2843cb.md) | 443 | `result-track:03b7ed4287107bc35a2843cb7fdaf6e439a4afcf970ae0a8fa067a121a3d59c4` |
| 45 | `lemma` | [Fin.addRothNumber_le_rothNumberNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantf2ae3a2f7424bc108ce3c154a0fe1d286cf2da1160ebeba63e72c5747058b14e.lean/declarations/fin-addrothnumber-le-rothnumbernat--8018e6218b04b7f025f8ed76.md) | 447 | `result-track:8018e6218b04b7f025f8ed76e60fac04f6ce8f36cc32356eccd5a36d0513c5b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
