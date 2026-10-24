# Verification target: GRWTSK.Topology.GeneralTopology.Certificate.Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51f0415b583573f3e215e51c67c76e2ecaa446b8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Certificate/Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Certificate/Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Certificate/Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51f0415b583573f3e215e51c67c76e2ecaa446b8`.

Source path: `GRWTSK/Topology/GeneralTopology/Certificate/Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Certificate/Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.WP1.TransportedRange.Definition` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TransportedRangeNesting](../../../../../mathematics/Topology/GeneralTopology/Certificate/Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11.lean/declarations/transportedrangenesting--899fafc6fa33d4bec36fa380.md) | 9 | `declaration-track:899fafc6fa33d4bec36fa380c37d486b96fe5ca15ef43fba1d76260c2eeca0b1` |
| 2 | `structure` | [TransportedRangeClosed](../../../../../mathematics/Topology/GeneralTopology/Certificate/Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11.lean/declarations/transportedrangeclosed--6efed243e3c7cfb91a73c012.md) | 19 | `declaration-track:6efed243e3c7cfb91a73c012eeac6b91c82d1063740633bfee1f25eefcfa9d18` |
| 3 | `structure` | [SoninConnectorGeometry](../../../../../mathematics/Topology/GeneralTopology/Certificate/Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11.lean/declarations/soninconnectorgeometry--d7b3cb1d45793a5232be4049.md) | 29 | `declaration-track:d7b3cb1d45793a5232be4049e1060e690e727fef0428cfcde1fa9dd14f3c9ecd` |
| 4 | `theorem` | [transportedRange_mono](../../../../../mathematics/Topology/GeneralTopology/Certificate/Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11.lean/declarations/transportedrange-mono--34311bf028518db30957a28f.md) | 38 | `result-track:34311bf028518db30957a28fd38228ffc7c78b875cfac0baad8c00a87c1c75cf` |
| 5 | `theorem` | [transportedRange_isClosed](../../../../../mathematics/Topology/GeneralTopology/Certificate/Variantf396f1567272c2bb7936e2b67b306c83938644e29c0a161218562c1af3e5bd11.lean/declarations/transportedrange-isclosed--32ede5e8efd1803b7e077f82.md) | 48 | `result-track:32ede5e8efd1803b7e077f8232b4a5d0c9d5819f0f7732ca52a07dacaddd659b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
