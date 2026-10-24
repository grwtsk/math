# Verification target: GRWTSK.Topology.GeneralTopology.Intervals.Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "086e7a7371c6b8d95160c494610cd7dbabcb4836",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `086e7a7371c6b8d95160c494610cd7dbabcb4836`.

Source path: `GRWTSK/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bool.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ico](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/ico--9189ce80c7b895366beec410.md) | 44 | `declaration-track:9189ce80c7b895366beec410326121f30e2db11679da708d1d75650f608ae301` |
| 2 | `theorem` | [zero_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/zero-bot--414dad748d8bd96ee14614d0.md) | 50 | `result-track:414dad748d8bd96ee14614d0973205f4fc359ed0271abab3d88fc9324bf6b482` |
| 3 | `theorem` | [length](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/length--11a3bac36909ffca1ef143f8.md) | 54 | `result-track:11a3bac36909ffca1ef143f8cf61caac85dcc8dba100ca6e9831484a926738ab` |
| 4 | `theorem` | [pairwise_lt](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/pairwise-lt--30421b40eea1a8d08bc7ba65.md) | 59 | `result-track:30421b40eea1a8d08bc7ba651436fef2081d693f52120f10da01b2973e3809d1` |
| 5 | `theorem` | [nodup](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/nodup--15490f732e60bbca70508662.md) | 64 | `result-track:15490f732e60bbca70508662289041aff2c63f276098eb9fa0f95389aea69b6d` |
| 6 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/mem--4afb0c06707eebcf30bb06ec.md) | 70 | `result-track:4afb0c06707eebcf30bb06ec8931b62944e85b2c49d432260e55d794688f66ab` |
| 7 | `theorem` | [eq_nil_of_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/eq-nil-of-le--c57d142d255b7f051fdae6d8.md) | 80 | `result-track:c57d142d255b7f051fdae6d836cc882a5aa410a498a6ec133fbd91b09b13c953` |
| 8 | `theorem` | [map_add](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/map-add--f7ca27ea59c7dc4522f5997b.md) | 84 | `result-track:f7ca27ea59c7dc4522f5997b41ffa5750470aeb61f838029a5c9a58a91ba4d5d` |
| 9 | `theorem` | [map_sub](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/map-sub--b6384dbada582e5882c8f7b9.md) | 88 | `result-track:b6384dbada582e5882c8f7b97042a47a0b2390d64732dd38a08ac582e3be4cdc` |
| 10 | `theorem` | [self_empty](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/self-empty--c797fd048c78ea085bf1f361.md) | 94 | `result-track:c797fd048c78ea085bf1f3613da3905050e0fa4c40414d1e924199b9bea93495` |
| 11 | `theorem` | [eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/eq-empty-iff--3bf8c91d272f9729d8a78019.md) | 99 | `result-track:3bf8c91d272f9729d8a78019889494c6c86ee406e3db8bdfe4815c615166b3d1` |
| 12 | `theorem` | [append_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/append-consecutive--53c4cfd33f91ea1539614c52.md) | 103 | `result-track:53c4cfd33f91ea1539614c52fdb6c32879a012799d23bf06c9d7ec11e328d16a` |
| 13 | `theorem` | [inter_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/inter-consecutive--edf021de1bd588d16c6324b6.md) | 112 | `result-track:edf021de1bd588d16c6324b6f38c19aea75bf99c2ad905dd19018317cfc02169` |
| 14 | `theorem` | [bagInter_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/baginter-consecutive--54dee95a50e779371dbf2c46.md) | 122 | `result-track:54dee95a50e779371dbf2c461aea9081457b7d40f92eace62640e8b9069241a2` |
| 15 | `theorem` | [succ_singleton](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/succ-singleton--ec6c373366e03d41306c88fe.md) | 127 | `result-track:ec6c373366e03d41306c88fe5680e5422d0b6925f77e9efc30990fd89463154c` |
| 16 | `theorem` | [succ_top](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/succ-top--563bd27a121957e48c63f3a3.md) | 132 | `result-track:563bd27a121957e48c63f3a3a9ac395dc0e1fbbb2baaac01d520c169e28ec3bf` |
| 17 | `theorem` | [eq_cons](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/eq-cons--4e5c059018a1357ac17c56f7.md) | 137 | `result-track:4e5c059018a1357ac17c56f7e98dd132bf81b8ca04183d8c59b4161e76e6ad64` |
| 18 | `theorem` | [pred_singleton](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/pred-singleton--3a6179eaff000d4424cf0587.md) | 143 | `result-track:3a6179eaff000d4424cf05877515a765ffcddef94b0992678f8df97983c393d9` |
| 19 | `theorem` | [chain'_succ](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/chain-succ--a2e5f9105d1a1830eab60e78.md) | 150 | `result-track:a2e5f9105d1a1830eab60e78ad496f14022a0fdc2712e6394b43329352129f2b` |
| 20 | `theorem` | [not_mem_top](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/not-mem-top--4a44befdc28f555768945928.md) | 160 | `result-track:4a44befdc28f555768945928d1c25c10bfbffd068b6e7ffabbd27d60969b5aa7` |
| 21 | `theorem` | [filter_lt_of_top_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/filter-lt-of-top-le--43acf2ec9ed1d1ad37596753.md) | 163 | `result-track:43acf2ec9ed1d1ad37596753dfaec17115f0978ad5124ed74df7fb53a139fe46` |
| 22 | `theorem` | [filter_lt_of_le_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/filter-lt-of-le-bot--42bb88bc91c8cb29e51e7057.md) | 169 | `result-track:42bb88bc91c8cb29e51e7057e3549f5517be32507fff2e47f36ce515a2534761` |
| 23 | `theorem` | [filter_lt_of_ge](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/filter-lt-of-ge--4bd5f962c370b4e2207167fd.md) | 176 | `result-track:4bd5f962c370b4e2207167fde20cecfebf3a254dd0c3d2af4c4c6c5e78a42705` |
| 24 | `theorem` | [filter_lt](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/filter-lt--adc1ecfbff7a0b7f6eb96356.md) | 185 | `result-track:adc1ecfbff7a0b7f6eb963561f8aa2535e8d1adaa924c46e371d68dc9d9be0e4` |
| 25 | `theorem` | [filter_le_of_le_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/filter-le-of-le-bot--899bb38d0981a133a80add9d.md) | 192 | `result-track:899bb38d0981a133a80add9d74b69857fd237b3582b3f510f184d10f6132f9de` |
| 26 | `theorem` | [filter_le_of_top_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/filter-le-of-top-le--3f4405dce2ac4adf52ae8970.md) | 199 | `result-track:3f4405dce2ac4adf52ae8970874f33b03bdf6098868b0fc6feee1c54d7742a1f` |
| 27 | `theorem` | [filter_le_of_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/filter-le-of-le--5eecb3865dc8e61515efa4fd.md) | 205 | `result-track:5eecb3865dc8e61515efa4fdad159bf829208611b803f921b3bb5d9e00cd55b6` |
| 28 | `theorem` | [filter_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/filter-le--5f7e5bf761a298ddf6c11f12.md) | 214 | `result-track:5f7e5bf761a298ddf6c11f1243e32f7d4200ea3f9454393b3c856dd6ceb5520f` |
| 29 | `theorem` | [filter_lt_of_succ_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/filter-lt-of-succ-bot--0697786d02479fbfb8e4bf0f.md) | 220 | `result-track:0697786d02479fbfb8e4bf0fbea2669e414fe82734e16cc02c1b728f9f978015` |
| 30 | `theorem` | [filter_le_of_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/filter-le-of-bot--949896923c4a1d3ba2d77d02.md) | 227 | `result-track:949896923c4a1d3ba2d77d024b5b71ada0fc81a0904cca08dbc79010e4353eb1` |
| 31 | `theorem` | [trichotomy](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variant267c465c352e26af59e8a287a0d13282faa8854b95bcd80265a0cea24590aca2.lean/declarations/trichotomy--6f6e9ae8b62fc8df2bb7d89d.md) | 239 | `result-track:6f6e9ae8b62fc8df2bb7d89d096983479c5bc668cd276ff2d38c9c886ca02c09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
