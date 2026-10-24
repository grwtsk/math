# Verification target: GRWTSK.Algebra.GroupTheory.NAry.Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42f27ab5e5c01cc1b88929704cc0a313ad89b5e6",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42f27ab5e5c01cc1b88929704cc0a313ad89b5e6`.

Source path: `GRWTSK/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map--e82afdfc37becc28a430db54.md) | 41 | `declaration-track:e82afdfc37becc28a430db5461133dec8a59424fe43e42a439bbe2170a6d81d7` |
| 2 | `theorem` | [map₂_def](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-def--20c6c2dce67bcc8cfb8bf40c.md) | 47 | `result-track:20c6c2dce67bcc8cfb8bf40c74c502d5fccab0f6b54b4bc46022cc2460089956` |
| 3 | `theorem` | [map₂_some_some](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-some-some--66feaa429f3afe45b7d6b52b.md) | 53 | `result-track:66feaa429f3afe45b7d6b52bdc50d741c245148b0c9e6e7aee8ccdd33cf8eda0` |
| 4 | `theorem` | [map₂_coe_coe](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-coe-coe--7a3bf8d699aa755a0ca888f4.md) | 56 | `result-track:7a3bf8d699aa755a0ca888f45ffb30dbbcf589e44f3e723f769300e82505beb0` |
| 5 | `theorem` | [map₂_none_left](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-none-left--faf88d0a90a874dac6d97c68.md) | 60 | `result-track:faf88d0a90a874dac6d97c687be916982b3c21bdd06654a8f6b6f9263fc3a3cb` |
| 6 | `theorem` | [map₂_none_right](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-none-right--9ef0a83012fef33d7ac10a6c.md) | 64 | `result-track:9ef0a83012fef33d7ac10a6cb6b1a0be8835974e110c84cb6579d3074a0b5a37` |
| 7 | `theorem` | [map₂_coe_left](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-coe-left--6a129ce635c7e335001e6084.md) | 68 | `result-track:6a129ce635c7e335001e6084023a4c5fe370baf1a1e1c4cb4bde6ba54ba0687d` |
| 8 | `theorem` | [map₂_coe_right](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-coe-right--fdf32d3092f85b6f7822b5f1.md) | 74 | `result-track:fdf32d3092f85b6f7822b5f1bda52ea4ddabdb854627ebf8d85d0fd3e8bc7dbc` |
| 9 | `theorem` | [mem_map₂_iff](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/mem-map-iff--e6bbc31a0156076ebb4b4530.md) | 79 | `result-track:e6bbc31a0156076ebb4b4530cbeb9b228f1b03e942595f922312d418a3e2a8a2` |
| 10 | `theorem` | [map₂_eq_none_iff](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-eq-none-iff--1306fc5e64a3fb21266bcc14.md) | 84 | `result-track:1306fc5e64a3fb21266bcc1418cf2d579dc0b13c5faa9b9881ecbb640f52d3af` |
| 11 | `theorem` | [map₂_swap](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-swap--44fed172e2ff22bdd4e48833.md) | 88 | `result-track:44fed172e2ff22bdd4e48833bcb7b2bcc8bdceb6382ced7278588e927f048d7c` |
| 12 | `theorem` | [map_map₂](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map--e37b13e17a4db0d9dd359b8d.md) | 92 | `result-track:e37b13e17a4db0d9dd359b8dda42cc24d285bbdfa4d1b68d557ab4d7e7119a17` |
| 13 | `theorem` | [map₂_map_left](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-left--ea17a6242de2d4ca78084e35.md) | 96 | `result-track:ea17a6242de2d4ca78084e358affc5b56bdc8156707b2583286a3d762daa58cf` |
| 14 | `theorem` | [map₂_map_right](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-right--480991dbc59aede896708a5a.md) | 100 | `result-track:480991dbc59aede896708a5aa6849c6ad234559037004615d12c06f7096a12e4` |
| 15 | `theorem` | [map₂_curry](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-curry--5b151497f0a0c1d8146f1fdf.md) | 105 | `result-track:5b151497f0a0c1d8146f1fdf4034f140c7bb6c8d0b5a4c6a9057c5a269a62b50` |
| 16 | `theorem` | [map_uncurry](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-uncurry--0d38feea3eddfdb4ae0e4d38.md) | 110 | `result-track:0d38feea3eddfdb4ae0e4d38ba01c4f69c6d8de28082c67f28730c57972c34cd` |
| 17 | `theorem` | [map₂_assoc](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-assoc--a1c97313d38decd7f8400b22.md) | 123 | `result-track:a1c97313d38decd7f8400b221d8fe03c359385a3748ba312c333c1668f0f745c` |
| 18 | `theorem` | [map₂_comm](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-comm--c1a80386de8c44baea26aed1.md) | 129 | `result-track:c1a80386de8c44baea26aed1c361b57118deceee9249f413bace8b66b0fb594f` |
| 19 | `theorem` | [map₂_left_comm](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-left-comm--a8d1dd8af43f06cdee322baa.md) | 133 | `result-track:a8d1dd8af43f06cdee322baab7e8a71a69b8d114bb87ebfa5454e110f02fc118` |
| 20 | `theorem` | [map₂_right_comm](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-right-comm--d7180d17a8c663defc6fa7b7.md) | 139 | `result-track:d7180d17a8c663defc6fa7b7abcf4bce94513593586705def95efb3829db863c` |
| 21 | `theorem` | [map_map₂_distrib](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-distrib--af22a88734c6af9b2315936d.md) | 145 | `result-track:af22a88734c6af9b2315936d68c9dafa68ad841d5e53c25a9db7b599d8b0df6c` |
| 22 | `theorem` | [map_map₂_distrib_left](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-distrib-left--1e2a70f6bc30b11409d00ee8.md) | 157 | `result-track:1e2a70f6bc30b11409d00ee8975e1cf23ad1fef13e0f583a4d6ceaf0abac5a67` |
| 23 | `theorem` | [map_map₂_distrib_right](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-distrib-right--1ca4521c8587e1b904d3026f.md) | 163 | `result-track:1ca4521c8587e1b904d3026fe2363f9a32375f2f66ffbba343af29cd89c38d51` |
| 24 | `theorem` | [map₂_map_left_comm](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-left-comm--e2625acb49ec5751bced7754.md) | 169 | `result-track:e2625acb49ec5751bced77548350e00cc2d21bca216255cd8f503e9479f770fd` |
| 25 | `theorem` | [map_map₂_right_comm](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-right-comm--196d97adb5b25a42539c93a5.md) | 175 | `result-track:196d97adb5b25a42539c93a5115a9769d0a13faacff1730b61eb3a9b31b6bfd8` |
| 26 | `theorem` | [map_map₂_antidistrib](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-antidistrib--bb631e62616ed90e6505d98d.md) | 180 | `result-track:bb631e62616ed90e6505d98dba9d7d64f882b46c2bdc7066dd795148caa8edc5` |
| 27 | `theorem` | [map_map₂_antidistrib_left](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-antidistrib-left--3d9548baa8ecbd17938c3bd9.md) | 187 | `result-track:3d9548baa8ecbd17938c3bd927208e5836122b962a8495363244b1aff9b0a060` |
| 28 | `theorem` | [map_map₂_antidistrib_right](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-antidistrib-right--5e9683cc21a7a3e5d0545b34.md) | 194 | `result-track:5e9683cc21a7a3e5d0545b3411b3c5a3a88537c01e7f1877919c7f2c702bb6ce` |
| 29 | `theorem` | [map₂_map_left_anticomm](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-left-anticomm--80dc96fb063cb172b31e9b91.md) | 200 | `result-track:80dc96fb063cb172b31e9b91fdbb3f771c508f4e2a94241b0a2626991fcc33f4` |
| 30 | `theorem` | [map_map₂_right_anticomm](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-map-right-anticomm--48cb274fec933125903da8cf.md) | 206 | `result-track:48cb274fec933125903da8cf76c47842603902b3a44832fab1014d27dc0b9b41` |
| 31 | `lemma` | [map₂_left_identity](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-left-identity--5bb1977f9259503cd8d04712.md) | 213 | `result-track:5bb1977f9259503cd8d0471241a660c9161c26eeb2ba25de3eccc4f9d0c37ba2` |
| 32 | `lemma` | [map₂_right_identity](../../../../../mathematics/Algebra/GroupTheory/NAry/Variant42541fead8bb1aa01124e04d1038eb9bb922e387d9bc3f5f5223facada43153a.lean/declarations/map-right-identity--a5ff0d2e46b5f572be8c61a3.md) | 220 | `result-track:a5ff0d2e46b5f572be8c61a34cd8b2647cade68164942853a6dc378229a8b6c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
