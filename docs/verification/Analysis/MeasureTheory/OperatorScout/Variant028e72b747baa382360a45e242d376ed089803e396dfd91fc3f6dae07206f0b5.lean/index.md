# Verification target: GRWTSK.Analysis.MeasureTheory.OperatorScout.Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccde91a09a96cf0ad4383b5eb39f605c461a7eee",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccde91a09a96cf0ad4383b5eb39f605c461a7eee`.

Source path: `GRWTSK/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/declarations/fullh--fd4c15aff1c0f1128c00997e.md) | 12 | `declaration-track:fd4c15aff1c0f1128c00997ea4d0fa300650e3829d131b8a2fbd50c74c59189a` |
| 2 | `def` | [fullShift](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/declarations/fullshift--65142c5b27df2462218869fc.md) | 14 | `declaration-track:65142c5b27df2462218869fca2ddbb02dcca1d4185af8d25e645479b21ef3450` |
| 3 | `theorem` | [fullShift_ae](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/declarations/fullshift-ae--e65cb677d015f3c50ffb1fa3.md) | 17 | `result-track:e65cb677d015f3c50ffb1fa3a30e394ac2655904df425dae614f3350a8022674` |
| 4 | `theorem` | [fullShift_continuous](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/declarations/fullshift-continuous--5f0c4c17b4ea308da0a9f3f5.md) | 21 | `result-track:5f0c4c17b4ea308da0a9f3f59cf5d546d22ada205017edc58416cfe0e8e7770f` |
| 5 | `theorem` | [halfLine_zeroExtension_memLp](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/declarations/halfline-zeroextension-memlp--5efd0fe70346308baa593a41.md) | 29 | `result-track:5efd0fe70346308baa593a41009de4cc19c4cc774be65c4a7eb84a451bf29b2a` |
| 6 | `theorem` | [weighted_shift_integrable](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/declarations/weighted-shift-integrable--b4610a8462eaf5e8ea463ef6.md) | 34 | `result-track:b4610a8462eaf5e8ea463ef67107d357936d3eaae1f693a4971d4fd10410c487` |
| 7 | `def` | [bochnerVector](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/declarations/bochnervector--0dacc6fa02ef1aca91d3ce3f.md) | 44 | `declaration-track:0dacc6fa02ef1aca91d3ce3f77921922c24a3e273f278f7219d005f5a3d66eb2` |
| 8 | `theorem` | [bochnerVector_norm_le](../../../../../mathematics/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean/declarations/bochnervector-norm-le--664324d2112c15613aaeff56.md) | 46 | `result-track:664324d2112c15613aaeff56ba5caef1c1c42a08fecb93fbc85d6320ea86e2b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
