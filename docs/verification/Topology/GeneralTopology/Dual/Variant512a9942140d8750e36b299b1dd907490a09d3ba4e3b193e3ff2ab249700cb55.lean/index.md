# Verification target: GRWTSK.Topology.GeneralTopology.Dual.Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab995e1c1def2da75f3ab5bb8d28c73f31f48272",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab995e1c1def2da75f3ab5bb8d28c73f31f48272`.

Source path: `GRWTSK/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Set.innerDualCone](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/set-innerdualcone--2203a70b3b08430ece0f30f6.md) | 51 | `declaration-track:2203a70b3b08430ece0f30f665c4db78658a0aa7ae5fde82d4eb44122f0d9922` |
| 2 | `theorem` | [mem_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/mem-innerdualcone--de859897f58383984cc10569.md) | 62 | `result-track:de859897f58383984cc1056966cee88ba3e17d167f89003321821a1995d90a17` |
| 3 | `theorem` | [innerDualCone_empty](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/innerdualcone-empty--807abe3706ed393fc7954b64.md) | 67 | `result-track:807abe3706ed393fc7954b64e06322db881cda0317423cdb0ba3d89d622fee0d` |
| 4 | `theorem` | [innerDualCone_zero](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/innerdualcone-zero--f381f6b6a200daa1f270b8f1.md) | 73 | `result-track:f381f6b6a200daa1f270b8f18d8131f3c381f29103da5422b97318131d233d37` |
| 5 | `theorem` | [innerDualCone_univ](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/innerdualcone-univ--aefee15025059a868c68d86b.md) | 79 | `result-track:aefee15025059a868c68d86bed919aca6bb032fde8af33e21773534760e5c10b` |
| 6 | `theorem` | [innerDualCone_le_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/innerdualcone-le-innerdualcone--ecd5e235d68ea7bdc4f1d048.md) | 86 | `result-track:ecd5e235d68ea7bdc4f1d048556a93c532804817c1a192bd96f3995c71136af2` |
| 7 | `theorem` | [pointed_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/pointed-innerdualcone--57a1ad8d4554986ea2c18625.md) | 90 | `result-track:57a1ad8d4554986ea2c186253f853ccccf0a95d3cd7854593ca7532d2c16d48b` |
| 8 | `theorem` | [innerDualCone_singleton](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/innerdualcone-singleton--3458a94128106ad8ac2d34e6.md) | 95 | `result-track:3458a94128106ad8ac2d34e66ef5eed9f367bcf886918a0ab89330c5e167b6e8` |
| 9 | `theorem` | [innerDualCone_union](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/innerdualcone-union--fb7a5dedeba386c0fb342e65.md) | 100 | `result-track:fb7a5dedeba386c0fb342e65e08c1b8c7a1f0b5006fe4c975571a74a86ad2479` |
| 10 | `theorem` | [innerDualCone_insert](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/innerdualcone-insert--63e51616ded98e08290ec925.md) | 106 | `result-track:63e51616ded98e08290ec925a1613235bad0a61a87479c288e409e4c711a621a` |
| 11 | `theorem` | [innerDualCone_iUnion](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/innerdualcone-iunion--b09b270d5e6ae227dd1f22b1.md) | 111 | `result-track:b09b270d5e6ae227dd1f22b1483c39f81146f6988ee63aa219fe70e915846696` |
| 12 | `theorem` | [innerDualCone_sUnion](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/innerdualcone-sunion--469f5a8a97df4e5689fedf3a.md) | 120 | `result-track:469f5a8a97df4e5689fedf3a92330936ca6d78da74c1caa034ad9111e8a4ce81` |
| 13 | `theorem` | [innerDualCone_eq_iInter_innerDualCone_singleton](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/innerdualcone-eq-iinter-innerdualcone-singleton--6e0eb3ef06d5991f2129557d.md) | 126 | `result-track:6e0eb3ef06d5991f2129557d58eb27e537557074fd6477db50032b248749715f` |
| 14 | `theorem` | [isClosed_innerDualCone](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/isclosed-innerdualcone--c219ee451ae1be632f48a21d.md) | 131 | `result-track:c219ee451ae1be632f48a21de82f9e5591c63a52fa26020aebe02eb1fc7225ed` |
| 15 | `theorem` | [ConvexCone.pointed_of_nonempty_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/convexcone-pointed-of-nonempty-of-isclosed--6862b776088853f99b2963c8.md) | 145 | `result-track:6862b776088853f99b2963c81d2645fc4b51a6a3ce38ee971af7a500017d000d` |
| 16 | `theorem` | [ConvexCone.hyperplane_separation_of_nonempty_of_isClosed_of_nmem](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/convexcone-hyperplane-separation-of-nonempty-of-isclosed-of-nmem--b8251c071c46478541d4e6a7.md) | 171 | `result-track:b8251c071c46478541d4e6a7c4605764715c503947b92742bb0f62478c7c32ba` |
| 17 | `theorem` | [ConvexCone.innerDualCone_of_innerDualCone_eq_self](../../../../../mathematics/Topology/GeneralTopology/Dual/Variant512a9942140d8750e36b299b1dd907490a09d3ba4e3b193e3ff2ab249700cb55.lean/declarations/convexcone-innerdualcone-of-innerdualcone-eq-self--4f428f19b7664f96bb824f6e.md) | 206 | `result-track:4f428f19b7664f96bb824f6e5742b879347ac62ed066b09b8ea757aa8aa091a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
