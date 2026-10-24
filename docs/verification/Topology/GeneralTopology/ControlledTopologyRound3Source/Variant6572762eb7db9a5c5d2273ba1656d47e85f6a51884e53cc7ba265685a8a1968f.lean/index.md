# Verification target: GRWTSK.Topology.GeneralTopology.ControlledTopologyRound3Source.Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ffa37b3436ed0f1462946b74d122bc898cbc5b8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ffa37b3436ed0f1462946b74d122bc898cbc5b8`.

Source path: `GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotOrthonormal` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotChartTopology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_gram_mul_left](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/declarations/det-gram-mul-left--8d6a02306a7974665ea5af3a.md) | 31 | `result-track:8d6a02306a7974665ea5af3a3a10cfb738ec20baa535f01c1a25f945edd258c3` |
| 2 | `def` | [controlledGramPivotDomain](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/declarations/controlledgrampivotdomain--4fa20d4fdd566f557918ce74.md) | 41 | `declaration-track:4fa20d4fdd566f557918ce746889868cf777fa52335987a48297dcf7c58fc901` |
| 3 | `theorem` | [controlledGramPivotDomain_orthonormal_iff](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/declarations/controlledgrampivotdomain-orthonormal-iff--ccce341440bdcab2bcdb1939.md) | 45 | `result-track:ccce341440bdcab2bcdb19393ed074b32ff36b6bef3cb8af511c5070b80ead02` |
| 4 | `theorem` | [controlledGramPivotDomain_mul_left_iff](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/declarations/controlledgrampivotdomain-mul-left-iff--eb0c8f76f2358cdf6b1281d7.md) | 57 | `result-track:eb0c8f76f2358cdf6b1281d7811bb419a1580759998533399506015ba9707eec` |
| 5 | `theorem` | [isOpen_controlledGramPivotDomain](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/declarations/isopen-controlledgrampivotdomain--8de4859b1c01e60794893d0c.md) | 70 | `result-track:8de4859b1c01e60794893d0c440b860cf5a9dc379515ab6aaaaa45211a65c935` |
| 6 | `def` | [intrinsicControlledPivotDomain](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/declarations/intrinsiccontrolledpivotdomain--ff7253711c596afb80aedede.md) | 77 | `declaration-track:ff7253711c596afb80aededebb0c4b2a2ccf175c5e7c0db20ba2925332b01d2b` |
| 7 | `theorem` | [representedPlane_mem_intrinsicControlledPivotDomain_iff](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/declarations/representedplane-mem-intrinsiccontrolledpivotdomain-iff--585a16d8cd6b40dc23d1ef7b.md) | 81 | `result-track:585a16d8cd6b40dc23d1ef7be4a460f4d1718a66429751816a5bfd3e38297536` |
| 8 | `theorem` | [isOpen_intrinsicControlledPivotDomain](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/declarations/isopen-intrinsiccontrolledpivotdomain--7481cad310e86d7962309594.md) | 95 | `result-track:7481cad310e86d7962309594b3bb583d872f19997a8985d574154763a3757bb3` |
| 9 | `theorem` | [intrinsicControlledPivotDomain_cover](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/declarations/intrinsiccontrolledpivotdomain-cover--a97cdb1e7eb17f9922f57291.md) | 108 | `result-track:a97cdb1e7eb17f9922f5729179281bf469c5600d4ba99068264f7a13585fba29` |
| 10 | `theorem` | [orthonormal_representedPlane_mem_intrinsicControlledPivotDomain_iff](../../../../../mathematics/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant6572762eb7db9a5c5d2273ba1656d47e85f6a51884e53cc7ba265685a8a1968f.lean/declarations/orthonormal-representedplane-mem-intrinsiccontrolledpivotdomain-iff--119bd928bf5b53f2742d5030.md) | 115 | `result-track:119bd928bf5b53f2742d50300a3633699cdcbaabf8247f33b0ccb2d4b2ca6c23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
