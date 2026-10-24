# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt04.Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "215784fd55a1daa20e34e24068f067b08f5c786b",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `215784fd55a1daa20e34e24068f067b08f5c786b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/poweronset--6935482f4c064fec9c3f7856.md) | 17 | `declaration-track:6935482f4c064fec9c3f7856aabc536d6f2120ccc3d5db2cc2333e1bf9ab129c` |
| 2 | `def` | [powerWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/powerweight--8b49674e435229add6761d3e.md) | 20 | `declaration-track:8b49674e435229add6761d3eacd3f2dcca25152d21dc986a96e80fb611ec72a8` |
| 3 | `def` | [positiveOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsetatom--7ea42c19505c43b794ab1fcf.md) | 23 | `declaration-track:7ea42c19505c43b794ab1fcf237eb31ae3ec1e6281e800b68ddab5cdacc3249e` |
| 4 | `def` | [positiveOnsetTail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsettail--7939ea877c7e2541c24837e0.md) | 26 | `declaration-track:7939ea877c7e2541c24837e0a7063f533f51327a819766d0ff9475c94cb4558b` |
| 5 | `theorem` | [powerOnset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/poweronset-pos--4beaabbf5d122a7ab81dba47.md) | 29 | `result-track:4beaabbf5d122a7ab81dba479507c1145fe69ed7629026f9b1a52503bb1c8aa3` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/powerweight-nonneg--bf9cd16378dbd8d400e3ec8a.md) | 33 | `result-track:bf9cd16378dbd8d400e3ec8a6a8fb1b633bfe1cfffac64a31e4a03be5da0630c` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsetatom-nonneg--93015f30b5f198abe5dee93b.md) | 38 | `result-track:93015f30b5f198abe5dee93bbf85e330e34982ec735ec999c549a5f0ef9c13a6` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsetatom-measurable--fc37dda157d3116f28243ed7.md) | 42 | `result-track:fc37dda157d3116f28243ed74bf723541c37affa5e5ebc11f2d30171e6dbb90c` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsetatom-integrable--f531bb4b461b515c050a69ab.md) | 46 | `result-track:f531bb4b461b515c050a69ab4be2bb0814f8134ad2973225330cee719c44971b` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsetatom-integral--f76d4000afcd89cc7effcb91.md) | 53 | `result-track:f76d4000afcd89cc7effcb91aa8fd78db65bf4f0f663084383483936227e9d79` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsetatom-eq-omitted--d7a015db7de0621e411c50c1.md) | 61 | `result-track:d7a015db7de0621e411c50c19e0e71b7f78a2ca976353bce344dd4d75d052b5e` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsetatom-le-zeromoment--9345a6de2d42859bcb98d967.md) | 69 | `result-track:9345a6de2d42859bcb98d9672f4cc03d321a1a2c2008dc2831dbc9c781fedc42` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsettail-summable--f8b3b4dca1b30ed2239b5539.md) | 76 | `result-track:f8b3b4dca1b30ed2239b553961ed54bf780af7c9a6c402d151de4a44d0e37fc4` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsettail-nonneg--adc6dcf63b56f22e480ef7f1.md) | 81 | `result-track:adc6dcf63b56f22e480ef7f15f72b20e1108291aaf473374a0875118f6aa32c3` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsettail-measurable--46e673c2ffc95b2d3d045212.md) | 84 | `result-track:46e673c2ffc95b2d3d0452120b851b869b68dc7241e1364838bd1bcd9fe96e5d` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsettail-eq-indicator--6202a775ebf78629d039fe93.md) | 87 | `result-track:6202a775ebf78629d039fe933d8e3251bc14df483e3e920713d3d65894af8a40` |
| 17 | `theorem` | [positiveOnsetTail_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsettail-lintegral--291b276ac8f984efff16a7d7.md) | 97 | `result-track:291b276ac8f984efff16a7d720a1870d90b0a762a1b1954b670bee5485ffee17` |
| 18 | `theorem` | [positiveOnsetTail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsettail-integrable--62f5c7902b94b641251e5015.md) | 121 | `result-track:62f5c7902b94b641251e501523bec7a264d1d051dda20f05f106e2c6b853972e` |
| 19 | `theorem` | [positiveOnsetTail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/positiveonsettail-integral--bf7e97e1e09cd6b7ee691766.md) | 127 | `result-track:bf7e97e1e09cd6b7ee691766eaf3a7083cd5acc13dd119743eb797e305dd3415` |
| 20 | `theorem` | [omittedOnsetTail_integrable_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/omittedonsettail-integrable-positive--c12bc20d77c719e3cdfb06fe.md) | 134 | `result-track:c12bc20d77c719e3cdfb06fe6a2f334783f93870b105ca27ad4d17cb3c392a6e` |
| 21 | `theorem` | [omittedOnsetTail_integral_eq_B1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/omittedonsettail-integral-eq-b1--9428dd943ef5dfe31b4da8ba.md) | 139 | `result-track:9428dd943ef5dfe31b4da8badf8d8d8b5c26130a09ec45ca78b2c2c2e820c50b` |
| 22 | `def` | [closedOnsetAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/closedonsetatom--36427cce96030029beaa2ff2.md) | 145 | `declaration-track:36427cce96030029beaa2ff2a92f0918c19a3828c0cc6e83ecc861a294c11c55` |
| 23 | `def` | [closedOnsetPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/closedonsetprefix--2a392a0a570c6c1591ded9f3.md) | 148 | `declaration-track:2a392a0a570c6c1591ded9f351d1658e86b5a544f8a6af142a324d4d126c9902` |
| 24 | `theorem` | [closedOnsetAtom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/closedonsetatom-nonneg--a148c89528574a122f1b0e28.md) | 151 | `result-track:a148c89528574a122f1b0e289888a252b17e65715408d5ffd56ee9170ceea689` |
| 25 | `theorem` | [closedOnsetAtom_le_zeroMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/closedonsetatom-le-zeromoment--3a546ef0b0025154b0597332.md) | 158 | `result-track:3a546ef0b0025154b05973324744898cf6d1d8c0c51960dbdfc61209733ff908` |
| 26 | `theorem` | [closedOnsetPrefix_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/closedonsetprefix-summable--55e97bd2213e18d182c6fc79.md) | 165 | `result-track:55e97bd2213e18d182c6fc791892047c70d70c04fb3e39d97814fae20bd55ea9` |
| 27 | `theorem` | [closedOnsetAtom_add_omitted](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/closedonsetatom-add-omitted--5b92106917bcdc82d893a4c1.md) | 170 | `result-track:5b92106917bcdc82d893a4c150c5f48847db6214f724cc31479982d9f6d116fc` |
| 28 | `theorem` | [closedOnsetPrefix_add_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/closedonsetprefix-add-tail--e182a51bd18358454c7b371b.md) | 177 | `result-track:e182a51bd18358454c7b371b1553a91a1cdb9a39546f30cc5e30a5f52429ae37` |
| 29 | `theorem` | [properPowerMoment_sub_closedPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/properpowermoment-sub-closedprefix--8d5ecf582e3558475006995f.md) | 184 | `result-track:8d5ecf582e3558475006995ff748112db813002c48c2b46a2ac4a8873befe31b` |
| 30 | `theorem` | [closedOnsetAtom_touching](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/closedonsetatom-touching--1d39372077a99e5fc6012383.md) | 188 | `result-track:1d39372077a99e5fc6012383adfed1adbc24a9dc64a4b6c7a9f4ab5a424fe8be` |
| 31 | `theorem` | [powerOnset_ge_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/poweronset-ge-first--25b40921bd1138416358efe5.md) | 193 | `result-track:25b40921bd1138416358efe53d936bf36c2dcf7da1cc57db91cbed2417eb2b1c` |
| 32 | `theorem` | [closedOnsetPrefix_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/closedonsetprefix-below-first--656f18721f4193ec4d0a5d16.md) | 200 | `result-track:656f18721f4193ec4d0a5d16db41611fca3c31794245a9d6b75b797330739727` |
| 33 | `theorem` | [omittedOnsetTail_below_first](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/declarations/omittedonsettail-below-first--922fc8d1cd3484337a3c46ba.md) | 208 | `result-track:922fc8d1cd3484337a3c46ba9c4937920ba2c7425df4af503c7eed76ca25c48e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
