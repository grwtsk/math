# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5aabe722c577e93981a0623b667de5913d27000",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5aabe722c577e93981a0623b667de5913d27000`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean/declarations/instance--d1803d77dbb8a81b114a4d19.md) | 40 | `declaration-track:d1803d77dbb8a81b114a4d197e9359bb6801fc915d6948ed7fc8ebe9ce471c89` |
| 2 | `lemma` | [smul_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean/declarations/smul-f-apply--fd9382b85c18bfd7c8897f9c.md) | 44 | `result-track:fd9382b85c18bfd7c8897f9cfcee3407e6e2160a5dba00d91c0f9f77b8c222a4` |
| 3 | `lemma` | [units_smul_f_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean/declarations/units-smul-f-apply--ec76b428cbcc0b98ee1a33ab.md) | 47 | `result-track:ec76b428cbcc0b98ee1a33ab09b186e685d51ec688c6844fee540eb23ddfda67` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean/declarations/instance--d5728c302456d4b1e3675c54.md) | 49 | `declaration-track:d5728c302456d4b1e3675c54de1fd7b649e6f18af07d5bfdc70844054e9d4bb3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean/declarations/instance--bb09fcfbcd00b2ab4222b24b.md) | 57 | `declaration-track:bb09fcfbcd00b2ab4222b24bd7396d4f897df1346fa314274735188b2f490d02` |
| 6 | `instance` | [CategoryTheory.Functor.mapHomologicalComplex_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianted26ff7cbdaeca9ecadb6fde48555368af24e0350dfc2ad762101ec1c3aa372b.lean/declarations/categorytheory-functor-maphomologicalcomplex-linear--2888819f09d233b4ec9feaff.md) | 61 | `declaration-track:2888819f09d233b4ec9feaff03319adad21b88cbefeed6d9e164a2ab9a819c47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
