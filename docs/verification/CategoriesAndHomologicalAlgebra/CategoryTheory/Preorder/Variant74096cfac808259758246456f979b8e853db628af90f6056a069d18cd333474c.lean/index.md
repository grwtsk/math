# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preorder.Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4c0ee7ae2928d52d3019ff899d0ae84d0a67de0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4c0ee7ae2928d52d3019ff899d0ae84d0a67de0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.WellOrderContinuous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.HasIterationOfShape` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesWellOrderContinuousOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean/declarations/preserveswellordercontinuousofshape--673fa239f3993accf010904e.md) | 42 | `declaration-track:673fa239f3993accf010904e66b211b9ce19e2ffd27004c629127ef7d31d6876` |
| 2 | `lemma` | [preservesColimitsOfShape_of_preservesWellOrderContinuousOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean/declarations/preservescolimitsofshape-of-preserveswellordercontinuousofshape--8d0b7b409d23681cc05d187d.md) | 47 | `result-track:8d0b7b409d23681cc05d187dc36a15d37b6244beb858358bb586401e330cbdf1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean/declarations/instance--937493a96281a70b3849f78f.md) | 53 | `declaration-track:937493a96281a70b3849f78f0b817d601ca676911603efe90feef66dd289bbb3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean/declarations/instance--97377cbce7eb5fbfdb1ee72a.md) | 60 | `declaration-track:97377cbce7eb5fbfdb1ee72a96857b31dbafdbf219e4988b7dafdc59821b0fd3` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean/declarations/instance--42a06406a84903176627bddc.md) | 69 | `declaration-track:42a06406a84903176627bddce29966eef10ce63e85086df74cc84fb40f1adbe8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean/declarations/instance--67e3a7c71092ea41fcdc84c4.md) | 75 | `declaration-track:67e3a7c71092ea41fcdc84c4b9bdc51e1536e96c258dc2f7ad90132b6f897112` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variant74096cfac808259758246456f979b8e853db628af90f6056a069d18cd333474c.lean/declarations/instance--c893c38c3ca49ab3995c5f89.md) | 81 | `declaration-track:c893c38c3ca49ab3995c5f897bd23810d630503ecdc6a89fa41bfcbb2249eb08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
