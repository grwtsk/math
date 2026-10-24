# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshBernoulliTV

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24be06dc955cfb5f510992f3ec6db28c44807c60",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24be06dc955cfb5f510992f3ec6db28c44807c60`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshEnergy`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshEnergy.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eventHalfWeight](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/eventhalfweight--dcd375582a61254559ee2c28.md) | 52 | `declaration-track:dcd375582a61254559ee2c28c695a659faaaca869ffbd24b68c00835f6c1a884` |
| 2 | `def` | [eventSignedSum](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/eventsignedsum--e2307ccd771e7bce60f89b13.md) | 56 | `declaration-track:e2307ccd771e7bce60f89b1333dcc6f893bc3f4a182d770f7e5817507e8f6acf` |
| 3 | `theorem` | [eventHalfWeight_sq](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/eventhalfweight-sq--288c2daedfc98b3681345ebe.md) | 59 | `result-track:288c2daedfc98b3681345ebe4e68935ff1048b8b06a1e8ca05611954ff903adb` |
| 4 | `theorem` | [eventHalfWeight_pairing](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/eventhalfweight-pairing--7f8eaff0c2eb2547247e8f5c.md) | 65 | `result-track:7f8eaff0c2eb2547247e8f5c4ae390670576dec627baf4f37248050fd3e0162e` |
| 5 | `theorem` | [eventHalfWeight_sq_sum](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/eventhalfweight-sq-sum--89c1587a52874fbbe0d827d0.md) | 89 | `result-track:89c1587a52874fbbe0d827d01c043895441e28910b059a5b570e5d99fde941b4` |
| 6 | `theorem` | [double_eventSignedSum_sq_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/double-eventsignedsum-sq-le--7068de8c67240f20c3e3a8e7.md) | 103 | `result-track:7068de8c67240f20c3e3a8e788b542002a809e19c78982f6e1c1c3d5c5f11135` |
| 7 | `theorem` | [abs_eventSignedSum_div_card_le_sqrt_energy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/abs-eventsignedsum-div-card-le-sqrt-energy--e5a1cda0020914fa3b7b2038.md) | 119 | `result-track:e5a1cda0020914fa3b7b2038797d63c774e84442b32238dceb303f841dac0381` |
| 8 | `def` | [sourceScaledDefectReal](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/sourcescaleddefectreal--868a6f2506551da5f8a59886.md) | 169 | `declaration-track:868a6f2506551da5f8a59886e5aa1caaa14e31674b77e9bf53fb3a1ef92badae` |
| 9 | `theorem` | [scaledEmpiricalDefect_sum_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/scaledempiricaldefect-sum-zero--1ae24484cc1d01e3fc495b5a.md) | 176 | `result-track:1ae24484cc1d01e3fc495b5a2333f587e1615c4462ca3abed82f3ffca0ad3b33` |
| 10 | `theorem` | [sourceScaledDefectReal_sum_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/sourcescaleddefectreal-sum-zero--3f54e0961fab7c51b3bcc8d5.md) | 212 | `result-track:3f54e0961fab7c51b3bcc8d53fbacd811d0e568fcdbe0d073ce4f90e3a00ab1f` |
| 11 | `theorem` | [sourceScaledDefectReal_sq_energy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/sourcescaleddefectreal-sq-energy--dc3801aad22d425121ed979c.md) | 221 | `result-track:dc3801aad22d425121ed979c004dff0c7ad0f3ff176b9882f206a38fcac191fa` |
| 12 | `theorem` | [sourceMomentEnergy_nonneg](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/sourcemomentenergy-nonneg--1b9884472b8465c3d8a10268.md) | 234 | `result-track:1b9884472b8465c3d8a10268df030a8eb16a114a9d689d142f9954cc5c74e51a` |
| 13 | `def` | [uniformPatternEventDeviation](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/uniformpatterneventdeviation--9ff8b87756134fcd5c1111a8.md) | 248 | `declaration-track:9ff8b87756134fcd5c1111a8680c4a9c6aa113a724003935e389e5db4aba7176` |
| 14 | `theorem` | [uniformPatternEventDeviation_eq_scaled](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/uniformpatterneventdeviation-eq-scaled--72627f3d32876d51e3f04180.md) | 259 | `result-track:72627f3d32876d51e3f04180cf1703fb110f452440a43f3fce9131bd5c5c9c0a` |
| 15 | `def` | [empiricalVsUniformTV](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/empiricalvsuniformtv--ffe554a286316bf4b7f4903e.md) | 296 | `declaration-track:ffe554a286316bf4b7f4903ed5773627baaf264c6b25829dff450efaf39cd914` |
| 16 | `theorem` | [empiricalVsUniformTV_le_sqrt_momentEnergy](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshBernoulliTV.lean/declarations/empiricalvsuniformtv-le-sqrt-momentenergy--d879353ab403b71c24776fd8.md) | 307 | `result-track:d879353ab403b71c24776fd8c5bc721c35b8fae94ee58f69953a2f4d01429d00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
