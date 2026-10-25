# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea6eb3ec9a9d521054be8c75bef1ccf44eb2a554",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea6eb3ec9a9d521054be8c75bef1ccf44eb2a554`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.WithOne.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeMulHom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/coemulhom--8a21ad04f1f1ada3dbb34959.md) | 46 | `declaration-track:8a21ad04f1f1ada3dbb34959fb7661e7c6ed9aa56ba90fd93c3f66cd43aa48c7` |
| 2 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/lift--91eb6693d673b9f382d8c83f.md) | 65 | `declaration-track:91eb6693d673b9f382d8c83f84a00b81a52dd1d97fba391f4b2a2840bd1941f9` |
| 3 | `theorem` | [lift_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/lift-coe--6bebda14b5803e296906b5f1.md) | 81 | `result-track:6bebda14b5803e296906b5f1ab62d3338cddde8eb4a3fe70aa72bd3421417bb4` |
| 4 | `theorem` | [lift_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/lift-one--593392dc0f250e9fa5b6833f.md) | 88 | `result-track:593392dc0f250e9fa5b6833fd347c85e085c206a88dc5ebaa52ef979b6367a6b` |
| 5 | `theorem` | [lift_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/lift-unique--eb8365e69578a1e380f2d8a5.md) | 94 | `result-track:eb8365e69578a1e380f2d8a5f32f20447b0760ed8dabc315ecc60c6c58880e4f` |
| 6 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/map--1066648418ed721f6cbdb18c.md) | 109 | `declaration-track:1066648418ed721f6cbdb18c3795c714196c4acf878fd1b15abe6aab537ecdaf` |
| 7 | `theorem` | [map_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/map-coe--a1ced1f5e6df0ad82202f91c.md) | 115 | `result-track:a1ced1f5e6df0ad82202f91c3c18d8867dd68fae88a5c56bb8057a8ff30d30fa` |
| 8 | `theorem` | [map_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/map-id--8b66b8fd7d32af367d57c031.md) | 121 | `result-track:8b66b8fd7d32af367d57c031206e58cd7479f4b3e8418aee6a109bfc8cc904ab` |
| 9 | `theorem` | [map_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/map-map--25d65a415e68ae3defdb4920.md) | 128 | `result-track:25d65a415e68ae3defdb49204da1b3226e80a17c7fc0c8943b8df12c70e9ace9` |
| 10 | `theorem` | [map_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/map-comp--f539d9062e617acc7cd32480.md) | 134 | `result-track:f539d9062e617acc7cd324802effe443243faf81ccd23b6dc3522fa8db6a3adb` |
| 11 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoeMulHom.Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.MulEquiv.withOneCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-coemulhom-va--ca8478ef2f4b8c0c7bc3e2c4.md) | 143 | `declaration-track:ca8478ef2f4b8c0c7bc3e2c4900219b44582229d5740be5eb5a977701cde5253` |
| 12 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoeMulHom.Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.MulEquiv.withOneCongr_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-coemulhom-va--efe6d223e1391895d11e5d0c.md) | 156 | `result-track:efe6d223e1391895d11e5d0c9c5ad90a1c3e5f2c1428f960ef6772ce7b179887` |
| 13 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoeMulHom.Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.MulEquiv.withOneCongr_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-coemulhom-va--64db5f273ae16f75405f5335.md) | 161 | `result-track:64db5f273ae16f75405f53359276af38b5a8184f93af64e0b7bad432ffe9eb49` |
| 14 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoeMulHom.Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.MulEquiv.withOneCongr_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-coemulhom-va--2e07226b835a1ab417a7193f.md) | 167 | `result-track:2e07226b835a1ab417a7193fc6d24bea7b60ce495c8bfffce0c329b1a7c11892` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
