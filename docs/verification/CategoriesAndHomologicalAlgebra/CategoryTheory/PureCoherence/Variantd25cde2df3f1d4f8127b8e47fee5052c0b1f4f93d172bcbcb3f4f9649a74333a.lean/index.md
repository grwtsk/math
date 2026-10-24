# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PureCoherence.Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e07785463b5a9a3260aca17b5e3ca859e1dec7f1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e07785463b5a9a3260aca17b5e3ca859e1dec7f1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Coherence.PureCoherence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Monoidal.Datatypes` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [normalizeIsoComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/normalizeisocomp--e6a8bf21acd05921ff644cc9.md) | 34 | `declaration-track:e6a8bf21acd05921ff644cc96579f571b20834029b73b00bb7f6d1a344565c7c` |
| 2 | `theorem` | [naturality_associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/naturality-associator--97955798e2b9509537a4362b.md) | 37 | `result-track:97955798e2b9509537a4362bbb9442c0bc658131db5382d8e3bf1b105541790d` |
| 3 | `theorem` | [naturality_leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/naturality-leftunitor--cadc1bdae243b1ea09e79f6a.md) | 43 | `result-track:cadc1bdae243b1ea09e79f6a340f1fcd0bb8f9f9a05defce988e1effffec1848` |
| 4 | `theorem` | [naturality_rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/naturality-rightunitor--dcef2f4749f955070b1ba767.md) | 47 | `result-track:dcef2f4749f955070b1ba76756da478b5d4497902229661c2b3a7aa0891dd72c` |
| 5 | `theorem` | [naturality_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/naturality-id--7818b6531bdbecd97da69d9c.md) | 51 | `result-track:7818b6531bdbecd97da69d9ca059cb8b4f92c8362e7ac055799be1bcdbbc9f9c` |
| 6 | `theorem` | [naturality_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/naturality-comp--71b99f7d379afc45bd3a4bfa.md) | 55 | `result-track:71b99f7d379afc45bd3a4bfabbfe0b63c53b9fda2e5315afa4885a68fb9187d9` |
| 7 | `theorem` | [naturality_whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/naturality-whiskerleft--cdd85ed3fd30946cf812f292.md) | 61 | `result-track:cdd85ed3fd30946cf812f292bd6a92a310820ac03cc53884cc2a2d7105686cd5` |
| 8 | `theorem` | [naturality_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/naturality-whiskerright--dc59e15d42742aff8316be73.md) | 69 | `result-track:dc59e15d42742aff8316be7332e9c938a12b6e1829ecf81d2b0bcac63388dceb` |
| 9 | `theorem` | [naturality_tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/naturality-tensorhom--d537e167bdafaf9c8404f348.md) | 77 | `result-track:d537e167bdafaf9c8404f3482f19539cf50a89b20e87a65e49481e07c6cf469f` |
| 10 | `theorem` | [naturality_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/naturality-inv--6a58c09815cf6396b7b95e86.md) | 87 | `result-track:6a58c09815cf6396b7b95e8607ebb86d7a2a769eaf24af46ac0795801c8fcaa6` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/instance--6c2b2d80808aaecb3d3be454.md) | 94 | `declaration-track:6c2b2d80808aaecb3d3be45434343f94f579847b6e463162534218c3f54cc0d3` |
| 12 | `theorem` | [of_normalize_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/of-normalize-eq--f771928fae3030d59e3e6bbd.md) | 211 | `result-track:f771928fae3030d59e3e6bbd093660dae297b8f346ab586c0d906a6564117d57` |
| 13 | `theorem` | [mk_eq_of_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/mk-eq-of-naturality--34ebfa7480d7d6d4d444d59d.md) | 221 | `result-track:34ebfa7480d7d6d4d444d59d64726c64061f3097c8b4cf0235e1bf0d6ae2b05a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/instance--dd2b662c683d5328716f77b0.md) | 236 | `declaration-track:dd2b662c683d5328716f77b0aebdc8d7e61e8dac2160a5953937475d9da8879a` |
| 15 | `def` | [pureCoherence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/purecoherence--43b79d944432aba2401072f8.md) | 270 | `declaration-track:43b79d944432aba2401072f84c5714e7b35f5bbb815a94e96055d013b492dc6f` |
| 16 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PureCoherence/Variantd25cde2df3f1d4f8127b8e47fee5052c0b1f4f93d172bcbcb3f4f9649a74333a.lean/declarations/elab--46c8d07cdd497ef42305fd1f.md) | 274 | `declaration-track:46c8d07cdd497ef42305fd1fb3a9ba56ba63f27fd640f767858a4361535e1a71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
