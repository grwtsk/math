# Verification target: GRWTSK.Algebra.UniversalAlgebra.ApproximationCorollaries.Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e81ffcf31e24f1558804cfccec857ec0a72802bb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e81ffcf31e24f1558804cfccec857ec0a72802bb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Approximations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.ConvergentsEquiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [GeneralizedContinuedFraction.of_isSimpleContinuedFraction](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/declarations/generalizedcontinuedfraction-of-issimplecontinuedfraction--67a9dc0fba940b9cf7593f1a.md) | 59 | `result-track:67a9dc0fba940b9cf7593f1ae65fa5350a7c1aa0517db6fadb15435ff367917f` |
| 2 | `def` | [SimpleContinuedFraction.of](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/declarations/simplecontinuedfraction-of--2cf890395ea679d993a0d66c.md) | 65 | `declaration-track:2cf890395ea679d993a0d66ce10a9af8da815456131ae2251b0df352fd0488b1` |
| 3 | `theorem` | [SimpleContinuedFraction.of_isContinuedFraction](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/declarations/simplecontinuedfraction-of-iscontinuedfraction--4bbafa9eb60a6660aa188549.md) | 69 | `result-track:4bbafa9eb60a6660aa188549dc85decb10bfccebb146ba490ddd2bd29e7e498b` |
| 4 | `def` | [ContinuedFraction.of](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/declarations/continuedfraction-of--90c3741b225b39982ed524d9.md) | 75 | `declaration-track:90c3741b225b39982ed524d9784bcb412b8a0b39eb3cf1a027c236be68b0ff32` |
| 5 | `theorem` | [of_convergents_eq_convergents'](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/declarations/of-convergents-eq-convergents--ffa7904278a2c67937a569b4.md) | 81 | `result-track:ffa7904278a2c67937a569b49337a8f2c06a75b3c009a15c62ecc6b6d6134bc9` |
| 6 | `theorem` | [convergents_succ](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/declarations/convergents-succ--ea2c91533e42ad211a8d9864.md) | 88 | `result-track:ea2c91533e42ad211a8d9864131817663db2979b8a98865883f5385269cdd588` |
| 7 | `theorem` | [of_convergence_epsilon](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/declarations/of-convergence-epsilon--42de5d786312f004a4518b70.md) | 106 | `result-track:42de5d786312f004a4518b70a9f3c74f37f10fba10d1a261416d5d7d5ab93d17` |
| 8 | `theorem` | [of_convergence](../../../../../mathematics/Algebra/UniversalAlgebra/ApproximationCorollaries/Variant6a458e96b27b7650a585bd31d6173e101f0664e00580de92bf4b50e1e2c25c12.lean/declarations/of-convergence--e4059ed1bdf59d2d84c7a88c.md) | 167 | `result-track:e4059ed1bdf59d2d84c7a88c2fa130ff6ec021211bab5dbcb1230f02604d6e31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
