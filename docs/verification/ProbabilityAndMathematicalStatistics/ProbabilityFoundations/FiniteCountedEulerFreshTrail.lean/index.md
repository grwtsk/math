# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerFreshTrail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5abb94eff15bf1469eec64a95f19b965f8205f6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5abb94eff15bf1469eec64a95f19b965f8205f6`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCountedEulerTrail`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerTrail.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CountedWalk](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/countedwalk--75e500cf0afe91e6ce4b8245.md) | 22 | `declaration-track:75e500cf0afe91e6ce4b8245dd00840703d1cc81ea9be9058d603f0c6462f436` |
| 2 | `def` | [CountedWalk.edges](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/countedwalk-edges--b0b24d6ef22d8bfae95d27b8.md) | 32 | `declaration-track:b0b24d6ef22d8bfae95d27b850abbebbe2e6f1cd99c4cc5265d3e87b4678d880` |
| 3 | `structure` | [FreshCountedTrail](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail--52844fe9fe24bcc16eca27f4.md) | 42 | `declaration-track:52844fe9fe24bcc16eca27f447fc385b0c735b989dc6a8762d067913ce5d658f` |
| 4 | `def` | [FreshCountedTrail.used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-used--73f797b50743965d80f6b763.md) | 48 | `declaration-track:73f797b50743965d80f6b76332f63d358e20bc6a6fdfd4000669c20691822232` |
| 5 | `def` | [FreshCountedTrail.append](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-append--6948fdfb1f7250accac25330.md) | 56 | `declaration-track:6948fdfb1f7250accac253309e367f9fb04648d803d8f9dd87eed57389fdb1fc` |
| 6 | `theorem` | [FreshCountedTrail.append_used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-append-used--865b193044fc307a84e1241a.md) | 71 | `result-track:865b193044fc307a84e1241a41f7d2d62d9cae1e98fd9335ca504b3ca73acafe` |
| 7 | `theorem` | [FreshCountedTrail.append_unused_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-append-unused-card--8b9c0cb77181f54aa0f2dc2d.md) | 83 | `result-track:8b9c0cb77181f54aa0f2dc2da4c7f44c4d50793996223512085cd72a35019718` |
| 8 | `def` | [FreshCountedTrail.MaximalAtFinish](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-maximalatfinish--b313bf9cf1f8496235785b2e.md) | 106 | `declaration-track:b313bf9cf1f8496235785b2e2d255baf311a7b655bae1697481848f4f4c635d1` |
| 9 | `theorem` | [FreshCountedTrail.exists_append_of_not_maximal](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-exists-append-of-not-maximal--305ff6fb0a8b807aa03bc55b.md) | 115 | `result-track:305ff6fb0a8b807aa03bc55b17b0675c221366cfbb5fc121ee553772702e5259` |
| 10 | `theorem` | [FreshCountedTrail.exists_strict_extension](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-exists-strict-extension--511c0bf0eb30c1f1640b3097.md) | 131 | `result-track:511c0bf0eb30c1f1640b3097262a3ef398b1ace12010450327f40d03d4c060c3` |
| 11 | `def` | [FreshCountedTrail.empty](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-empty--022f5fcdce542e7f45a955ab.md) | 151 | `declaration-track:022f5fcdce542e7f45a955ab82fb2b3a9957d2e335f0092d01aa8f8f7b257fcf` |
| 12 | `theorem` | [FreshCountedTrail.empty_used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-empty-used--23e8cadd818b1365657399e0.md) | 158 | `result-track:23e8cadd818b1365657399e0cc2ca02c4bf7472f2fc73b43940d79919b437711` |
| 13 | `def` | [FreshCountedTrail.single](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-single--6b76246456fbfe885a0590cf.md) | 167 | `declaration-track:6b76246456fbfe885a0590cf87198b5bb571f5407ef3379f862e95535f8d440e` |
| 14 | `theorem` | [FreshCountedTrail.single_used](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-single-used--220f5351556d31de88a53c42.md) | 177 | `result-track:220f5351556d31de88a53c42592f0a6186c7041b44e4f4bd300062347cef60a8` |
| 15 | `theorem` | [FreshCountedTrail.exists_maximal_extension](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCountedEulerFreshTrail.lean/declarations/freshcountedtrail-exists-maximal-extension--499ae69f9c24a18b59125d5f.md) | 189 | `result-track:499ae69f9c24a18b59125d5f2ace9821186e14a8b373bba6554bf6a23fa89e29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
