# Verification target: GRWTSK.Algebra.LinearAlgebra.Ordered.Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b13843c578257ca161a8c1fdd1c78cc5d30a7b9a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b13843c578257ca161a8c1fdd1c78cc5d30a7b9a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.MidpointZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Slope` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lineMap_mono_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-mono-left--ed769ffd9c563569759ecdb5.md) | 51 | `result-track:ed769ffd9c563569759ecdb516f9e2d21a389238a8684ea8536fea2006fb1cff` |
| 2 | `theorem` | [lineMap_strict_mono_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-strict-mono-left--cfe99940ddfed1bc3edc06ef.md) | 56 | `result-track:cfe99940ddfed1bc3edc06efb646c2f53391f5c869a525e4c3eb39f9e6e457b5` |
| 3 | `theorem` | [lineMap_mono_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-mono-right--51aa9b402698672f66c01c73.md) | 61 | `result-track:51aa9b402698672f66c01c737b8390a5eef520f8a3802e0f6baba80542bd5dac` |
| 4 | `theorem` | [lineMap_strict_mono_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-strict-mono-right--9f5eca46e5978ca71fc9969d.md) | 66 | `result-track:9f5eca46e5978ca71fc9969d4be9d4de7029531feff2c734c3b2d69ad59be411` |
| 5 | `theorem` | [lineMap_mono_endpoints](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-mono-endpoints--7a5b8be0b300b509ef78c167.md) | 71 | `result-track:7a5b8be0b300b509ef78c16706723e5881e2f22e45d7e8f67743d3141e500d42` |
| 6 | `theorem` | [lineMap_strict_mono_endpoints](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-strict-mono-endpoints--0f77b2a1764398b0abf0c4b9.md) | 76 | `result-track:0f77b2a1764398b0abf0c4b90a93aa2d3c19b909be2364bc93efaf9c598cb4c1` |
| 7 | `theorem` | [lineMap_lt_lineMap_iff_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-lt-linemap-iff-of-lt--582dcefe06d544876f78461f.md) | 82 | `result-track:582dcefe06d544876f78461faff8fbd0cc5a5ff269142de7d99da7aa2f2609e3` |
| 8 | `theorem` | [left_lt_lineMap_iff_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/left-lt-linemap-iff-lt--511bb2eebcb32a257e6fcdfd.md) | 88 | `result-track:511bb2eebcb32a257e6fcdfdefb13d2ff9d41a0bef6df1b6030eebd4448d5f81` |
| 9 | `theorem` | [lineMap_lt_left_iff_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-lt-left-iff-lt--1063b836139e541742559858.md) | 92 | `result-track:1063b836139e5417425598588049e4e90a2b193bedaebcab2f3a6578727475d2` |
| 10 | `theorem` | [lineMap_lt_right_iff_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-lt-right-iff-lt--e04bc39889d0b6c32d9fb350.md) | 96 | `result-track:e04bc39889d0b6c32d9fb3504619c41066a847a90ddb4ca370f8ac7f05324b46` |
| 11 | `theorem` | [right_lt_lineMap_iff_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/right-lt-linemap-iff-lt--a445f51a085479ba52592325.md) | 100 | `result-track:a445f51a085479ba525923256588290ba014705fbc3128305240a4c83019e002` |
| 12 | `theorem` | [midpoint_le_midpoint](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/midpoint-le-midpoint--a97001316cc9c2a40c1b95be.md) | 111 | `result-track:a97001316cc9c2a40c1b95bebe690862faf9f20f34a2163bb0dbeaa8cd53e497` |
| 13 | `theorem` | [lineMap_le_lineMap_iff_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-le-linemap-iff-of-lt--5eec2eef33a3c068af9020c4.md) | 127 | `result-track:5eec2eef33a3c068af9020c41296fd385662feb506bc7242f11db52b6fde7655` |
| 14 | `theorem` | [left_le_lineMap_iff_le](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/left-le-linemap-iff-le--0eedba65001740245ead6823.md) | 133 | `result-track:0eedba65001740245ead68238be5d7b7dc166af1556a86f31edc1bf218041f40` |
| 15 | `theorem` | [left_le_midpoint](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/left-le-midpoint--bc96d4ade704fb2c42793a44.md) | 138 | `result-track:bc96d4ade704fb2c42793a44217ab03525cb90f66090ffaaa9b25c4ea625537a` |
| 16 | `theorem` | [lineMap_le_left_iff_le](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-le-left-iff-le--4a8d7293a8d476ebdf0d2d78.md) | 142 | `result-track:4a8d7293a8d476ebdf0d2d78d9d9266c7cca1659c5a32a098bc9b3cc5f50d302` |
| 17 | `theorem` | [midpoint_le_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/midpoint-le-left--569576cbe6de566d5737d6cd.md) | 147 | `result-track:569576cbe6de566d5737d6cd6cb9fa21200c3a136bdf5544d3a08d2a212838f5` |
| 18 | `theorem` | [lineMap_le_right_iff_le](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-le-right-iff-le--6c21db580fa5b93d1cc29df4.md) | 151 | `result-track:6c21db580fa5b93d1cc29df469a1d9cf5821813b2db2652787a491185c07175e` |
| 19 | `theorem` | [midpoint_le_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/midpoint-le-right--a69d282b3015ccc878604697.md) | 156 | `result-track:a69d282b3015ccc878604697a08813d984eb3f8e14f10b41bc4010f694a4e3f3` |
| 20 | `theorem` | [right_le_lineMap_iff_le](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/right-le-linemap-iff-le--03c6858e6160f0df3c714201.md) | 160 | `result-track:03c6858e6160f0df3c714201d12a2ffcd73375f3b0807b0c0025a03bf0fa5397` |
| 21 | `theorem` | [right_le_midpoint](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/right-le-midpoint--2315c0e3f52d0c8340d7105c.md) | 165 | `result-track:2315c0e3f52d0c8340d7105c93c552da720378c046b1d8844859494c350d7524` |
| 22 | `theorem` | [map_le_lineMap_iff_slope_le_slope_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/map-le-linemap-iff-slope-le-slope-left--75578710233d99aa312af233.md) | 207 | `result-track:75578710233d99aa312af23319edc205a08f7177fe6ebea367a633d60e125ff6` |
| 23 | `theorem` | [lineMap_le_map_iff_slope_le_slope_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-le-map-iff-slope-le-slope-left--26e47e452a4dc080608e3c2a.md) | 219 | `result-track:26e47e452a4dc080608e3c2ad928e7ee7bef81c5a2ebadf2b010e4f8176623d2` |
| 24 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/map-lt-linemap-iff-slope-lt-slope-left--2f5670287b4d08f7618ff90f.md) | 226 | `result-track:2f5670287b4d08f7618ff90f35275ee6ac0df062399648c1bc60c29190233ba8` |
| 25 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope_left](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-lt-map-iff-slope-lt-slope-left--345e02f709571aad648abc90.md) | 234 | `result-track:345e02f709571aad648abc90fd838cd6f99c1f3b2058ffbd3780c1b7d3023bfc` |
| 26 | `theorem` | [map_le_lineMap_iff_slope_le_slope_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/map-le-linemap-iff-slope-le-slope-right--cc6e3738546644195bb28a58.md) | 241 | `result-track:cc6e3738546644195bb28a5813d542facb1c9aa8e5979e30cf7a05fcf8909e07` |
| 27 | `theorem` | [lineMap_le_map_iff_slope_le_slope_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-le-map-iff-slope-le-slope-right--28a8427a79e5897134d255cc.md) | 253 | `result-track:28a8427a79e5897134d255cc2ca43ee1c5c522b474401a8774f203ce8e99ab2b` |
| 28 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/map-lt-linemap-iff-slope-lt-slope-right--4209a92f70ee4b65e0c8ec70.md) | 260 | `result-track:4209a92f70ee4b65e0c8ec7007fe6c114deef6038ef32bc50c1ee7141ff680d6` |
| 29 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope_right](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-lt-map-iff-slope-lt-slope-right--d4de2999b91cc4072699f109.md) | 268 | `result-track:d4de2999b91cc4072699f1093e0c0e6e8330d695ac2c624af9f4d7c44d6ae9a9` |
| 30 | `theorem` | [map_le_lineMap_iff_slope_le_slope](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/map-le-linemap-iff-slope-le-slope--4dd1bd3074bfad7800e1ef0e.md) | 275 | `result-track:4dd1bd3074bfad7800e1ef0e7e30b30b63715e54564f496c338c6e5a33d590e1` |
| 31 | `theorem` | [lineMap_le_map_iff_slope_le_slope](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-le-map-iff-slope-le-slope--c3789a840e48495cc288c8b0.md) | 283 | `result-track:c3789a840e48495cc288c8b0f18c808e2c7258090cc2a29eaf0a76fc86c4d284` |
| 32 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/map-lt-linemap-iff-slope-lt-slope--56bdf7f17be7a420875377cc.md) | 290 | `result-track:56bdf7f17be7a420875377ccf8ca2af6464bac7f0273e30c39397cd383c7a111` |
| 33 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope](../../../../../mathematics/Algebra/LinearAlgebra/Ordered/Variantcb1111afeb9ec3269d234c5a50b62c4ed23413d0cfeeee51eb24e8caab8d5ba0.lean/declarations/linemap-lt-map-iff-slope-lt-slope--a125c270ea76ee778b8279f3.md) | 298 | `result-track:a125c270ea76ee778b8279f33835810cc81cb74fd043f50e83a7db796cfefb80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
