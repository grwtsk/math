# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CNF.Varianta048859677ecbb8f9cab70561748688d0c533f5461e230b7035b180c890e6180

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a19dcde237955cc7102db8ec94a5d3fbc637d2f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Varianta048859677ecbb8f9cab70561748688d0c533f5461e230b7035b180c890e6180.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Varianta048859677ecbb8f9cab70561748688d0c533f5461e230b7035b180c890e6180.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Varianta048859677ecbb8f9cab70561748688d0c533f5461e230b7035b180c890e6180.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a19dcde237955cc7102db8ec94a5d3fbc637d2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Varianta048859677ecbb8f9cab70561748688d0c533f5461e230b7035b180c890e6180.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Varianta048859677ecbb8f9cab70561748688d0c533f5461e230b7035b180c890e6180.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.CNF` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Compile` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Varianta048859677ecbb8f9cab70561748688d0c533f5461e230b7035b180c890e6180.lean/declarations/tocnf--70cfb6bb65201771599a48bb.md) | 19 | `declaration-track:70cfb6bb65201771599a48bb2e2dbc987e19b7151dd9c487085f0283d1709ee5` |
| 2 | `theorem` | [eval_toCNF](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CNF/Varianta048859677ecbb8f9cab70561748688d0c533f5461e230b7035b180c890e6180.lean/declarations/eval-tocnf--b1c061a6d65696c249734a98.md) | 22 | `result-track:b1c061a6d65696c249734a984e6d5559ab3309437d592de131b87f4da128aa33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
