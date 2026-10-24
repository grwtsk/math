# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ProbabilityMeasures.FiniteAtomicPackets.Variante4efdc9c8d172f77.AtomicProbabilityMeasure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1ef064479bc31d23f2ee95f1c03f4cba455dddc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/AtomicProbabilityMeasure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/AtomicProbabilityMeasure.lean/index.md) · [Full source](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/AtomicProbabilityMeasure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1ef064479bc31d23f2ee95f1c03f4cba455dddc`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/AtomicProbabilityMeasure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/AtomicProbabilityMeasure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Spectral.FinitePacket` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Dirac` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atomicMeasure](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/AtomicProbabilityMeasure.lean/declarations/atomicmeasure--0e7ad2a4f86aef35a0639bf4.md) | 43 | `declaration-track:0e7ad2a4f86aef35a0639bf4e356a9be49e90a62c871eddfe02d9037b71f1620` |
| 2 | `theorem` | [atomicMeasure_apply](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/AtomicProbabilityMeasure.lean/declarations/atomicmeasure-apply--35179b2ced8843f47c9c2c42.md) | 49 | `result-track:35179b2ced8843f47c9c2c42c73371fe62f820c1189be1d7a604f08cd8bc38b5` |
| 3 | `theorem` | [atomicMeasure_event](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/AtomicProbabilityMeasure.lean/declarations/atomicmeasure-event--0944c2a535d47351ee268a51.md) | 60 | `result-track:0944c2a535d47351ee268a51cb52544da7f83a7ed91f4812593b2e4397435a78` |
| 4 | `theorem` | [atomicMeasure_univ](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/AtomicProbabilityMeasure.lean/declarations/atomicmeasure-univ--8e55393e34a9eff8e8bd470e.md) | 79 | `result-track:8e55393e34a9eff8e8bd470e310b9ff908e10685c310529dc733935073b1ff57` |
| 5 | `instance` | [atomicMeasure_isProbabilityMeasure](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasures/FiniteAtomicPackets/Variante4efdc9c8d172f77/AtomicProbabilityMeasure.lean/declarations/atomicmeasure-isprobabilitymeasure--ed3319f573529d55182c948a.md) | 85 | `declaration-track:ed3319f573529d55182c948ade8368a03fe6a130408a01bd7d116f85cff8e89a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
