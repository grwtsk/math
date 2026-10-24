# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerMomentAudit.Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8d18595f0c8fb9a75be2d75f559a4958ba617b6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8d18595f0c8fb9a75be2d75f559a4958ba617b6`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/integermoment--b75ad51fa885866bc4691f83.md) | 19 | `declaration-track:b75ad51fa885866bc4691f83de2ef53729e1d0725ca3a8d0120e2a268af05290` |
| 2 | `def` | [higherMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/highermoment--f390132e9e56765eb136c3c7.md) | 22 | `declaration-track:f390132e9e56765eb136c3c726fc337e5af3ecd731587ccbd2a4ce758c519834` |
| 3 | `def` | [geometricRatio](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/geometricratio--86b21d8170d87ee0257400ec.md) | 26 | `declaration-track:86b21d8170d87ee0257400eccf19f9266a785ec80cdc4b9ea7a5d0d0d203a0c8` |
| 4 | `def` | [exponentMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/exponentmoment--82169cdfc58dc42efbbc0d9a.md) | 29 | `declaration-track:82169cdfc58dc42efbbc0d9a1f169afefe0b069bce0a6d388ba1cfe988a8dbfe` |
| 5 | `theorem` | [integerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/integermoment-nonneg--6bcdba97d62d9a716f178ed7.md) | 31 | `result-track:6bcdba97d62d9a716f178ed7b01176d8b09319d9216ddc1f53eafa89ceb13b35` |
| 6 | `theorem` | [higherMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/highermoment-nonneg--605ba0a9ad9e2c1241527623.md) | 35 | `result-track:605ba0a9ad9e2c1241527623b9ace90662d8a71f64db09f117ab93a540559af8` |
| 7 | `theorem` | [geometricRatio_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/geometricratio-pos--2b732becebe4663e949a7b60.md) | 39 | `result-track:2b732becebe4663e949a7b60e33403ce82488546e7ccbd847d3346f3075d2f39` |
| 8 | `theorem` | [geometricRatio_lt_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/geometricratio-lt-one--5a41b0152e5c45c7be81e8b9.md) | 41 | `result-track:5a41b0152e5c45c7be81e8b9d7637e5f8fc7f7dbebe1290fa0913ae5c2907667` |
| 9 | `theorem` | [exponentMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/exponentmoment-nonneg--36eb3ff24f729d5f2fb63582.md) | 44 | `result-track:36eb3ff24f729d5f2fb63582ece2f086ca5e3939a02b88e24195cedf536e385f` |
| 10 | `theorem` | [integerMoment_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/integermoment-le--e91cf86e62cd71ebb60f2ed6.md) | 47 | `result-track:e91cf86e62cd71ebb60f2ed6ec8630d5a22a5f5fe026e0c24e0e0cf8648ce927` |
| 11 | `theorem` | [integerMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/integermoment-summable--4bbe300d5c06b0ed7f80974b.md) | 66 | `result-track:4bbe300d5c06b0ed7f80974b9b3401c5c77e15e6877a28338d9c78d4e9f7ac63` |
| 12 | `theorem` | [exponentMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/exponentmoment-summable--e3ddb66bb3ade4e117b0c36d.md) | 70 | `result-track:e3ddb66bb3ade4e117b0c36d480dff351968cea3448c2c0a43a379aab2297d98` |
| 13 | `theorem` | [halfPower_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/halfpower-pow--a3c9863de01ce3895888d525.md) | 83 | `result-track:a3c9863de01ce3895888d525c44cabcab45a0a3f333f32f24fc5c70ec6dba3cf` |
| 14 | `theorem` | [higherMoment_factorization](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/highermoment-factorization--8f9009f96976742b3fb5c8f4.md) | 90 | `result-track:8f9009f96976742b3fb5c8f410e1cfda6706bb2901e8fe9c5b0da7e7f975a819` |
| 15 | `theorem` | [higherMoment_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/highermoment-le-product--27863c4ad689648d7509ebb4.md) | 105 | `result-track:27863c4ad689648d7509ebb42542bcf1df554e44fa0fd9edf72f3c89d9e968a3` |
| 16 | `theorem` | [higherMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/highermoment-summable--1b24886469d6bed462006ffa.md) | 116 | `result-track:1b24886469d6bed462006ffa33b5fc25118d5b181adccbb28ab464b6cd3a8be1` |
| 17 | `theorem` | [primeHigherMoment_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/primehighermoment-summable--9635089613b3c918a1d4c5d2.md) | 127 | `result-track:9635089613b3c918a1d4c5d2aaf25babd7fbea3716ae3c8554259adf608e7b17` |
| 18 | `theorem` | [logLocation_sq_ge_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/loglocation-sq-ge-one--a86fa748303c9f1f7d7463cf.md) | 140 | `result-track:a86fa748303c9f1f7d7463cf06d89abad7192eafabd5b2037432e686877f4aa4` |
| 19 | `theorem` | [higherWeight_le_moment](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/higherweight-le-moment--4c2c817cd1d9b812b80074b8.md) | 151 | `result-track:4c2c817cd1d9b812b80074b86bcef4dc9c9094e2b6aede123a6cd4618266d4d1` |
| 20 | `theorem` | [primeHigherWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/declarations/primehigherweight-summable--fe9bcd6342f13a4ffd8489ea.md) | 156 | `result-track:fe9bcd6342f13a4ffd8489ead824091c385835863872d9cde0bca34471080180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
