# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "741ef0536d7d2c6b5754265721d4fb482d307cf0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `741ef0536d7d2c6b5754265721d4fb482d307cf0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean/declarations/instance--8de7dc337ee1cbc750bce183.md) | 32 | `declaration-track:8de7dc337ee1cbc750bce183da782f3175e175eb76ec9b0904b7d450cbad0702` |
| 2 | `lemma` | [smul_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean/declarations/smul-f-apply--d94abbbe80a49373e99fe21d.md) | 36 | `result-track:d94abbbe80a49373e99fe21d1d651c742cef59f4518fce25f69d76a7654ac16c` |
| 3 | `lemma` | [units_smul_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean/declarations/units-smul-f-apply--9a7c1eab8afa72d585d8a898.md) | 39 | `result-track:9a7c1eab8afa72d585d8a8980269b513460188bae19deb2956111e610e0e0732` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean/declarations/instance--52a5b75baff5232e0550df6d.md) | 41 | `declaration-track:52a5b75baff5232e0550df6dbc06bea6ffa45defead3bf9d19774d4bb94ae3c7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean/declarations/instance--fe43c88c3db971049a94eafd.md) | 49 | `declaration-track:fe43c88c3db971049a94eafdec6b225ffbe1682b8a1f6a6006ba04294519153c` |
| 6 | `instance` | [CategoryTheory.Functor.mapHomologicalComplex_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280.lean/declarations/categorytheory-functor-maphomologicalcomplex-linear--6b33ace7e380f510f8e4966f.md) | 53 | `declaration-track:6b33ace7e380f510f8e4966f4e035f24a0b874e755b5ca806971ea2b5f3fb029` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
