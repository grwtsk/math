# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "281a37624c8c97469acb916bb4abfebd53554f55",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `281a37624c8c97469acb916bb4abfebd53554f55`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentExplicitFormula`](../../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentExplicitFormula.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries`](../../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerExplicitFormulaSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ChannelAccounting](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/channelaccounting--4347785af0357cc3df6b6a4e.md) | 46 | `declaration-track:4347785af0357cc3df6b6a4ea26a930b9fe496a492d2c7af565bc764235dd19d` |
| 2 | `structure` | [SignedExplicitFormulaLedger](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/signedexplicitformulaledger--05db7c82e745e0e297684c97.md) | 56 | `declaration-track:05db7c82e745e0e297684c970055ea7cce9c442eb3e26c284a5291af645a1c70` |
| 3 | `def` | [fullZeroTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/fullzeroterm--5c26c0caa5f23f509fc86023.md) | 69 | `declaration-track:5c26c0caa5f23f509fc860232bca94842df7394a7da0792db77a2ff1fa6b1fbb` |
| 4 | `def` | [canonicalLedger](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/canonicalledger--2497f9b6a20c2a372562ee60.md) | 75 | `declaration-track:2497f9b6a20c2a372562ee603502a50b78200a1328f9573a75a8258beea219d2` |
| 5 | `def` | [canonicalArchimedeanAccounting](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/canonicalarchimedeanaccounting--9a88e35fe90521a4ea7a338c.md) | 90 | `declaration-track:9a88e35fe90521a4ea7a338cae57d8b3d4c0ab29aa0c472e154003e48ff4c31d` |
| 6 | `def` | [canonicalEndpointAccounting](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/canonicalendpointaccounting--03801cd6f4c41a1348410982.md) | 93 | `declaration-track:03801cd6f4c41a13484109825c4bc83aafc48c997b5717a5907e52df06e51fbe` |
| 7 | `def` | [canonicalTailAccounting](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/canonicaltailaccounting--f1431831149f499994ce14a9.md) | 96 | `declaration-track:f1431831149f499994ce14a9a2e4c636bba4f06869be84cced30dac7fe2ac60d` |
| 8 | `theorem` | [canonicalLedger_primePower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/canonicalledger-primepower--ce4d73dc5df3011b172198d3.md) | 100 | `result-track:ce4d73dc5df3011b172198d39714f3aa88b2ba02731557e4a1e9c0b25820c0b9` |
| 9 | `theorem` | [canonicalLedger_pole](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/canonicalledger-pole--308da8fa7616fb500a9706f0.md) | 105 | `result-track:308da8fa7616fb500a9706f0bc9d3a26c7d218cb2bb84c766fbe7f6c2b76a199` |
| 10 | `theorem` | [canonicalLedger_nontrivialZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/canonicalledger-nontrivialzero--d6d5276f83393d8fabb3aabd.md) | 110 | `result-track:d6d5276f83393d8fabb3aabdfb8e5b000e9182ad64bd8abf73c7c0fbfdf7ff06` |
| 11 | `theorem` | [canonicalLedger_trivialZero_eq_actual_series](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/canonicalledger-trivialzero-eq-actual-series--9a21b4ed5ef97b6dee8c301b.md) | 116 | `result-track:9a21b4ed5ef97b6dee8c301b6bfbabce7bba678a379c658aef698171420d3ef7` |
| 12 | `theorem` | [canonical_endpoint_weight_guard](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/canonical-endpoint-weight-guard--c0120b0da6240f69fc767b1b.md) | 133 | `result-track:c0120b0da6240f69fc767b1b5c5aae585bfcd6fb8797cc2f783b3424e78318e9` |
| 13 | `def` | [finiteHeadBalance](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/finiteheadbalance--17bb6100f73bf820160cd375.md) | 139 | `declaration-track:17bb6100f73bf820160cd375af2cc75778e12997a594bb9635f82d5f0429e389` |
| 14 | `theorem` | [norm_finiteHeadBalance_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/norm-finiteheadbalance-le--8fd51ed03d72a91b900093d8.md) | 148 | `result-track:8fd51ed03d72a91b900093d850973bd6189543ce01fd86869aaf621645f22878` |
| 15 | `theorem` | [canonical_tail_budget_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/canonical-tail-budget-tendsto-zero--1686e941e60c23b12b29ddc0.md) | 174 | `result-track:1686e941e60c23b12b29ddc0069fbf739464c8aeeeae233632e52d9ece6e3565` |
| 16 | `theorem` | [wrong_prime_sign_defect](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/wrong-prime-sign-defect--1dda7a51afa5dcdbfff8a340.md) | 183 | `result-track:1dda7a51afa5dcdbfff8a340199f24f075954c0dbcf85b668c0bb11d966241b7` |
| 17 | `structure` | [AtomStageAlignment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalTentLedger.lean/declarations/atomstagealignment--7b0217ae4dd6be1fe207839a.md) | 211 | `declaration-track:7b0217ae4dd6be1fe207839a891b7e1adbf5a65b69360c00559e2cc5fd346d85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
