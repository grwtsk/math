# Verification target: GRWTSK.Topology.GeneralTopology.IndicatorCard.Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9affe3d2a27e45ebe5d22e061bd03bbfe261b38",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9affe3d2a27e45ebe5d22e061bd03bbfe261b38`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Indicator` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LiminfLimsup` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_indicator_eventually_eq_card](../../../../../mathematics/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean/declarations/sum-indicator-eventually-eq-card--965a5c5ec57dd3aae5c5cb05.md) | 26 | `result-track:965a5c5ec57dd3aae5c5cb0579cd5e788295aa9dd5e0c7ba74f0ba0bfab6368a` |
| 2 | `lemma` | [infinite_iff_tendsto_sum_indicator_atTop](../../../../../mathematics/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean/declarations/infinite-iff-tendsto-sum-indicator-attop--56e58ee7086b74ed072c5d49.md) | 39 | `result-track:56e58ee7086b74ed072c5d49c9fc70c3c64b86a7d187f46f49197ed2367ff7a9` |
| 3 | `lemma` | [limsup_eq_tendsto_sum_indicator_atTop](../../../../../mathematics/Topology/GeneralTopology/IndicatorCard/Variant91cd9fca9f696ca59728944b9f20c4eb2ec0da8b71b3ac2bbb6cc90c230d1620.lean/declarations/limsup-eq-tendsto-sum-indicator-attop--c84779c8abe32595825b3103.md) | 67 | `result-track:c84779c8abe32595825b310313e263bd5386f4519751d7ed76b612642ca15938` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
