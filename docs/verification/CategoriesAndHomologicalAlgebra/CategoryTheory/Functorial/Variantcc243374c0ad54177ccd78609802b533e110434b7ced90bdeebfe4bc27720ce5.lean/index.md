# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functorial.Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b3f93cd32fb54a5181bb2a1bb2f479dc32cecc5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b3f93cd32fb54a5181bb2a1bb2f479dc32cecc5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functorial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean/declarations/functorial--198ddbcef899394f249792cf.md) | 23 | `declaration-track:198ddbcef899394f249792cfd0a99b96d4ca7a2b59244ad985ff9bbc1f50932a` |
| 2 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean/declarations/of--48d7e5f27dfdb7d89acd5c9d.md) | 40 | `declaration-track:48d7e5f27dfdb7d89acd5c9dc1f58843201e541b4b1e2cf427f4fceebaced373` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean/declarations/instance--ab15472b40ff6749c9969a5a.md) | 46 | `declaration-track:ab15472b40ff6749c9969a5a805c11c55f032dc634492d1c350dfe0a0a399e92` |
| 4 | `theorem` | [map_functorial_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean/declarations/map-functorial-obj--a4ac5ccc23a94e88867366f3.md) | 50 | `result-track:a4ac5ccc23a94e88867366f30fabaf5204022bd4f0b0b339720f3b581ab3bcf4` |
| 5 | `instance` | [functorial_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean/declarations/functorial-id--dca70af0742b3c5aac667420.md) | 53 | `declaration-track:dca70af0742b3c5aac6674207d38b440dc813882fa22634045525e3441a0989d` |
| 6 | `def` | [functorial_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variantcc243374c0ad54177ccd78609802b533e110434b7ced90bdeebfe4bc27720ce5.lean/declarations/functorial-comp--29ff334a5aef15d6ff140e99.md) | 64 | `declaration-track:29ff334a5aef15d6ff140e9905cb1f3699e35d74b3530050ee8e64fcc2344a14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
