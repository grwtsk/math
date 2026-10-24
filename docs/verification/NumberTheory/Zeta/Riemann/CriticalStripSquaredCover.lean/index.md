# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSquaredCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "629d134563d63cdbbcd90ac679c388691f45444f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `629d134563d63cdbbcd90ac679c388691f45444f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalCover`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripRationalCover.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SquaredContainsBox](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/squaredcontainsbox--45007d6ac26bf497ee284714.md) | 29 | `declaration-track:45007d6ac26bf497ee2847148173a02f02b69d22ccdded416a256752faefbbed` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/instance--f260131b8db0cfd2f87905d2.md) | 32 | `declaration-track:f260131b8db0cfd2f87905d2ec3c7ddfe3087ece46b5ddd6dba72b772e063fed` |
| 3 | `lemma` | [realReach_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/realreach-nonneg--9729ba3662ad61a77b8b7c2d.md) | 36 | `result-track:9729ba3662ad61a77b8b7c2d22fc7f43e58b703acf554e5cac3a389fe08057b3` |
| 4 | `lemma` | [imagReach_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/imagreach-nonneg--1a2e0a81f49e5a1d909dbd5f.md) | 39 | `result-track:1a2e0a81f49e5a1d909dbd5fa2ac6f4ca41af5475c4529c5af09456ce7076609` |
| 5 | `theorem` | [squaredContainsBox_of_containsBox](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/squaredcontainsbox-of-containsbox--9bc168579f42cd4b71111d0b.md) | 43 | `result-track:9bc168579f42cd4b71111d0bc9d75e05a5fcf05898895468c7b07abdab99b355` |
| 6 | `lemma` | [Disk.coordinate_reach_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/disk-coordinate-reach-bounds--06428f48ef72e8c73e2014d3.md) | 58 | `result-track:06428f48ef72e8c73e2014d31e6aa485337692d93674178da9de8dc90c5f4774` |
| 7 | `theorem` | [Disk.squaredContainsBox_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/disk-squaredcontainsbox-sound--9a5ec6561ca0da5b43bb64a9.md) | 74 | `result-track:9a5ec6561ca0da5b43bb64a9dd58a4f6f4ea634f00c9f74e990f14c551b44e44` |
| 8 | `lemma` | [endpoint_max_attained](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/endpoint-max-attained--1737b00021dc5c1a69bf63c8.md) | 100 | `result-track:1737b00021dc5c1a69bf63c8b2cbd0b1faa28c737a17b0bebb66a342aba7656a` |
| 9 | `theorem` | [Disk.squaredContainsBox_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/disk-squaredcontainsbox-iff--e0e5c4e304590b4da834260d.md) | 108 | `result-track:e0e5c4e304590b4da834260da6ffa8bbdd5507593ab8c1a3b45c22c48208d14a` |
| 10 | `def` | [check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/check--76eb6f3d279421dabe720853.md) | 156 | `declaration-track:76eb6f3d279421dabe7208534b3b964dceb477ce92964a8ff471fcebee52113c` |
| 11 | `def` | [CheckedTree](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/checkedtree--f585bf7c9194c8e4aeb6f4dc.md) | 166 | `declaration-track:f585bf7c9194c8e4aeb6f4dc64d706b810210d60f1b6a691229e9a8411331e4e` |
| 12 | `def` | [firstLeaf](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/firstleaf--777b5fd82fd0917805d4f799.md) | 170 | `declaration-track:777b5fd82fd0917805d4f799613dccab7f37d2570c801fb15bc8bc5e08ebe668` |
| 13 | `def` | [propose](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/propose--7fb3654a15f46a38a3af6b2d.md) | 179 | `declaration-track:7fb3654a15f46a38a3af6b2d88f4a8757f941b83969a35757161ef1ce2478c32` |
| 14 | `def` | [search](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/search--ceb46af693aafddcb3e19e36.md) | 202 | `declaration-track:ceb46af693aafddcb3e19e36b9ad1ed36339e0d8e4cd69fba6b3b4e2778842a9` |
| 15 | `def` | [searchTree](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/searchtree--305a9ad18954d0717e727f81.md) | 209 | `declaration-track:305a9ad18954d0717e727f814ab898f98fa9b6fbbc63874062c7c65ada0de3e0` |
| 16 | `theorem` | [check_wellFormed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/check-wellformed--bd80b3b8553f166f5ee2a58c.md) | 215 | `result-track:bd80b3b8553f166f5ee2a58c982adf0a0863deccbfa66f2509e1423b4ad144a5` |
| 17 | `theorem` | [check_covers](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/check-covers--265e62f7516e95d97ab0d8af.md) | 235 | `result-track:265e62f7516e95d97ab0d8af22e9370012eaa4f3acde2e8df6c706e6f7648364` |
| 18 | `theorem` | [CheckedTree.count_pos](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/checkedtree-count-pos--57c73bea818d91a5ab79b991.md) | 262 | `result-track:57c73bea818d91a5ab79b991ee2692c19153e2c7c8413e1fe41b8b01389f065d` |
| 19 | `theorem` | [check_of_L1_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/check-of-l1-check--faea1aadb8b01aad9ff2a3e7.md) | 269 | `result-track:faea1aadb8b01aad9ff2a3e7274e01093b58a79870fdce56ce876645513a9231` |
| 20 | `theorem` | [searchTree_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/searchtree-sound--d32af1b23f720715a443b537.md) | 294 | `result-track:d32af1b23f720715a443b537622d2b712e530c9d04c0813d9e77e200aa96feee` |
| 21 | `def` | [CheckedTree.toFiniteVariationCover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/checkedtree-tofinitevariationcover--80441a6e45e0b69761d8916f.md) | 307 | `declaration-track:80441a6e45e0b69761d8916fee75ea6cd8820e8fcc8d6f2182b63daf3725e05e` |
| 22 | `theorem` | [not_check_of_uncovered](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/not-check-of-uncovered--3ac5c85be67ba0fdc6ecd532.md) | 317 | `result-track:3ac5c85be67ba0fdc6ecd532cb6aa04874d6f143027542f0d70bcdbc36d18645` |
| 23 | `theorem` | [CheckedTree.source_nonzero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSquaredCover.lean/declarations/checkedtree-source-nonzero--2de3a338ee184c9e5e955989.md) | 326 | `result-track:2de3a338ee184c9e5e95598978450f20743d43928d7ff11f23ce9ce2dba931b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
