# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pi.Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a00ff269c940f25618b839ba807538c13880d71",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a00ff269c940f25618b839ba807538c13880d71`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset--2205d842e1e39b1af83a251a.md) | 28 | `declaration-track:2205d842e1e39b1af83a251a287343056d8725f562a8a1f240568b6bbfe3dab2` |
| 2 | `theorem` | [mem_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/mem-pifinset--4a3dac1e9e6c6503a7f67dc8.md) | 33 | `result-track:4a3dac1e9e6c6503a7f67dc8194a95be5476aebbd53df0320df69c7621caa6ee` |
| 3 | `theorem` | [coe_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/coe-pifinset--9949545571fb93c9b1b6aef7.md) | 44 | `result-track:9949545571fb93c9b1b6aef7cdcb20daa5b17bb9d1914c10844c99ca4c80f910` |
| 4 | `theorem` | [piFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-subset--340f94618727a0f98c18ca39.md) | 50 | `result-track:340f94618727a0f98c18ca3967b2ed851c006afe73a4dd03ebfeda7bf19e9dbf` |
| 5 | `theorem` | [piFinset_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-eq-empty--024306d5d0136cfaa5b23c2d.md) | 54 | `result-track:024306d5d0136cfaa5b23c2dd0337df8627ffa8444aa4f485e45b9ebb6d86f86` |
| 6 | `theorem` | [piFinset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-empty--96ee291e009fcb3222681eca.md) | 57 | `result-track:96ee291e009fcb3222681eca0dc5cd5bc40cf98968c6c2fa3d0081554fd66f1b` |
| 7 | `lemma` | [piFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-nonempty--0ab8c9330e0131f172982e1a.md) | 60 | `result-track:0ab8c9330e0131f172982e1a20bc0c21d96a180d185475f1acb013e51aefd38a` |
| 8 | `lemma` | [_root_.Finset.Nonempty.piFinset_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/root-finset-nonempty-pifinset-const--090f5428f60bb5e1eb819648.md) | 65 | `result-track:090f5428f60bb5e1eb819648784c6fc81145ddb421b336f00314f37c91eba1e9` |
| 9 | `lemma` | [piFinset_of_isEmpty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-of-isempty--8b10879413f01f7a0ea62f6e.md) | 69 | `result-track:8b10879413f01f7a0ea62f6ec002c9eb9941372054bb9051ddf0b012703b0095` |
| 10 | `theorem` | [piFinset_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-singleton--05cdafb7ecba16429a3c2c5f.md) | 73 | `result-track:05cdafb7ecba16429a3c2c5f3b4d3eed51bcdbb7ae3f8b063272db15d80d4dc6` |
| 11 | `theorem` | [piFinset_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-subsingleton--e1aeb77735a8791d033d6fd2.md) | 76 | `result-track:e1aeb77735a8791d033d6fd2c52653f0d6f046240611108fc5b74e2ae443d564` |
| 12 | `theorem` | [piFinset_disjoint_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-disjoint-of-disjoint--5e179e339f509977c297f687.md) | 80 | `result-track:5e179e339f509977c297f6870479225ac4730a52505a63bbc097a3239aa40a2b` |
| 13 | `lemma` | [piFinset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-image--48ce8da547a3705f64be16e6.md) | 86 | `result-track:48ce8da547a3705f64be16e66e537f5af81537e8e4f9d159000fa1677f442d00` |
| 14 | `lemma` | [eval_image_piFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/eval-image-pifinset-subset--6bf73eb627d0848e4dac65a5.md) | 90 | `result-track:6bf73eb627d0848e4dac65a54fd47d2db75fe9f7beb4cbba03288bdd2dfda279` |
| 15 | `lemma` | [eval_image_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/eval-image-pifinset--983b7a3d69c9aae87178159d.md) | 93 | `result-track:983b7a3d69c9aae87178159de4e82b1c04551fe2b4b756357314230274a6f637` |
| 16 | `lemma` | [eval_image_piFinset_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/eval-image-pifinset-const--39573e533e7f30dbb6f1b4ab.md) | 99 | `result-track:39573e533e7f30dbb6f1b4aba8c43bc87f59620915bcf4da9f79dd4626250c8d` |
| 17 | `lemma` | [filter_piFinset_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/filter-pifinset-of-notmem--7b277b04c990e1cae31185ef.md) | 108 | `result-track:7b277b04c990e1cae31185ef4e2cbb2cf4a2d09ab9126250eedd6d6bf8846d89` |
| 18 | `lemma` | [piFinset_update_eq_filter_piFinset_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-update-eq-filter-pifinset-mem--2805c62f9a84090c1f532c18.md) | 115 | `result-track:2805c62f9a84090c1f532c188c9deabb7c8cd203bcad2424c14f1409b94e4741` |
| 19 | `lemma` | [piFinset_update_singleton_eq_filter_piFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-update-singleton-eq-filter-pifinset-eq--4599e6d4fce5121d45fd97e5.md) | 129 | `result-track:4599e6d4fce5121d45fd97e576e395592721a5b091e9f5b6a4f6505c213879e9` |
| 20 | `instance` | [Pi.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pi-instfintype--f756f02dc83ba587454dac61.md) | 139 | `declaration-track:f756f02dc83ba587454dac618f4feb7e104af1275c74d9bebcc6e85366b3f405` |
| 21 | `theorem` | [Fintype.piFinset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/fintype-pifinset-univ--b7c99aaec6a2a19119ac7a2c.md) | 144 | `result-track:b7c99aaec6a2a19119ac7a2c54726faf9f1e63e9847b87498210aa95c67b60a4` |
| 22 | `instance` | [_root_.Function.Embedding.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/root-function-embedding-fintype--26e3e0ed249613d61ed51250.md) | 155 | `declaration-track:26e3e0ed249613d61ed5125047db2c028c8246270d2f5922a65b87190b225979` |
| 23 | `instance` | [RelHom.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/relhom-instfintype--8b82d23c43c08716936a1d07.md) | 159 | `declaration-track:8b82d23c43c08716936a1d074a240d2ac1e282bd7441ce6d58f4cdfd12f28e00` |
| 24 | `instance` | [RelEmbedding.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/relembedding-instfintype--fa5497a8747e28bffebccdad.md) | 164 | `declaration-track:fa5497a8747e28bffebccdad288eccbb7ab0512eac10f3f08f3ef19a7b250a95` |
| 25 | `theorem` | [Finset.univ_pi_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/finset-univ-pi-univ--1551fa80db7b62ea7ef18b59.md) | 169 | `result-track:1551fa80db7b62ea7ef18b597abfbcdfc8f9542442f0873c81f3fb3a71b95aa7` |
| 26 | `lemma` | [piFinset_filter_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pifinset-filter-const--86bd9c9721fe235ee54412d1.md) | 179 | `result-track:86bd9c9721fe235ee54412d188cf3df887c12faecd9947d51a6bee239a7e65c1` |
| 27 | `lemma` | [piDiag_subset_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/pidiag-subset-pifinset--7fa5ad5f39de3f3db88349ad.md) | 182 | `result-track:7fa5ad5f39de3f3db88349ad0103514597236780202f95ea849f128ff4079451` |
| 28 | `theorem` | [Finite.pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/finite-pi--bbfa901bd4898228a47b100e.md) | 205 | `result-track:bbfa901bd4898228a47b100ed394566b0c880fc0a839d73f8fbafe0899fd6180` |
| 29 | `lemma` | [Finite.pi'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/finite-pi--4bbfbf8206ba7f9600904f35.md) | 214 | `result-track:4bbfbf8206ba7f9600904f35b5f8e8ebc1377d1b6ede18cc16a15fdce1fa9b41` |
| 30 | `theorem` | [forall_finite_image_eval_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean/declarations/forall-finite-image-eval-iff--348d3ae019c935fcd5ab6f9b.md) | 221 | `result-track:348d3ae019c935fcd5ab6f9b1d243d934a20fd3fab8cbdc1aabf61676c1ecf7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
