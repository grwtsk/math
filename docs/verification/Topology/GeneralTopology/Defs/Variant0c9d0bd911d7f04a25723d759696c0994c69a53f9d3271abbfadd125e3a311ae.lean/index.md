# Verification target: GRWTSK.Topology.GeneralTopology.Defs.Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ac78beede8f1fe56c63f7ac198efcdd205a4c19",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ac78beede8f1fe56c63f7ac198efcdd205a4c19`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Continuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Lift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Defs.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/continuousmap--29c1fa6d1909fa3206a0b72e.md) | 28 | `declaration-track:29c1fa6d1909fa3206a0b72eb03714065f48af26cc38cd77d270186b589f1080` |
| 2 | `class` | [ContinuousMapClass](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/continuousmapclass--2889cc36988c83b73be58276.md) | 42 | `declaration-track:2889cc36988c83b73be58276907fa540411ad424288bb4011f80789bde311007` |
| 3 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/tocontinuousmap--aa4d48461bf7e2f057ab31e0.md) | 59 | `declaration-track:aa4d48461bf7e2f057ab31e04413d6cb5d8e36d09d9aee1034633b61ec0899f7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/instance--cadab60e6f939fc8e435713c.md) | 61 | `declaration-track:cadab60e6f939fc8e435713ca55dd4cc9194d2b0011e0e4431c31ff06e6decf0` |
| 5 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/instfunlike--ab6602cd8c113c34bb5012e9.md) | 72 | `declaration-track:ab6602cd8c113c34bb5012e9b87b76f3763a4a2d24d6301d4ff5c0582a9b8526` |
| 6 | `instance` | [instContinuousMapClass](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/instcontinuousmapclass--111c3b239fc1a25649e20bec.md) | 76 | `declaration-track:111c3b239fc1a25649e20bec20418f2c6d8d5ef9cac28a1a9d36c5e890a3b798` |
| 7 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/tofun-eq-coe--2b25179d7d49a9bf3ce4a7b5.md) | 80 | `result-track:2b25179d7d49a9bf3ce4a7b54b89c209fbe46c6c353168526218eb7470c425d2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/instance--37c4d0119912476b555a8c27.md) | 83 | `declaration-track:37c4d0119912476b555a8c2739c65e8670e84bc3c48ca0be58d5f490681915ee` |
| 9 | `def` | [Simps.apply](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/simps-apply--611db265b89a3bc60865b8a8.md) | 86 | `declaration-track:611db265b89a3bc60865b8a82ba7afad5de20d63ad8bbbf99d299578c5d2925f` |
| 10 | `theorem` | [coe_coe](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/coe-coe--e693883dc62a1d4b59d38ef3.md) | 92 | `result-track:e693883dc62a1d4b59d38ef377f194947a7a7b247638564977d4c0e5b08f550b` |
| 11 | `theorem` | [coe_apply](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/coe-apply--da8db46e596de42767b5e9ab.md) | 96 | `result-track:da8db46e596de42767b5e9ab64f47a6d34087f4e611c3831515ff964d1446e8c` |
| 12 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/ext--5c0af2de6b23592e7f0497be.md) | 101 | `result-track:5c0af2de6b23592e7f0497be42d8dd6b54548dc721872b19dcba281f5d2346a5` |
| 13 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/copy--fae5da786ef4048699c14764.md) | 106 | `declaration-track:fae5da786ef4048699c147643795a433fb5957d39f3eb8656f831c7ade8d558c` |
| 14 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/coe-copy--3a9b6dcb02dd13234047b665.md) | 111 | `result-track:3a9b6dcb02dd13234047b66516309bf296cb58dddc98ab552b95ea15f3674a21` |
| 15 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/copy-eq--de6f33e7465b67b8d6a58c1a.md) | 114 | `result-track:de6f33e7465b67b8d6a58c1a9bba7e7d1e628aa4d2de788c9b63f95568200312` |
| 16 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/continuous--ff48bc792dd5e54070ded2cd.md) | 118 | `result-track:ff48bc792dd5e54070ded2cd1b0d629db747c63e33993802ccc470c99145b5e3` |
| 17 | `theorem` | [congr_fun](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/congr-fun--bb0e4fe72d5dc3b4d8be31f6.md) | 122 | `result-track:bb0e4fe72d5dc3b4d8be31f6fd94d0e3db80939732afd16294cca57be26a21e7` |
| 18 | `theorem` | [congr_arg](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/congr-arg--4bb84858b803e8d1eb6bb952.md) | 126 | `result-track:4bb84858b803e8d1eb6bb952748cb3ab2b8f31419402b8f02dd4cfdbd47830e2` |
| 19 | `theorem` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/coe-injective--89e582ec941e2aab10e024fa.md) | 129 | `result-track:89e582ec941e2aab10e024fab1ebd27af3b6f8b53ced631b2cbbeaca9944a42e` |
| 20 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Defs/Variant0c9d0bd911d7f04a25723d759696c0994c69a53f9d3271abbfadd125e3a311ae.lean/declarations/coe-mk--40c472e2dc3e92156360c847.md) | 133 | `result-track:40c472e2dc3e92156360c8479091c8255acb0a9731cf45dd295eeffaf987ad61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
