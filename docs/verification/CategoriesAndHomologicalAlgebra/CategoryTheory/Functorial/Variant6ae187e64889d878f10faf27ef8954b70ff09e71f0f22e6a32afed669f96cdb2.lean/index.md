# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functorial.Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e0b2470b43f8676c7fda14789f854d085ca8d3b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e0b2470b43f8676c7fda14789f854d085ca8d3b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functorial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean/declarations/functorial--258e223c5fd478ad8f7579bf.md) | 31 | `declaration-track:258e223c5fd478ad8f7579bf0095123b2c23cd8e648af42663995b173d225dc3` |
| 2 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean/declarations/of--77fde37065f4f6cfdc92a36e.md) | 48 | `declaration-track:77fde37065f4f6cfdc92a36e6f5ad916413a824f6a3ae258bb477f8c7e57d3d9` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean/declarations/instance--412b1a3f5f01ab5019affbb0.md) | 54 | `declaration-track:412b1a3f5f01ab5019affbb0d0cdc7f4da6c5e486a182d18ccdd3169444240ce` |
| 4 | `theorem` | [map_functorial_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean/declarations/map-functorial-obj--fe0f18ad08b43c13c20e0dfd.md) | 58 | `result-track:fe0f18ad08b43c13c20e0dfd630aa41b982f83c6324602089218e2ca14295dd9` |
| 5 | `instance` | [functorial_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean/declarations/functorial-id--8b08e3b831e6bdf227816d91.md) | 61 | `declaration-track:8b08e3b831e6bdf227816d9177a26283218171245abb0ed89e1883aa485411d4` |
| 6 | `def` | [functorial_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean/declarations/functorial-comp--eed569595b5ecf7dada54ed4.md) | 72 | `declaration-track:eed569595b5ecf7dada54ed4b5cb27c1928bdcf5333c78320aad02e680c1ca74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
