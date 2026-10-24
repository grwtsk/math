# Verification target: GRWTSK.Topology.GeneralTopology.Finite.Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eca134eab3742d3dca8906254f0cf1fe928b7dd0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eca134eab3742d3dca8906254f0cf1fe928b7dd0`.

Source path: `GRWTSK/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Finite.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Bases.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_forall_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/eventually-forall-ge-attop--841ee94332348cd8c5892fa3.md) | 23 | `result-track:841ee94332348cd8c5892fa3a4f875957e3cb13867859a905d78a113b6183faf` |
| 2 | `theorem` | [eventually_forall_le_atBot](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/eventually-forall-le-atbot--0f7a65f449ab37d9010261c5.md) | 31 | `result-track:0f7a65f449ab37d9010261c5afc97b6da391e517e4472398babe395759afcd72` |
| 3 | `theorem` | [Tendsto.eventually_forall_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/tendsto-eventually-forall-ge-attop--99a03a726b76190b29812205.md) | 35 | `result-track:99a03a726b76190b298122051fa20d717aaeae9503151ddfa0de23f91ed62ac8` |
| 4 | `theorem` | [Tendsto.eventually_forall_le_atBot](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/tendsto-eventually-forall-le-atbot--80e2d56fa41033160f62fe39.md) | 40 | `result-track:80e2d56fa41033160f62fe39994e562815210f72ca07379e3f7ddea2749cce8d` |
| 5 | `theorem` | [high_scores](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/high-scores--8d91fa375742046de8a6cff7.md) | 52 | `result-track:8d91fa375742046de8a6cff783974bdc6659c9498166b403bbc3b3abbbdd4824` |
| 6 | `theorem` | [low_scores](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/low-scores--1b5b46f4c93dffd542dad163.md) | 77 | `result-track:1b5b46f4c93dffd542dad16354e5c5299142665ab3f75feb8ce981856ba7af3c` |
| 7 | `theorem` | [frequently_high_scores](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/frequently-high-scores--3bd83f243309b976101c73d7.md) | 84 | `result-track:3bd83f243309b976101c73d750d46353cab11317ae95127008ddaa21d6ccf146` |
| 8 | `theorem` | [frequently_low_scores](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/frequently-low-scores--5f02355ad7a67b0469048763.md) | 91 | `result-track:5f02355ad7a67b046904876319e14ac90cf65dbe79ef3a5d4940473ab8b1a2ac` |
| 9 | `theorem` | [strictMono_subseq_of_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/strictmono-subseq-of-tendsto-attop--b6c176a001a6fd56c9645dca.md) | 95 | `result-track:b6c176a001a6fd56c9645dcabc619d4ce909a2f9bdec54e6032e98ce50a33e17` |
| 10 | `theorem` | [strictMono_subseq_of_id_le](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/strictmono-subseq-of-id-le--8141f798d87cfb326ac5d15e.md) | 100 | `result-track:8141f798d87cfb326ac5d15e5b15d0c6b1c9eb70af45bafc7121e60fa0de6510` |
| 11 | `theorem` | [Eventually.atTop_of_arithmetic](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/eventually-attop-of-arithmetic--a6e7ee12555245c7ba984847.md) | 104 | `result-track:a6e7ee12555245c7ba984847c9b4e7f2b79e2b4424905ecb56d9038bd4f3af83` |
| 12 | `theorem` | [HasAntitoneBasis.subbasis_with_rel](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/hasantitonebasis-subbasis-with-rel--ddbbc533aec9981b7074d173.md) | 118 | `result-track:ddbbc533aec9981b7074d1733061981ec33bb4ce495e81a0c26c0a5d270f1076` |
| 13 | `theorem` | [eventually_pow_lt_factorial_sub](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/eventually-pow-lt-factorial-sub--4212f9b4f35e44b8c2e187f4.md) | 135 | `result-track:4212f9b4f35e44b8c2e187f455bbc87f6aedbad21f0ac58e6e27b13bc2db2f06` |
| 14 | `theorem` | [eventually_mul_pow_lt_factorial_sub](../../../../../mathematics/Topology/GeneralTopology/Finite/Variant87f6384411d79f012ea860597775a516140f27637707b22bd659c4a11a7b027c.lean/declarations/eventually-mul-pow-lt-factorial-sub--ee8d7227d5502d66320d8b09.md) | 157 | `result-track:ee8d7227d5502d66320d8b0956004ee6222ed63a48f171e2286481af47a0178c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
