# Verification target: GRWTSK.Analysis.MeasureTheory.SourceFactorialMellinCancellation.Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45b8b7d6de186ed19f3a4615f4c6e4fbc025b981",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45b8b7d6de186ed19f3a4615f4c6e4fbc025b981`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualFactorialTailDecomposition` — import line 6; external provider; requires a separately pinned dependency.
- `SourceFullPositiveKappa` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveUnitCoefficient](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33.lean/declarations/positiveunitcoefficient--047737c38ee9c9b14f32a9f7.md) | 32 | `declaration-track:047737c38ee9c9b14f32a9f7e5bddbf56d1a00d501050fdb4ed0b25b2c7a27a7` |
| 2 | `theorem` | [positiveUnitCoefficient_sum](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33.lean/declarations/positiveunitcoefficient-sum--ed50ccc168a73f34590de928.md) | 34 | `result-track:ed50ccc168a73f34590de928390a5d37bc8ddfd7509cd6a71bd9e9555284518d` |
| 3 | `theorem` | [factorial_log_closed_Abel](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33.lean/declarations/factorial-log-closed-abel--39604316c92d1221cea89a58.md) | 47 | `result-track:39604316c92d1221cea89a58e3b52b5c70bbe8fe64161b254fe6f14ce67eaf10` |
| 4 | `theorem` | [factorialLogDefect_eq_fractional_primitive](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33.lean/declarations/factoriallogdefect-eq-fractional-primitive--59e86db6ab8e3558cd80030e.md) | 83 | `result-track:59e86db6ab8e3558cd80030ec92e77a464c2ad9e39f53d8d92f9483e0f9fb048` |
| 5 | `theorem` | [factorialLogDefect_eq_lower](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Varianta69699d1708b68648ac2f5aedcc480c9d3faf3d60241928f0ee403ed9c108c33.lean/declarations/factoriallogdefect-eq-lower--edea2992502ffddd75171372.md) | 124 | `result-track:edea2992502ffddd751713722445f7c726dc8da812407a452bd09b5cf8eaf650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
