# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e79f0db2d9a2bedef03916d0e9745cd7b8e4b004",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e79f0db2d9a2bedef03916d0e9745cd7b8e4b004`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.WithOne.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeMulHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/coemulhom--e57acb0cd92d4398c16c4f20.md) | 38 | `declaration-track:e57acb0cd92d4398c16c4f2020527cbd684d35e0aa80e5e9f24421b054c24f88` |
| 2 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/lift--741329565a4406761b2a20fa.md) | 57 | `declaration-track:741329565a4406761b2a20fa56df0ebc79bfeeacea8c6ae7879532b72001f7b4` |
| 3 | `theorem` | [lift_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/lift-coe--8fe3189442e15d5e59c1b03f.md) | 73 | `result-track:8fe3189442e15d5e59c1b03ff8c7cb2818fd4bf8917d8f881a76f9bf5edaf1f0` |
| 4 | `theorem` | [lift_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/lift-one--fc88a252785c3e6aca19e326.md) | 80 | `result-track:fc88a252785c3e6aca19e326c3d30be6d5d736ba3f119371e091a34331864144` |
| 5 | `theorem` | [lift_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/lift-unique--069b4d65ba765805b0037698.md) | 86 | `result-track:069b4d65ba765805b00376989f27b096c07a1376ff655774649d8fe358772d34` |
| 6 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/map--2e7739e139e75f9f41cd957d.md) | 101 | `declaration-track:2e7739e139e75f9f41cd957defcf649f88f8a846eaf446ce46b152d32227a277` |
| 7 | `theorem` | [map_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/map-coe--f4ea8788ae88416a8ef1d72c.md) | 107 | `result-track:f4ea8788ae88416a8ef1d72c820e2694b9907451617d30707203a0bb00a42adc` |
| 8 | `theorem` | [map_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/map-id--0eee31e2538888ca5ae160de.md) | 113 | `result-track:0eee31e2538888ca5ae160dee915f63dfae06a2daa5666083c3af967fadd35f0` |
| 9 | `theorem` | [map_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/map-map--66aa18d305e072a1f250820d.md) | 120 | `result-track:66aa18d305e072a1f250820da9f5e712402ce13e9c7318683e4c57e1f0c3d4a6` |
| 10 | `theorem` | [map_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/map-comp--efd13fe1772994507a105767.md) | 126 | `result-track:efd13fe1772994507a105767e8fcaa2ddccfec3b931f1c06b4958b24c54c315c` |
| 11 | `def` | [_root_.MulEquiv.withOneCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/root-mulequiv-withonecongr--d948008daf2d278d48656049.md) | 135 | `declaration-track:d948008daf2d278d48656049dd971251e2e7a419e77d15024690a7f517c6e1aa` |
| 12 | `theorem` | [_root_.MulEquiv.withOneCongr_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/root-mulequiv-withonecongr-refl--706a29b8ea8c0e20c133a7ba.md) | 148 | `result-track:706a29b8ea8c0e20c133a7ba757b8a3e18001b77b84af4fedf27fdba11c29c4c` |
| 13 | `theorem` | [_root_.MulEquiv.withOneCongr_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/root-mulequiv-withonecongr-symm--c905085897ab06886b723b5e.md) | 153 | `result-track:c905085897ab06886b723b5e4fa84a1f1f087a5890a112fede9a42f397b5795d` |
| 14 | `theorem` | [_root_.MulEquiv.withOneCongr_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.lean/declarations/root-mulequiv-withonecongr-trans--21cb6d69eefbdb89987c267d.md) | 159 | `result-track:21cb6d69eefbdb89987c267d1b0dd824fc495b1c8499a80e15b06a3e749f2e14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
