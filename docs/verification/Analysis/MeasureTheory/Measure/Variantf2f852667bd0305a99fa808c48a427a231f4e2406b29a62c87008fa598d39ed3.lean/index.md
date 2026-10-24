# Verification target: GRWTSK.Analysis.MeasureTheory.Measure.Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bd94d3a3bb9e26dd1e4bfc9ffb0188a2707897f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bd94d3a3bb9e26dd1e4bfc9ffb0188a2707897f`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--fbd0bfc116e8fef2d7606be0.md) | 41 | `declaration-track:fbd0bfc116e8fef2d7606be0b3ff59c2b6ae439b32b20130a7935e50537ac1ea` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--ea73b621fd27e20f373897df.md) | 43 | `declaration-track:ea73b621fd27e20f373897df498bc8415d0f78d06596f37169e21d8f1add937d` |
| 3 | `lemma` | [measurableEmbedding_coe](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/measurableembedding-coe--8f8722d4650d423d3e82bf25.md) | 45 | `result-track:8f8722d4650d423d3e82bf25e48ffca4fc58fd28aa35c41c798e4a2f6f72b589` |
| 4 | `lemma` | [measurable_coe](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/measurable-coe--41f636a52b79fec803013cdc.md) | 49 | `result-track:41f636a52b79fec803013cdcefa63d4cc52b0b8a32a4df9e2ebf4fb4496813b8` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--55f814896c1bae455c6e1ebd.md) | 53 | `declaration-track:55f814896c1bae455c6e1ebd395b2fe19782941ffac634dae38ad45af88cfcfa` |
| 6 | `theorem` | [volume_def](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/volume-def--944f8347de0eb01e93ae0d83.md) | 57 | `result-track:944f8347de0eb01e93ae0d832ff3ee508a0d5a5ddbfeaa42097de2d0da1546bb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--2569e89bc1700e2236beccbd.md) | 62 | `declaration-track:2569e89bc1700e2236beccbd2a2e5e9b07c92d065f04ffecd50ec98c4615af02` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--5bb4b0dfa5107a3abbb0343e.md) | 65 | `declaration-track:5bb4b0dfa5107a3abbb0343efcf99f54875fce1a768d416381f0339bb133bdc1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--edbad21cae6ea7af7240bc39.md) | 67 | `declaration-track:edbad21cae6ea7af7240bc39dc6e1c7f5b2a991a70952b8646adfd0149f6c300` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--a4e002544f25356545b237df.md) | 69 | `declaration-track:a4e002544f25356545b237df8c9aaad96b0d9b4e61ac10566ae9a617b61e141a` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--db96fe96178ed7cc347e50ad.md) | 71 | `declaration-track:db96fe96178ed7cc347e50ad254e95e0dc0b4d93e652ae679bd215b4aa5e0e16` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--857066a556c04008cb6a5012.md) | 77 | `declaration-track:857066a556c04008cb6a50129f800dfa86271efc5a93d21075d06c5254efb297` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--7a80dbefc73d6eeb0d1fa3d6.md) | 79 | `declaration-track:7a80dbefc73d6eeb0d1fa3d67ec33c1012a1a5fde777b357f08b4e6ee1d22215` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--1601ff1acdfbd90c00b0771e.md) | 81 | `declaration-track:1601ff1acdfbd90c00b0771ead86c8f0dd916aa43a55cab37f340cd71b1d522f` |
| 15 | `lemma` | [volume_eq_lintegral](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/volume-eq-lintegral--d28755b0288f9257931e91ff.md) | 85 | `result-track:d28755b0288f9257931e91ff2e2f91108fb0c05290d001d2d1b867025d80593b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Measure/Variantf2f852667bd0305a99fa808c48a427a231f4e2406b29a62c87008fa598d39ed3.lean/declarations/instance--e89eb5ecfce3396f9deec5f9.md) | 97 | `declaration-track:e89eb5ecfce3396f9deec5f9046ec28b6268b5c151e2cf3d5b9316bccbafcff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
