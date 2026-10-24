# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetLit.Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c459df47c2f02fcbf58bcd5b56ac5377e0cd9d9",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c459df47c2f02fcbf58bcd5b56ac5377e0cd9d9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [getLit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1.lean/declarations/getlit--31570c38ddce47c68e5f27d1.md) | 31 | `declaration-track:31570c38ddce47c68e5f27d14c136ddd2997466535f90a1abcfdb3901f18f381` |
| 2 | `theorem` | [extLit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1.lean/declarations/extlit--21d2c1a531c1c45fb38a0a24.md) | 35 | `result-track:21d2c1a531c1c45fb38a0a2422f2d2d57e5ac1541cb5653a5370973c00d2b655` |
| 3 | `def` | [toListLitAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1.lean/declarations/tolistlitaux--c67fadc0cd0d91175cd88248.md) | 42 | `declaration-track:c67fadc0cd0d91175cd88248613a454fdc5e82b1b549a6231e36ccf544802fd4` |
| 4 | `def` | [toArrayLit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1.lean/declarations/toarraylit--06aea20bcc07859fab6ef1bb.md) | 47 | `declaration-track:06aea20bcc07859fab6ef1bbf9ab4f863cc02f8ee5f80efd887dc5d89926dd96` |
| 5 | `theorem` | [toArrayLit_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GetLit/Variant7872255fe03c98d2d51ee0ff9fad12225e8fce4c466fa263fbf6cd29d57506c1.lean/declarations/toarraylit-eq--3707779275d743e6135d4b29.md) | 50 | `result-track:3707779275d743e6135d4b29939cbac3cfbbfe314f677b1e96c8d5f02bf702f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
