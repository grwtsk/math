# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightAdaptiveFloor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd5a2d44f860f38d56c58d3fc3ec5a15e5c27c79",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd5a2d44f860f38d56c58d3fc3ec5a15e5c27c79`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightRatioSandwich`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPrimeWindow_eq_primesLE_sdiff](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/thetaprimewindow-eq-primesle-sdiff--37297758aefc46aa374d4c21.md) | 42 | `result-track:37297758aefc46aa374d4c2103544e4c9d5da07f79b4879f74aa6af5c1227afc` |
| 2 | `theorem` | [thetaPrimeWindow_sum_log_eq_theta_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/thetaprimewindow-sum-log-eq-theta-sub--7c88cae4428e2bd1d7fae7c7.md) | 60 | `result-track:7c88cae4428e2bd1d7fae7c73db934c957753069b822ca2af13a84daa4a56acb` |
| 3 | `def` | [pinnedPrimeWeightChebyshevRawFloor](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightchebyshevrawfloor--d89268e683f6ca7d532b0a69.md) | 76 | `declaration-track:d89268e683f6ca7d532b0a69a0eaea5fae38945fd050ea6fc9b99be87a201a30` |
| 4 | `theorem` | [pinnedPrimeWeightChebyshevRawFloor_le_windowLogMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightchebyshevrawfloor-le-windowlogmass--02ee9077154f29c5e919cd26.md) | 85 | `result-track:02ee9077154f29c5e919cd268248435ed7457502be0fc2e461e7ef0e70a7d54a` |
| 5 | `theorem` | [pinnedPrimeWeightChebyshevRawFloor_eq_negativeErrors](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightchebyshevrawfloor-eq-negativeerrors--6d93940c3e26e8b5e8858927.md) | 106 | `result-track:6d93940c3e26e8b5e8858927b491314885684b961ae3fad1ca8912577f9ffb3b` |
| 6 | `theorem` | [pinnedPrimeWeightChebyshevRawFloor_nonpositive](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightchebyshevrawfloor-nonpositive--e9c4972556857354d31560dd.md) | 124 | `result-track:e9c4972556857354d31560dd36c298e7c438b77b78de7eedb3e7a9700dcafb04` |
| 7 | `theorem` | [pinnedPrimeWeightChebyshevRawFloor_positivePart_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightchebyshevrawfloor-positivepart-eq-zero--6b5bba2d50dc79ee2e44d539.md) | 145 | `result-track:6b5bba2d50dc79ee2e44d539ac776bb1e5da893ffef2d4998b12247523ec2a85` |
| 8 | `def` | [pinnedPrimeWeightAdaptiveBertrandFloor](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightadaptivebertrandfloor--e5e234c03daddd84bcc0d76f.md) | 152 | `declaration-track:e5e234c03daddd84bcc0d76fa6f541abdc1e40de65ad37481c9094365628c867` |
| 9 | `theorem` | [pinnedPrimeWeightAdaptiveBertrandFloor_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightadaptivebertrandfloor-pos--8ebd56b865bda562dd091f3d.md) | 156 | `result-track:8ebd56b865bda562dd091f3d8abed75317a3de247b6913d123d0e70eda07d24d` |
| 10 | `theorem` | [exists_bertrandPrime_coefficient_ge_adaptiveFloor](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/exists-bertrandprime-coefficient-ge-adaptivefloor--ade6bb9089e345d2965b2a4b.md) | 168 | `result-track:ade6bb9089e345d2965b2a4bdddf80ec1a43431d9c96bfdcd0f954e38bc3d6c5` |
| 11 | `theorem` | [pinnedPrimeWeightedAmplitude_ge_adaptiveBertrandFloor](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightedamplitude-ge-adaptivebertrandfloor--b4ad77bf929ce92b7e66bf90.md) | 203 | `result-track:b4ad77bf929ce92b7e66bf90578302eafee1da3b0a64dc6a47d911665690fcb7` |
| 12 | `theorem` | [pinnedPrimeWeightAdaptiveBertrandFloor_sq_le_amplitude_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightadaptivebertrandfloor-sq-le-amplitude-sq--315219390bc52e2141b9341a.md) | 229 | `result-track:315219390bc52e2141b9341a4f006582d05187a0318838da2af7c5e771b95528` |
| 13 | `theorem` | [pinnedPrimeWeightBertrandFloor_le_adaptiveBertrandFloor](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightbertrandfloor-le-adaptivebertrandfloor--dfbfa855b9bcd066fb5d74a9.md) | 243 | `result-track:dfbfa855b9bcd066fb5d74a9968cb28e866e8f07e4087f7859864fcc98509758` |
| 14 | `def` | [pinnedPrimeWeightAdaptiveBertrandMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightadaptivebertrandmajorant--b35b4f41b317cb4182f37e8c.md) | 259 | `declaration-track:b35b4f41b317cb4182f37e8c5781b984053a5429f98f226ebf4c9ba0e1f6d479` |
| 15 | `theorem` | [pinnedPrimeWeightRequiredCapacity_le_adaptiveBertrandMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightrequiredcapacity-le-adaptivebertrandmajorant--b5d932878425928a232eca0b.md) | 265 | `result-track:b5d932878425928a232eca0bb51865a56c79f16dfbd2be601b8d99bc5b8cff05` |
| 16 | `theorem` | [pinnedPrimeWeightAdaptiveBertrandMajorant_eq_logImprovedCubic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightadaptivebertrandmajorant-eq-logimprovedcubic--638c4a6cbabffb81dfb5d189.md) | 284 | `result-track:638c4a6cbabffb81dfb5d1890e623dcb144c500f903999ebc5e2ffe6e5b293e1` |
| 17 | `theorem` | [pinnedPrimeWeightAdaptiveBertrandMajorant_le_bertrandMajorant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightAdaptiveFloor.lean/declarations/pinnedprimeweightadaptivebertrandmajorant-le-bertrandmajorant--1e659cf17dee8f71b385a292.md) | 302 | `result-track:1e659cf17dee8f71b385a2920c20653345e4468a9816dae5d32954f431ea9d7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
