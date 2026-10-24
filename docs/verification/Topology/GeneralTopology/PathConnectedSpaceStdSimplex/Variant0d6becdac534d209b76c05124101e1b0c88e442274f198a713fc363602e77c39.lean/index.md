# Verification target: GRWTSK.Topology.GeneralTopology.PathConnectedSpaceStdSimplex.Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "271d8eaebb5cf2026dfd61240cc1c345d8262653",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `271d8eaebb5cf2026dfd61240cc1c345d8262653`.

Source path: `GRWTSK/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean.json)

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
| 1 | `lemma` | [continuous_convexCombPair](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/declarations/continuous-convexcombpair--314b1eb3e7f3c54e2b2a7ef3.md) | 30 | `result-track:314b1eb3e7f3c54e2b2a7ef3e96beb56c500251dcbca158181876a60bb9be866` |
| 2 | `lemma` | [continuous_duple](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/declarations/continuous-duple--bf7e0c857649bd771ad8e171.md) | 51 | `result-track:bf7e0c857649bd771ad8e1710eecee5c0a6a612943bda86a901ac4e1a107215d` |
| 3 | `instance` | [pathConnectedSpace](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/declarations/pathconnectedspace--678b5d3a6fd7f35159ff94e4.md) | 57 | `declaration-track:678b5d3a6fd7f35159ff94e43f7ff89ff2abffb280ca5acfe52f36157a5bdd45` |
| 4 | `def` | [homeomorphI](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/declarations/homeomorphi--62ddc6fab11c2d47f716b914.md) | 66 | `declaration-track:62ddc6fab11c2d47f716b914aeaae9591dbe78829997d2f5360ca5edd650e591` |
| 5 | `lemma` | [homeomorphI_apply_coe](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/declarations/homeomorphi-apply-coe--5f6c1ee6084285e6c766c7aa.md) | 70 | `result-track:5f6c1ee6084285e6c766c7aa9df275b03eaeef02054810091b31f8f24a672cc9` |
| 6 | `lemma` | [homeomorphI_single_zero](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/declarations/homeomorphi-single-zero--82c4dbf23ab7332a7529df7f.md) | 75 | `result-track:82c4dbf23ab7332a7529df7f277bb929bb3749fa12a1bfa1f597d96b2a48ab03` |
| 7 | `lemma` | [homeomorphI_single_one](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/declarations/homeomorphi-single-one--a7e25f97fdb582153aca8629.md) | 78 | `result-track:a7e25f97fdb582153aca8629c20be25c8468d3de81bca9522a9b4e3922965769` |
| 8 | `lemma` | [homeomorphI_symm_zero](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/declarations/homeomorphi-symm-zero--05f74bfa734bbda01de1cb74.md) | 81 | `result-track:05f74bfa734bbda01de1cb74fca97818ae28645e64a67c10ca0f0eca5101e46c` |
| 9 | `lemma` | [homeomorphI_symm_one](../../../../../mathematics/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/declarations/homeomorphi-symm-one--3d57bd2c8d790f3dbb88c46c.md) | 85 | `result-track:3d57bd2c8d790f3dbb88c46c9cf7083903d8f872a0863fe16411f101dc20c411` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
