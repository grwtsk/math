# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoryTheory.Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b450dcc3809ab820b395b771f2dbc6d9f45eb96b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b450dcc3809ab820b395b771f2dbc6d9f45eb96b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lTensor_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean/declarations/ltensor-shortcomplex-exact--772ab20dff6e323c3220f92d.md) | 49 | `result-track:772ab20dff6e323c3220f92d8e2bebd05f3e58652bdce86643d8de5ce87a72d9` |
| 2 | `lemma` | [rTensor_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean/declarations/rtensor-shortcomplex-exact--d24f9604f8c6f841add5e2eb.md) | 54 | `result-track:d24f9604f8c6f841add5e2eb93799c121e73fb0beee31f775c657fd5cb114071` |
| 3 | `lemma` | [iff_lTensor_preserves_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean/declarations/iff-ltensor-preserves-shortcomplex-exact--230f54897d39b736c99da23b.md) | 59 | `result-track:230f54897d39b736c99da23b07785614bb62adc91bbce3f2ec3649073e2e3f3a` |
| 4 | `lemma` | [iff_rTensor_preserves_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean/declarations/iff-rtensor-preserves-shortcomplex-exact--70ea38cf5ddfe5acfbd345e5.md) | 69 | `result-track:70ea38cf5ddfe5acfbd345e57e71b9f2ce732d13fcef86312a982bf47737893e` |
| 5 | `lemma` | [iff_preservesFiniteLimits_tensorLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean/declarations/iff-preservesfinitelimits-tensorleft--24601f87a62b45660ae302f8.md) | 81 | `result-track:24601f87a62b45660ae302f8d0895cc8d83b382bd87f8f3c6bbcd7b60ce06f79` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean/declarations/instance--7064551c09ce6095d2c515f8.md) | 87 | `declaration-track:7064551c09ce6095d2c515f87c0eb20b046b88a01cd64cefa4fdfe187e6777a0` |
| 7 | `lemma` | [iff_preservesFiniteLimits_tensorRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean/declarations/iff-preservesfinitelimits-tensorright--1d3f1999e15baccb2594e7a6.md) | 91 | `result-track:1d3f1999e15baccb2594e7a65fa11a7f66b8e8516877ddb507f6093cb4be05b4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant8b4c276c98150856b33b327f9301d0bb308b044e2157d4203ed66a6b4ce7706b.lean/declarations/instance--0908f3d194780f09f4f4b9ce.md) | 98 | `declaration-track:0908f3d194780f09f4f4b9ceba2a7314b54818624c5a38722900c22deb1a7088` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
