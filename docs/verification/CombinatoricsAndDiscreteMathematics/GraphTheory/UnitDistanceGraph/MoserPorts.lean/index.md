# Verification target: GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.MoserPorts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66e53a988d8900c8eef661d6d5965c209edc0a37",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/MoserPorts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66e53a988d8900c8eef661d6d5965c209edc0a37`.

Source path: `GRWTSK/Combinatorics/GraphTheory/UnitDistanceGraph/MoserPorts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/GraphTheory/UnitDistanceGraph/MoserPorts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/Moser__SourceOccurrence6a338d6b4e40cbf17160052c.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ColorPortGadget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/colorportgadget--e876a9335eded0e4e40c7a55.md) | 8 | `declaration-track:e876a9335eded0e4e40c7a55e1a3afafe7ba5dce260e12838a1baca20931d366` |
| 2 | `def` | [ProperColoring](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/propercoloring--0eef660142db2cb1f084afe1.md) | 13 | `declaration-track:0eef660142db2cb1f084afe142e29f98297f74b0f522761602638cfed188e2f6` |
| 3 | `def` | [ColorPortGadget.Extends](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/colorportgadget-extends--692cb3783177953ae27b57ae.md) | 18 | `declaration-track:692cb3783177953ae27b57ae1ef0820be23300a80763523dc5856c3541edf278` |
| 4 | `def` | [ColorPortGadget.fullBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/colorportgadget-fullboundary--026179b1e5fafd270f6f6b57.md) | 24 | `declaration-track:026179b1e5fafd270f6f6b5771264f8d0525689621dce1bb382b02e92910f2ae` |
| 5 | `theorem` | [ColorPortGadget.extends_fullBoundary_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/colorportgadget-extends-fullboundary-iff--0735c1bee86682f7d26a3033.md) | 30 | `result-track:0735c1bee86682f7d26a3033dc887573f01f064a47486078eb1534f1a48a1f3e` |
| 6 | `def` | [RelationComp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/relationcomp--f075c365c5f8564f4fd36788.md) | 46 | `declaration-track:f075c365c5f8564f4fd3678883ab673dd725560d2313c9b40c061eab150653ea` |
| 7 | `theorem` | [relationComp_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/relationcomp-assoc--6ef6dbd644366a6997df56d5.md) | 51 | `result-track:6ef6dbd644366a6997df56d5869960b8ab4883fa00d8517fb46ed7d2ab8111ae` |
| 8 | `def` | [moserAdj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/moseradj--7366ab7b4f6a7ff06d04fcb5.md) | 65 | `declaration-track:7366ab7b4f6a7ff06d04fcb5f0e938a8edbfec6f02e1dc1ed5f9deb1f2aed838` |
| 9 | `def` | [moserColorPortGadget](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/mosercolorportgadget--222f07a511b07e4b617cc3b2.md) | 69 | `declaration-track:222f07a511b07e4b617cc3b2b16034f26675430605b684fda4901553103a1a6a` |
| 10 | `theorem` | [properColoring_moserAdj_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/propercoloring-moseradj-iff--1cab5079564e81cc3b5bbb79.md) | 73 | `result-track:1cab5079564e81cc3b5bbb799894bb0c6ad0bb9e91fe345582c983224c179099` |
| 11 | `theorem` | [moser_threeColor_extension_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/moser-threecolor-extension-empty--fb8e936e9d6ead3f13bbf7b6.md) | 85 | `result-track:fb8e936e9d6ead3f13bbf7b64f641b217ab6a98619a387d2a793f91f56839cfd` |
| 12 | `theorem` | [moser_fourColor_extension_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/UnitDistanceGraph/MoserPorts.lean/declarations/moser-fourcolor-extension-nonempty--8f655c6b0a7662f455a56873.md) | 94 | `result-track:8f655c6b0a7662f455a56873214e640cf6a5ac792850aa5f01ba98082678a4db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
