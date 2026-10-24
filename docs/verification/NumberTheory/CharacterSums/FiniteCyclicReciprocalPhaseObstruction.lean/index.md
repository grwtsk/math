# Verification target: GRWTSK.NumberTheory.CharacterSums.FiniteCyclicReciprocalPhaseObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbc72d9e2ad03c28a9a2bf6486fad5b0431cb5a4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbc72d9e2ad03c28a9a2bf6486fad5b0431cb5a4`.

Source path: `GRWTSK/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.CharacterSums.FiniteCyclicIntervalDistance`](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteCyclicReciprocalMass](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean/declarations/finitecyclicreciprocalmass--eee503116b877db7d3a06ef6.md) | 29 | `declaration-track:eee503116b877db7d3a06ef6b06c99a6c7cdce4c8adfc99242fdb99eb27ec330` |
| 2 | `theorem` | [finiteCyclicReciprocalMass_nonneg](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean/declarations/finitecyclicreciprocalmass-nonneg--0ad1645515b5ddb264f6ec4f.md) | 33 | `result-track:0ad1645515b5ddb264f6ec4f0bfcc16bf07e5535ce7d81938b536f329c307c07` |
| 3 | `theorem` | [coe_finiteCyclicReciprocalMass](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean/declarations/coe-finitecyclicreciprocalmass--60c29445076e0f97f3bca9a3.md) | 39 | `result-track:60c29445076e0f97f3bca9a35d3089669b0f1831e29d264534ac04e770aa24f9` |
| 4 | `theorem` | [sum_stdAddChar_neg_div_nat_add_Ico_zero](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean/declarations/sum-stdaddchar-neg-div-nat-add-ico-zero--d1a73a9124320cdf5a7baa7a.md) | 46 | `result-track:d1a73a9124320cdf5a7baa7ab48159773f0bd2cc838fd040e3ec787450c7d566` |
| 5 | `theorem` | [stdAddChar_phaseMatched_reciprocal_Ico](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean/declarations/stdaddchar-phasematched-reciprocal-ico--1dce37a91ab8e846c72e07a1.md) | 59 | `result-track:1dce37a91ab8e846c72e07a12fea6d01b180b3a9808968ad1a231db19d06ec42` |
| 6 | `theorem` | [norm_stdAddChar_phaseMatched_reciprocal_Ico](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicReciprocalPhaseObstruction.lean/declarations/norm-stdaddchar-phasematched-reciprocal-ico--61366181a29941d755840d28.md) | 82 | `result-track:61366181a29941d755840d2899b7aafd623ed9d17361d27958d6ce53a0f6d459` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
