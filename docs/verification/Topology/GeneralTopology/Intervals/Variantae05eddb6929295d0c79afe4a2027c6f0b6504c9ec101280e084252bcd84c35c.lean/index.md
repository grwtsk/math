# Verification target: GRWTSK.Topology.GeneralTopology.Intervals.Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25136a1b3a16066820c7d4aeff034a6cc835f3e8",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25136a1b3a16066820c7d4aeff034a6cc835f3e8`.

Source path: `GRWTSK/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bool.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ico](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/ico--8810167786485149540c79ed.md) | 36 | `declaration-track:8810167786485149540c79ed1dd9308b3940bb7dafe9551f69fe6ce88c51b3b5` |
| 2 | `theorem` | [zero_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/zero-bot--dffc74ec02d5c5ed2e1ca445.md) | 42 | `result-track:dffc74ec02d5c5ed2e1ca44595c0f47f9e64d62cd0ae61f1c26d07a50624c94a` |
| 3 | `theorem` | [length](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/length--3962e6b1542517f870c47782.md) | 46 | `result-track:3962e6b1542517f870c4778261a8f7865d596819c1a0946e39b75ed526bc82b3` |
| 4 | `theorem` | [pairwise_lt](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/pairwise-lt--d7f322f2494bc82aa29b0271.md) | 51 | `result-track:d7f322f2494bc82aa29b02717ea1f97a0a5b7cce7f0ffde9b16df7a47e5e3465` |
| 5 | `theorem` | [nodup](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/nodup--a8650b0273007fc09b83c474.md) | 56 | `result-track:a8650b0273007fc09b83c4740b9752bd0bd19ce11df28d6222c02df019d43142` |
| 6 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/mem--f463a047e4724817c1dde226.md) | 62 | `result-track:f463a047e4724817c1dde226df2c3dacda246780366c573555a6eda942357fa8` |
| 7 | `theorem` | [eq_nil_of_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/eq-nil-of-le--eb9b3aa657c6952bf4dc63e8.md) | 72 | `result-track:eb9b3aa657c6952bf4dc63e8c0cc3da42dff51160e9f753634f232e6d8ff5cf7` |
| 8 | `theorem` | [map_add](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/map-add--ce6c689046a8454568d3d236.md) | 76 | `result-track:ce6c689046a8454568d3d23643c4495d023c9a391eaf9cea346b440e6ec9d05a` |
| 9 | `theorem` | [map_sub](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/map-sub--c1e54f7152cb8112a8f98b85.md) | 80 | `result-track:c1e54f7152cb8112a8f98b8535ca202e5e76ffdda97e2c68e51c1ab2163e88b9` |
| 10 | `theorem` | [self_empty](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/self-empty--ccb5e3c830abf360eba74628.md) | 86 | `result-track:ccb5e3c830abf360eba74628c3309a03298146338646dcc7806a4398180c7cb0` |
| 11 | `theorem` | [eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/eq-empty-iff--1cf5012a118b16e56e57072a.md) | 91 | `result-track:1cf5012a118b16e56e57072a40e2e9b358f04c451d755672e2572d3c131c7492` |
| 12 | `theorem` | [append_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/append-consecutive--6531f032e34c5ba21d8d5bee.md) | 95 | `result-track:6531f032e34c5ba21d8d5bee5e21648fe53dbec304666386e7d346e0786f2406` |
| 13 | `theorem` | [inter_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/inter-consecutive--3cab26a594185dd672c575cc.md) | 104 | `result-track:3cab26a594185dd672c575cc1f4629ccf2dd182a972bf6b22be3fbf6209d922b` |
| 14 | `theorem` | [bagInter_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/baginter-consecutive--0e4b2910d7223ac20be7aefe.md) | 114 | `result-track:0e4b2910d7223ac20be7aefe200a51f5279a9cd95f512255ab69ca996581403d` |
| 15 | `theorem` | [succ_singleton](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/succ-singleton--2ac4484ef868c992572a8e94.md) | 119 | `result-track:2ac4484ef868c992572a8e9430fe2ed92db35aad51fc71c85762dd55c5c7abe7` |
| 16 | `theorem` | [succ_top](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/succ-top--ae0541482cc661b54eb17595.md) | 124 | `result-track:ae0541482cc661b54eb17595bf020fa89b00eae157027d6de0903e848385ea4a` |
| 17 | `theorem` | [eq_cons](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/eq-cons--db701fa7fe665c87b3f582a0.md) | 129 | `result-track:db701fa7fe665c87b3f582a0f07335b603c7df7ce269aa327db0d8b3856b2f0b` |
| 18 | `theorem` | [pred_singleton](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/pred-singleton--a996d87df90d828d64f6af2d.md) | 135 | `result-track:a996d87df90d828d64f6af2d2628fa8987c08d0ce61ef29808b444aab299c43d` |
| 19 | `theorem` | [chain'_succ](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/chain-succ--44f827a6611796bf5332befe.md) | 142 | `result-track:44f827a6611796bf5332befedac981fba7ebc5075adb456752eccbdeb3744b13` |
| 20 | `theorem` | [not_mem_top](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/not-mem-top--21b3d9adff079393a6e3820c.md) | 152 | `result-track:21b3d9adff079393a6e3820c458b5ef3e0b34e5aa667b16624870acf47df05bb` |
| 21 | `theorem` | [filter_lt_of_top_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/filter-lt-of-top-le--a0bf068edf206e679ac7cf15.md) | 155 | `result-track:a0bf068edf206e679ac7cf159851d86093ae07f340885e1d4527758e291c37ce` |
| 22 | `theorem` | [filter_lt_of_le_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/filter-lt-of-le-bot--859d9ee269d807c51614aadf.md) | 161 | `result-track:859d9ee269d807c51614aadf6c599321390fa03da3c96c0adcd40f02bc7c1231` |
| 23 | `theorem` | [filter_lt_of_ge](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/filter-lt-of-ge--fe557ce60ec64471537568e7.md) | 168 | `result-track:fe557ce60ec64471537568e74eae5fa07d3e1cbcd0ce1c3a906c14328cedd013` |
| 24 | `theorem` | [filter_lt](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/filter-lt--84b201ac0d889f37a97bdba5.md) | 177 | `result-track:84b201ac0d889f37a97bdba523f04937cb420afb576da8d0d68c0d304f3848cc` |
| 25 | `theorem` | [filter_le_of_le_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/filter-le-of-le-bot--7c9f5e0df9f636ff1b057f92.md) | 184 | `result-track:7c9f5e0df9f636ff1b057f92c440cb92d912495d442aec07d69abe02216f272c` |
| 26 | `theorem` | [filter_le_of_top_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/filter-le-of-top-le--44e42dc6e7ae66c33911d85f.md) | 191 | `result-track:44e42dc6e7ae66c33911d85f88a0afe0d35fd6208a89bdd516715e467725bf41` |
| 27 | `theorem` | [filter_le_of_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/filter-le-of-le--b3b5c817ce865649ae62fb4a.md) | 197 | `result-track:b3b5c817ce865649ae62fb4abbb0dc1aebfd69172a6ac8eae10b232438e5b41d` |
| 28 | `theorem` | [filter_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/filter-le--bd298a27d82bbea473cdd746.md) | 206 | `result-track:bd298a27d82bbea473cdd746b3f395663d81d7628dbf277be69ea6816bb0021c` |
| 29 | `theorem` | [filter_lt_of_succ_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/filter-lt-of-succ-bot--c453dd6a9da2e6f495f0f95c.md) | 212 | `result-track:c453dd6a9da2e6f495f0f95c60986456c00e2b1c7ca13d177aadfea369b71609` |
| 30 | `theorem` | [filter_le_of_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/filter-le-of-bot--5cffdb7eea18195c6031ba92.md) | 219 | `result-track:5cffdb7eea18195c6031ba92cd65c51e6063fec90eac9d13d35eeaab928bc25a` |
| 31 | `theorem` | [trichotomy](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantae05eddb6929295d0c79afe4a2027c6f0b6504c9ec101280e084252bcd84c35c.lean/declarations/trichotomy--ebbed3ff119dad35ebbfae1b.md) | 231 | `result-track:ebbed3ff119dad35ebbfae1b167065e391dea1e60846c05e6c3fedad450e6ccc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
