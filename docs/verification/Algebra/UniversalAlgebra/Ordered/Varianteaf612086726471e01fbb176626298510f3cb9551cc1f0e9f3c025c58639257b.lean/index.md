# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ordered.Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfaa55c8b9c92e00ca1009d174edc2f35c1ef4c1",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfaa55c8b9c92e00ca1009d174edc2f35c1ef4c1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Synonym` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Midpoint` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Slope` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lineMap_mono_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-mono-left--94b35dc24e8ab9fe183cb77f.md) | 49 | `result-track:94b35dc24e8ab9fe183cb77f349cf9b3cc1e5256d1911d2f0965022c95f4d65a` |
| 2 | `theorem` | [lineMap_strict_mono_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-strict-mono-left--66c0fb13aeb32f82825c7e55.md) | 53 | `result-track:66c0fb13aeb32f82825c7e552cf10a7f39a660dc91c57dfe7fa8b374614411f8` |
| 3 | `theorem` | [lineMap_mono_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-mono-right--442232bc6f0dccface916675.md) | 58 | `result-track:442232bc6f0dccface91667534e552167e2dffa111803738540dd22f1df2bb55` |
| 4 | `theorem` | [lineMap_strict_mono_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-strict-mono-right--009c93e4951da3ea6d749704.md) | 63 | `result-track:009c93e4951da3ea6d749704e36b4d3cb7d2975e0f88add063d9c068cfb263d5` |
| 5 | `theorem` | [lineMap_mono_endpoints](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-mono-endpoints--542b24edffad09a54b3b060b.md) | 67 | `result-track:542b24edffad09a54b3b060b25e28f88a95b0c25f9c9c7207f2595a402ff53f6` |
| 6 | `theorem` | [lineMap_strict_mono_endpoints](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-strict-mono-endpoints--4cacbb51392a6e30119bb9f1.md) | 71 | `result-track:4cacbb51392a6e30119bb9f1872ecee1109ff29fb4791f83a0f87a1433d4d6f6` |
| 7 | `theorem` | [lineMap_lt_lineMap_iff_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-lt-linemap-iff-of-lt--4c237010a218dea7ad6da6b3.md) | 76 | `result-track:4c237010a218dea7ad6da6b3714b1896e3c25888a223b8536cee4bb571f7c4a8` |
| 8 | `theorem` | [left_lt_lineMap_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/left-lt-linemap-iff-lt--d9360b90fa3462940848f1d0.md) | 81 | `result-track:d9360b90fa3462940848f1d0d1d64f4664bce0f854131a24f589739323740f34` |
| 9 | `theorem` | [lineMap_lt_left_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-lt-left-iff-lt--aa770b83608b8231a4db364e.md) | 84 | `result-track:aa770b83608b8231a4db364ec0f0d2adbf4d3780ad2149099cd9aced0d88085d` |
| 10 | `theorem` | [lineMap_lt_right_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-lt-right-iff-lt--530ba5910ca77bab6074e46e.md) | 87 | `result-track:530ba5910ca77bab6074e46ee5a6176a838dbfa0134a80a995a93d90c70c9962` |
| 11 | `theorem` | [right_lt_lineMap_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/right-lt-linemap-iff-lt--9403e8768cd01fc085823412.md) | 90 | `result-track:9403e8768cd01fc085823412f4c4a6b08a4b185d323e8645d6715a6f7a7e8802` |
| 12 | `theorem` | [midpoint_le_midpoint](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/midpoint-le-midpoint--d3e2f75d10ee1895ee1c7197.md) | 101 | `result-track:d3e2f75d10ee1895ee1c719787aa990697ea581726faafe1be1e3978ddc920a5` |
| 13 | `theorem` | [lineMap_le_lineMap_iff_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-le-linemap-iff-of-lt--8ff2221badef3c8ededa1902.md) | 116 | `result-track:8ff2221badef3c8ededa19020a7c8abf158ac619b40da9857c98c8ef06a42eab` |
| 14 | `theorem` | [left_le_lineMap_iff_le](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/left-le-linemap-iff-le--862f9c11e9b0cfa289881da2.md) | 121 | `result-track:862f9c11e9b0cfa289881da257746f392b97792ff2caffdd1429385ad773d68f` |
| 15 | `theorem` | [left_le_midpoint](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/left-le-midpoint--9af5900d834574e7c24214f7.md) | 125 | `result-track:9af5900d834574e7c24214f76551b6dff13c6f93fd866d073aa717e55a83d687` |
| 16 | `theorem` | [lineMap_le_left_iff_le](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-le-left-iff-le--a2e2ebd44cedf408da19779a.md) | 128 | `result-track:a2e2ebd44cedf408da19779a49d058c9a5c85a1cd22dfcec1bb887ccb9ba1b17` |
| 17 | `theorem` | [midpoint_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/midpoint-le-left--c7a358043938c3d11ddac608.md) | 132 | `result-track:c7a358043938c3d11ddac6082650e23e6095b64e81936b9b8d5a3778a5ab4536` |
| 18 | `theorem` | [lineMap_le_right_iff_le](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-le-right-iff-le--4c518e700cf268de11d0dfe9.md) | 135 | `result-track:4c518e700cf268de11d0dfe9edb3def22fb1daa6190032580a5bd1ef809b0790` |
| 19 | `theorem` | [midpoint_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/midpoint-le-right--4fcdb197390d6eafe0198c41.md) | 139 | `result-track:4fcdb197390d6eafe0198c41bda98dc7c0a2294667a9d6888ced2a1d9857bbf4` |
| 20 | `theorem` | [right_le_lineMap_iff_le](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/right-le-linemap-iff-le--92fb1fa4d9e1484ac3f51dcb.md) | 141 | `result-track:92fb1fa4d9e1484ac3f51dcb719015b380187523de093d05149f4867793b4677` |
| 21 | `theorem` | [right_le_midpoint](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/right-le-midpoint--31d55576499b9bdefae49265.md) | 145 | `result-track:31d55576499b9bdefae49265d96bae8323cc3bab702135b4defddc8919b2c8ca` |
| 22 | `theorem` | [map_le_lineMap_iff_slope_le_slope_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/map-le-linemap-iff-slope-le-slope-left--00818200f869876160ce12f6.md) | 187 | `result-track:00818200f869876160ce12f6c8bf9b963bf2f5a1afdb3a949516ce8a1304424d` |
| 23 | `theorem` | [lineMap_le_map_iff_slope_le_slope_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-le-map-iff-slope-le-slope-left--8bd9d8eaa216e8765b73726b.md) | 198 | `result-track:8bd9d8eaa216e8765b73726bd3ab4f3191d716200e1824aa396ac99e4f842657` |
| 24 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/map-lt-linemap-iff-slope-lt-slope-left--fda0ae5a836e59126a9be240.md) | 204 | `result-track:fda0ae5a836e59126a9be240aa3c1055a09f022be8edb32f81557e50ff959b9f` |
| 25 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-lt-map-iff-slope-lt-slope-left--206602865017e2020a506061.md) | 211 | `result-track:206602865017e2020a506061c575a5bf0a9b1234882ddd8c259dd9843b889cbe` |
| 26 | `theorem` | [map_le_lineMap_iff_slope_le_slope_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/map-le-linemap-iff-slope-le-slope-right--08681ff56117fb67b56da534.md) | 217 | `result-track:08681ff56117fb67b56da534957223143a38e6c2a65bbe73ca84c98b0fa28b5e` |
| 27 | `theorem` | [lineMap_le_map_iff_slope_le_slope_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-le-map-iff-slope-le-slope-right--cd9781527fb5340cb4a4e6ad.md) | 229 | `result-track:cd9781527fb5340cb4a4e6adace3e4a1c521820ce51329efd19f290b384b765e` |
| 28 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/map-lt-linemap-iff-slope-lt-slope-right--c2b06e0c4129540a74b77698.md) | 235 | `result-track:c2b06e0c4129540a74b7769820e06a862577bfb49a5de0f4dc4f6359fa2cb801` |
| 29 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-lt-map-iff-slope-lt-slope-right--cd6f06f0a46bb2b32d509ef7.md) | 242 | `result-track:cd6f06f0a46bb2b32d509ef7c6c500217a85f7e821610b7013022467d05b640c` |
| 30 | `theorem` | [map_le_lineMap_iff_slope_le_slope](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/map-le-linemap-iff-slope-le-slope--dfc1543edda6201f3af9265c.md) | 250 | `result-track:dfc1543edda6201f3af9265c6da147fbfa11005d16a4afe2672f3aa3529d8bc6` |
| 31 | `theorem` | [lineMap_le_map_iff_slope_le_slope](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-le-map-iff-slope-le-slope--2faf240505f64b3a078fd660.md) | 257 | `result-track:2faf240505f64b3a078fd6604c22927e7d1daac5f2853b2e4f197d2899d2bc4f` |
| 32 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/map-lt-linemap-iff-slope-lt-slope--e916fa4cab1e3edd6ef1b870.md) | 263 | `result-track:e916fa4cab1e3edd6ef1b87045664f0cc605fdc7ef5d4bbfcdf51561cfdfe414` |
| 33 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Varianteaf612086726471e01fbb176626298510f3cb9551cc1f0e9f3c025c58639257b.lean/declarations/linemap-lt-map-iff-slope-lt-slope--d5ed61ae95417a5b57771fd3.md) | 270 | `result-track:d5ed61ae95417a5b57771fd3a3d9020ded19813ef20f79322380e7b7c1adf8cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
