# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticFactorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f35debeed342969235cb62b5f361f81224362a9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f35debeed342969235cb62b5f361f81224362a9`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftQuarticPacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticPacking.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticFactorization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [safeAxialDyadicNormalizedY](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safeaxialdyadicnormalizedy--b900c3152f07c0cd631b4b73.md) | 37 | `declaration-track:b900c3152f07c0cd631b4b7382e15693b8e781a4f2cf070c6981eba2a2b2c8fc` |
| 2 | `def` | [safeTransverseDyadicNormalizedY](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safetransversedyadicnormalizedy--fcaf4fc9205175a8fc9ea139.md) | 43 | `declaration-track:fcaf4fc9205175a8fc9ea139bfa9c1d1b5f35975c82c1349c16ec600111552d6` |
| 3 | `theorem` | [safeAxialDyadic_y_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safeaxialdyadic-y-factor--017465475135a0605fe743b0.md) | 50 | `result-track:017465475135a0605fe743b0aab35ab32ba58e5070108bec95fb304e2b60e115` |
| 4 | `theorem` | [safeTransverseDyadic_y_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safetransversedyadic-y-factor--90aac0813a1f091427efda69.md) | 70 | `result-track:90aac0813a1f091427efda699aa97a814c7e8fc69707e549c7546e9456a06cd8` |
| 5 | `def` | [safeAxialDyadicNormalizedPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safeaxialdyadicnormalizedpoint--8e3e2b225fd36ea0c3d026da.md) | 89 | `declaration-track:8e3e2b225fd36ea0c3d026daf2b74f9794b44e6b8f638f30a53c942fe373d33f` |
| 6 | `def` | [safeTransverseDyadicNormalizedPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safetransversedyadicnormalizedpoint--4562a3cbba8834ca10d51a5e.md) | 93 | `declaration-track:4562a3cbba8834ca10d51a5ee65739d379f9e36766d13ecbfe213b4926618c8f` |
| 7 | `def` | [safeAxialDyadicNormalizedPacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safeaxialdyadicnormalizedpacking--cf28bae112846a413282a2f2.md) | 97 | `declaration-track:cf28bae112846a413282a2f21129232a2ece8d7d97fa9f2b571d869621331940` |
| 8 | `def` | [safeTransverseDyadicNormalizedPacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safetransversedyadicnormalizedpacking--ee080ebf01467e281f600243.md) | 101 | `declaration-track:ee080ebf01467e281f600243adf8b1451ab00d564c3a08aa3fadd8ab4672668d` |
| 9 | `def` | [safeAxialDyadicQuarticCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safeaxialdyadicquarticcoefficient--e59592152589e2130eb3353b.md) | 105 | `declaration-track:e59592152589e2130eb3353b03ebdba8c84baa7267a701374b4a0c2bdafb4eba` |
| 10 | `def` | [safeTransverseDyadicQuarticCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safetransversedyadicquarticcoefficient--21eb645717eab9f34513573c.md) | 108 | `declaration-track:21eb645717eab9f34513573c8569709414d7ac7fe7d9012631abe129b34d821e` |
| 11 | `theorem` | [safeAxialDyadicQuarticCoefficient_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safeaxialdyadicquarticcoefficient-nonnegative--841197feebddac1453cbbaf4.md) | 111 | `result-track:841197feebddac1453cbbaf4e682a96c264f8c1a551044d6d2453178ff340a26` |
| 12 | `theorem` | [safeTransverseDyadicQuarticCoefficient_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safetransversedyadicquarticcoefficient-nonnegative--db8524cf34f99cbba2d8799c.md) | 116 | `result-track:db8524cf34f99cbba2d8799c3e36dda77fd54733926645aa8b6c0888a416168c` |
| 13 | `theorem` | [safeAxialDyadic_orientedVolume_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safeaxialdyadic-orientedvolume-factor--39e96bd9b696f2923d87971b.md) | 121 | `result-track:39e96bd9b696f2923d87971b08583bf019ea2fe56c0af3eda335942b3b15822b` |
| 14 | `theorem` | [safeTransverseDyadic_orientedVolume_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safetransversedyadic-orientedvolume-factor--c38c880447ec0a67c0ed5d91.md) | 134 | `result-track:c38c880447ec0a67c0ed5d919507edf81ef885e798041a0bd462a65f7fb38748` |
| 15 | `theorem` | [safeAxialDyadicGram_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safeaxialdyadicgram-factor--aba35a3b86e95eb97f932983.md) | 147 | `result-track:aba35a3b86e95eb97f932983f92fcbb1fb108a702365e37403b457c781195184` |
| 16 | `theorem` | [safeTransverseDyadicGram_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safetransversedyadicgram-factor--1765ab937153d51330369a9d.md) | 157 | `result-track:1765ab937153d51330369a9dc6cc1272db7283e19d079b63fc3e300d42f1c50e` |
| 17 | `theorem` | [safeQuarticDyadicPackingValue_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/safequarticdyadicpackingvalue-factor--5dd51a587c5a9ac8915e282d.md) | 167 | `result-track:5dd51a587c5a9ac8915e282d41d236d3352dbadf67334514ec676c07fe0bdf81` |
| 18 | `structure` | [OffLineDyadicQuarticScaleDataAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/offlinedyadicquarticscaledataatzero--deb597c63d1645b6a2df7bf7.md) | 180 | `declaration-track:deb597c63d1645b6a2df7bf77dbba75be56d137a92321c8f81f4dc52d9177db8` |
| 19 | `theorem` | [OffLineDyadicQuarticScaleDataAtZero.forces_critical_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/offlinedyadicquarticscaledataatzero-forces-critical-line--3fccded9b1ff433a2ea5ce75.md) | 201 | `result-track:3fccded9b1ff433a2ea5ce75e965aa6c23dc672f6c556966e47c0d365481e0bf` |
| 20 | `def` | [OffLineDyadicQuarticScaleClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/offlinedyadicquarticscaleclaim--ece95fe7bd3b80e1f252ca11.md) | 262 | `declaration-track:ece95fe7bd3b80e1f252ca117f4e199cd0f40bddea7257ee44e443715c1d1aae` |
| 21 | `theorem` | [riemannHypothesis_of_offLineDyadicQuarticScale](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftQuarticFactorization.lean/declarations/riemannhypothesis-of-offlinedyadicquarticscale--e19f471a9d57e5e369e015ba.md) | 266 | `result-track:e19f471a9d57e5e369e015baccab3b212cae2bb8a0c67aa774cb493fbcf718a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
