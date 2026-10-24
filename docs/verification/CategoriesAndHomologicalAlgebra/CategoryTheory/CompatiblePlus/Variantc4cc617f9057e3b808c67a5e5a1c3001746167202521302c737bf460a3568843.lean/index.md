# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CompatiblePlus.Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afdb11e1dc4b9d1b91284200f7af652cfd15480b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afdb11e1dc4b9d1b91284200f7af652cfd15480b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Plus` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagramCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/diagramcompiso--4ceda2646f5c0b3cb666f1f5.md) | 46 | `declaration-track:4ceda2646f5c0b3cb666f1f588d920a6cb379099915e9a0d34bbffb54811febc` |
| 2 | `theorem` | [diagramCompIso_hom_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/diagramcompiso-hom--5cc402de02f3b95f9b52065f.md) | 59 | `result-track:5cc402de02f3b95f9b52065fe89588809621863dd8828ae875ab544fb3fdc0b3` |
| 3 | `def` | [plusCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/pluscompiso--b34c81d908a3325549a64ddd.md) | 71 | `declaration-track:b34c81d908a3325549a64ddd4228870ad490c2118182d0fe7bf2360c8d3860d5` |
| 4 | `theorem` | [ι_plusCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/pluscompiso-hom--65b666230095854e8d61f43d.md) | 111 | `result-track:65b666230095854e8d61f43d2a0fafacb0170094fb1436c7383db7db2437156c` |
| 5 | `theorem` | [plusCompIso_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/pluscompiso-whiskerleft--0193bb2fea2f1a62caa178b7.md) | 122 | `result-track:0193bb2fea2f1a62caa178b714a099d03c71e3bbfe2208d546e99a9942b63730` |
| 6 | `def` | [plusFunctorWhiskerLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/plusfunctorwhiskerleftiso--c7fc27b0b7d2023c32c96a66.md) | 141 | `declaration-track:c7fc27b0b7d2023c32c96a662e8f62af96e02080f09c1af91547dd4a87e81470` |
| 7 | `theorem` | [plusCompIso_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/pluscompiso-whiskerright--89f27771a5d42378c577fce9.md) | 149 | `result-track:89f27771a5d42378c577fce9ca9c91063411b1187fd067f59c4467a478927e65` |
| 8 | `def` | [plusFunctorWhiskerRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/plusfunctorwhiskerrightiso--6b6312e1ec80eca2215ab9c5.md) | 175 | `declaration-track:6b6312e1ec80eca2215ab9c5e3aab6ed3e2ed96feb9532ce8631227437d64681` |
| 9 | `theorem` | [whiskerRight_toPlus_comp_plusCompIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/whiskerright-toplus-comp-pluscompiso-hom--31ee5bcbe1ec28d0d5f015d5.md) | 181 | `result-track:31ee5bcbe1ec28d0d5f015d56819d164e8c1edb4c096878e8e12e9d87fcf5ad4` |
| 10 | `theorem` | [toPlus_comp_plusCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/toplus-comp-pluscompiso-inv--30a0daacf752efcabbf12b2e.md) | 194 | `result-track:30a0daacf752efcabbf12b2ec2c24c8ba6239507b84749c7bf01a89d9d0925b8` |
| 11 | `theorem` | [plusCompIso_inv_eq_plusLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatiblePlus/Variantc4cc617f9057e3b808c67a5e5a1c3001746167202521302c737bf460a3568843.lean/declarations/pluscompiso-inv-eq-pluslift--eed2cd8f5fb622205287ac6c.md) | 197 | `result-track:eed2cd8f5fb622205287ac6c17afdba870a8d3df7c68cda64a2325f66f1ee41e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
