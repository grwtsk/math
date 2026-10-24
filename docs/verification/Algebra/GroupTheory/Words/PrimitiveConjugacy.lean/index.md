# Verification target: GRWTSK.GroupTheory.Words.PrimitiveConjugacy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ab441398d8981f755ec1fa27e16e5aa306d1bed",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GroupTheory/Words/PrimitiveConjugacy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ab441398d8981f755ec1fa27e16e5aa306d1bed`.

Source path: `GRWTSK/GroupTheory/Words/PrimitiveConjugacy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GroupTheory/Words/PrimitiveConjugacy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Conj` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.TypeTags` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Eq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsProperPower](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/isproperpower--e36ae07fa1ca0e51d1f66e2d.md) | 40 | `declaration-track:e36ae07fa1ca0e51d1f66e2dce25668c65a5b8560ccdc60dd24d48f425a2faf3` |
| 2 | `def` | [IsPrimitiveConjugacy](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/isprimitiveconjugacy--9d284db87f6fd4762b5da34c.md) | 46 | `declaration-track:9d284db87f6fd4762b5da34c790a63840e0fd4b5c2d921bc6d6861569b70edaf` |
| 3 | `theorem` | [isProperPower_of_isConj](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/isproperpower-of-isconj--16a2cc5ae6526a9f3131bf77.md) | 50 | `result-track:16a2cc5ae6526a9f3131bf778521670db2aeec249eb9702aa37109c837da065f` |
| 4 | `theorem` | [isProperPower_iff_of_isConj](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/isproperpower-iff-of-isconj--e30eb36ff644c1ac17c3c38e.md) | 61 | `result-track:e30eb36ff644c1ac17c3c38e986e52a761b451dd938ad779da3dafd01a321e1b` |
| 5 | `theorem` | [isPrimitiveConjugacy_of_isConj](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/isprimitiveconjugacy-of-isconj--52f1ef20d28fe7cd1a1b7ff5.md) | 68 | `result-track:52f1ef20d28fe7cd1a1b7ff5233a6471832ca16f358d93df312dba90ac4a3923` |
| 6 | `theorem` | [isPrimitiveConjugacy_iff_of_isConj](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/isprimitiveconjugacy-iff-of-isconj--7fe983e0c132200f0dc29a0b.md) | 80 | `result-track:7fe983e0c132200f0dc29a0bfd1f3c27306898c2cbae53fcaeec658f82d8c5c1` |
| 7 | `theorem` | [one_not_primitive](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/one-not-primitive--f61d06610fc396688a2d7fed.md) | 87 | `result-track:f61d06610fc396688a2d7fed25a3240b1bc9cecb7d18628a765a2546a50b276b` |
| 8 | `theorem` | [square_isProperPower](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/square-isproperpower--2120519ffed25f8ca245252b.md) | 94 | `result-track:2120519ffed25f8ca245252b29c5cc9e3d8f57e4f3d306acb62291f07b704bed` |
| 9 | `theorem` | [square_not_primitive](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/square-not-primitive--cc5e01b80a8eb32f6ecb575f.md) | 98 | `result-track:cc5e01b80a8eb32f6ecb575f883d82be163db253b63913b6fc23e1da3948c84f` |
| 10 | `def` | [evalWord](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/evalword--0fbd977f64d52fc449d33c2c.md) | 105 | `declaration-track:0fbd977f64d52fc449d33c2cc017035468e0a30f9f7ee16f0077e439426bb0c7` |
| 11 | `theorem` | [evalWord_nil](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/evalword-nil--346062f149c92ae1399e558d.md) | 108 | `result-track:346062f149c92ae1399e558d4d517f09056fc0936d4d5e8c6967dea3eb3dc1ab` |
| 12 | `theorem` | [evalWord_append](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/evalword-append--508bb296178a9504eef42f47.md) | 113 | `result-track:508bb296178a9504eef42f473351de5dcc87651d044b3564d06230b068c44616` |
| 13 | `theorem` | [evalWord_cyclicSplit_isConj](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/evalword-cyclicsplit-isconj--4b8e63ee5e42deaf3794012c.md) | 122 | `result-track:4b8e63ee5e42deaf3794012cd93b64243ad21d341a74f0ff95d69b7f93208c26` |
| 14 | `def` | [conjugacyClassOfWord](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/conjugacyclassofword--35f0229cebdb455747e644be.md) | 132 | `declaration-track:35f0229cebdb455747e644be1110f1c65724a4368b48c6bc65496e9d4c8eadb2` |
| 15 | `theorem` | [conjugacyClassOfWord_cyclicSplit](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/conjugacyclassofword-cyclicsplit--b1d71e063e2757e2b1292fc2.md) | 137 | `result-track:b1d71e063e2757e2b1292fc2e251a50f2cbbf8d723f841906ae3353c3e423797` |
| 16 | `theorem` | [evalWord_repeat_eq_square](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/evalword-repeat-eq-square--8414a301673de1a699471173.md) | 146 | `result-track:8414a301673de1a69947117319eeacfbf1b5ca2b8f869eca8905984d2ec9d5d9` |
| 17 | `theorem` | [repeated_word_not_primitive](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/repeated-word-not-primitive--333836a3df6969d29b38d72f.md) | 153 | `result-track:333836a3df6969d29b38d72f1c9e5dbb527c1b00dd6f9b866042a76f437c65da` |
| 18 | `theorem` | [inverse_class_ne_of_ne](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/inverse-class-ne-of-ne--8cc74aa6b0ec1cc0cda947cd.md) | 161 | `result-track:8cc74aa6b0ec1cc0cda947cdb412635d0fc18b618e7e2dc5ae5e8879482b1dbd` |
| 19 | `theorem` | [integer_orientation_classes_distinct](../../../../../mathematics/Algebra/GroupTheory/Words/PrimitiveConjugacy.lean/declarations/integer-orientation-classes-distinct--78c8697a4afc9064a6735d61.md) | 171 | `result-track:78c8697a4afc9064a6735d61b23162d47fc9c7e0b4cce9e8d84335420cd284ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
