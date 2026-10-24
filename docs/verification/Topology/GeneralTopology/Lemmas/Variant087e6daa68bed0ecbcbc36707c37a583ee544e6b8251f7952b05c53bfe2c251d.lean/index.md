# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f75b63205c5b66a807389d797ce1df85ae328ddf",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f75b63205c5b66a807389d797ce1df85ae328ddf`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Compact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IntermediateValue` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_pos_lt_subset_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d.lean/declarations/exists-pos-lt-subset-ball--012ee1aa3a2613f82d654897.md) | 30 | `result-track:012ee1aa3a2613f82d6548979af5b711751275be653d1f5a7238c5e51ac1194d` |
| 2 | `theorem` | [exists_lt_subset_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d.lean/declarations/exists-lt-subset-ball--2d123b6a91476988b4c9f5e9.md) | 44 | `result-track:2d123b6a91476988b4c9f5e9d8bb3fd5968c1241f2e622e0664db644fd10421f` |
| 3 | `theorem` | [Metric.exists_isLocalMin_mem_ball](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant087e6daa68bed0ecbcbc36707c37a583ee544e6b8251f7952b05c53bfe2c251d.lean/declarations/metric-exists-islocalmin-mem-ball--01d3959d7a31b7f8164e613d.md) | 51 | `result-track:01d3959d7a31b7f8164e613ddf903c73d5633831376db3be6c79b6d0b66f6341` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
