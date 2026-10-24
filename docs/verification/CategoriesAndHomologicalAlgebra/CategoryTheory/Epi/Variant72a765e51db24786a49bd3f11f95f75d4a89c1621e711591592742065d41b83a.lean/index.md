# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Epi.Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24e826e2843f932309c4c8e6af1553592d550861",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24e826e2843f932309c4c8e6af1553592d550861`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.SequentialProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.SequentialLimit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Light.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocallySurjective_iff_locallySurjective_on_lightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/declarations/islocallysurjective-iff-locallysurjective-on-lightprofinite--729953d10c81784cc91dd0ba.md) | 40 | `result-track:729953d10c81784cc91dd0ba91212250a4470b37786c94342e76fdb0c00b395c` |
| 2 | `lemma` | [epi_iff_locallySurjective_on_lightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/declarations/epi-iff-locallysurjective-on-lightprofinite--2841f195ab6007dba5351fe0.md) | 56 | `result-track:2841f195ab6007dba5351fe03da823dbe8169235f07887bc2ca29aecbcd4f99b` |
| 3 | `lemma` | [epi_iff_locallySurjective_on_lightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/declarations/epi-iff-locallysurjective-on-lightprofinite--6386731145a663c07c421e85.md) | 70 | `result-track:6386731145a663c07c421e85eaad2528d10d23ee6320858a4069dce0909c470f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/declarations/instance--07fdee6cd57e4decf01fb210.md) | 78 | `declaration-track:07fdee6cd57e4decf01fb2104a9d16095a2b1d76cd674f357bd84f16bf9763bf` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/declarations/instance--cd01ff5255ae292fa7a1cfe0.md) | 84 | `declaration-track:cd01ff5255ae292fa7a1cfe0e6d8f0e47f4e8b29b967c0804512b64bcc7a28b6` |
| 6 | `lemma` | [epi_π_app_zero_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/declarations/epi-app-zero-of-epi--716c1818d8f410244ea63542.md) | 99 | `result-track:716c1818d8f410244ea635426c24680f39ef42070ecd936980c38100826883f7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/declarations/instance--7e23a49bdd4696fe37fb6036.md) | 121 | `declaration-track:7e23a49bdd4696fe37fb60365dbd96247d63c0f7057869f75bc42e139d6e8066` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/declarations/instance--aeea1450c373f1b168cbc88e.md) | 126 | `declaration-track:aeea1450c373f1b168cbc88e6fe2dded3c4a032b13c497fbabc4f9686e4a4db3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
