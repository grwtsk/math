# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogPowerTailAttempt04.Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5a4b3ffe1a3ff66e1b592264f9ff34a6cd73167",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5a4b3ffe1a3ff66e1b592264f9ff34a6cd73167`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logPower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/logpower--0b7b98795dcc7eee5e7a8b65.md) | 25 | `declaration-track:0b7b98795dcc7eee5e7a8b650a16bc27b6a10ab34a7c476c385809027f8d53e3` |
| 2 | `def` | [logPowerPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/logpowerprimitive--a258de3821b2d88f712cc91b.md) | 26 | `declaration-track:a258de3821b2d88f712cc91b8796ae2f832bfb5aa53f4efa36193941d8f88ab6` |
| 3 | `theorem` | [logPower_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/logpower-hasderivat--c632afa392f334afcd096468.md) | 28 | `result-track:c632afa392f334afcd096468431cc4633ef22d7635d7f414c7c028c6ad021d86` |
| 4 | `theorem` | [primitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/primitive-hasderivat--12a133573059c0a0eda3a07b.md) | 39 | `result-track:12a133573059c0a0eda3a07b091bd80a280b9c7ceda7ea422fbff624fc25ba92` |
| 5 | `theorem` | [logPower_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/logpower-nonneg--73bb4519bc132187017a9c30.md) | 53 | `result-track:73bb4519bc132187017a9c30c11a22d1f1cd1324cbb1905c440cd6453ae1610f` |
| 6 | `theorem` | [logPower_antitone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/logpower-antitone--4e1b5bf8b9281fada8a5328c.md) | 57 | `result-track:4e1b5bf8b9281fada8a5328c048c1aeaf8ffa2570ff085287a5d9e232fc21db9` |
| 7 | `theorem` | [primitive_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/primitive-tendsto-zero--e504f0260bf8ef830ef29c95.md) | 71 | `result-track:e504f0260bf8ef830ef29c952d008fbebf12a5cf1953b17b3e0f84b3f2ef866b` |
| 8 | `theorem` | [logPower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/logpower-integrable--1a65ff5a6d8b607d147fcdcd.md) | 88 | `result-track:1a65ff5a6d8b607d147fcdcd8a205ba788fba3b2277723d5f71db5a5c829f800` |
| 9 | `theorem` | [logPower_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/logpower-integral--0718f07edfe1619930eca72a.md) | 93 | `result-track:0718f07edfe1619930eca72a0da464a75b434db5a90146243a9b4e165ae5c6e3` |
| 10 | `theorem` | [logPower_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/logpower-summable--abd76b1f887366162e7c9786.md) | 103 | `result-track:abd76b1f887366162e7c9786ebb521915e708d221ff98712aff94c4c9e944154` |
| 11 | `theorem` | [tail_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/tail-summable--069675b081fb57bbed4ddadf.md) | 107 | `result-track:069675b081fb57bbed4ddadff40b97272e5d9fea000c3d5bf54557b047b61b20` |
| 12 | `theorem` | [tail_le_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/tail-le-integral--ab829ed1a63a5937c21bc4ce.md) | 111 | `result-track:ab829ed1a63a5937c21bc4ce7a92d42ef5d911ddf9235b44c23a9add524e7b1a` |
| 13 | `theorem` | [tail_le_rational](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/declarations/tail-le-rational--ee2c883137bc0f98b140ff44.md) | 123 | `result-track:ee2c883137bc0f98b140ff44078a4a5c09d97a4526f07d51baa13de7905a93c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
