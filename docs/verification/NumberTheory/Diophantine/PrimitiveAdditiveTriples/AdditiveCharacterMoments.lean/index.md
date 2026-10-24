# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7edc897363a166ae03c8a1955f778b4343778d4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7edc897363a166ae03c8a1955f778b4343778d4`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteAdditiveProjector`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteAdditiveProjector.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/DivisorSectorReindexing.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectedJointMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/declarations/projectedjointmoment--d7acd96e536919292e835da7.md) | 17 | `declaration-track:d7acd96e536919292e835da74d0aef4c056a1d4a05596e59d129e2163bc134e0` |
| 2 | `def` | [frequencyJointMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/declarations/frequencyjointmoment--dec664079899b83464068320.md) | 24 | `declaration-track:dec664079899b83464068320bb63942d4d005b3423869c7aaf80bdef2ea5585c` |
| 3 | `theorem` | [projectedJointMoment_eq_frequencyJointMoment](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/declarations/projectedjointmoment-eq-frequencyjointmoment--dd843dade03b0c1c7f121e82.md) | 33 | `result-track:dd843dade03b0c1c7f121e8238151b0ae5b5ecb74a78fbb7372645553fa80218` |
| 4 | `theorem` | [scaled_additive_sum_eq_character_cube](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/declarations/scaled-additive-sum-eq-character-cube--098187995c35da7379235f67.md) | 51 | `result-track:098187995c35da7379235f678c1b1b4be4679ad4aceb3a593aab06b2e0a2896b` |
| 5 | `theorem` | [commonDivisorWeightedMoment_eq_character_cube](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/declarations/commondivisorweightedmoment-eq-character-cube--d9f9e342e4c225da4827e799.md) | 91 | `result-track:d9f9e342e4c225da4827e7993ff84be8b9cd8906dfd7e752659d4bdd3a976e71` |
| 6 | `theorem` | [typedPrimitiveWeightedMoment_eq_moebius_character_cube](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/declarations/typedprimitiveweightedmoment-eq-moebius-character-cube--59da2ef708f8b40bf82ce1e7.md) | 99 | `result-track:59da2ef708f8b40bf82ce1e7ba282a652198041a25bd412d424ed189397200ba` |
| 7 | `theorem` | [typedPrimitiveWeightedMoment_eq_moebius_frequency_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdditiveCharacterMoments.lean/declarations/typedprimitiveweightedmoment-eq-moebius-frequency-sum--f950e607660e68125afd67ce.md) | 111 | `result-track:f950e607660e68125afd67cee8ef23054ee7bbe51307cf2d59c2d5f0684bb460` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
