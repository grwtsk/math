# Verification target: GRWTSK.Analysis.MeasureTheory.SourceFactorialMellinCancellation.Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "123b62375f79555934ac2133473445eb02cba697",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `123b62375f79555934ac2133473445eb02cba697`.

Source path: `GRWTSK/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualFactorialTailDecomposition` — import line 1; external provider; requires a separately pinned dependency.
- `SourceFullPositiveKappa` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveUnitCoefficient](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/declarations/positiveunitcoefficient--09d1389dd216397f46b353cc.md) | 24 | `declaration-track:09d1389dd216397f46b353cc4ce5946584d17328c71107b51f66052f39576e81` |
| 2 | `theorem` | [positiveUnitCoefficient_sum](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/declarations/positiveunitcoefficient-sum--98b2389221673aea2822b97b.md) | 26 | `result-track:98b2389221673aea2822b97b43329b68fe55c52f23b0533dcb3df2f90cd9b536` |
| 3 | `theorem` | [factorial_log_closed_Abel](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/declarations/factorial-log-closed-abel--2bc565b341a74a3877f339a9.md) | 39 | `result-track:2bc565b341a74a3877f339a949fcb412304a9513c08b2bb9b928274cfbdaa31a` |
| 4 | `theorem` | [factorialLogDefect_eq_fractional_primitive](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/declarations/factoriallogdefect-eq-fractional-primitive--0c92fdc4191e614e77ead794.md) | 75 | `result-track:0c92fdc4191e614e77ead7941402daa630acf04d08d8c0879ce43f53547b82bb` |
| 5 | `theorem` | [factorialLogDefect_eq_lower](../../../../../mathematics/Analysis/MeasureTheory/SourceFactorialMellinCancellation/Variant77dfdc454338019e1fcd9a0eac0e4bee263dab996dffdc1dc558e7928f12fa69.lean/declarations/factoriallogdefect-eq-lower--765f92d2fc2c77ad67a916a5.md) | 116 | `result-track:765f92d2fc2c77ad67a916a5991b915646d8bafcd13f4b05d67ec58d82372d7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
