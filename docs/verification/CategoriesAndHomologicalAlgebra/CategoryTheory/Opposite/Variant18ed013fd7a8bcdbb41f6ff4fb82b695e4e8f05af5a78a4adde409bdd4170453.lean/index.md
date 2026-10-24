# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposite.Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dfcbc01c1c68e72e65ee7d51da5bfc789e58089",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dfcbc01c1c68e72e65ee7d51da5bfc789e58089`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/instance--d2d5a99115b4332b8705bd88.md) | 23 | `declaration-track:d2d5a99115b4332b8705bd889669414fae5a07d2ffbe09b5b85a1e5d919f70f0` |
| 2 | `def` | [kernelOpUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/kernelopunop--31b37188760d9b989d01ae00.md) | 39 | `declaration-track:31b37188760d9b989d01ae00d212f6055f76d88f2a6c942683044501bd2ce4d7` |
| 3 | `def` | [cokernelOpUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/cokernelopunop--48958eb7f23da416c318811a.md) | 58 | `declaration-track:48958eb7f23da416c318811a2720e224d1e7bcf156199e590482726f446a0b2f` |
| 4 | `def` | [kernelUnopOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/kernelunopop--02d389958e1d968bc5d5ef48.md) | 75 | `declaration-track:02d389958e1d968bc5d5ef48558937316018f003332a87596ae17e8c7df992fa` |
| 5 | `def` | [cokernelUnopOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/cokernelunopop--0f79f66fb628be54f6215509.md) | 80 | `declaration-track:0f79f66fb628be54f621550910f4c4375515b4178f44d71bc340ab13d578267c` |
| 6 | `theorem` | [cokernel.π_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/cokernel-op--302f38b722c34f69f81ccc38.md) | 83 | `result-track:302f38b722c34f69f81ccc38b9d8240115c616772414acfae652998a8687cb4a` |
| 7 | `theorem` | [kernel.ι_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/kernel-op--36a27bc0461f8f51cd8b484a.md) | 88 | `result-track:36a27bc0461f8f51cd8b484a228ac00cbd98cfeed16a7b3345baca6e7fdc575c` |
| 8 | `def` | [kernelOpOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/kernelopop--8fe1476192ce0b059edc0d4f.md) | 94 | `declaration-track:8fe1476192ce0b059edc0d4fa8b6f7529f7e81914555d1f602f3b3bfa468236d` |
| 9 | `def` | [cokernelOpOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/cokernelopop--9a28d9c50b70c102de61c310.md) | 99 | `declaration-track:9a28d9c50b70c102de61c3107e735afaa9217918f58af7c89f2eea345b5bb4ef` |
| 10 | `def` | [kernelUnopUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/kernelunopunop--9117804689c7f074a869ceca.md) | 104 | `declaration-track:9117804689c7f074a869ceca6e44e8674bcd6cb5d3913e3bee7b5e297aaba51c` |
| 11 | `theorem` | [kernel.ι_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/kernel-unop--d239ba1c2a28d81fd1df5de4.md) | 107 | `result-track:d239ba1c2a28d81fd1df5de4ca067b4a5f3d92ca90d94f2620f840b6321f91bf` |
| 12 | `theorem` | [cokernel.π_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/cokernel-unop--a79877b582b2f6097e01c159.md) | 111 | `result-track:a79877b582b2f6097e01c1591a88f5e1d85e113095ca2f84c7125902522dbbab` |
| 13 | `def` | [cokernelUnopUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/cokernelunopunop--82dedf2dafd7e7b921b856ad.md) | 118 | `declaration-track:82dedf2dafd7e7b921b856adb76251f2e65fa0ffae62387fb9170b0ce4f3295a` |
| 14 | `def` | [imageUnopOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/imageunopop--ecdff72358f3658c168fd41e.md) | 122 | `declaration-track:ecdff72358f3658c168fd41e211a2008dbfb68797ad3701463bdf75183c8a8ac` |
| 15 | `def` | [imageOpOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/imageopop--d8f3ddfb5c96858da70df606.md) | 129 | `declaration-track:d8f3ddfb5c96858da70df606f4d697b47a3bd675e6aa86c40d26115c173201b4` |
| 16 | `def` | [imageOpUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/imageopunop--9d99d7b9125cd7d58aa94270.md) | 133 | `declaration-track:9d99d7b9125cd7d58aa94270b13cbb4de1b5f508150ab6d6cb2bebce239a4042` |
| 17 | `def` | [imageUnopUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/imageunopunop--9a929f6c56b37b6fa439edd2.md) | 137 | `declaration-track:9a929f6c56b37b6fa439edd23647de9d755bc753828453d4863d0119d527563e` |
| 18 | `theorem` | [image_ι_op_comp_imageUnopOp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/image-op-comp-imageunopop-hom--adaf2bfde23ffddc8942647f.md) | 140 | `result-track:adaf2bfde23ffddc8942647f9c03f1c057312d3b848db7a4125a93e3cb3cc36d` |
| 19 | `theorem` | [imageUnopOp_hom_comp_image_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/imageunopop-hom-comp-image--de25f963d17a8b7d210a49bc.md) | 150 | `result-track:de25f963d17a8b7d210a49bc7f0e548677b26352da078f4f2298e99f1d07cc63` |
| 20 | `theorem` | [factorThruImage_comp_imageUnopOp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/factorthruimage-comp-imageunopop-inv--40b8b75e0b4770eb8ec2cfe4.md) | 155 | `result-track:40b8b75e0b4770eb8ec2cfe44aa6d6dbb92be9ae07c925fbeb33761f0dc41443` |
| 21 | `theorem` | [imageUnopOp_inv_comp_op_factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant18ed013fd7a8bcdbb41f6ff4fb82b695e4e8f05af5a78a4adde409bdd4170453.lean/declarations/imageunopop-inv-comp-op-factorthruimage--b8d21006b55271255aff0139.md) | 159 | `result-track:b8d21006b55271255aff01393f387369ad98383e51d9f65e9632600aa624defb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
