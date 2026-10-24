# Verification target: GRWTSK.Analysis.MeasureTheory.PartitionFiltration.Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c130b055b5e8fcc2be572874f20f1fcfe71c882f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c130b055b5e8fcc2be572874f20f1fcfe71c882f`.

Source path: `GRWTSK/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.CountablyGenerated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Process.Filtration` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partitionFiltration](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/partitionfiltration--8d82e813badef5fda7bbe81d.md) | 56 | `declaration-track:8d82e813badef5fda7bbe81d42d1d4061ffbfa563ba331d27fd25d9c2c640e49` |
| 2 | `lemma` | [measurableSet_partitionFiltration_of_mem](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/measurableset-partitionfiltration-of-mem--f0043ca87561220800fc884a.md) | 62 | `result-track:f0043ca87561220800fc884a8d4da777d7f6100251b3efb3200003d745313cfe` |
| 3 | `lemma` | [measurableSet_partitionFiltration_memPartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/measurableset-partitionfiltration-mempartitionset--d39f1fa6ffaf3e83b6edbb53.md) | 67 | `result-track:d39f1fa6ffaf3e83b6edbb53ed3722a00e7b727c6cba776259b4070c65ece09b` |
| 4 | `lemma` | [measurable_memPartitionSet_subtype](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/measurable-mempartitionset-subtype--b2676046d85ed8716c124f21.md) | 72 | `result-track:b2676046d85ed8716c124f21db13e5d61dc02f12f3c4dcf7f42e45ca6cd2204e` |
| 5 | `lemma` | [measurable_partitionFiltration_memPartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/measurable-partitionfiltration-mempartitionset--072db7f2b7c26bc81d90bcc3.md) | 86 | `result-track:072db7f2b7c26bc81d90bcc3c8652bf61b495234a69572756268e8d84d0c2bbd` |
| 6 | `lemma` | [measurable_memPartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/measurable-mempartitionset--f0d46fb0d195800570314188.md) | 90 | `result-track:f0d46fb0d19580057031418888d462450140659f701106d7fd902f6c7c7f1ada` |
| 7 | `lemma` | [iSup_partitionFiltration_eq_generateFrom_range](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/isup-partitionfiltration-eq-generatefrom-range--b57601aa648af3a3224dad64.md) | 94 | `result-track:b57601aa648af3a3224dad64f958181527e092bf3a407ab2ab0a0d6f906b82eb` |
| 8 | `lemma` | [iSup_partitionFiltration](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/isup-partitionfiltration--275a01c591577143ec0337eb.md) | 99 | `result-track:275a01c591577143ec0337ebb1a3ef93666010baa4a907b305e34595f5409c63` |
| 9 | `def` | [countableFiltration](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/countablefiltration--137389a9999bc0310fd6eb2c.md) | 112 | `declaration-track:137389a9999bc0310fd6eb2c1691dd0faea81b56bfd588ab3e91643987489f72` |
| 10 | `lemma` | [measurableSet_countableFiltration_of_mem](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/measurableset-countablefiltration-of-mem--71cc6396c43da2d9ccee1e00.md) | 118 | `result-track:71cc6396c43da2d9ccee1e00d7b40b730ba288d99d5350c0ede6e05b234c54f5` |
| 11 | `lemma` | [measurableSet_countableFiltration_countablePartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/measurableset-countablefiltration-countablepartitionset--4757b960aa870547e3e498be.md) | 123 | `result-track:4757b960aa870547e3e498be15916175f2ec174287af1c2fe1462410e8ea1d6e` |
| 12 | `lemma` | [measurable_countablePartitionSet_subtype](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/measurable-countablepartitionset-subtype--5964c2260cf340fe432ceb80.md) | 127 | `result-track:5964c2260cf340fe432ceb807737b63ddd99f91bd3ce306b33551789739eb0f2` |
| 13 | `lemma` | [measurable_countableFiltration_countablePartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/measurable-countablefiltration-countablepartitionset--98c21005db3c54701151cac3.md) | 134 | `result-track:98c21005db3c54701151cac354051c73c3a10b0add7ac46eb0ba3a860578053a` |
| 14 | `lemma` | [measurable_countablePartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/measurable-countablepartitionset--74f033ead0faecf54880bcd5.md) | 139 | `result-track:74f033ead0faecf54880bcd5ff4775dbaca62b73eacb3b788af1505e3ca01140` |
| 15 | `lemma` | [iSup_countableFiltration](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Variantf9c5929469e0d8c34566880dca08ff9483078429d30fc360553c1de3ae24843a.lean/declarations/isup-countablefiltration--65ef170b7e3ad9d6468f5916.md) | 145 | `result-track:65ef170b7e3ad9d6468f59164cea55dc5ba38f3e4d1df99da85e3e1f2687be3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
