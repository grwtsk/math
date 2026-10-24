# Verification target: GRWTSK.Algebra.ConvergentsEquiv.Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "def7d6e9bce49652b20694eac62c31f197bf42ee",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/index.md) · [Full source](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `def7d6e9bce49652b20694eac62c31f197bf42ee`.

Source path: `GRWTSK/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.TerminatedStable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squashSeq](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/squashseq--c8953e2a2e7e8c986fd4b27c.md) | 91 | `declaration-track:c8953e2a2e7e8c986fd4b27c9696878a37efe21e30c01019a3b0c3c9af41fc25` |
| 2 | `theorem` | [squashSeq_eq_self_of_terminated](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/squashseq-eq-self-of-terminated--378d191c82149fa60bac532f.md) | 103 | `result-track:378d191c82149fa60bac532f318029e7c7d63534c601893c122d9575a984a8e7` |
| 3 | `theorem` | [squashSeq_nth_of_not_terminated](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/squashseq-nth-of-not-terminated--e2686e28ee1b6bf88451d2e3.md) | 110 | `result-track:e2686e28ee1b6bf88451d2e38b65df8b69c612c14028e945d1aee3e42544288e` |
| 4 | `theorem` | [squashSeq_nth_of_lt](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/squashseq-nth-of-lt--6928285c884b8fea7d854b8b.md) | 116 | `result-track:6928285c884b8fea7d854b8b688c2d6c451bf3094df45624f7147e30a5eca11b` |
| 5 | `theorem` | [squashSeq_succ_n_tail_eq_squashSeq_tail_n](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/squashseq-succ-n-tail-eq-squashseq-tail-n--d12eebad3cb9f076160a6cce.md) | 128 | `result-track:d12eebad3cb9f076160a6cceb23088db1ab86d9f2156d9f8e7e37bfa15b0d952` |
| 6 | `theorem` | [succ_succ_nth_conv'Aux_eq_succ_nth_conv'Aux_squashSeq](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/succ-succ-nth-conv-aux-eq-succ-nth-conv-aux-squashseq--f52c96e10465be68bf900451.md) | 148 | `result-track:f52c96e10465be68bf900451e50a857588502b71ee30e79ba864b4519017aa22` |
| 7 | `def` | [squashGCF](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/squashgcf--1802b64fec1726e025066ce6.md) | 180 | `declaration-track:1802b64fec1726e025066ce6c82565018c1ba807f31e6e23a66842c3d09b3ef0` |
| 8 | `theorem` | [squashGCF_eq_self_of_terminated](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/squashgcf-eq-self-of-terminated--7fea3ca925e18d92a0827799.md) | 192 | `result-track:7fea3ca925e18d92a08277991c29b0ab327a9b9c60724b0cb66c9b8705ff6840` |
| 9 | `theorem` | [squashGCF_nth_of_lt](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/squashgcf-nth-of-lt--b73db55f46fbce4379e7edd1.md) | 204 | `result-track:b73db55f46fbce4379e7edd16bdf94e14a5cfcf24435efdcf7567226c4561896` |
| 10 | `theorem` | [succ_nth_conv'_eq_squashGCF_nth_conv'](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/succ-nth-conv-eq-squashgcf-nth-conv--b480d6f7e6deac18e55ac7c3.md) | 210 | `result-track:b480d6f7e6deac18e55ac7c330b5554b04faa52caf56c2f6dd0810c768e33403` |
| 11 | `theorem` | [contsAux_eq_contsAux_squashGCF_of_le](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/contsaux-eq-contsaux-squashgcf-of-le--24b53477a4887d3b5afa25d5.md) | 221 | `result-track:24b53477a4887d3b5afa25d579299dc473fe0641be7b22828fc9c0e363963d16` |
| 12 | `theorem` | [succ_nth_conv_eq_squashGCF_nth_conv](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/succ-nth-conv-eq-squashgcf-nth-conv--76f66215217c3fb016e64e78.md) | 247 | `result-track:76f66215217c3fb016e64e78495dd9a03898064fa344f5ac80d714fe80b4cef7` |
| 13 | `theorem` | [convs_eq_convs'](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/convs-eq-convs--0381aa667267fe85b11f241c.md) | 325 | `result-track:0381aa667267fe85b11f241c65bf0bdb0a794dfdb53c8f1b0cd016d780c2e34b` |
| 14 | `theorem` | [convs_eq_convs'](../../../../mathematics/Algebra/ConvergentsEquiv/Variant8f652efc096147edcd35979f2698da64ee0328ea9a23bff25831400828337748.lean/declarations/convs-eq-convs--d19d0ece8a27a95f2f87b782.md) | 384 | `result-track:d19d0ece8a27a95f2f87b782b44c36441be1c32e573cb75e48ef8c9084d50bc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
