# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightAmplitude

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6972ebdc8e64fbe143f0e724b15bdae830caaba0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6972ebdc8e64fbe143f0e724b15bdae830caaba0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightAmplitudeEnvelope`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAmplitudeEnvelope.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightCapacity`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClauseIndexedPinnedPrimeWeightAmplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/clauseindexedpinnedprimeweightamplitudecriterion--73a355df184a38deed34bb5b.md) | 33 | `declaration-track:73a355df184a38deed34bb5b90d6d1c60aa5fe24e969f51323ed19938afd71c8` |
| 2 | `abbrev` | [ClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/clauseindexedpinnedprimeweightfixedcapacityamplitudecriterion--5b42229b1dd0ee0f4f8157c8.md) | 40 | `declaration-track:5b42229b1dd0ee0f4f8157c8560df12b82466798ea79f04760d9150495a72233` |
| 3 | `theorem` | [clauseIndexedPinnedPrimeWeightCapacityCriterion_iff_amplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/clauseindexedpinnedprimeweightcapacitycriterion-iff-amplitudecriterion--b26cfaf493d492702b191d7d.md) | 47 | `result-track:b26cfaf493d492702b191d7d1c11594235ee3479af337be0fd67cc163ed22c9e` |
| 4 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedCapacityCriterion_iff_amplitudeCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/clauseindexedpinnedprimeweightfixedcapacitycriterion-iff-amplitudecriter--ee1ac8475047ca1de290c4ae.md) | 56 | `result-track:ee1ac8475047ca1de290c4aef2ab3d59aab5f9d1d93ed1e0bc28a1f248c47bb2` |
| 5 | `theorem` | [clauseIndexedPinnedPrimeWeightDeficit_to_amplitude](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/clauseindexedpinnedprimeweightdeficit-to-amplitude--6012d5f91994a274ece70320.md) | 66 | `result-track:6012d5f91994a274ece70320fd72ee2f14cee51104f1d525e069f0947f515246` |
| 6 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedAmplitude_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/clauseindexedpinnedprimeweightfixedamplitude-to-recurrence--f37d62ec46a4c47a282ed116.md) | 76 | `result-track:f37d62ec46a4c47a282ed116c06710c62088347fe78fd2cf5382567c5fa4c6e5` |
| 7 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedAmplitude_to_previous](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/clauseindexedpinnedprimeweightfixedamplitude-to-previous--6e9173cca499ab787e97e1d6.md) | 87 | `result-track:6e9173cca499ab787e97e1d6841856db69e551a449146533966dc17b6e7f1ce0` |
| 8 | `theorem` | [threeClauseIndexedPinnedPrimeWeightAmplitudeCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/threeclauseindexedpinnedprimeweightamplitudecriterion-iff--9d6c4efa35b3e61ad3c9c47b.md) | 109 | `result-track:9d6c4efa35b3e61ad3c9c47ba3d514e6fccb8e71c0b91d036ab016d79b5d9a3f` |
| 9 | `theorem` | [twoClauseIndexedPinnedPrimeWeightAmplitudeCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/twoclauseindexedpinnedprimeweightamplitudecriterion-iff--dacbd20cb625ae5719cee1b0.md) | 118 | `result-track:dacbd20cb625ae5719cee1b0333921a2b516e79a8decb96a7cf14792c4708fb5` |
| 10 | `theorem` | [threeClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/threeclauseindexedpinnedprimeweightfixedcapacityamplitudecriterion-iff--4c63763136e7b432ac62add4.md) | 127 | `result-track:4c63763136e7b432ac62add4899a4fad79ba8c65a29d840038c7066b0de9c812` |
| 11 | `theorem` | [twoClauseIndexedPinnedPrimeWeightFixedCapacityAmplitudeCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/twoclauseindexedpinnedprimeweightfixedcapacityamplitudecriterion-iff--1a14520a76e7db0da8bd3bcc.md) | 138 | `result-track:1a14520a76e7db0da8bd3bccbe7de5eca4279f87f71c7f545559cd899bc44e6c` |
| 12 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedAmplitudeCriteria_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightAmplitude.lean/declarations/clauseindexedpinnedprimeweightfixedamplitudecriteria-to-rh--998d7f0726df183d122cde27.md) | 150 | `result-track:998d7f0726df183d122cde2700f144761fc8319890f39dc01d5643e7c6fc6012` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
