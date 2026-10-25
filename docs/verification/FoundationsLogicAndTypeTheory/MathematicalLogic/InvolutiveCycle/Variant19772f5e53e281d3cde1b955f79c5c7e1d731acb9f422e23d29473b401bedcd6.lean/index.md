# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InvolutiveCycle.Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b4a06a3a583bdca093861eb0c3734692c76eadf",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b4a06a3a583bdca093861eb0c3734692c76eadf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.FiniteDynamics.Involution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CycleDirection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/cycledirection--49ddfda71a038b8996c35efc.md) | 26 | `declaration-track:49ddfda71a038b8996c35efcec066cb9b66acf09cdd3a1102b623c0a05f2bf71` |
| 2 | `def` | [opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/opposite--abcab91b8d519e872f7ebc6b.md) | 34 | `declaration-track:abcab91b8d519e872f7ebc6b3ab6739969ca51e431bf8cd9b4c8a920a421e0b0` |
| 3 | `theorem` | [opposite_opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/opposite-opposite--679e4a19770053d93b132c52.md) | 39 | `result-track:679e4a19770053d93b132c52042c293e4558bd4fbede9349c2d1c9f79d45f933` |
| 4 | `def` | [cycleSuccessor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/cyclesuccessor--83177c883680547e0099da5a.md) | 45 | `declaration-track:83177c883680547e0099da5af1866ea0e82f749b634b155e6feddf5f7fd9a4f0` |
| 5 | `def` | [cyclePredecessor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/cyclepredecessor--624d5322a66b1e29c931c10f.md) | 50 | `declaration-track:624d5322a66b1e29c931c10f6a9eac36c894a36c35a8332a06d9f531b2ac4744` |
| 6 | `theorem` | [cyclePredecessor_successor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/cyclepredecessor-successor--f8302867fef7c2197d53aeb0.md) | 55 | `result-track:f8302867fef7c2197d53aeb0c7cf78698ad8e4d97311e23fa958139c5b0f4121` |
| 7 | `theorem` | [cycleSuccessor_predecessor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/cyclesuccessor-predecessor--de99b9732c3b5af0fe0c76fc.md) | 61 | `result-track:de99b9732c3b5af0fe0c76fc26caa18eb74a6892ef413dfc7a10454e25094da2` |
| 8 | `structure` | [InvolutiveCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/involutivecycle--aebf2dcf75c23ef586bd1a5a.md) | 67 | `declaration-track:aebf2dcf75c23ef586bd1a5a0b8d4602a577d2abbc7999dd0f3b5eb1aeb49abf` |
| 9 | `theorem` | [orbit_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/orbit-injective--557b66f51b5b4a2f8c24ac89.md) | 80 | `result-track:557b66f51b5b4a2f8c24ac898c302156163850cc5fa294a471a3342816b14b15` |
| 10 | `theorem` | [edge_returns](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/edge-returns--f7bb9d1d90209e4df4aaa728.md) | 84 | `result-track:f7bb9d1d90209e4df4aaa728bf49302430504b07bfbd70ceec9a8b4909ee67bb` |
| 11 | `def` | [transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/transport--d3cdacbb19fabf429887f4f8.md) | 92 | `declaration-track:d3cdacbb19fabf429887f4f808c964e5b7c5033d4e8a6db85348c8b37e2bd636` |
| 12 | `theorem` | [transport_orbit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/transport-orbit--d64ecdb4479de76c08a768fb.md) | 103 | `result-track:d64ecdb4479de76c08a768fbacfd8709e98a7f79c2e2264733d0193ef9609564` |
| 13 | `theorem` | [transport_edge_act](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/transport-edge-act--43975b5d6c30e8aa8fee6842.md) | 110 | `result-track:43975b5d6c30e8aa8fee6842c1ba6de77b112abbe4c04b22e1702c2c70d53dd9` |
| 14 | `structure` | [DirectedCycleQuantum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/directedcyclequantum--b58e712404a2db537173d603.md) | 120 | `declaration-track:b58e712404a2db537173d603ef2321c7aa1d8624299ef86f1de7631ce604e469` |
| 15 | `def` | [reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/reverse--af8a11f3d2cc1761e2998b15.md) | 130 | `declaration-track:af8a11f3d2cc1761e2998b1517c9144d2f9a053394f437efba6f9c279f10b2d1` |
| 16 | `theorem` | [reverse_direction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/reverse-direction--3f310a1f2e27e20c996713a6.md) | 134 | `result-track:3f310a1f2e27e20c996713a609173067ffbfcbb1f3665ae4720c65efd23e260f` |
| 17 | `theorem` | [reverse_reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/reverse-reverse--cd5855364345d46a4d0a5efb.md) | 139 | `result-track:cd5855364345d46a4d0a5efb52848b2e9514018e300d084b8d9e70ca1bfe73e4` |
| 18 | `def` | [transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/transport--d871222bdd8fd75aef9a7d9c.md) | 145 | `declaration-track:d871222bdd8fd75aef9a7d9c0ac3536cfa60e9a5417ed2a7b8dfb219812e771f` |
| 19 | `theorem` | [transport_direction](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveCycle/Variant19772f5e53e281d3cde1b955f79c5c7e1d731acb9f422e23d29473b401bedcd6.lean/declarations/transport-direction--77cfa6cef1e5139cf688be04.md) | 152 | `result-track:77cfa6cef1e5139cf688be04f96e0a22f8a3e8070f95f2565595196c3e21e5da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
