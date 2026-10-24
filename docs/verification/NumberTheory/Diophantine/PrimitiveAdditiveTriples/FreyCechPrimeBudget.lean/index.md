# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechPrimeBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65de0ada25121a2c63ef08f21c66384412024dc2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65de0ada25121a2c63ef08f21c66384412024dc2`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Factorization.NaturalRadicalExcess`](../../../../../mathematics/NumberTheory/Factorization/NaturalRadicalExcess.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechWeightedMinimum`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechWeightedMinimum.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [clearing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/clearing--6a9b6af637fd754763aba57e.md) | 23 | `declaration-track:6a9b6af637fd754763aba57e12e4049eba5827122f2397e6353811b2ad5fd761` |
| 2 | `def` | [index](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/index--704b8826d2d002f1cd797830.md) | 26 | `declaration-track:704b8826d2d002f1cd797830664d848fa3cbd06400f788b966630284e41c5075` |
| 3 | `theorem` | [clearing_criterion](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/clearing-criterion--943396e220522f8d83349df5.md) | 28 | `result-track:943396e220522f8d83349df55cd2d940fb5ca69f0456f977c2093238e37e2813` |
| 4 | `theorem` | [clearing_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/clearing-ne-zero--52a1211a5940002e18fc3003.md) | 36 | `result-track:52a1211a5940002e18fc3003dcb424cf58fd7fd62f1ee457ac4b1ddd8ef07074` |
| 5 | `theorem` | [index_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/index-ne-zero--a0ac779501a0bfd98fa4535b.md) | 40 | `result-track:a0ac779501a0bfd98fa4535bd26a4822c2f6cccc3c7fddde185f17863ff235e3` |
| 6 | `theorem` | [clearing_factorization](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/clearing-factorization--2e8cfcea93e88e2755d94d7a.md) | 46 | `result-track:2e8cfcea93e88e2755d94d7af5714704729754e21aa2995510a9709cf483c928` |
| 7 | `theorem` | [index_factorization](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/index-factorization--41bb8d765ba3f35895ca22c1.md) | 54 | `result-track:41bb8d765ba3f35895ca22c1f15e9fcc97b1492074f3606305a0eaeb1c81813f` |
| 8 | `theorem` | [stage_rank_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/stage-rank-pos--aa42f4cdd01bdf0d2c188586.md) | 64 | `result-track:aa42f4cdd01bdf0d2c188586160960c24ef40237533ddcdd1fb451eec85e5a33` |
| 9 | `theorem` | [twoPow_three_factors](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/twopow-three-factors--3a356165df913d1ea5b64c2e.md) | 68 | `result-track:3a356165df913d1ea5b64c2e605072b48e873d797efbf655376cd1e40d43cbbe` |
| 10 | `theorem` | [twoPow_three_support](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/twopow-three-support--d9024321617b96a813b9dd90.md) | 74 | `result-track:d9024321617b96a813b9dd90861cd94fb41ac7e457391894c677cae2a18c2d76` |
| 11 | `theorem` | [clearing_support](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/clearing-support--ad04301f7e9c8cc07b324b14.md) | 81 | `result-track:ad04301f7e9c8cc07b324b14830673c724a07a2c81b82a37d09034ec7943b859` |
| 12 | `theorem` | [index_support](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/index-support--8d863e40c8c471e8e6ccbf4c.md) | 90 | `result-track:8d863e40c8c471e8e6ccbf4c3deda6c0fbc90d2009e9074b50c81f0c6bcf3b60` |
| 13 | `theorem` | [grade_zero_support](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/grade-zero-support--bca328b6a12645c0c227c3e6.md) | 102 | `result-track:bca328b6a12645c0c227c3e6c121568b3e4acaafe022016c89f390c8917102c3` |
| 14 | `theorem` | [same_radical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/same-radical--9257c27d0dfa75b1c29e064c.md) | 112 | `result-track:9257c27d0dfa75b1c29e064c9b2d88d8d02b83c57b3cdd1747f6290912002804` |
| 15 | `theorem` | [clearing_log](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/clearing-log--a14ed43ef4a5181e75c639a3.md) | 122 | `result-track:a14ed43ef4a5181e75c639a390fc00acd7b83a9684a2f7091c89cc117f54f325` |
| 16 | `theorem` | [index_log](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/index-log--391a0bc3fbda09fdcd1ad7b2.md) | 130 | `result-track:391a0bc3fbda09fdcd1ad7b294dff066807301e1d604ae1e1d19137dcdaeb9c5` |
| 17 | `theorem` | [clearing_log_budget](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/clearing-log-budget--50a86b267a2fe1f9255e6869.md) | 143 | `result-track:50a86b267a2fe1f9255e68696a448be9a170996f9ccb2a8f55659532c9c41d71` |
| 18 | `theorem` | [index_log_budget](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/index-log-budget--595853b9297b97e0710158cf.md) | 148 | `result-track:595853b9297b97e0710158cfabfbcdf70ea250608420ab35217ecdfb8a0793eb` |
| 19 | `theorem` | [native_clearing_depths](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/native-clearing-depths--20fb8ba18c8f962e376e14f5.md) | 155 | `result-track:20fb8ba18c8f962e376e14f52ec9dc58d0667c634505acc0cf704743b611bda5` |
| 20 | `theorem` | [native_index_depths](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/native-index-depths--545d56a82c55bc66f77f05c1.md) | 166 | `result-track:545d56a82c55bc66f77f05c1d164877230a594b7df632db174df5842fc891da1` |
| 21 | `theorem` | [fixed_source_unbounded_excess](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCechPrimeBudget.lean/declarations/fixed-source-unbounded-excess--79706f91c2510364ef267d7d.md) | 177 | `result-track:79706f91c2510364ef267d7d78b549ca480a53a4abeb1d13d750a7fbcc16de6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
