# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InfSemilattice.Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "177c4f7c68f8ca91cee5b79f44b278279585bae4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InfSemilattice/Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InfSemilattice/Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InfSemilattice/Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `177c4f7c68f8ca91cee5b79f44b278279585bae4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InfSemilattice/Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InfSemilattice/Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preorder` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [cartesianMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InfSemilattice/Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f.lean/declarations/cartesianmonoidalcategory--4ab2148fd816d89ea45eed0e.md) | 30 | `declaration-track:4ab2148fd816d89ea45eed0ece79a8edb9c077522823051be21d8fd127768fc1` |
| 2 | `instance` | [braidedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InfSemilattice/Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f.lean/declarations/braidedcategory--6866d947b0a827f4d1eb121f.md) | 34 | `declaration-track:6866d947b0a827f4d1eb121fe955f339b662ab2b0cf218d09ffdf7670ff263d5` |
| 3 | `lemma` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InfSemilattice/Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f.lean/declarations/tensorobj--e64db8da7caf76328a31dfa3.md) | 36 | `result-track:e64db8da7caf76328a31dfa31fa52a3b66dc5b10f426d06b473ed93c28006a69` |
| 4 | `lemma` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InfSemilattice/Variantd43f8241ef4bc486e53dd6248a40087d372c21590e4b56b3ee23352c33dccd4f.lean/declarations/tensorunit--3fb82d7d5a5483c24436eee6.md) | 38 | `result-track:3fb82d7d5a5483c24436eee68398c6929138367e894e7d9e6363a130d8119968` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
