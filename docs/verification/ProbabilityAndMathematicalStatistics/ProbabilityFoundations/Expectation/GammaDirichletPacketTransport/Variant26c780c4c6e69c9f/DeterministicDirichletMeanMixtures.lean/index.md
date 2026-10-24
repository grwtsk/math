# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GammaDirichletPacketTransport.Variant26c780c4c6e69c9f.DeterministicDirichletMeanMixtures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10c43da4f201f16352d27757d863a25988bf710b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10c43da4f201f16352d27757d863a25988bf710b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.GammaDirichlet` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Spectral.Capabilities` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMeanPoint](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/declarations/dirichletmeanpoint--c436910f4376035600312139.md) | 52 | `declaration-track:c436910f43760356003121394052178981cb42a7c1a699538a02b890e22f388a` |
| 2 | `theorem` | [dirichletMeanPoint_apply](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/declarations/dirichletmeanpoint-apply--db457d197477222fbfea6aab.md) | 58 | `result-track:db457d197477222fbfea6aabc257e665554bfe7b3fa2fdf06cb9d57f3b46aa03` |
| 3 | `theorem` | [dirichletMeanPoint_reindex](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/declarations/dirichletmeanpoint-reindex--2aa9b28b8cb528394a0d1479.md) | 63 | `result-track:2aa9b28b8cb528394a0d147954183f9192b5b303dbb9fdeaa0e759cd31170f59` |
| 4 | `def` | [dirichletMeanMixture](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/declarations/dirichletmeanmixture--62c7739491e7c01932932723.md) | 75 | `declaration-track:62c7739491e7c0193293272393a09f47f6aba343fd783dd35c193f6ee7f17166` |
| 5 | `theorem` | [dirichletMeanMixture_normalized](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/declarations/dirichletmeanmixture-normalized--78a6c1f3bced2a85f4fc2896.md) | 80 | `result-track:78a6c1f3bced2a85f4fc2896793eb22a4f16be3f911ec1cc58cf032c7fadd8c9` |
| 6 | `theorem` | [dirichletMeanMixture_spectralExpectation](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/declarations/dirichletmeanmixture-spectralexpectation--95d2d2cc9b3413948de8cdd5.md) | 87 | `result-track:95d2d2cc9b3413948de8cdd5d56c09b69518083c44dfdab73a35b6b8fc9fb712` |
| 7 | `theorem` | [dirichletMeanMixture_turnCovariant](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichletPacketTransport/Variant26c780c4c6e69c9f/DeterministicDirichletMeanMixtures.lean/declarations/dirichletmeanmixture-turncovariant--62594d1e94ce1def6f511d71.md) | 99 | `result-track:62594d1e94ce1def6f511d7118dce5edda9745193de5815eab2bb3cf126873a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
