# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.JetPoleContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "626ee8358fa28f040b6e2bdf389e5ea29b70085d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/JetPoleContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `626ee8358fa28f040b6e2bdf389e5ea29b70085d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/JetPoleContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/JetPoleContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalJetPolePatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConstructedRectangleCount`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConstructedRectangleCount.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [value](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/value--f9f6b4fcb4c20a079c1b9e50.md) | 30 | `declaration-track:f9f6b4fcb4c20a079c1b9e50c429e4125c43508c83f8832b5b61ae8ecba22b47` |
| 2 | `def` | [radius](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/radius--cba828ce961179f72cbaf9c6.md) | 32 | `declaration-track:cba828ce961179f72cbaf9c65562b5ccda70f6a6fe200a11b6e49cb42c662477` |
| 3 | `def` | [EdgeValid](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/edgevalid--3ba2a32ca22189210f58f05a.md) | 36 | `declaration-track:3ba2a32ca22189210f58f05a3207e1ba63585f9bdd24fc03d90d951a2e2de704` |
| 4 | `instance` | [edgeDecidable](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/edgedecidable--77354e98233a2e2a31dee2bc.md) | 43 | `declaration-track:77354e98233a2e2a31dee2bcb46447eeba4661a98665f33b36ab46b3b0dbfe82` |
| 5 | `def` | [Valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/valid--3dd731c017b8043cf8cf9337.md) | 46 | `declaration-track:3dd731c017b8043cf8cf9337a9f2129842595b7a808f686c0cee5a50ce32f4c2` |
| 6 | `instance` | [validDecidable](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/validdecidable--fd507be24968b739d0bcbfee.md) | 52 | `declaration-track:fd507be24968b739d0bcbfee066a0d660d2e5c3fe78ddfd5ca772e00b08e7c1c` |
| 7 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/check--dc02e996629292cec2463035.md) | 55 | `declaration-track:dc02e996629292cec2463035547a291d56accb0334be8b3b01b5b6e2bdc57eef` |
| 8 | `theorem` | [check_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/check-iff--b970681951239fae9eec305b.md) | 58 | `result-track:b970681951239fae9eec305b48025a069d7ad479446f3082d3b16dacdc980af8` |
| 9 | `theorem` | [checked_edge](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/checked-edge--13df968ab6e1cd890a9481d7.md) | 61 | `result-track:13df968ab6e1cd890a9481d7e616ad6da31e253cb6cd1ca3012a0caa70f357da` |
| 10 | `theorem` | [domain_covered](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/domain-covered--a3288c4b6a9a72037de35f14.md) | 67 | `result-track:a3288c4b6a9a72037de35f142662fe71c34247d278fd4fd3cfa05cc7aeab150e` |
| 11 | `theorem` | [edge_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/edge-nonzero--34a4882ec7ce1353608fec79.md) | 76 | `result-track:34a4882ec7ce1353608fec7935f28c117c34b1d370b78a67bb6310925a078547` |
| 12 | `theorem` | [checked_cells](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/checked-cells--10f8e2ccb4236f24955d4bf4.md) | 93 | `result-track:10f8e2ccb4236f24955d4bf4ff114ab1737c4c4fd07c38422242eee7e19ae6df` |
| 13 | `def` | [freeHomotopy](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/freehomotopy--680bad4910312744aec5b807.md) | 102 | `declaration-track:680bad4910312744aec5b8079d020345e1a9e2a93d5ac8fd3667cb3753b796ca` |
| 14 | `theorem` | [source_closed](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/source-closed--abb5464cb5d2991876dc8c80.md) | 111 | `result-track:abb5464cb5d2991876dc8c8000d7c2a4931bbcaf460c59b04d0e02c76dd94da2` |
| 15 | `theorem` | [source_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/source-nonzero--005ce42d07f0edc9e47e38c7.md) | 118 | `result-track:005ce42d07f0edc9e47e38c7c5ad4282b3967834a4fb9ef3e6b4d16e583a1d57` |
| 16 | `theorem` | [image_closed](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/image-closed--88ccc2e72591347e8a4ac480.md) | 124 | `result-track:88ccc2e72591347e8a4ac48098fedfbf15b49468a7eeba86533bca8f325400f8` |
| 17 | `theorem` | [image_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/image-nonzero--a2c4c84c57e5dd811a596a56.md) | 131 | `result-track:a2c4c84c57e5dd811a596a5605605e0687518d72725c5867adb249011b6e58eb` |
| 18 | `def` | [sourceIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/sourceindex--3ed937f1d62cd0ddffc13ff8.md) | 138 | `declaration-track:3ed937f1d62cd0ddffc13ff8eacfc71fcb9dac249ca5c9abf9befa35ba8091f8` |
| 19 | `theorem` | [sourceIndex_eq_imageIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/sourceindex-eq-imageindex--79342a8f5e449534c7a1f5c5.md) | 142 | `result-track:79342a8f5e449534c7a1f5c5139eeecfb8033dffa36be4cc3617bcadd0968fad` |
| 20 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/evaluate--efb1635e1b41cde5255d7e8e.md) | 150 | `declaration-track:efb1635e1b41cde5255d7e8e0b985ba157affe81de8f0abe34312c288ef864d3` |
| 21 | `theorem` | [evaluate_eq_some_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/evaluate-eq-some-iff--e37b125439407f8e126ba77a.md) | 153 | `result-track:e37b125439407f8e126ba77a5345ae3178a0f69df178d4bd60e2b10b91e608b2` |
| 22 | `theorem` | [evaluate_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/JetPoleContour.lean/declarations/evaluate-sound--0e200e6d66a292eb3824ccf4.md) | 158 | `result-track:0e200e6d66a292eb3824ccf486a103e2dd8a256a65a93c55449e0bcdeff41370` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
