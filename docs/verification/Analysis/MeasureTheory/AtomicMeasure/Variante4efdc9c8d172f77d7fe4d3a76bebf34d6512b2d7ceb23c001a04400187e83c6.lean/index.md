# Verification target: GRWTSK.Analysis.MeasureTheory.AtomicMeasure.Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77db2fa39adbef21a759055becf5b580ec971827",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77db2fa39adbef21a759055becf5b580ec971827`.

Source path: `GRWTSK/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Spectral.FinitePacket` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Dirac` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atomicMeasure](../../../../../mathematics/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/declarations/atomicmeasure--0d4c504f50b347494574c6d6.md) | 25 | `declaration-track:0d4c504f50b347494574c6d680528c207913f8501c24b821a717576260a5db86` |
| 2 | `theorem` | [atomicMeasure_apply](../../../../../mathematics/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/declarations/atomicmeasure-apply--4a4f2a10c3e765c8255592c4.md) | 31 | `result-track:4a4f2a10c3e765c8255592c4bb7629dd82432533b98f4c35f6a6d263aa56805e` |
| 3 | `theorem` | [atomicMeasure_event](../../../../../mathematics/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/declarations/atomicmeasure-event--3fe7796838691c7f51ed1cbe.md) | 42 | `result-track:3fe7796838691c7f51ed1cbefcf6e3bc13833a48b81a92f4ea473b3173aba302` |
| 4 | `theorem` | [atomicMeasure_univ](../../../../../mathematics/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/declarations/atomicmeasure-univ--942a0403e543fa861a1a324c.md) | 61 | `result-track:942a0403e543fa861a1a324c07ea0ad6b1a7e3e4e016b82b3b00a184a3d4ed59` |
| 5 | `instance` | [atomicMeasure_isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/declarations/atomicmeasure-isprobabilitymeasure--af29d57bdd851ccdaeda3708.md) | 67 | `declaration-track:af29d57bdd851ccdaeda3708ac43c8b6485bfbb38b2d4139182073b9fe343ebf` |
| 6 | `def` | [mixedAtomicMeasure](../../../../../mathematics/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/declarations/mixedatomicmeasure--0f63f890776efdd1d2dada4e.md) | 74 | `declaration-track:0f63f890776efdd1d2dada4e65d117674697eb532a11b7e024f93c08dfcaee7d` |
| 7 | `theorem` | [atomicMeasure_mix](../../../../../mathematics/Analysis/MeasureTheory/AtomicMeasure/Variante4efdc9c8d172f77d7fe4d3a76bebf34d6512b2d7ceb23c001a04400187e83c6.lean/declarations/atomicmeasure-mix--a64c6065b42bfa532dfa760f.md) | 80 | `result-track:a64c6065b42bfa532dfa760f198b11287c695b8248dde261de83272f8fb7ef53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
