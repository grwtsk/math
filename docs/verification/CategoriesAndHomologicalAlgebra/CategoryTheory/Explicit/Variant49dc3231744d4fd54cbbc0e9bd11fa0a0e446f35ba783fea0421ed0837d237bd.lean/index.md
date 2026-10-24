# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Explicit.Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "569773a742212cea66e2f82f3c500bec189e366b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `569773a742212cea66e2f82f3c500bec189e366b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coherent.SheafComparison` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Light.Module` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofSheafLightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean/declarations/ofsheaflightprofinite--8e85da66b5e0906c42c1595e.md) | 48 | `declaration-track:8e85da66b5e0906c42c1595e4685b53990499c5f5b0cb6ea5cd3de835bcf056c` |
| 2 | `def` | [ofSheafForgetLightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean/declarations/ofsheafforgetlightprofinite--7b4dc9e04b131d72b1cdfe80.md) | 60 | `declaration-track:7b4dc9e04b131d72b1cdfe804cb283276bb8964485ceb99100a7f91b8aeb5584` |
| 3 | `theorem` | [equalizerCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean/declarations/equalizercondition--322a3b9121793b287d6449dd.md) | 71 | `result-track:322a3b9121793b287d6449dd80a04fab1b9381a505e7fa50e6e1385e20e6c9cc` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean/declarations/instance--4d11bed5171e1d9c76c2f7c8.md) | 75 | `declaration-track:4d11bed5171e1d9c76c2f7c83fb76849ee800019b62faacf980516ea88364acd` |
| 5 | `abbrev` | [ofSheafLightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean/declarations/ofsheaflightprofinite--8987974e33e6c4de9eda4476.md) | 83 | `declaration-track:8987974e33e6c4de9eda4476efd796d31a29ba8f4662af9f5e349d4dcf8ee024` |
| 6 | `abbrev` | [ofSheafLightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean/declarations/ofsheaflightprofinite--62520f447c74dea83ef0c5f8.md) | 94 | `declaration-track:62520f447c74dea83ef0c5f8e4e1d023cf31ad46fee6ac19f40a50d41d065ec5` |
| 7 | `abbrev` | [ofSheafLightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Explicit/Variant49dc3231744d4fd54cbbc0e9bd11fa0a0e446f35ba783fea0421ed0837d237bd.lean/declarations/ofsheaflightprofinite--69bc4dfd880d4ef2fd74469e.md) | 103 | `declaration-track:69bc4dfd880d4ef2fd74469ea5fd3d597048076288864748ed3df0dc57e5975f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
