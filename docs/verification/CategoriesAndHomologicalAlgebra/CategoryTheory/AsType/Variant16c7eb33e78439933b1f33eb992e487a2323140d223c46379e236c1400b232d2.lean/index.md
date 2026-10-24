# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AsType.Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1751f035b3940b9ec2d99c925383cdc31fb2e428",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1751f035b3940b9ec2d99c925383cdc31fb2e428`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ObjAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/declarations/objastype--1907e6724fa257f9252aa890.md) | 26 | `declaration-track:1907e6724fa257f9252aa890d180af32bc7c3a07e1265fc29e8d2a4968139256` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/declarations/instance--88b97e15045771fd3c38c15c.md) | 29 | `declaration-track:88b97e15045771fd3c38c15c328a4524fb408c2de6f43b6fd0036b304657ea4a` |
| 3 | `def` | [objAsTypeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/declarations/objastypeequiv--96e78485520ffac226553784.md) | 33 | `declaration-track:96e78485520ffac2265537844b5194372ac524860c13aab5dca72f31e8a3640d` |
| 4 | `abbrev` | [AsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/declarations/astype--1bc49ab80b845994475b7e2d.md) | 38 | `declaration-track:1bc49ab80b845994475b7e2ddf2eec2a43a3c5ce8e945f56b7b7740915198d7b` |
| 5 | `instance` | [categoryAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/declarations/categoryastype--30557892e4eef2073770bc7b.md) | 42 | `declaration-track:30557892e4eef2073770bc7b4fb89b6222350e73ad4ad1e2c73d58bc881efbde` |
| 6 | `def` | [asTypeToObjAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/declarations/astypetoobjastype--15616bfe95e865708fdd113c.md) | 51 | `declaration-track:15616bfe95e865708fdd113c218d43689c9e2094f7c877bda26b737ce1a9e6b9` |
| 7 | `def` | [objAsTypeToAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/declarations/objastypetoastype--9ca3391734664f4577bca2d1.md) | 57 | `declaration-track:9ca3391734664f4577bca2d1cc203b1f7b64698eb70cbe54bb051c54f8292006` |
| 8 | `def` | [asTypeEquivObjAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/declarations/astypeequivobjastype--e130d8def4a0496bf1f43902.md) | 62 | `declaration-track:e130d8def4a0496bf1f43902990394ffab4e5aa332b2a32eb21bb6fd64730848` |
| 9 | `instance` | [asTypeFinCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/declarations/astypefincategory--790f5491c08adaff06585f5b.md) | 68 | `declaration-track:790f5491c08adaff06585f5b6a2a2d83bdf829fa6a1242cac9bf0387b6cdf3d7` |
| 10 | `def` | [equivAsType](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AsType/Variant16c7eb33e78439933b1f33eb992e487a2323140d223c46379e236c1400b232d2.lean/declarations/equivastype--26c1cb701d793ff5a635ccff.md) | 72 | `declaration-track:26c1cb701d793ff5a635ccff071206f87cc98e4bab432063d28317f813d99601` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
