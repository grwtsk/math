# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fibered.Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c53d5f9a58da6094d19f80272fad4697203a960e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c53d5f9a58da6094d19f80272fad4697203a960e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FiberedCategory.Cartesian` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.IsPreFibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/functor-isprefibered--34f5e9314ca918350c48a8e1.md) | 60 | `declaration-track:34f5e9314ca918350c48a8e138a56aafd9719650d21cbf67e4eee571bf2a52f8` |
| 2 | `lemma` | [IsPreFibered.exists_isCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/isprefibered-exists-iscartesian--d4fce31b552c3756596b7a9e.md) | 63 | `result-track:d4fce31b552c3756596b7a9e432ccd9d8381f574586c011e7040fc55e86f8225` |
| 3 | `class` | [Functor.IsFibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/functor-isfibered--c17d2548c29c99178f65ff66.md) | 70 | `declaration-track:c17d2548c29c99178f65ff660f7f808509324ba18b663bc893dd480e18cb49de` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/instance--46341c38a943c5405e3c6e5a.md) | 74 | `declaration-track:46341c38a943c5405e3c6e5acca790b963b77c98d98bc3cf9e816aad89ca0d83` |
| 5 | `def` | [pullbackObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/pullbackobj--abc21f958a832d3c2744d5c6.md) | 87 | `declaration-track:abc21f958a832d3c2744d5c67ffc850cb9f8cccf6fa8f3905f6837455f730e96` |
| 6 | `def` | [pullbackMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/pullbackmap--e1767c62ad78bb74625d76e0.md) | 92 | `declaration-track:e1767c62ad78bb74625d76e0a2de1563ee97b1638e9ef36e74f7e5798ed528ea` |
| 7 | `instance` | [pullbackMap.IsCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/pullbackmap-iscartesian--12e490b8e92f16c98c3f6d74.md) | 95 | `declaration-track:12e490b8e92f16c98c3f6d744cd20fca4978cc50b5f64294c3af96888a9f3efc` |
| 8 | `lemma` | [pullbackObj_proj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/pullbackobj-proj--6487d195dfe8d5f6b7d1f361.md) | 98 | `result-track:6487d195dfe8d5f6b7d1f361fadf65a53a0edad9e3530d381d4ba1076e1ecaac` |
| 9 | `instance` | [isStronglyCartesian_of_isCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/isstronglycartesian-of-iscartesian--c3262312aae578934aeaa14a.md) | 108 | `declaration-track:c3262312aae578934aeaa14ae1d91578f70f700bba9c4f5e1f54e536092f4573` |
| 10 | `lemma` | [isStronglyCartesian_of_exists_isCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/isstronglycartesian-of-exists-iscartesian--7b076fbc491f933c5cbf8df4.md) | 131 | `result-track:7b076fbc491f933c5cbf8df4da691590a261da3c8b89832acfbeede8740f6d7d` |
| 11 | `lemma` | [of_exists_isStronglyCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/of-exists-isstronglycartesian--072bbb180350050592612a1a.md) | 164 | `result-track:072bbb180350050592612a1ac43887bc0506e2f3fc2f7eff8a13b55c3d2be7eb` |
| 12 | `def` | [pullbackPullbackIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Fibered/Variant99a30e0aac96f3e86ba7d947034fa6518b87dbd3b4af9a62242f9e0f2c8f223c.lean/declarations/pullbackpullbackiso--a5638b9604bf9fe3f56d4221.md) | 186 | `declaration-track:a5638b9604bf9fe3f56d4221676675165e90a8a8892039de7a5cf86861016e82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
