# Verification target: GRWTSK.Analysis.Complex.ExponentialLoopIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4982cd25e063c014803bcb751a80287da6ade0e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/ExponentialLoopIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4982cd25e063c014803bcb751a80287da6ade0e`.

Source path: `GRWTSK/Analysis/Complex/ExponentialLoopIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/ExponentialLoopIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CoveringMap` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Lifting` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Punctured](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/punctured--2f96eaaa219d64dde2f972f1.md) | 29 | `declaration-track:2f96eaaa219d64dde2f972f1cf6784f07d17b09d37e2b0bb376f4649799becde` |
| 2 | `def` | [expCover](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/expcover--7a8e2cdb86c99f87d5e6930c.md) | 31 | `declaration-track:7a8e2cdb86c99f87d5e6930c470970135b04f8ed9142ba12014a1d8593203e48` |
| 3 | `theorem` | [covering](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/covering--6786d08f32db97dcf4fab90c.md) | 33 | `result-track:6786d08f32db97dcf4fab90ce1c8da5063959b9a20f2911c4cfa4d7ac0b395f9` |
| 4 | `def` | [period](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/period--2b486eef962ef8ea5083863d.md) | 35 | `declaration-track:2b486eef962ef8ea5083863d45e08cba51e81820545454ee53c9a64232fac59e` |
| 5 | `def` | [deck](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/deck--324fcb262ff97906166be765.md) | 37 | `declaration-track:324fcb262ff97906166be76579b160f43812ad3d4366a8377f67496e020824cf` |
| 6 | `theorem` | [period_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/period-ne-zero--99eb143226836e9c625dcebf.md) | 39 | `result-track:99eb143226836e9c625dcebfc260f71beed5d18348e2ca16256eee7e8021a2fc` |
| 7 | `theorem` | [deck_zero](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/deck-zero--0eab178dde4dd1bdee29bf51.md) | 41 | `result-track:0eab178dde4dd1bdee29bf5181829cc0d6c783b59688d58e2f91980f7de6711d` |
| 8 | `theorem` | [deck_add](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/deck-add--72396d11fe80e8c393654629.md) | 43 | `result-track:72396d11fe80e8c393654629b776f4f6dec6e74e3bf9088982a303b39e31b0e9` |
| 9 | `theorem` | [deck_neg](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/deck-neg--240bc5828cc55ac56e312cbf.md) | 46 | `result-track:240bc5828cc55ac56e312cbfe44add7ec81e599852989e639dbfd4ec9ef05e4c` |
| 10 | `theorem` | [deck_injective](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/deck-injective--a3029bcd85b8e7327f846c60.md) | 48 | `result-track:a3029bcd85b8e7327f846c60801bad532bdbce09b368ab4da77abb3af8b8f6f4` |
| 11 | `theorem` | [exp_deck](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/exp-deck--2ef211bdf269b4a2dd48ec6f.md) | 53 | `result-track:2ef211bdf269b4a2dd48ec6f87e931de005b28f4a37e612f4968253609d15d2d` |
| 12 | `theorem` | [initial_lift](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/initial-lift--01a5625c81f07752ae5495aa.md) | 58 | `result-track:01a5625c81f07752ae5495aa21b99015318257b258c9a373a6a460086993ecdb` |
| 13 | `def` | [logLift](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/loglift--0c7d7a936c5214f21d4e56ee.md) | 63 | `declaration-track:0c7d7a936c5214f21d4e56ee945fcddd12735949c220bf597d016dab168642f8` |
| 14 | `theorem` | [logLift_exp](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/loglift-exp--62aa9b705b233bfe82e78b67.md) | 66 | `result-track:62aa9b705b233bfe82e78b67ddcf1e0e197b50357808c07a2fc398cb36e81704` |
| 15 | `theorem` | [logLift_zero](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/loglift-zero--b1d7f7fe4d595bb96ed229dd.md) | 71 | `result-track:b1d7f7fe4d595bb96ed229dd178dd1808016f6e31951f03cb1b0c4a5887675b7` |
| 16 | `theorem` | [difference_const](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/difference-const--5914ebedfd72d93610a0df2a.md) | 77 | `result-track:5914ebedfd72d93610a0df2a4bbb3e5e5ebd6db558747aa8e69021d4d9bd089d` |
| 17 | `theorem` | [jump_eq](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/jump-eq--50ec2d6358f55d9e9eb2af5b.md) | 94 | `result-track:50ec2d6358f55d9e9eb2af5bef0a3e370e458d1702366ed7990f3a298e2dbe8e` |
| 18 | `theorem` | [exists_jump](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/exists-jump--1b82f3350ce80556e357356e.md) | 102 | `result-track:1b82f3350ce80556e357356e46244a79118c2b994c42b66d75290ebc3d55d36b` |
| 19 | `def` | [winding](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/winding--9322e5c239f3cc091d7a1541.md) | 114 | `declaration-track:9322e5c239f3cc091d7a1541d7863750f2baf96e317a84546622c357df70640b` |
| 20 | `theorem` | [winding_spec](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/winding-spec--256dc4fb8eab34ff43036ab7.md) | 117 | `result-track:256dc4fb8eab34ff43036ab7c80852c9ad067c01dfa88cf17c0f4e22a9a2e20b` |
| 21 | `theorem` | [winding_eq_of_lift](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/winding-eq-of-lift--ebdc31d9093a8af4b447fd90.md) | 123 | `result-track:ebdc31d9093a8af4b447fd9042317b7cf7cc157f53fe0ba35b1276489deb7db2` |
| 22 | `theorem` | [jump_of_lift](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/jump-of-lift--fa576e0aa4b2bafb8e381bec.md) | 129 | `result-track:fa576e0aa4b2bafb8e381bec6f98619f2de9ed890bf5b51b7b9ceedc32eb876b` |
| 23 | `theorem` | [winding_zero_of_closed_log](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/winding-zero-of-closed-log--30eb003e0436030690bb92e6.md) | 136 | `result-track:30eb003e0436030690bb92e6e99ff60f6e41733d57fbe07c0c25f25659901c3a` |
| 24 | `theorem` | [winding_const](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/winding-const--33cc52d18ddae4e090048b8e.md) | 142 | `result-track:33cc52d18ddae4e090048b8e87d3c7c81718b2bfb1a35b57fec0bab859f88d76` |
| 25 | `def` | [liftedHomotopy](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/liftedhomotopy--06958097c5f68b9ecde98f6f.md) | 151 | `declaration-track:06958097c5f68b9ecde98f6f62208e238453a19de1511f30d8de9abd371f4175` |
| 26 | `theorem` | [liftedHomotopy_exp](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/liftedhomotopy-exp--1d6ca8af1d5075b40beadfd1.md) | 155 | `result-track:1d6ca8af1d5075b40beadfd16c1f10c38510d7a3ad20f888a48f96e9ee389c8f` |
| 27 | `theorem` | [liftedHomotopy_zero](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/liftedhomotopy-zero--b5f84166a0a4819df15b0ae0.md) | 161 | `result-track:b5f84166a0a4819df15b0ae00bd26583214853f6694ea06d58466248a62842fa` |
| 28 | `theorem` | [homotopy_jump_const](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/homotopy-jump-const--9a51b6bb262d50bb1d585685.md) | 168 | `result-track:9a51b6bb262d50bb1d5856858d29732fe5e1440e4e3824b85d32659c397af8d7` |
| 29 | `theorem` | [winding_homotopy](../../../../mathematics/Analysis/ComplexAnalysis/ExponentialLoopIndex.lean/declarations/winding-homotopy--eb1035d2343a32afe9fd50e7.md) | 189 | `result-track:eb1035d2343a32afe9fd50e71ff9d537bdfc520e2f6416cb622894f456c16f1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
