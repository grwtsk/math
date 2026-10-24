# Verification target: GRWTSK.Algebra.UniversalAlgebra.Commute.Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "152c2af757c807818fdd5d87a65475afce195d59",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `152c2af757c807818fdd5d87a65475afce195d59`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [SemiconjBy.map](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean/declarations/semiconjby-map--2b6ea4dbfe71fca558e70900.md) | 30 | `result-track:2b6ea4dbfe71fca558e70900bbc64291f9533dbbacdb84d89adce0d779dec613` |
| 2 | `theorem` | [Commute.map](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean/declarations/commute-map--c2730e71c8bbcc11fe164ece.md) | 36 | `result-track:c2730e71c8bbcc11fe164ece79aaec25dd1cb7172d575937064c82c2164afbf9` |
| 3 | `theorem` | [SemiconjBy.of_map](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean/declarations/semiconjby-of-map--dcda171049dbf0079f618508.md) | 42 | `result-track:dcda171049dbf0079f6185081847b6367745d2f29625f3522ce8ca861fe98315` |
| 4 | `theorem` | [Commute.of_map](../../../../../mathematics/Algebra/UniversalAlgebra/Commute/Variant22708bbf76cec464a065151420e90127aa9eeae6b7ff7d2eadc6d6461e0d76c2.lean/declarations/commute-of-map--49c6305dfc96b90e4f72db99.md) | 47 | `result-track:49c6305dfc96b90e4f72db99167daefc0c9c03c2f13b41fdf4f2717559907422` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
