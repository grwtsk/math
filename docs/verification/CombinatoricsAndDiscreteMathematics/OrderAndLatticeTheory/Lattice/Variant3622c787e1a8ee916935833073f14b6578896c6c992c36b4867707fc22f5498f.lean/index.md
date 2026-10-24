# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "976bee02f2f7b26479d033de1118db7a750b06a1",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `976bee02f2f7b26479d033de1118db7a750b06a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/instance--8646c70c9afe12887862f38b.md) | 35 | `declaration-track:8646c70c9afe12887862f38b3968a9af38079110f0b89ded5be95a8bf3267339` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/instance--e1b54149069d74ce1da44818.md) | 38 | `declaration-track:e1b54149069d74ce1da44818c781d6cc5e03a32bcbb30820f6d348aeb55e2c78` |
| 3 | `theorem` | [sInf_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/sinf-def--4e2c39dfe2be578e8ec4cf7f.md) | 41 | `result-track:4e2c39dfe2be578e8ec4cf7ff88972c1e24ab5dfd27c3e6c6aa1b70352d32d99` |
| 4 | `theorem` | [sSup_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/ssup-def--61df9f84c86e443351edfae4.md) | 45 | `result-track:61df9f84c86e443351edfae457c25aa65f636c3a42ecc858305cf643d6ceb049` |
| 5 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SInfDef.Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.Set.Infinite.Nat.sSup_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-si--1ccba4d2844233facb90ec4b.md) | 50 | `result-track:1ccba4d2844233facb90ec4b59d151344ffb02939022f84721499e7ab76f86ce` |
| 6 | `theorem` | [sInf_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/sinf-eq-zero--eacd6ff3c261233195b42458.md) | 57 | `result-track:eacd6ff3c261233195b42458490b9cc6ebe9fc1322f3edc7f748fa5b671e3e91` |
| 7 | `theorem` | [sInf_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/sinf-empty--2d86c6acc5086d229ca78fba.md) | 66 | `result-track:2d86c6acc5086d229ca78fbaa87eacd47bd6443decf83ac2542c9bfd7541721c` |
| 8 | `theorem` | [iInf_of_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/iinf-of-empty--1ad9043a2a6d48afa82e38e8.md) | 73 | `result-track:1ad9043a2a6d48afa82e38e8005e8a81e72dd346077efd94ecdded57623fed38` |
| 9 | `theorem` | [sInf_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/sinf-mem--2a633d00c083e28d5212f0f8.md) | 77 | `result-track:2a633d00c083e28d5212f0f899f68475a97edfe99078ac26e9fea4ab71ce02cf` |
| 10 | `theorem` | [not_mem_of_lt_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/not-mem-of-lt-sinf--2bf9df8a5a24b66d2cb6243e.md) | 82 | `result-track:2bf9df8a5a24b66d2cb6243e481cdeaca071a4fe1f8b8f9edba70d996bd46206` |
| 11 | `theorem` | [sInf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/sinf-le--e2de778a6c1cd3839dfa04b8.md) | 88 | `result-track:e2de778a6c1cd3839dfa04b8ae4efb63d862ff3a5142ff4ae676bb257c142d0d` |
| 12 | `theorem` | [nonempty_of_pos_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/nonempty-of-pos-sinf--1030233f22795582da3d4e1c.md) | 93 | `result-track:1030233f22795582da3d4e1cb00e97ee26108b42f2f152d4e7f519f30ee90bc9` |
| 13 | `theorem` | [nonempty_of_sInf_eq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/nonempty-of-sinf-eq-succ--4936243dd4ee93432f7c67c3.md) | 103 | `result-track:4936243dd4ee93432f7c67c38dc7f4bab04185a0656c9f7557cf84671dce75e1` |
| 14 | `theorem` | [eq_Ici_of_nonempty_of_upward_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/eq-ici-of-nonempty-of-upward-closed--c5dd1f6563c7aa254e6d5b24.md) | 107 | `result-track:c5dd1f6563c7aa254e6d5b24f6bce305ede6a6a1c03b74ad0b52326f009c7492` |
| 15 | `theorem` | [sInf_upward_closed_eq_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/sinf-upward-closed-eq-succ-iff--4eedbd5cfb59f1dc43036709.md) | 112 | `result-track:4eedbd5cfb59f1dc43036709ee21031482c0a24051f982a4056bc3aa05d9fb4f` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/instance--32c012f7c016f3187d1cc231.md) | 126 | `declaration-track:32c012f7c016f3187d1cc231d94106703cae854fabef2b1aa203b745492df8e1` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/instance--c1b8b3086330963a4c661a4f.md) | 129 | `declaration-track:c1b8b3086330963a4c661a4f4fd0876b007615b675d802691ae629a025c37a71` |
| 18 | `theorem` | [sSup_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/ssup-mem--e036882ef6ea6737825b77ed.md) | 153 | `result-track:e036882ef6ea6737825b77ed5464e34c8b88b82e453639eacc2378cc0c80475a` |
| 19 | `theorem` | [sInf_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/sinf-add--841927e7ef0b26fd178057b9.md) | 158 | `result-track:841927e7ef0b26fd178057b9c7f8ead5965b6c0a676f80cac9b0c67a13b886f3` |
| 20 | `theorem` | [sInf_add'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/sinf-add--a283449858b8feac4ff6e2ed.md) | 174 | `result-track:a283449858b8feac4ff6e2ed960a0baecabeda0db824224533f6732a9e53ae6b` |
| 21 | `theorem` | [iSup_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/isup-lt-succ--e49381011f441c8418914417.md) | 193 | `result-track:e49381011f441c8418914417f17a925a43fe037569e8d8cfd399ecc023e5e59c` |
| 22 | `theorem` | [iSup_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/isup-lt-succ--d71426a4c6138a6f1feb4a99.md) | 197 | `result-track:d71426a4c6138a6f1feb4a9917b266d11d4c8b22c7d7f5cf070eb603d33c3dba` |
| 23 | `theorem` | [iInf_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/iinf-lt-succ--ee35641615e613adff564a83.md) | 202 | `result-track:ee35641615e613adff564a83d3753f6f565bc3b09fa941f370b345913ca5cea8` |
| 24 | `theorem` | [iInf_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/iinf-lt-succ--bb164cf6d49cff5c80a78506.md) | 206 | `result-track:bb164cf6d49cff5c80a78506c7059a07b8995b44080723e9aa91ff6a2824d2a5` |
| 25 | `theorem` | [biUnion_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/biunion-lt-succ--24645002506e8ea326e70fdf.md) | 218 | `result-track:24645002506e8ea326e70fdfd8a78ac15cd68071e34de21024081a5e4efb6840` |
| 26 | `theorem` | [biUnion_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/biunion-lt-succ--eadca0cd0c4a8f7da9c346d5.md) | 222 | `result-track:eadca0cd0c4a8f7da9c346d52d8983e4fbe49390c3fb3df154e88927668c34b2` |
| 27 | `theorem` | [biInter_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/biinter-lt-succ--6f76a4dabfe25e5defcf3e73.md) | 226 | `result-track:6f76a4dabfe25e5defcf3e73bc37ef775853f3b96adf4c40400e6280570465f3` |
| 28 | `theorem` | [biInter_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant3622c787e1a8ee916935833073f14b6578896c6c992c36b4867707fc22f5498f.lean/declarations/biinter-lt-succ--fe91c1c092332f479e596587.md) | 230 | `result-track:fe91c1c092332f479e596587da2792bf65369f4637bb530ae5715a0df95b6bbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
