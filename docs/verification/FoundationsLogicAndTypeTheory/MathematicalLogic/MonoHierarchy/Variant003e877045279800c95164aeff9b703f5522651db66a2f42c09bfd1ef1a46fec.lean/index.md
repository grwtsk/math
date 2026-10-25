# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MonoHierarchy.Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "598d57ee94a0767c1ac1aafe8c19a241f06d6644",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `598d57ee94a0767c1ac1aafe8c19a241f06d6644`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.StructuralIsomorphism` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonoHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean/declarations/monohierarchy--2768ba07afeef3a6c8800ddd.md) | 15 | `declaration-track:2768ba07afeef3a6c8800ddd5debd41546e6af1d716ddef0c70261a7ba3a76d3` |
| 2 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean/declarations/ext--888c68babfafde340d3db798.md) | 27 | `result-track:888c68babfafde340d3db798ecf28f24afb218794b47ba76b8766f8cdc5f85a9` |
| 3 | `def` | [transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean/declarations/transport--0d0e5a5b5f0628f04c31b515.md) | 42 | `declaration-track:0d0e5a5b5f0628f04c31b515a0af9e75e1ee2e3f87289e38b15dcb171768bcb1` |
| 4 | `theorem` | [transport_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean/declarations/transport-refl--bb7b10a2bcd6eeb8d2558ca6.md) | 60 | `result-track:bb7b10a2bcd6eeb8d2558ca65bd2e519b33365c26289469b7e649d52410f2ab0` |
| 5 | `theorem` | [transport_symm_transport](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean/declarations/transport-symm-transport--533c22a00a2cb63d4aaaa1ee.md) | 65 | `result-track:533c22a00a2cb63d4aaaa1ee63fdfdb1c1fdfd2fde61d6a1a8f90c1f52a52ada` |
| 6 | `theorem` | [transport_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean/declarations/transport-injective--1d94423d9f0b57fd9e641402.md) | 72 | `result-track:1d94423d9f0b57fd9e6414023f9c3c94b4cc8e068e2dedbe97be074af6d442a7` |
| 7 | `theorem` | [transport_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MonoHierarchy/Variant003e877045279800c95164aeff9b703f5522651db66a2f42c09bfd1ef1a46fec.lean/declarations/transport-trans--47ea97169101f2c59f88ed75.md) | 80 | `result-track:47ea97169101f2c59f88ed750f4a455767427bfdc42f30eb6192848f8563158f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
