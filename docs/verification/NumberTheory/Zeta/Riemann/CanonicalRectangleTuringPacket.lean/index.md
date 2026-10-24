# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleTuringPacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d92df78a112183db4e5470d28151e3d23d45084",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d92df78a112183db4e5470d28151e3d23d45084`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCountIsolation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringCountIsolation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringCountIsolation.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packetOfRectangleIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/declarations/packetofrectangleindex--9239e43509beba31f1db2761.md) | 49 | `declaration-track:9239e43509beba31f1db27618be1c91af26d945603a2e0d98fb022d42099c805` |
| 2 | `theorem` | [packet_height](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/declarations/packet-height--be2c7dfd8281140150aa4540.md) | 57 | `result-track:be2c7dfd8281140150aa45407d974fc829a485441f1317da2ed830d62b3983e7` |
| 3 | `theorem` | [packet_totalCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/declarations/packet-totalcount--bf2294565d6cb12c3895ddc0.md) | 66 | `result-track:bf2294565d6cb12c3895ddc01838ffaf79223a5833cbbb09f9ddae32c5cd1c2e` |
| 4 | `theorem` | [isolated_rectangle_total_not_lt_certifiedCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/declarations/isolated-rectangle-total-not-lt-certifiedcount--c51e0ebac2a451929fdba678.md) | 76 | `result-track:c51e0ebac2a451929fdba67863d9025e0b982d4646d18f2432d0c74f2bc7829d` |
| 5 | `theorem` | [packet_gap_lt_two_of_rectangle_total_lt_certified_add_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/declarations/packet-gap-lt-two-of-rectangle-total-lt-certified-add-two--3245a0925c0f2978e66bf48e.md) | 86 | `result-track:3245a0925c0f2978e66bf48e65c5bf6f1ca4fc70746b38b00b2ed26bf8d565b3` |
| 6 | `theorem` | [all_positive_on_line_of_rectangle_count_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/declarations/all-positive-on-line-of-rectangle-count-margin--224c566f0a4a4fe64069ba6e.md) | 99 | `result-track:224c566f0a4a4fe64069ba6eda1ed53bcc357fa9ad3c6701895d36d4ea8743cf` |
| 7 | `theorem` | [rhThrough_of_rectangle_count_margin](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/declarations/rhthrough-of-rectangle-count-margin--fd3d982eb8cd471ce8190aba.md) | 111 | `result-track:fd3d982eb8cd471ce8190aba26d314823bd4f134e3e2741feb3393c15ce70886` |
| 8 | `theorem` | [knownPoints_eq_positiveHeightHead_of_rectangle_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/declarations/knownpoints-eq-positiveheighthead-of-rectangle-count-eq--03d341ec6fe5fbb491c6c9f0.md) | 149 | `result-track:03d341ec6fe5fbb491c6c9f0e26e0c1606f57b9031568e64ac15f064ca15d12a` |
| 9 | `theorem` | [packet_gap_eq_zero_of_rectangle_count_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/declarations/packet-gap-eq-zero-of-rectangle-count-eq--18dbd5072bfad8bd0dc055e0.md) | 160 | `result-track:18dbd5072bfad8bd0dc055e073aea6ee304c7ca3aa481d273c6bf94c254ceb7a` |
| 10 | `theorem` | [rectangle_one_unit_deficit_not_complete_fixture](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/declarations/rectangle-one-unit-deficit-not-complete-fixture--2278be0cae4f1c5510df4bba.md) | 172 | `result-track:2278be0cae4f1c5510df4bba08d0f10bcafe6e6e56b55e03fad0938cc9bb844f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
