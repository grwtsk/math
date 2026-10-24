# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Extension.Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17d3d8ce10e3e901cd41cd8a423020b8c63c5a08",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17d3d8ce10e3e901cd41cd8a423020b8c63c5a08`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Lifts](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/lifts--bae16284dcb27cc44702c2b1.md) | 39 | `declaration-track:bae16284dcb27cc44702c2b145d7bcf2dc9d255c3ddc189cd26ffa0730d1131a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/instance--46575a0afe9aaa996f91a5ad.md) | 49 | `declaration-track:46575a0afe9aaa996f91a5ada60889b13b0a78d60a34aa33273506733ccadbad` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/instance--bc9633b636b7d4629b7936f4.md) | 62 | `declaration-track:bc9633b636b7d4629b7936f4778e7835c64919a8947e1c63170bf9dac74f2ebf` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/instance--deb439cb6fe84ff7e9e7bc70.md) | 69 | `declaration-track:deb439cb6fe84ff7e9e7bc70f47e33bfa77445617d1c80290acb93f0d93b884c` |
| 5 | `theorem` | [le_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/le-iff--bd91b34b1ce9e7fa282cad0c.md) | 74 | `result-track:bd91b34b1ce9e7fa282cad0cfcf2dbbb98c75ec864f9562bfea87dd8c0af814b` |
| 6 | `theorem` | [eq_iff_le_carrier_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/eq-iff-le-carrier-eq--ccea6127355c3651e7657d3d.md) | 78 | `result-track:ccea6127355c3651e7657d3d3a78d2df5609b70888273c48196d0f75faaaf476` |
| 7 | `theorem` | [eq_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/eq-iff--e0144c67bc9d4ab7dfb0c179.md) | 81 | `result-track:e0144c67bc9d4ab7dfb0c179c8ca7874ac29a3545d9ee66b04a7745895c05600` |
| 8 | `theorem` | [lt_iff_le_carrier_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/lt-iff-le-carrier-ne--4ee5db3a19c4986b4f566c5a.md) | 86 | `result-track:4ee5db3a19c4986b4f566c5ae6cbde6ddeef3c83845ed9e23d5f107e41a34eb2` |
| 9 | `theorem` | [lt_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/lt-iff--31b9ab3ad043e38d9f4a6d44.md) | 89 | `result-track:31b9ab3ad043e38d9f4a6d44c79a682edcf9a06be76236e6440078e5a26ab814` |
| 10 | `theorem` | [le_of_carrier_le_iSup](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/le-of-carrier-le-isup--f611171d7f245656429a1823.md) | 94 | `result-track:f611171d7f245656429a1823e36e00f7c56258ac5960defead96ea79680a06ce` |
| 11 | `def` | [IsExtendible](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/isextendible--d2f4c24326b35122bc9fd21f.md) | 108 | `declaration-track:d2f4c24326b35122bc9fd21f22605269134af7c4d2470d4ffe2ad1bbd72c51cf` |
| 12 | `def` | [union](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/union--e939e3e6b41434fbcaf5457b.md) | 115 | `declaration-track:e939e3e6b41434fbcaf5457b97339aa6bcb1de4feec38edefc7280cdd0d24afd` |
| 13 | `theorem` | [le_union](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/le-union--184c43906925475e18ade391.md) | 127 | `result-track:184c43906925475e18ade391aad5c24ac41bb8c01eed7b3d153ae9690e3a11f4` |
| 14 | `theorem` | [carrier_union](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/carrier-union--6f8d7b77414b5e5bfdd55152.md) | 135 | `result-track:6f8d7b77414b5e5bfdd551525fe3ff74970e829a6cc80371ff458697f5aaf2cb` |
| 15 | `theorem` | [exists_upper_bound](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-upper-bound--79614583c68b9de094dd70b0.md) | 140 | `result-track:79614583c68b9de094dd70b059507bd51253d108612e6adb9c9b2137947fe35f` |
| 16 | `theorem` | [union_isExtendible](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/union-isextendible--dc3d63906f115de7934d46f4.md) | 143 | `result-track:dc3d63906f115de7934d46f48db79d9bf1e1c956aeca27452bca83e78329ff81` |
| 17 | `theorem` | [nonempty_algHom_of_exist_lifts_finset](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/nonempty-alghom-of-exist-lifts-finset--36ca1303f2a674a5d59cff16.md) | 180 | `result-track:36ca1303f2a674a5d59cff16ea2512f71c1ad518a0a21c583e2986a5759fb633` |
| 18 | `theorem` | [exists_lift_of_splits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-lift-of-splits--fb3a81c1679371f15f008659.md) | 211 | `result-track:fb3a81c1679371f15f008659b22258618f4a334e04733b704dbbdf81e64c3d65` |
| 19 | `theorem` | [exists_lift_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-lift-of-splits--f6ecc61f4672321966f59a50.md) | 228 | `result-track:f6ecc61f4672321966f59a50c696979c5d6cf71db5757edef82f9811bf28b0af` |
| 20 | `theorem` | [exists_algHom_adjoin_of_splits''](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-alghom-adjoin-of-splits--04fff13a0b8e669ddbff0bda.md) | 237 | `result-track:04fff13a0b8e669ddbff0bdafed6839aaf76a386e0d8a191aeea03e8e6663d85` |
| 21 | `theorem` | [exists_algHom_adjoin_of_splits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-alghom-adjoin-of-splits--5ad8d19c094ebaa4c1963056.md) | 256 | `result-track:5ad8d19c094ebaa4c19630561c0c40f2ce0b359e4dfe3fc2f12275f7f88d1bfc` |
| 22 | `theorem` | [exists_algHom_of_adjoin_splits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-alghom-of-adjoin-splits--bbe4ed4e518b728d1d151018.md) | 280 | `result-track:bbe4ed4e518b728d1d151018237674bdeb4f14b7c2f1162eb77636aa899583d8` |
| 23 | `theorem` | [exists_algHom_of_splits'](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-alghom-of-splits--cf8ccf355befad3c1fcea23d.md) | 285 | `result-track:cf8ccf355befad3c1fcea23d3848f2b0c6a61361375f787d7008bfac4033549d` |
| 24 | `theorem` | [exists_algHom_adjoin_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-alghom-adjoin-of-splits--1580b04c9fe69228bea5fd38.md) | 298 | `result-track:1580b04c9fe69228bea5fd38cdac95ccef12c0953c1f8b0cee08a03897bdfa3e` |
| 25 | `theorem` | [nonempty_algHom_adjoin_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/nonempty-alghom-adjoin-of-splits--817c741556ac0b2551124170.md) | 306 | `result-track:817c741556ac0b2551124170c6bf96e6eed62adc37fc56809f216bb6fdb8d040` |
| 26 | `theorem` | [exists_algHom_of_adjoin_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-alghom-of-adjoin-splits--b38f47527d772be1f527fc78.md) | 312 | `result-track:b38f47527d772be1f527fc78c2f2274fbe1b6673e220beae8624407d7b275aa5` |
| 27 | `theorem` | [nonempty_algHom_of_adjoin_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/nonempty-alghom-of-adjoin-splits--50c0ccfe5031665e5985c292.md) | 317 | `result-track:50c0ccfe5031665e5985c2925e6777e2612bd67875f78ff0b408e1f7aeb9d9dc` |
| 28 | `theorem` | [exists_algHom_adjoin_of_splits_of_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-alghom-adjoin-of-splits-of-aeval--7ea7d1a32791913bce530839.md) | 323 | `result-track:7ea7d1a32791913bce530839e6f42131cd292c380ece206c7bf1d477e5e52ef6` |
| 29 | `theorem` | [exists_algHom_of_adjoin_splits_of_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-alghom-of-adjoin-splits-of-aeval--a464eac58e20b3d84267ee8e.md) | 333 | `result-track:a464eac58e20b3d84267ee8e3b24a004f98a6cd5bf73ac507719c58c56666cad` |
| 30 | `theorem` | [exists_algHom_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-alghom-of-splits--a57aad65b43bf1edd4851db5.md) | 345 | `result-track:a57aad65b43bf1edd4851db5ae48a356b74cf0f80983f7d909695e692ecfb547` |
| 31 | `theorem` | [nonempty_algHom_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/nonempty-alghom-of-splits--5b6d984a90ca9a14d9b10385.md) | 348 | `result-track:5b6d984a90ca9a14d9b103851df28b224e00ef12003ec7ddfc914fbd90a1d8be` |
| 32 | `theorem` | [exists_algHom_of_splits_of_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/exists-alghom-of-splits-of-aeval--4de18d4fce7c774d726930bf.md) | 351 | `result-track:4de18d4fce7c774d726930bfae6cf3ef4554e01fad243e148189b9316fc1f780` |
| 33 | `theorem` | [Algebra.IsAlgebraic.range_eval_eq_rootSet_minpoly_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/declarations/algebra-isalgebraic-range-eval-eq-rootset-minpoly-of-splits--0e0e35b66e3670d4a5fbbf13.md) | 365 | `result-track:0e0e35b66e3670d4a5fbbf139c12856eb0c051a38b8ef1cca2ac8d0c5e8e5ebd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
