# Verification target: GRWTSK.Topology.GeneralTopology.Induced.Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4cbf60c01ce6a9ff31b4becfa27fd33da0ec659",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4cbf60c01ce6a9ff31b4becfa27fd33da0ec659`.

Source path: `GRWTSK/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice.Image` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [induced](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/declarations/induced--499ab3209ec3a160dc3d976b.md) | 56 | `declaration-track:499ab3209ec3a160dc3d976b4e90e2c9444a58cd5d787388ed63ef3202481d94` |
| 2 | `instance` | [_root_.instTopologicalSpaceSubtype](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/declarations/root-insttopologicalspacesubtype--09caea77e79c58978dbfadd0.md) | 68 | `declaration-track:09caea77e79c58978dbfadd0c771e7f55ec89f3900512732fa57b35a02a7898e` |
| 3 | `def` | [coinduced](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/declarations/coinduced--7edffa7df6fc97da262deeff.md) | 76 | `declaration-track:7edffa7df6fc97da262deeffa172323f85a904eb58ee18fee4c47cad1caf6367` |
| 4 | `structure` | [IsCoherentWith](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/declarations/iscoherentwith--bc911d6b8d00441eb51da3f7.md) | 96 | `declaration-track:bc911d6b8d00441eb51da3f78e5f81dcc80b8c50f1d25e83e68e78a28d5ebea1` |
| 5 | `structure` | [IsInducing](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/declarations/isinducing--fd5ee76088448a2d28f5ea25.md) | 105 | `declaration-track:fd5ee76088448a2d28f5ea256acbee6042b9087235bd0e536317707a3d162d19` |
| 6 | `structure` | [IsEmbedding](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/declarations/isembedding--103e30b506d59c6fe2bd60c7.md) | 114 | `declaration-track:103e30b506d59c6fe2bd60c78c60c5df0de13c4274642205266971dd7a835636` |
| 7 | `structure` | [IsOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/declarations/isopenembedding--652675e751d0ba3499136a3e.md) | 123 | `declaration-track:652675e751d0ba3499136a3e78ddab80d7379fd3ac0df64ddbee7fb67b706ba0` |
| 8 | `structure` | [IsClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/declarations/isclosedembedding--7c7ca352395bf2ce6af7869b.md) | 129 | `declaration-track:7c7ca352395bf2ce6af7869b639ae3bef20647263f46ab269b22c4010f23fb78` |
| 9 | `structure` | [IsQuotientMap](../../../../../mathematics/Topology/GeneralTopology/Induced/Variant34524d400da1f125f77aa2a721dc2b2823860721a71ad247797587a2ed87d1f5.lean/declarations/isquotientmap--701c3826cd8898057bc4b9c3.md) | 136 | `declaration-track:701c3826cd8898057bc4b9c331b77fde5ccb2c09f708240a255c3e9299118bd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
