# Verification target: GRWTSK.Algebra.LinearAlgebra.ToTensorPower.Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0680af1130b20a1fdb17cac3f5ed9ddc95a46658",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0680af1130b20a1fdb17cac3f5ed9ddc95a46658`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorPower` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/totensoralgebra--3b5355cab296b992b96d2e7e.md) | 26 | `declaration-track:3b5355cab296b992b96d2e7ed0ecafeaceb91f43799c5cc588fe78b0c4736d80` |
| 2 | `theorem` | [toTensorAlgebra_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/totensoralgebra-tprod--c4bafa8594ebcd5473bfd579.md) | 31 | `result-track:c4bafa8594ebcd5473bfd5792fe7210a54760b730a718130934b2863fd7672a9` |
| 3 | `theorem` | [toTensorAlgebra_gOne](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/totensoralgebra-gone--e7dd09e3a374b4a90610f2a8.md) | 37 | `result-track:e7dd09e3a374b4a90610f2a89c6a6c377c76bf9928eee799011cfffb263ff901` |
| 4 | `theorem` | [toTensorAlgebra_gMul](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/totensoralgebra-gmul--45f075ba709e9a7a192f0415.md) | 43 | `result-track:45f075ba709e9a7a192f0415d4e0bfc102f84731d95fc109eafae8ad59a92cef` |
| 5 | `theorem` | [toTensorAlgebra_galgebra_toFun](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/totensoralgebra-galgebra-tofun--d994663aaf1a4eea2a35fbc4.md) | 68 | `result-track:d994663aaf1a4eea2a35fbc4b0712b7d196446c60a6737a8cd95f6437a87bf72` |
| 6 | `def` | [ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/ofdirectsum--2744978732cacf3d4d7b60c5.md) | 80 | `declaration-track:2744978732cacf3d4d7b60c5dcd4c23d2eae288d5e31f90bbc3171d48bd4ef60` |
| 7 | `theorem` | [ofDirectSum_of_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/ofdirectsum-of-tprod--61e6d8eda68e711c2564d011.md) | 86 | `result-track:61e6d8eda68e711c2564d0116f5bd420f385089efc922c6eb3b6290c126ac2ce` |
| 8 | `def` | [toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/todirectsum--f6a44ce7657275273fe467c2.md) | 94 | `declaration-track:f6a44ce7657275273fe467c234b08cfdbdd7ff72ef7144f57efadd367945eb2a` |
| 9 | `theorem` | [toDirectSum_ι](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/todirectsum--17a17da7aba1dfc39264566e.md) | 101 | `result-track:17a17da7aba1dfc39264566eaf003a92e00513f4e0595f4205f910edae8f34aa` |
| 10 | `theorem` | [ofDirectSum_comp_toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/ofdirectsum-comp-todirectsum--99172bb97fbdc44bb8257aab.md) | 107 | `result-track:99172bb97fbdc44bb8257aabf79ed0790a0f23709a98b1d615cf069f1d067457` |
| 11 | `theorem` | [ofDirectSum_toDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/ofdirectsum-todirectsum--028d307969bb7eefd3e24c05.md) | 114 | `result-track:028d307969bb7eefd3e24c057684a9bb1e6f83cb1403de583fa2166ed9542459` |
| 12 | `theorem` | [mk_reindex_cast](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/mk-reindex-cast--176613d514be95ada7e25aa8.md) | 120 | `result-track:176613d514be95ada7e25aa8f68720b82f8e6ff092827416642367259820718c` |
| 13 | `theorem` | [mk_reindex_fin_cast](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/mk-reindex-fin-cast--1dc3a79e3d664deb3fab84ce.md) | 128 | `result-track:1dc3a79e3d664deb3fab84ce76a2d1c22f4363918327e03566aab331493adbd0` |
| 14 | `theorem` | [_root_.TensorPower.list_prod_gradedMonoid_mk_single](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/root-tensorpower-list-prod-gradedmonoid-mk-single--aff012f92975de3dee344e77.md) | 136 | `result-track:aff012f92975de3dee344e77b26fb27f6ae5137cc8727d2d5fc53f75d219f07e` |
| 15 | `theorem` | [toDirectSum_tensorPower_tprod](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/todirectsum-tensorpower-tprod--d7af6902d087a2a75a342b60.md) | 155 | `result-track:d7af6902d087a2a75a342b607c60a92c0bbf72224972eaf7bb42260351fcc5b8` |
| 16 | `theorem` | [toDirectSum_comp_ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/todirectsum-comp-ofdirectsum--4b7a072c48ebccd6ad73273d.md) | 165 | `result-track:4b7a072c48ebccd6ad73273d027418b7afd4a67dcbde5ca40340bd67787ed301` |
| 17 | `theorem` | [toDirectSum_ofDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/todirectsum-ofdirectsum--69b883809fa4c1f88c41c82f.md) | 172 | `result-track:69b883809fa4c1f88c41c82f5e6ed21ba05c1b1889e0ef937c9b171fe5de0c86` |
| 18 | `def` | [equivDirectSum](../../../../../mathematics/Algebra/LinearAlgebra/ToTensorPower/Variantda2c2d0c926dd7f5a98cc7c3379da30b7dbb288cb22162e23913cd3af917d4d3.lean/declarations/equivdirectsum--23705d752758a453adafd81c.md) | 179 | `declaration-track:23705d752758a453adafd81cbd1042125945f04b0ff06f5332eaffa8d3326dcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
