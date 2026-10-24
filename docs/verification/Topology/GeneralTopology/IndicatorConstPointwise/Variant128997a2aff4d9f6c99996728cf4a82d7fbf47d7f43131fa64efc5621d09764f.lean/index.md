# Verification target: GRWTSK.Topology.GeneralTopology.IndicatorConstPointwise.Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd81ffb1f715715691664137e04ce637cf678dbd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd81ffb1f715715691664137e04ce637cf678dbd`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_ite](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/declarations/tendsto-ite--0642d6a972b1d62e41cb4a90.md) | 45 | `result-track:0642d6a972b1d62e41cb4a9003acbc557452e0c19af0768b1b2e5137b0e40563` |
| 2 | `lemma` | [tendsto_indicator_const_apply_iff_eventually'](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/declarations/tendsto-indicator-const-apply-iff-eventually--56c7e1dcdc36491089430ccd.md) | 74 | `result-track:56c7e1dcdc36491089430ccd452ae3c023bfb385fed7ed8ab24eb13e1969c39f` |
| 3 | `lemma` | [tendsto_indicator_const_iff_forall_eventually'](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/declarations/tendsto-indicator-const-iff-forall-eventually--473aabf74e2e27618782e0e5.md) | 88 | `result-track:473aabf74e2e27618782e0e59a3a93af09fde453c627f96c9701a4bf2ab7fb66` |
| 4 | `lemma` | [tendsto_indicator_const_apply_iff_eventually](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/declarations/tendsto-indicator-const-apply-iff-eventually--50cabe0cc51b597458248b02.md) | 98 | `result-track:50cabe0cc51b597458248b02fb057bf78e59d9bb840d04feabaaf85c0557f857` |
| 5 | `lemma` | [tendsto_indicator_const_iff_forall_eventually](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/declarations/tendsto-indicator-const-iff-forall-eventually--8dbd68eae8b73eb3ee6e52e3.md) | 108 | `result-track:8dbd68eae8b73eb3ee6e52e3c98726b512b7d773dbca3a65af19e51f8a91d372` |
| 6 | `lemma` | [tendsto_indicator_const_iff_tendsto_pi_pure'](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/declarations/tendsto-indicator-const-iff-tendsto-pi-pure--0ca092106a72128847982593.md) | 115 | `result-track:0ca092106a7212884798259368dffc4ff66894b6d761ebe21fa1727e225b069e` |
| 7 | `lemma` | [tendsto_indicator_const_iff_tendsto_pi_pure](../../../../../mathematics/Topology/GeneralTopology/IndicatorConstPointwise/Variant128997a2aff4d9f6c99996728cf4a82d7fbf47d7f43131fa64efc5621d09764f.lean/declarations/tendsto-indicator-const-iff-tendsto-pi-pure--4cc6d1d8e199815272f44124.md) | 123 | `result-track:4cc6d1d8e199815272f44124f3ed4ac2fce15161d2b2a4cece007d8089726753` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
