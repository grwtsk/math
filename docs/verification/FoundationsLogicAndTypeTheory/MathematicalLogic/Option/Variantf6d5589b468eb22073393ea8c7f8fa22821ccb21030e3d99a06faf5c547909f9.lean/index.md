# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Option.Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3fbd43d5edd6ca61eedf11130646dc0baaea451",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3fbd43d5edd6ca61eedf11130646dc0baaea451`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Perm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Option` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Equiv.optionCongr_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean/declarations/equiv-optioncongr-one--da2fedadbee314b8776b7757.md) | 28 | `result-track:da2fedadbee314b8776b7757a9a2d406035e2fbc68ca4af04c7f68179a7e8da1` |
| 2 | `theorem` | [Equiv.optionCongr_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean/declarations/equiv-optioncongr-swap--adec617f1f518658e6a6c887.md) | 33 | `result-track:adec617f1f518658e6a6c8873e72a062d166a82b48043745e79689b0e1060f32` |
| 3 | `theorem` | [Equiv.optionCongr_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean/declarations/equiv-optioncongr-sign--946a7adffec7c336c72d73d4.md) | 43 | `result-track:946a7adffec7c336c72d73d4885b436e297aaab560333f29745d921c00785544` |
| 4 | `theorem` | [map_equiv_removeNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean/declarations/map-equiv-removenone--1cc2ca92472d2fa6c00a75dd.md) | 52 | `result-track:1cc2ca92472d2fa6c00a75dd3e5a41f343726a9ddd77a9deba1e22c1cb7964b4` |
| 5 | `def` | [Equiv.Perm.decomposeOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean/declarations/equiv-perm-decomposeoption--31a7857c0b271ec5c6c4ca9d.md) | 70 | `declaration-track:31a7857c0b271ec5c6c4ca9d6031126ed6c4a9cc0b94a18bcfe6ef1edd3ca9d5` |
| 6 | `theorem` | [Equiv.Perm.decomposeOption_symm_of_none_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean/declarations/equiv-perm-decomposeoption-symm-of-none-apply--86e6cde9a55beb4fab0c0687.md) | 81 | `result-track:86e6cde9a55beb4fab0c0687079581408f7dbccf48db9e8c56b604f892f6af5f` |
| 7 | `theorem` | [Equiv.Perm.decomposeOption_symm_sign](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean/declarations/equiv-perm-decomposeoption-symm-sign--be4170639b71ee6e3b3eb7cf.md) | 85 | `result-track:be4170639b71ee6e3b3eb7cf7accfe9b6c04b01689d5cbc90ccce11506e37ee4` |
| 8 | `theorem` | [Finset.univ_perm_option](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variantf6d5589b468eb22073393ea8c7f8fa22821ccb21030e3d99a06faf5c547909f9.lean/declarations/finset-univ-perm-option--53cdc15541c91c4190355aa1.md) | 91 | `result-track:53cdc15541c91c4190355aa17de7aef3f5ff945422c576bde440b4672343a428` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
