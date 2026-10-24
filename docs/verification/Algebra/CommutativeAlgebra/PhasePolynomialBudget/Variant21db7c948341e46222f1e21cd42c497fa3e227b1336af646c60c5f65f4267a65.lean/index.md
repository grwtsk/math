# Verification target: GRWTSK.Algebra.CommutativeAlgebra.PhasePolynomialBudget.Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c28c72b925134575b05ae02d9dca1ff550b555a4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c28c72b925134575b05ae02d9dca1ff550b555a4`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Prototype` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phasePolynomialCoefficient](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean/declarations/phasepolynomialcoefficient--5d45904e25750ef66f457430.md) | 30 | `declaration-track:5d45904e25750ef66f457430d3319a3b4bad96c1b650c399bf8ff9d8d525ebf4` |
| 2 | `theorem` | [phasePolynomialCoefficient_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean/declarations/phasepolynomialcoefficient-pos--bdc314692c64f66c8d65b750.md) | 33 | `result-track:bdc314692c64f66c8d65b750bc7bed82db6210a8867053681c62aeef9fd70d5b` |
| 3 | `theorem` | [positiveMass_ge_taylor](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean/declarations/positivemass-ge-taylor--c80abf3bd195f2426eb6a84a.md) | 38 | `result-track:c80abf3bd195f2426eb6a84aed7706e597092447c01268c0b02d4a53e61a6fd9` |
| 4 | `theorem` | [positiveMass_gt_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean/declarations/positivemass-gt-polynomial--e9002d18c6097580ef05f310.md) | 52 | `result-track:e9002d18c6097580ef05f31068febafdb3bc81df2316ad35becf0d3c64ca3fa5` |
| 5 | `theorem` | [positiveMass_eventually_gt_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean/declarations/positivemass-eventually-gt-polynomial--ce91e221f2dea255076703f9.md) | 69 | `result-track:ce91e221f2dea255076703f9233566d51a9b231d06d3088c1fa7e924a5bdf3db` |
| 6 | `theorem` | [positiveMass_not_eventually_polynomial_bounded](../../../../../mathematics/Algebra/CommutativeAlgebra/PhasePolynomialBudget/Variant21db7c948341e46222f1e21cd42c497fa3e227b1336af646c60c5f65f4267a65.lean/declarations/positivemass-not-eventually-polynomial-bounded--28d01184c08ea0926db49807.md) | 77 | `result-track:28d01184c08ea0926db49807c16d589b3bf7d99173b9c0c3f6790f6d1f17f447` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
