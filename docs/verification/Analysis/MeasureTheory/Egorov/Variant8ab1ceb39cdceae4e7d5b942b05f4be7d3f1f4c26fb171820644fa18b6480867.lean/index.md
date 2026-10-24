# Verification target: GRWTSK.Analysis.MeasureTheory.Egorov.Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce91ab5496e5e4d3e3db582666c8cd7575d7ff20",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce91ab5496e5e4d3e3db582666c8cd7575d7ff20`.

Source path: `GRWTSK/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean.json)

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
| 1 | `def` | [notConvergentSeq](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/notconvergentseq--cc2612b1a79be83b7a33e115.md) | 53 | `declaration-track:cc2612b1a79be83b7a33e115347012fb30ff30ea812a87aba6c4ddca01e1bb8d` |
| 2 | `theorem` | [mem_notConvergentSeq_iff](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/mem-notconvergentseq-iff--2f8c222276aaf6726684e936.md) | 58 | `result-track:2f8c222276aaf6726684e936201e969f9f22b1c6f3bf723fc8d6d0b9c5a4ee06` |
| 3 | `theorem` | [notConvergentSeq_antitone](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/notconvergentseq-antitone--5c36d444005e4d7b86d8b741.md) | 62 | `result-track:5c36d444005e4d7b86d8b741c5a94e033b1af0e975c12903c23992adb16b6262` |
| 4 | `theorem` | [measure_inter_notConvergentSeq_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/measure-inter-notconvergentseq-eq-zero--41256ec19e58608685c9eff5.md) | 65 | `result-track:41256ec19e58608685c9eff584cc7172de29a70eebf0de5ecb3a84a986c7a2d3` |
| 5 | `theorem` | [notConvergentSeq_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/notconvergentseq-measurableset--72c5d38f89b90d6aa5d75dbb.md) | 78 | `result-track:72c5d38f89b90d6aa5d75dbb4bf585bf2ac3bc2663e8299b11eee37ce9d516a2` |
| 6 | `theorem` | [measure_notConvergentSeq_tendsto_zero](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/measure-notconvergentseq-tendsto-zero--1496b3c4d35bb8252837349b.md) | 84 | `result-track:1496b3c4d35bb8252837349b81cf798b55feadb1ba87a0331a48277973c9108b` |
| 7 | `theorem` | [exists_notConvergentSeq_lt](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/exists-notconvergentseq-lt--c347d0ed17b078e00ebbad1c.md) | 101 | `result-track:c347d0ed17b078e00ebbad1c8fcd1299e2c14dd40f467684b72d19cca14eebf4` |
| 8 | `def` | [notConvergentSeqLTIndex](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/notconvergentseqltindex--77be085ac5964637ce1567a3.md) | 116 | `declaration-track:77be085ac5964637ce1567a3b3d2c3fe9d93259798a8f2bcb53a7a64daeb46f7` |
| 9 | `theorem` | [notConvergentSeqLTIndex_spec](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/notconvergentseqltindex-spec--bb4c91b86e13bcd812345ac6.md) | 122 | `result-track:bb4c91b86e13bcd812345ac624ac469fc99c7baeca4baa090766859ad183953c` |
| 10 | `def` | [iUnionNotConvergentSeq](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/iunionnotconvergentseq--7fe3939e5510ce87ec36cd2e.md) | 133 | `declaration-track:7fe3939e5510ce87ec36cd2e9b9dcd407bcb521c31a94c412befb18ac47c305e` |
| 11 | `theorem` | [iUnionNotConvergentSeq_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/iunionnotconvergentseq-measurableset--acf90140e01d0dad9fe1eb4e.md) | 139 | `result-track:acf90140e01d0dad9fe1eb4e0cd6d632c44fc1c030b3589608e7b91dc7cfa8d7` |
| 12 | `theorem` | [measure_iUnionNotConvergentSeq](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/measure-iunionnotconvergentseq--59bbc6e9c03b3f41577d901c.md) | 146 | `result-track:59bbc6e9c03b3f41577d901cd5d046923ecad7027bb1587b42d122e53d91797b` |
| 13 | `theorem` | [iUnionNotConvergentSeq_subset](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/iunionnotconvergentseq-subset--002ee31a77f8c144c0446e2e.md) | 156 | `result-track:002ee31a77f8c144c0446e2e698a09719c72ad438138425dfb58136d3bcb305d` |
| 14 | `theorem` | [tendstoUniformlyOn_sdiff_iUnionNotConvergentSeq](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/tendstouniformlyon-sdiff-iunionnotconvergentseq--056b65bc13be8caa4f470f85.md) | 164 | `result-track:056b65bc13be8caa4f470f85f19a3b9ce080347f0d6fca868015a64bb8378691` |
| 15 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto_of_measurable_edist](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/tendstouniformlyon-of-ae-tendsto-of-measurable-edist--b514b7afcd70411215af306e.md) | 195 | `result-track:b514b7afcd70411215af306eb117a8b716d56680001734bbda3e2c6a4049fa96` |
| 16 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/tendstouniformlyon-of-ae-tendsto--ab45b53d902ffbfa743f1481.md) | 213 | `result-track:ab45b53d902ffbfa743f1481faa8689efabc47b0a3e326eeafaeee2dc855a52b` |
| 17 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto_of_measurable_edist'](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/tendstouniformlyon-of-ae-tendsto-of-measurable-edist--0dd5de26a0f500d92f393293.md) | 222 | `result-track:0dd5de26a0f500d92f3932931655c97fb440c23e070f5b3e0763c3c9fe0565bb` |
| 18 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto'](../../../../../mathematics/Analysis/MeasureTheory/Egorov/Variant8ab1ceb39cdceae4e7d5b942b05f4be7d3f1f4c26fb171820644fa18b6480867.lean/declarations/tendstouniformlyon-of-ae-tendsto--67a1e343ba9b1ead5933c41a.md) | 233 | `result-track:67a1e343ba9b1ead5933c41aa295623cdf709c3862d4c59a16d3945bdf465a02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
