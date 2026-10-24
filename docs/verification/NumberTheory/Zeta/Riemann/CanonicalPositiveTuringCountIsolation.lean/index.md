# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringCountIsolation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69c9617e498e497625d219de7c8a80c1f379baf2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69c9617e498e497625d219de7c8a80c1f379baf2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPositiveHeightCountIsolation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalPositiveHeightCountIsolation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringBridge`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringBridge.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [certifiedCount_le_positiveHeightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/certifiedcount-le-positiveheightcount--6694a78d2393ed3d0bb15c65.md) | 52 | `result-track:6694a78d2393ed3d0bb15c653d1ee6b385063dd0d0cc764f2649c8ce93600237` |
| 2 | `def` | [packetOfIsolatedCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/packetofisolatedcount--76aae7278bbaaf667415c35f.md) | 63 | `declaration-track:76aae7278bbaaf667415c35fae753fa245c2a08ec80c91fc303e448a0aad009b` |
| 3 | `theorem` | [packet_height](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/packet-height--fc8e3ced9d92e788541a5462.md) | 80 | `result-track:fc8e3ced9d92e788541a546249dee9c9f8f1386d3a1da2504a3e4ffffcc03ddc` |
| 4 | `theorem` | [packet_totalCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/packet-totalcount--b221b8aaa12f333320bf9051.md) | 87 | `result-track:b221b8aaa12f333320bf9051a63397271da1ad0aea3be1716e4035f8f8448489` |
| 5 | `theorem` | [packet_gap_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/packet-gap-eq--98749e87caa1c35f863fb2eb.md) | 96 | `result-track:98749e87caa1c35f863fb2eb4d5da1f804a72a0102aca5bfc3bdf801178a98fc` |
| 6 | `theorem` | [isolated_total_not_lt_certifiedCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/isolated-total-not-lt-certifiedcount--7efdaa6b8bfa92b1bb9c7b97.md) | 107 | `result-track:7efdaa6b8bfa92b1bb9c7b971c9abbaf2e2f37e442de965b3c6ce7ba95f7ff76` |
| 7 | `theorem` | [packet_gap_lt_two_of_total_lt_certified_add_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/packet-gap-lt-two-of-total-lt-certified-add-two--ededcb9befa5186f28ae7ec7.md) | 120 | `result-track:ededcb9befa5186f28ae7ec7414ab34bf9dca5f6f62d529790a6c36cdf7e7c10` |
| 8 | `theorem` | [all_positive_on_line_of_isolated_count_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/all-positive-on-line-of-isolated-count-margin--b31e3ff28d2e5d5b52f827f2.md) | 133 | `result-track:b31e3ff28d2e5d5b52f827f2b1f47081508065ce75577fe1db776e3650623a80` |
| 9 | `theorem` | [rhThrough_of_isolated_count_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/rhthrough-of-isolated-count-margin--f4bdcd2ec239e8c5613270af.md) | 148 | `result-track:f4bdcd2ec239e8c5613270af144e101f9c210da59ba89644db944aec6b01625a` |
| 10 | `theorem` | [packet_gap_eq_zero_of_certifiedCount_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/packet-gap-eq-zero-of-certifiedcount-eq--807c92977db4ca764f896bed.md) | 163 | `result-track:807c92977db4ca764f896bedc61194ddb23e913d7908e726350f299caffd62a3` |
| 11 | `theorem` | [knownPoints_eq_positiveHeightHead_of_isolated_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/knownpoints-eq-positiveheighthead-of-isolated-count-eq--0d16baf5f68df99ce7f7db0e.md) | 173 | `result-track:0d16baf5f68df99ce7f7db0e232833b16b6924d8c893b6c8e5589cff44641267` |
| 12 | `theorem` | [one_unit_deficit_location_not_completeness_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/declarations/one-unit-deficit-location-not-completeness-fixture--469e2249191d3699c7dd1676.md) | 190 | `result-track:469e2249191d3699c7dd1676482879285d28c8d17f4ee72737822f6ea3f35a04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
