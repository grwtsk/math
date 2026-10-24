# Verification target: GRWTSK.Topology.GeneralTopology.Open.Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d51577ed45bc19d627d1a373b3d6e8e513c5cee8",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d51577ed45bc19d627d1a373b3d6e8e513c5cee8`.

Source path: `GRWTSK/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean.json)

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
| 1 | `structure` | [ContinuousOpenMap](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/continuousopenmap--f6fabd00f32e10c78b311d73.md) | 35 | `declaration-track:f6fabd00f32e10c78b311d732ae21cdd34c7aa02c571d0fa5193e433560acb29` |
| 2 | `class` | [ContinuousOpenMapClass](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/continuousopenmapclass--43aa396e0f1a443bb7cc4bad.md) | 46 | `declaration-track:43aa396e0f1a443bb7cc4bad76bf71459a36a8649f1db9ddc7979247652f6d77` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/instance--c0be0bc37a9aa1b170452ad6.md) | 54 | `declaration-track:c0be0bc37a9aa1b170452ad6a1b7b9a738f8b8b04a735cc1573b0061355cf59f` |
| 4 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/instfunlike--1570dfc64ae534b8e72bf6a4.md) | 67 | `declaration-track:1570dfc64ae534b8e72bf6a4df24ff8cb940dd89437b599c3811b1c5454060b6` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/instance--4105afade371bab7995afe53.md) | 74 | `declaration-track:4105afade371bab7995afe53e9f976e606edc6489a512e0e494ccf0dc83118de` |
| 6 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/tofun-eq-coe--22d110775773e53c706f82bf.md) | 78 | `result-track:22d110775773e53c706f82bf9c651ef2acc10776c1728b612ad7457c92ae98a7` |
| 7 | `theorem` | [coe_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/coe-tocontinuousmap--4af23001ff8ea2fac4eb0cd5.md) | 83 | `result-track:4af23001ff8ea2fac4eb0cd5ad4ac783f4ceb6af03dca5ca75259319883f89bc` |
| 8 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/ext--89d539dae80ca977073584f6.md) | 86 | `result-track:89d539dae80ca977073584f61de3cb9586bfa1d29b7a8d9268321aadfeefe0a5` |
| 9 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/copy--5aa4dfc2de7899df68561ce8.md) | 91 | `declaration-track:5aa4dfc2de7899df68561ce85475d47b57de9f2f80952f68d128e0ebd3641294` |
| 10 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/coe-copy--95e78ce84eeaa3707e744d42.md) | 95 | `result-track:95e78ce84eeaa3707e744d429aeb8aa6d578bb925180f1d281994f8bcf6c9ba2` |
| 11 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/copy-eq--3bb9e93b142aeab365c2b1d1.md) | 98 | `result-track:3bb9e93b142aeab365c2b1d1457446cd4550a67a6a286d0740dce58017d181b1` |
| 12 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/id--206e3abea19fd51b9baec806.md) | 104 | `declaration-track:206e3abea19fd51b9baec8063681ea38a8e03f38889294615a2bb5064615cb35` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/instance--a5f1712bfb23099155cd7d7e.md) | 107 | `declaration-track:a5f1712bfb23099155cd7d7eeb81ce4ec8a7dc2b17fc2b3d9c2e76034a22e18f` |
| 14 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/coe-id--154c09fd2a853df394816070.md) | 111 | `result-track:154c09fd2a853df39481607092713d53d277fd5791672c751940e3a78f4de0ad` |
| 15 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/id-apply--cf21db8ad46e299a34d114a4.md) | 117 | `result-track:cf21db8ad46e299a34d114a410ac3d6cb12908c78ab90d523cab2a595bdd3d43` |
| 16 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/comp--53214b5e4a04a7a4e734eb2a.md) | 121 | `declaration-track:53214b5e4a04a7a4e734eb2abc20cdec28ed82d19aa390ee3cbb598533c11e50` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/coe-comp--a0602e3774a05323da7fc6cf.md) | 125 | `result-track:a0602e3774a05323da7fc6cfb9ae27922d64aa3b346a76525ce94e05a435eea7` |
| 18 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/comp-apply--a52aa64c0288d0ec1f30a2f9.md) | 129 | `result-track:a52aa64c0288d0ec1f30a2f9719cc0f54911d109ac3ae2f67d1d8dd58db4261e` |
| 19 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/comp-assoc--cc837314a4217a138634273e.md) | 133 | `result-track:cc837314a4217a138634273e1393d4e9a1b7b2e1b574cc3df1f83d30cb112571` |
| 20 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/comp-id--2180964ac64cbd54f6eccf80.md) | 138 | `result-track:2180964ac64cbd54f6eccf802426ac2c71ee00b76bb5f2799887d4e1a417ab3e` |
| 21 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/id-comp--d7db1b879bab2d4a0e4a862c.md) | 142 | `result-track:d7db1b879bab2d4a0e4a862cfafd254c310dfb637950ca0a5b140a659bc2ef82` |
| 22 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/cancel-right--b38ab125300171d00ce3d130.md) | 146 | `result-track:b38ab125300171d00ce3d1307c014ff175181964465ed8ba22e24e06dfc46336` |
| 23 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Open/Variant247a0f06b4dee2696623f7e551b2a24772686bca6df1e8fe231e0cfaa6602213.lean/declarations/cancel-left--89fa8d36e3457d42234515e1.md) | 151 | `result-track:89fa8d36e3457d42234515e1805fefba749270d6fbbde4e361681002beeafbe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
