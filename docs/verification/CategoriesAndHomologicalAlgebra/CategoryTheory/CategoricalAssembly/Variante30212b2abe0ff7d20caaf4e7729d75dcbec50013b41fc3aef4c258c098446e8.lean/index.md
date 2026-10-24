# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoricalAssembly.Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "470319ac67a3e8613573141f84fa4737189e3fd4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `470319ac67a3e8613573141f84fa4737189e3fd4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Omega` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [separateInverseIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/separateinverseiso--b338997d43110bf15c55f94b.md) | 27 | `declaration-track:b338997d43110bf15c55f94bd201e8bcea9902dd6968f70daaa76498ac011afe` |
| 2 | `def` | [assembleSeparateInverses](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/assembleseparateinverses--aab84a576c29837f51545dc8.md) | 35 | `declaration-track:aab84a576c29837f51545dc8af8c669a2afa8c8b413458c281b32e098bd151f1` |
| 3 | `theorem` | [assembled_forward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/assembled-forward--987e79ea71a4555d279137e4.md) | 41 | `result-track:987e79ea71a4555d279137e49f806856bb859f672108cd0126b45011aadf8ded` |
| 4 | `theorem` | [boundary_epi_of_hom_comparisons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/boundary-epi-of-hom-comparisons--46dd0540e8a4738a706d212d.md) | 48 | `result-track:46dd0540e8a4738a706d212da8170588696fc7b584421dc48da35998d2ca95f6` |
| 5 | `theorem` | [degree_relevance_bounds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/degree-relevance-bounds--cf5eecedbe5a6278121a3c0b.md) | 62 | `result-track:cf5eecedbe5a6278121a3c0b01c1317d137ef390b635d5676ee136fb74fcc216` |
| 6 | `def` | [threeLabelForward](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/threelabelforward--2cca1cd68fbc04d0b0b5b5ee.md) | 65 | `declaration-track:2cca1cd68fbc04d0b0b5b5ee30d505e6329abe82cf2af764eb69df6c7c9c2b7f` |
| 7 | `def` | [threeLabelLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/threelabelleft--b0c320e08f2d86fd7ce0b98a.md) | 68 | `declaration-track:b0c320e08f2d86fd7ce0b98a59036c2591e04769f333225bfd896e8ac47b78fa` |
| 8 | `def` | [threeLabelRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/threelabelright--9082632b13b2d69fc7366264.md) | 71 | `declaration-track:9082632b13b2d69fc7366264f07991bbe8466ec50b0a8191b4ded8fcec505d4e` |
| 9 | `def` | [threeLabelLeftWitness](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/threelabelleftwitness--32d0302c000523e69b4f7199.md) | 74 | `declaration-track:32d0302c000523e69b4f719997f69800ca09f96f85987b8abf9d9ecb75f13db5` |
| 10 | `def` | [threeLabelRightWitness](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/threelabelrightwitness--11a161badc1ad48431de79e3.md) | 79 | `declaration-track:11a161badc1ad48431de79e3b0dbdfc45101946ec391ec85868c770f67fa5e85` |
| 11 | `def` | [threeLabelAssembly](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/threelabelassembly--0020026d05f763d4e808b841.md) | 85 | `declaration-track:0020026d05f763d4e808b8413f2fd02939ef1a8f230e72d816534edb05c52fd5` |
| 12 | `theorem` | [threeLabelAssembly_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Variante30212b2abe0ff7d20caaf4e7729d75dcbec50013b41fc3aef4c258c098446e8.lean/declarations/threelabelassembly-zero--761d35be4d8111275e2c26cf.md) | 90 | `result-track:761d35be4d8111275e2c26cff729cbb339c8803d962b7cbb23f4c6d8ecfd0508` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
