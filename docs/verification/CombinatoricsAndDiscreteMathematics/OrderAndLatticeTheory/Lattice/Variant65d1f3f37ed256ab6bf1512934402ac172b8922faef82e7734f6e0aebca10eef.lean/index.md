# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "094392106b552abfa9684c1d2fb6ace5ccc78358",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `094392106b552abfa9684c1d2fb6ace5ccc78358`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Finset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/instance--7c836c5354ddcd96ddfc6228.md) | 27 | `declaration-track:7c836c5354ddcd96ddfc62289c92f21fc03cfb69834836fa2f220dafd8981226` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/instance--ecb571a3b603dec358146cd3.md) | 30 | `declaration-track:ecb571a3b603dec358146cd3a8c12afe42e61139cca663ae752f2a465802edc5` |
| 3 | `theorem` | [sInf_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/sinf-def--42f7774272a8a2e2f903aedc.md) | 33 | `result-track:42f7774272a8a2e2f903aedca16c204c941a96b81fa652dca632c2fe742451b9` |
| 4 | `theorem` | [sSup_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/ssup-def--b9279daedbd122e1cee617f9.md) | 37 | `result-track:b9279daedbd122e1cee617f9e634fbbdbab9a3d7ed075da8ee21fc02ea89cbf2` |
| 5 | `theorem` | [_root_.Set.Infinite.Nat.sSup_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/root-set-infinite-nat-ssup-eq-zero--650d3659129d3abacb9564ca.md) | 42 | `result-track:650d3659129d3abacb9564ca73e538641e6b078fb6f3c144394c38f6276888a4` |
| 6 | `theorem` | [sInf_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/sinf-eq-zero--b26bd3139354a9a92716c3fe.md) | 49 | `result-track:b26bd3139354a9a92716c3fed285a6f1aa8ee51fb3f032a096c7d9ba458d680c` |
| 7 | `theorem` | [sInf_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/sinf-empty--977fdba0b5de39b8719d5830.md) | 58 | `result-track:977fdba0b5de39b8719d58304c2ba85d8b9c6477c254999e5d8746d8028dc9bc` |
| 8 | `theorem` | [iInf_of_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/iinf-of-empty--9642c19f5a8eff814505661c.md) | 65 | `result-track:9642c19f5a8eff814505661ccef7b2e834d362508af5e94938e9935402f49101` |
| 9 | `theorem` | [sInf_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/sinf-mem--6dce7d0ec0b5f32cd10f5643.md) | 69 | `result-track:6dce7d0ec0b5f32cd10f5643a343205a4566673a0ae211eb279489d75282dcea` |
| 10 | `theorem` | [not_mem_of_lt_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/not-mem-of-lt-sinf--70e0dc321889a478bd39df6b.md) | 74 | `result-track:70e0dc321889a478bd39df6bace308b679163cef5084e9061f26f5c34e548766` |
| 11 | `theorem` | [sInf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/sinf-le--c9a158f8ad084a483bc01003.md) | 80 | `result-track:c9a158f8ad084a483bc010030b0243c342fb8b51ef4c711099cf525f85127745` |
| 12 | `theorem` | [nonempty_of_pos_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/nonempty-of-pos-sinf--16ea9799833e960005531194.md) | 85 | `result-track:16ea9799833e960005531194b7053307694d653bcdd54908755795543786cb2d` |
| 13 | `theorem` | [nonempty_of_sInf_eq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/nonempty-of-sinf-eq-succ--b97c06f696a5900be1cb4fec.md) | 95 | `result-track:b97c06f696a5900be1cb4fec04c399cf3e82ceb004c8684d690361968cf81f6a` |
| 14 | `theorem` | [eq_Ici_of_nonempty_of_upward_closed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/eq-ici-of-nonempty-of-upward-closed--f955df5668226161378b09af.md) | 99 | `result-track:f955df5668226161378b09af4df89b97d3f78596afd5d078de1b8f5734dcc0bb` |
| 15 | `theorem` | [sInf_upward_closed_eq_succ_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/sinf-upward-closed-eq-succ-iff--da3fc2b52776383fa4ffd5d7.md) | 104 | `result-track:da3fc2b52776383fa4ffd5d7bfd250c8c86493e7a71a5c06ea54f1611b7f7b8e` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/instance--03c98091d9dfa226c85db9f0.md) | 118 | `declaration-track:03c98091d9dfa226c85db9f076882ab832649ded7fb54315648d0d6557e826b0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/instance--3922aafa28996556a19533b4.md) | 121 | `declaration-track:3922aafa28996556a19533b43054be4af00d6f04b69cd3918df39a33f0ce0080` |
| 18 | `theorem` | [sSup_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/ssup-mem--aac2b426a355e404a46eed8d.md) | 145 | `result-track:aac2b426a355e404a46eed8d7a1d8e8c63d2727750c91fce5d75d47cdce47a0d` |
| 19 | `theorem` | [sInf_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/sinf-add--30e21e9228e9e788ac9c33c4.md) | 150 | `result-track:30e21e9228e9e788ac9c33c48a38e35096a3f68ba99c2509cada2d4110d3731f` |
| 20 | `theorem` | [sInf_add'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/sinf-add--5c34c5ce9d012008f0ecd379.md) | 166 | `result-track:5c34c5ce9d012008f0ecd379408afd17f068f771c23ad9200fe4534ec4b261af` |
| 21 | `theorem` | [iSup_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/isup-lt-succ--5dcbbe76d25f12ccc7ed974c.md) | 185 | `result-track:5dcbbe76d25f12ccc7ed974c8a7831336333f4e3cbbc6abf8979624c23cc14ee` |
| 22 | `theorem` | [iSup_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/isup-lt-succ--874a9cfd4ec81b0a89c386f2.md) | 189 | `result-track:874a9cfd4ec81b0a89c386f284c2695c4e7655728100a9ae50c5c23dc3f514a7` |
| 23 | `theorem` | [iInf_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/iinf-lt-succ--a8e03139cecbc0ddd7d0325c.md) | 194 | `result-track:a8e03139cecbc0ddd7d0325cfe4f3114e13ea32a71d02c2e4b2eaf313d8a85c7` |
| 24 | `theorem` | [iInf_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/iinf-lt-succ--108111d2c1d2ddf278d37ef7.md) | 198 | `result-track:108111d2c1d2ddf278d37ef7f116879e3f3387b2e234bdcd2c45697a9ca71a99` |
| 25 | `theorem` | [biUnion_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/biunion-lt-succ--3b23f8f987d64ac25c9b1222.md) | 210 | `result-track:3b23f8f987d64ac25c9b122231328eaf7143285cf2e65896e8fbf6db71f242e4` |
| 26 | `theorem` | [biUnion_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/biunion-lt-succ--0374de3e318ce7c0a24a42be.md) | 214 | `result-track:0374de3e318ce7c0a24a42be0fbbb12d115288e059d50e0964e71d34be18952f` |
| 27 | `theorem` | [biInter_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/biinter-lt-succ--726d989b9fd4587890d50069.md) | 218 | `result-track:726d989b9fd4587890d500696105ac6254e3a78643317f418b70cd5c6b3993ba` |
| 28 | `theorem` | [biInter_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variant65d1f3f37ed256ab6bf1512934402ac172b8922faef82e7734f6e0aebca10eef.lean/declarations/biinter-lt-succ--f795b910828972fc366c8834.md) | 222 | `result-track:f795b910828972fc366c8834cbc360e99e30e934bb8ef680188b6368189e9a96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
