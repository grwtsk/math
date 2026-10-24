# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bb41772f559cbe71c3f0ac266fbafb494ac3ef9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bb41772f559cbe71c3f0ac266fbafb494ac3ef9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Matrix.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FormulaTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean/declarations/formulatree--e179cb72dcc066da4fd28ec9.md) | 15 | `declaration-track:e179cb72dcc066da4fd28ec93407dd7eac601f8478d1bd6de0714dc355277390` |
| 2 | `def` | [FormulaTree.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean/declarations/formulatree-eval--7986daf37163168d41ab1fa6.md) | 28 | `declaration-track:7986daf37163168d41ab1fa66c5d295294d9acee5201e11a064239578235e2c7` |
| 3 | `def` | [FormulaTree.toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean/declarations/formulatree-toformula--1ae36b69098d5fe482935ef1.md) | 40 | `declaration-track:1ae36b69098d5fe482935ef145e6986ca22a6b827845c74c377d7e420bd56798` |
| 4 | `theorem` | [FormulaTree.eval_toFormula](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean/declarations/formulatree-eval-toformula--c9916ba43c53e76f0352677f.md) | 51 | `result-track:c9916ba43c53e76f0352677f5dcc32e2ad9401d0868f017ef472bd0c98bc1a88` |
| 5 | `def` | [FormulaTree.nodeCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean/declarations/formulatree-nodecount--9344b253a17c75128aa84281.md) | 67 | `declaration-track:9344b253a17c75128aa84281833319275faa6a1c26f323ddb1d595cabf3c43a4` |
| 6 | `def` | [FormulaTree.conjList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean/declarations/formulatree-conjlist--c03bc259b975d39a4f6ffe76.md) | 79 | `declaration-track:c03bc259b975d39a4f6ffe769dd0b6393da5d9879de897b83e55ce4f1b02888c` |
| 7 | `def` | [FormulaTree.disjList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc.lean/declarations/formulatree-disjlist--960fa3fd58eae6204cb1eb68.md) | 84 | `declaration-track:960fa3fd58eae6204cb1eb680ba59c824cbe5f6af7ebcfa360fa7674912f1e9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
