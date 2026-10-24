# Verification target: GRWTSK.Topology.GeneralTopology.MinImports.Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b2972801e1fdf06814a119b2b92bb54193e4dad",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b2972801e1fdf06814a119b2b92bb54193e4dad`.

Source path: `GRWTSK/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ImportGraph.Imports` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MinImports` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ImportState](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/declarations/importstate--41e1c22e21f46b3e70199245.md) | 45 | `declaration-track:41e1c22e21f46b3e701992459a12e0ab2905e81c185cdfb6e105a9f885c79afe` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/declarations/initialize--3e0adc2e875ec18c7012daaa.md) | 58 | `declaration-track:3e0adc2e875ec18c7012daaa620e361b4099be6804eaa19e8e3db9cd975c0bab` |
| 3 | `elab` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/declarations/elab--92aa324f840118e8af815a42.md) | 61 | `declaration-track:92aa324f840118e8af815a42f46ca938416abccdf589c09440f07d2575827442` |
| 4 | `register_option` | [linter.minImports](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/declarations/linter-minimports--0eb87fcb62e68b96a5c275b4.md) | 77 | `declaration-track:0eb87fcb62e68b96a5c275b4a3dfac8f32fe514f59cf1ca5c5f8fdb26ee0cbfe` |
| 5 | `register_option` | [linter.minImports.increases](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/declarations/linter-minimports-increases--f6b46b3378ffd25d7163b297.md) | 86 | `declaration-track:f6b46b3378ffd25d7163b2978aab233f23c6fc84e7d6dfc64e49477d73c5459e` |
| 6 | `def` | [importsBelow](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/declarations/importsbelow--3e068a06ed1c05068fbf5c9f.md) | 99 | `declaration-track:3e068a06ed1c05068fbf5c9fd40cbf2c74542307cd529a79824ca7061a3ae6f4` |
| 7 | `macro` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/declarations/macro--41ce5400f6f57c318d870b93.md) | 103 | `declaration-track:41ce5400f6f57c318d870b934598b8e9f16c8dd949e50ffd5ce33510f2ebaa56` |
| 8 | `def` | [minImportsLinter](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/declarations/minimportslinter--5eac240cb326cef8c00f9fc4.md) | 110 | `declaration-track:5eac240cb326cef8c00f9fc4f80281ab5524ff97f8eec1ae45f6f6da8eb1da63` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/MinImports/Variant9f06f489fc92719bc35c593618d577a2ad7dd80914318f15e182ab9f86505b1a.lean/declarations/initialize--26ed4d05c0bcdfe676b215c6.md) | 175 | `declaration-track:26ed4d05c0bcdfe676b215c6eb1e8de63ba5706ac1a4a796f41b24b81ca9d61c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
