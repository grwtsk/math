# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1a9db43f5ce1f699152fd47c9b1b3f3b7f7212f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1a9db43f5ce1f699152fd47c9b1b3f3b7f7212f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean/declarations/piobjiso--01038aff41c83308f970d550.md) | 37 | `declaration-track:01038aff41c83308f970d55058b3557594b9f1df1f5e9b9d8115c458b8a6cdcf` |
| 2 | `theorem` | [piObjIso_hom_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean/declarations/piobjiso-hom-comp--91e0ea0b45ea7141a49f1fa5.md) | 42 | `result-track:91e0ea0b45ea7141a49f1fa51940421bb9c8b9ee3f0f045853e83fc25324b120` |
| 3 | `theorem` | [piObjIso_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean/declarations/piobjiso-inv-comp--08aa25b7b0e643254925ae83.md) | 47 | `result-track:08aa25b7b0e643254925ae83b788208a8f96cecdc907b8e0b970d10669b3fe92` |
| 4 | `def` | [sigmaObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean/declarations/sigmaobjiso--da2f795967fcd0d3c9009f31.md) | 61 | `declaration-track:da2f795967fcd0d3c9009f317201768070936dd046f0f587f8690132b6ced8f6` |
| 5 | `theorem` | [ι_comp_sigmaObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean/declarations/comp-sigmaobjiso-hom--bc66c1402701bd8a16d016d6.md) | 66 | `result-track:bc66c1402701bd8a16d016d6d881a2e20e43d4eb09eebc70904365a6e9975441` |
| 6 | `theorem` | [ι_comp_sigmaObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant1b6c8557dc3a1ae2e0d6f0d177492b439866fc444c94f05cfd971b22ff19f05d.lean/declarations/comp-sigmaobjiso-inv--d3af8da5a4597455aeafed77.md) | 71 | `result-track:d3af8da5a4597455aeafed77408cd6e8e4b4dfe31ac225911f298be162cec50f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
