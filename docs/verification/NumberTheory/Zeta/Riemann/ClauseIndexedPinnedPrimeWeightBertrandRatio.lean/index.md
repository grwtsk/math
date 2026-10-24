# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightBertrandRatio

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27037dff6437619fe41460418c5ddd24cc7418db",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27037dff6437619fe41460418c5ddd24cc7418db`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightBertrandPositivity`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightBertrandPositivity.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightCapacityRatio`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClauseIndexedPinnedPrimeWeightBertrandRatioCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/clauseindexedpinnedprimeweightbertrandratiocriterion--5a57aaf3ea937ea9ef247a98.md) | 30 | `declaration-track:5a57aaf3ea937ea9ef247a981562ad62224c08ae6c1787ee44299f41619b0e72` |
| 2 | `abbrev` | [ClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/clauseindexedpinnedprimeweightfixedbertrandratiocriterion--3636092e495a2549d6e4fa2b.md) | 36 | `declaration-track:3636092e495a2549d6e4fa2bdffecbb7a6b87a39d33385a4c756d7c0e1488218` |
| 3 | `theorem` | [clauseIndexedPinnedPrimeWeightBertrandRatioCriterion_iff_capacityRatioCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/clauseindexedpinnedprimeweightbertrandratiocriterion-iff-capacityratiocr--5206a90a8acd9fc88f0816ad.md) | 43 | `result-track:5206a90a8acd9fc88f0816ad73e54f219da1256a70b491e04e6301652bb0cae3` |
| 4 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion_iff_capacityRatioCriterion](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/clauseindexedpinnedprimeweightfixedbertrandratiocriterion-iff-capacityra--6eefdd3980f7d51501563056.md) | 51 | `result-track:6eefdd3980f7d515015630561885be7357c6e3c03289b43f3dc897a73578bfbc` |
| 5 | `theorem` | [clauseIndexedPinnedPrimeWeightDeficit_to_bertrandRatio](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/clauseindexedpinnedprimeweightdeficit-to-bertrandratio--d4e9440578fd58d41638b345.md) | 61 | `result-track:d4e9440578fd58d41638b345311e9f24d48613f81a76809fedc9450c9fd95752` |
| 6 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedBertrandRatio_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/clauseindexedpinnedprimeweightfixedbertrandratio-to-recurrence--69bacfb3aac1e0a21177a710.md) | 72 | `result-track:69bacfb3aac1e0a21177a710f9456663053b0a9deb116f8e31c0dfecb51a8d0b` |
| 7 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedBertrandRatio_to_previous](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/clauseindexedpinnedprimeweightfixedbertrandratio-to-previous--19ea0509ec7644c33f3c4d0a.md) | 82 | `result-track:19ea0509ec7644c33f3c4d0a55923560d56db953f3c385ecea3307ae7d95e580` |
| 8 | `theorem` | [threeClauseIndexedPinnedPrimeWeightBertrandRatioCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/threeclauseindexedpinnedprimeweightbertrandratiocriterion-iff--1129f416b4363913e25da172.md) | 103 | `result-track:1129f416b4363913e25da172c6e426aaecf1c5327f6664586543cd797b2b20da` |
| 9 | `theorem` | [twoClauseIndexedPinnedPrimeWeightBertrandRatioCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/twoclauseindexedpinnedprimeweightbertrandratiocriterion-iff--d239842d10d26e09bbd3bf12.md) | 111 | `result-track:d239842d10d26e09bbd3bf12821bf4b97248ec2d96017a8a2334c482a188c844` |
| 10 | `theorem` | [threeClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/threeclauseindexedpinnedprimeweightfixedbertrandratiocriterion-iff--841ce92635ddb5ea296c1e99.md) | 119 | `result-track:841ce92635ddb5ea296c1e99a30d50c2705db4fcef63236b806a086aa93d0854` |
| 11 | `theorem` | [twoClauseIndexedPinnedPrimeWeightFixedBertrandRatioCriterion_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/twoclauseindexedpinnedprimeweightfixedbertrandratiocriterion-iff--450050f7d3b243773b25420c.md) | 129 | `result-track:450050f7d3b243773b25420c23b6029c31e133fef5c1e36c550fcc18d453ff62` |
| 12 | `theorem` | [clauseIndexedPinnedPrimeWeightFixedBertrandRatioCriteria_to_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightBertrandRatio.lean/declarations/clauseindexedpinnedprimeweightfixedbertrandratiocriteria-to-rh--08ab215d035f932b9cde7fbb.md) | 141 | `result-track:08ab215d035f932b9cde7fbb10771a4c18b785e8521c92363094886a03b306af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
