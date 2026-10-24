# Verification target: GRWTSK.Analysis.MeasureTheory.AEMeasurableSequence.Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "748c98f88000dbd2d9b2e97ab41e21c5c62d5e8d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `748c98f88000dbd2d9b2e97ab41e21c5c62d5e8d`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MeasureSpaceDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/aeseqset--a9e3d3cc5bd75f3f9f815583.md) | 36 | `declaration-track:a9e3d3cc5bd75f3f9f8155837ecc7aa21561195988caf13eef9aa4904b0d78b8` |
| 2 | `def` | [aeSeq](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/aeseq--df954324a40e969becf28d10.md) | 42 | `declaration-track:df954324a40e969becf28d1020694db49126ae6185f7e06c506447cc5396f1f7` |
| 3 | `theorem` | [mk_eq_fun_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/mk-eq-fun-of-mem-aeseqset--8fe6ce47b4541d67821cfa4a.md) | 50 | `result-track:8fe6ce47b4541d67821cfa4a81d9876d7bada43f01b294f830709a0d49326bf3` |
| 4 | `theorem` | [aeSeq_eq_mk_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/aeseq-eq-mk-of-mem-aeseqset--da43ad71ae3e9924c73f01e8.md) | 59 | `result-track:da43ad71ae3e9924c73f01e81c101399e14a6af3c717ec5501c4a12496c6e55e` |
| 5 | `theorem` | [aeSeq_eq_fun_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/aeseq-eq-fun-of-mem-aeseqset--25e01e6825df4a5cc036547b.md) | 64 | `result-track:25e01e6825df4a5cc036547b0411722464640aec5590cc04c69e905b4dbc55c2` |
| 6 | `theorem` | [prop_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/prop-of-mem-aeseqset--33c37c60fdf7df16ef9f4fd3.md) | 69 | `result-track:33c37c60fdf7df16ef9f4fd3de85a40eb281c3f8217760dafcf45d0b9b018c33` |
| 7 | `theorem` | [fun_prop_of_mem_aeSeqSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/fun-prop-of-mem-aeseqset--d8e83078671fb53f91d4f3df.md) | 81 | `result-track:d8e83078671fb53f91d4f3df4a12e279be9122b6a6aed7c5d4aaa19e44353668` |
| 8 | `theorem` | [aeSeqSet_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/aeseqset-measurableset--f1dd472aa227eaa013637214.md) | 91 | `result-track:f1dd472aa227eaa01363721447e208dac939cd370458eaa6d81ae57642ce0482` |
| 9 | `theorem` | [measurable](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/measurable--b422a8a462b7cfe9ef45c011.md) | 95 | `result-track:b422a8a462b7cfe9ef45c011a6714418b1d70552277f3aa0c25fa2ccd4cb6a0f` |
| 10 | `theorem` | [measure_compl_aeSeqSet_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/measure-compl-aeseqset-eq-zero--ccbcdf75bb857d4ec8f5e082.md) | 100 | `result-track:ccbcdf75bb857d4ec8f5e08250f372eda32027a976576f7a68b19d0d01787194` |
| 11 | `theorem` | [aeSeq_eq_mk_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/aeseq-eq-mk-ae--bc0f75a27f22fcb26d9b0ec5.md) | 108 | `result-track:bc0f75a27f22fcb26d9b0ec505395a65f560ac5f0a0628ca91565d2d3433de3d` |
| 12 | `theorem` | [aeSeq_eq_fun_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/aeseq-eq-fun-ae--f062e49186b022b38b567ae2.md) | 118 | `result-track:f062e49186b022b38b567ae2e730c2032e7448160afb21c7ecb7e99bc4eba428` |
| 13 | `theorem` | [aeSeq_n_eq_fun_n_ae](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/aeseq-n-eq-fun-n-ae--489504926a860ea535a890c6.md) | 125 | `result-track:489504926a860ea535a890c615f1e8587fe212aa67e3370b4fe4f609f2830866` |
| 14 | `theorem` | [iSup](../../../../../mathematics/Analysis/MeasureTheory/AEMeasurableSequence/Variantef075f0b6e9907e52e6cd55eae681cf909d20129ab18190359cff0397150a80e.lean/declarations/isup--3b4cab0b470bc748244781d7.md) | 130 | `result-track:3b4cab0b470bc748244781d70d3429ed0ab73e6389a0eaa0db5b67440cde9a82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
