# Verification target: GRWTSK.Algebra.UniversalAlgebra.Ordered.Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13ed2501694ccbd236e892be958410f0f8c2f837",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13ed2501694ccbd236e892be958410f0f8c2f837`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.OrderedSMul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Synonym` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Midpoint` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Slope` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lineMap_mono_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-mono-left--b3aeffbe8f843bc8d2acaedc.md) | 57 | `result-track:b3aeffbe8f843bc8d2acaedc5eb26462baaf2a5c0d6bb205b947b2f522094e0a` |
| 2 | `theorem` | [lineMap_strict_mono_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-strict-mono-left--11bbab442c761d0a3bed3ac6.md) | 61 | `result-track:11bbab442c761d0a3bed3ac618221ceb44a17662fa72811a4dbb6d7fd7974a08` |
| 3 | `theorem` | [lineMap_mono_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-mono-right--26110fa066b288a3c1e94007.md) | 66 | `result-track:26110fa066b288a3c1e94007d0e9a8588ec116c1a49898b5ea0a36366c2743e9` |
| 4 | `theorem` | [lineMap_strict_mono_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-strict-mono-right--07b37955882fa96cbc6a751b.md) | 71 | `result-track:07b37955882fa96cbc6a751b039515b871afbe42311faacb224de5ba8547fd68` |
| 5 | `theorem` | [lineMap_mono_endpoints](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-mono-endpoints--ff9e50fa78cfef3bb547f448.md) | 75 | `result-track:ff9e50fa78cfef3bb547f4485e6111e0c96cfaa4ee474ae7ee9ef45d1f742916` |
| 6 | `theorem` | [lineMap_strict_mono_endpoints](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-strict-mono-endpoints--07b5e0cccc81e7c85683d856.md) | 79 | `result-track:07b5e0cccc81e7c85683d85619a704d34e4d92ff0d3f08ba36c99c8fe487a8bf` |
| 7 | `theorem` | [lineMap_lt_lineMap_iff_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-lt-linemap-iff-of-lt--727bfdcf474e4d27da8900e2.md) | 84 | `result-track:727bfdcf474e4d27da8900e2a011b543c41cc19f803245f1456c9ba7d3c077bb` |
| 8 | `theorem` | [left_lt_lineMap_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/left-lt-linemap-iff-lt--5c586bc9442d87345f9fe9a3.md) | 89 | `result-track:5c586bc9442d87345f9fe9a3f7187ec033b8178560ecfa20283072293ee148f6` |
| 9 | `theorem` | [lineMap_lt_left_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-lt-left-iff-lt--f054c5512a8f7e301d343eb1.md) | 92 | `result-track:f054c5512a8f7e301d343eb1013a0ad95ed6e5212d7d54a95bf7256c1a90573b` |
| 10 | `theorem` | [lineMap_lt_right_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-lt-right-iff-lt--940e1a09199ed16eec521108.md) | 95 | `result-track:940e1a09199ed16eec52110864a588152414d4ce3c294baf568ac46eab2cf537` |
| 11 | `theorem` | [right_lt_lineMap_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/right-lt-linemap-iff-lt--865f7641bfe290cc188ae772.md) | 98 | `result-track:865f7641bfe290cc188ae7722e94984cdb1d4460a01321f1eed732d6b6cd7eef` |
| 12 | `theorem` | [midpoint_le_midpoint](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/midpoint-le-midpoint--2f87caf4ce0acde99d9a5895.md) | 109 | `result-track:2f87caf4ce0acde99d9a5895c6dd7c076fa8014c8bbfeb8770a7a1e41cb984db` |
| 13 | `theorem` | [lineMap_le_lineMap_iff_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-le-linemap-iff-of-lt--e456152b993a6ffb1da9a24b.md) | 124 | `result-track:e456152b993a6ffb1da9a24bc0d3ad594146c2aa3a63a9f61936da90623e1186` |
| 14 | `theorem` | [left_le_lineMap_iff_le](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/left-le-linemap-iff-le--06a50a02abe3573b5c509f90.md) | 129 | `result-track:06a50a02abe3573b5c509f902f4630124bada1c56f4683feafbce27da5435e95` |
| 15 | `theorem` | [left_le_midpoint](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/left-le-midpoint--0b6f520c25f169704d1125b4.md) | 133 | `result-track:0b6f520c25f169704d1125b4307c77788668638ea1a64021523e2b8780ea373a` |
| 16 | `theorem` | [lineMap_le_left_iff_le](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-le-left-iff-le--bcea60e0e9a15b03fd85a2f6.md) | 136 | `result-track:bcea60e0e9a15b03fd85a2f60c2d8b5d07ead52773862619e4ec3a80d5cf48b9` |
| 17 | `theorem` | [midpoint_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/midpoint-le-left--839f307d526540780df53488.md) | 140 | `result-track:839f307d526540780df53488dbb5a2d5c49abb1ef6b9884b46d3e9cf5350e928` |
| 18 | `theorem` | [lineMap_le_right_iff_le](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-le-right-iff-le--25d4657333db983a7b37ec59.md) | 143 | `result-track:25d4657333db983a7b37ec5917c9963d3a0d3a7130e52d1d54bc25e49fe1ca9e` |
| 19 | `theorem` | [midpoint_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/midpoint-le-right--99efa8f4251836c4695b2503.md) | 147 | `result-track:99efa8f4251836c4695b25039399b353a57c7c90ed522ba8198a83d09d89c44f` |
| 20 | `theorem` | [right_le_lineMap_iff_le](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/right-le-linemap-iff-le--969d5ffaa61141ab8f07bcc6.md) | 149 | `result-track:969d5ffaa61141ab8f07bcc6d906f907934a2b56dd835c1ab493827f0712f826` |
| 21 | `theorem` | [right_le_midpoint](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/right-le-midpoint--bb83c487798b7fde4be0f0cb.md) | 153 | `result-track:bb83c487798b7fde4be0f0cb50dc9863d9bad7651888cc09c5767b037b543a37` |
| 22 | `theorem` | [map_le_lineMap_iff_slope_le_slope_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/map-le-linemap-iff-slope-le-slope-left--4b5ca62e51cf10508080b40b.md) | 195 | `result-track:4b5ca62e51cf10508080b40b38d6608b5440353f8befcc7a64964477e1eae133` |
| 23 | `theorem` | [lineMap_le_map_iff_slope_le_slope_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-le-map-iff-slope-le-slope-left--9484ce959e5da986752e4bf5.md) | 206 | `result-track:9484ce959e5da986752e4bf547528cfa48c669f8889e7819e3492abb2fa1ca74` |
| 24 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/map-lt-linemap-iff-slope-lt-slope-left--553a92ac62e30a2778bc4df3.md) | 212 | `result-track:553a92ac62e30a2778bc4df36ed42ec1cb9887e90f4ee14f28a7bb19392a7940` |
| 25 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope_left](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-lt-map-iff-slope-lt-slope-left--7ed7f1172b44717b64ead13e.md) | 219 | `result-track:7ed7f1172b44717b64ead13e6154cac0ac709b165a89896d61018d10aaf113c2` |
| 26 | `theorem` | [map_le_lineMap_iff_slope_le_slope_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/map-le-linemap-iff-slope-le-slope-right--ebc374afd6f3b324c8e961ce.md) | 225 | `result-track:ebc374afd6f3b324c8e961cec7833945bb9b3fb42028cc9bf3d0183d295a1519` |
| 27 | `theorem` | [lineMap_le_map_iff_slope_le_slope_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-le-map-iff-slope-le-slope-right--8402d88451eae9b9c6fa70bb.md) | 237 | `result-track:8402d88451eae9b9c6fa70bb991cbdaea01c0750e8aca16ba76e8e8a875e6c65` |
| 28 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/map-lt-linemap-iff-slope-lt-slope-right--06b3fcd324e492f8a678e60d.md) | 243 | `result-track:06b3fcd324e492f8a678e60dc4789833f615d7cefd46fcfbdf689719782340f7` |
| 29 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope_right](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-lt-map-iff-slope-lt-slope-right--84d33bb6bb4f08458bbb23f9.md) | 250 | `result-track:84d33bb6bb4f08458bbb23f9bd9198a6f1dd9dcb6e3afe379753efdcfb382645` |
| 30 | `theorem` | [map_le_lineMap_iff_slope_le_slope](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/map-le-linemap-iff-slope-le-slope--a7886787a367c447199505fc.md) | 258 | `result-track:a7886787a367c447199505fce989f83e7e7794911eb1656db79282ddc3593323` |
| 31 | `theorem` | [lineMap_le_map_iff_slope_le_slope](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-le-map-iff-slope-le-slope--6be7e0ef96c38c5f3a855f1c.md) | 265 | `result-track:6be7e0ef96c38c5f3a855f1cd286b5d836d4dd39a4674ec4f333cf3dfefcb90b` |
| 32 | `theorem` | [map_lt_lineMap_iff_slope_lt_slope](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/map-lt-linemap-iff-slope-lt-slope--5e33f6a61b278c2b35f43b7d.md) | 271 | `result-track:5e33f6a61b278c2b35f43b7d315021214bc7cb7237bb54ccbc2a9e18f1af5a4e` |
| 33 | `theorem` | [lineMap_lt_map_iff_slope_lt_slope](../../../../../mathematics/Algebra/UniversalAlgebra/Ordered/Variant2293e7c9d45371dfc2de99a4663aef3e3a924391b46a7720bddcc565ebc12b00.lean/declarations/linemap-lt-map-iff-slope-lt-slope--676eff7b2607cbfd69e59853.md) | 278 | `result-track:676eff7b2607cbfd69e598532683a8e41d2c7e71f18293f42a71f1efab328a11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
