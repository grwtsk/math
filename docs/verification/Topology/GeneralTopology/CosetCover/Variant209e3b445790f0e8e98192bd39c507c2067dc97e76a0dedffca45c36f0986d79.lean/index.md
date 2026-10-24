# Verification target: GRWTSK.Topology.GeneralTopology.CosetCover.Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d2917ad3588fee91d80d42fe37d606a4695f80b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d2917ad3588fee91d80d42fe37d606a4695f80b`.

Source path: `GRWTSK/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Complement` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_leftTransversal_of_FiniteIndex](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/exists-lefttransversal-of-finiteindex--595014145676a4456ec48f99.md) | 62 | `result-track:595014145676a4456ec48f99d3849a64647a27998ef025aad8e7dc32c0eff14d` |
| 2 | `theorem` | [leftCoset_cover_const_iff_surjOn](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/leftcoset-cover-const-iff-surjon--805c8af7265f198d60c2ff29.md) | 82 | `result-track:805c8af7265f198d60c2ff29875bede47c35fc23de318a29abdb62522dda9da5` |
| 3 | `theorem` | [finiteIndex_of_leftCoset_cover_const](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/finiteindex-of-leftcoset-cover-const--2dc9dd02031f3369fef46f7a.md) | 93 | `result-track:2dc9dd02031f3369fef46f7a0bcf8187b330157a05f4245d2fb22df2d174b3f1` |
| 4 | `theorem` | [index_le_of_leftCoset_cover_const](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/index-le-of-leftcoset-cover-const--2ec7197b9c73b69a142133ce.md) | 99 | `result-track:2ec7197b9c73b69a142133ce025acef2a1eca2a4b8940b5e1a7d89b376f8afd9` |
| 5 | `theorem` | [pairwiseDisjoint_leftCoset_cover_const_of_index_eq](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/pairwisedisjoint-leftcoset-cover-const-of-index-eq--135885c569b8dd79e4a2c652.md) | 107 | `result-track:135885c569b8dd79e4a2c65216d34bd5980b9d9e81f852be86377d0bf61ede0b` |
| 6 | `theorem` | [exists_finiteIndex_of_leftCoset_cover_aux](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/exists-finiteindex-of-leftcoset-cover-aux--3e3729465ee31bce1acc750e.md) | 135 | `result-track:3e3729465ee31bce1acc750e67c63c420b1a1e918357c3efaf6a3c04149f79f2` |
| 7 | `theorem` | [exists_finiteIndex_of_leftCoset_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/exists-finiteindex-of-leftcoset-cover--272f387a661d2d466d0b042c.md) | 201 | `result-track:272f387a661d2d466d0b042c8dbba2863eac6474656c667a6c0592d27c11c4af` |
| 8 | `theorem` | [leftCoset_cover_filter_FiniteIndex_aux](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/leftcoset-cover-filter-finiteindex-aux--41609a3edd1f7c4ac1ad95c1.md) | 215 | `result-track:41609a3edd1f7c4ac1ad95c1ccc0765f4aeedf38af71e78c4d7cc534cff634a1` |
| 9 | `theorem` | [leftCoset_cover_filter_FiniteIndex](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/leftcoset-cover-filter-finiteindex--dbabca36b488d9bbfb124c89.md) | 313 | `result-track:dbabca36b488d9bbfb124c89a067a3f55c3e64a8c74ba080f079fc76bdb2ab0c` |
| 10 | `theorem` | [one_le_sum_inv_index_of_leftCoset_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/one-le-sum-inv-index-of-leftcoset-cover--46b8b16da6000e73f3587c77.md) | 321 | `result-track:46b8b16da6000e73f3587c7735d8aca54e2bb6d45b28e3bfc8556e5fa11c9766` |
| 11 | `theorem` | [pairwiseDisjoint_leftCoset_cover_of_sum_inv_index_eq_one](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/pairwisedisjoint-leftcoset-cover-of-sum-inv-index-eq-one--f60f001ec99a9ccfef4a658c.md) | 330 | `result-track:f60f001ec99a9ccfef4a658c0fe28b0e6cb33860218e689afecaa061ffd135a9` |
| 12 | `theorem` | [exists_index_le_card_of_leftCoset_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/exists-index-le-card-of-leftcoset-cover--70aa91e52c5537775a3c7a56.md) | 341 | `result-track:70aa91e52c5537775a3c7a56d35e9f2e5fdebb57f914801e4a41849cc1ddba60` |
| 13 | `theorem` | [Submodule.exists_finiteIndex_of_cover](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/submodule-exists-finiteindex-of-cover--13b991696485a09361a767f8.md) | 367 | `result-track:13b991696485a09361a767f84c82a9ba12e94857a63418156ff2dc831ce7b7d3` |
| 14 | `theorem` | [Subspace.biUnion_ne_univ_of_top_notMem](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/subspace-biunion-ne-univ-of-top-notmem--240ae09994c63b816c97c2be.md) | 381 | `result-track:240ae09994c63b816c97c2be5d732cdf4482270b851286d8dedd7e09ce721cf9` |
| 15 | `theorem` | [Subspace.top_mem_of_biUnion_eq_univ](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/subspace-top-mem-of-biunion-eq-univ--c3721cfcc9579ae91529e3be.md) | 395 | `result-track:c3721cfcc9579ae91529e3bea2472e872707b0905cb88063c012c8bc8e0df6ca` |
| 16 | `theorem` | [Subspace.exists_eq_top_of_iUnion_eq_univ](../../../../../mathematics/Topology/GeneralTopology/CosetCover/Variant209e3b445790f0e8e98192bd39c507c2067dc97e76a0dedffca45c36f0986d79.lean/declarations/subspace-exists-eq-top-of-iunion-eq-univ--f30d07cd1e49d1a1882e23ff.md) | 405 | `result-track:f30d07cd1e49d1a1882e23ff2bfc3389d0163f4cb7a810629c59f458924bda9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
