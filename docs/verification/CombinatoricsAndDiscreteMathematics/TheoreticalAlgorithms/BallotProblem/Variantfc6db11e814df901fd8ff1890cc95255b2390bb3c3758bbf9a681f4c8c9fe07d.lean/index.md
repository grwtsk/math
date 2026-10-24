# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BallotProblem.Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaa5df5a83a2c84e1ac7f6ef531a233144e97fb2",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaa5df5a83a2c84e1ac7f6ef531a233144e97fb2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [staysPositive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/stayspositive--5d47d8af65090b68051068a7.md) | 42 | `declaration-track:5d47d8af65090b68051068a715f5102694d299a82256824e891380c564dd4717` |
| 2 | `theorem` | [staysPositive_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/stayspositive-nil--5639faf9c8022c81ad6c31c7.md) | 46 | `result-track:5639faf9c8022c81ad6c31c78438d77601c45660aeb94ba00b158c35c957e7fa` |
| 3 | `theorem` | [staysPositive_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/stayspositive-suffix--1a6f1d83a5fdb10bd322d8bc.md) | 49 | `result-track:1a6f1d83a5fdb10bd322d8bc1904953e645c0d3deec2e335437a88cd7205e69b` |
| 4 | `theorem` | [staysPositive_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/stayspositive-cons--63e59dd5a26ebddfdf794436.md) | 52 | `result-track:63e59dd5a26ebddfdf794436d4181b0d418abde841d505b6cb233e63754c4cde` |
| 5 | `theorem` | [sum_nonneg_of_staysPositive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/sum-nonneg-of-stayspositive--4f645fd3bc356b3c9bedf44d.md) | 56 | `result-track:4f645fd3bc356b3c9bedf44d83c3d4a6ec6e3413c4f03844e65592e5e8abd411` |
| 6 | `theorem` | [staysPositive_cons_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/stayspositive-cons-pos--591de36b8be928e36d209c92.md) | 60 | `result-track:591de36b8be928e36d209c9249352dc956eaa5ddbff31aa24bed16df63ba6401` |
| 7 | `def` | [countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/countedsequence--09dfc14ca08a5a45ec804e80.md) | 72 | `declaration-track:09dfc14ca08a5a45ec804e80283dfc6d29be7852da49027bcad724bcbf07100a` |
| 8 | `theorem` | [mem_countedSequence_iff_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/mem-countedsequence-iff-perm--d90c7a2911370923b4f27e96.md) | 77 | `result-track:d90c7a2911370923b4f27e96c095d4d48b70b36fe8cf931b7ad37a66afa834dd` |
| 9 | `theorem` | [counted_right_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/counted-right-zero--2e6e8b102f1bea7217f62525.md) | 85 | `result-track:2e6e8b102f1bea7217f6252512a6f37668902a7239f16a915fb3bbc46bcb1f78` |
| 10 | `theorem` | [counted_left_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/counted-left-zero--bc8132a6ce0e51b768f63b94.md) | 89 | `result-track:bc8132a6ce0e51b768f63b94a628a589b8d261e731c83a5932efa7be2ad42e07` |
| 11 | `theorem` | [mem_of_mem_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/mem-of-mem-countedsequence--8a42720f1b9a9b9f6a30e774.md) | 92 | `result-track:8a42720f1b9a9b9f6a30e774da6fe864da246dddb0cd7e7fd6a099c12a37fcee` |
| 12 | `theorem` | [length_of_mem_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/length-of-mem-countedsequence--a50f657c2f216f06ca32e025.md) | 96 | `result-track:a50f657c2f216f06ca32e025f223e495b508a1ca3156f6c61c9356cffb94de51` |
| 13 | `theorem` | [counted_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/counted-eq-nil-iff--1710fe39047f22230885ae29.md) | 99 | `result-track:1710fe39047f22230885ae29e55afddbac20ca6f777e39a0ab3580f01cbb0ff7` |
| 14 | `theorem` | [counted_ne_nil_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/counted-ne-nil-left--688477e71ea7ba171480fe94.md) | 103 | `result-track:688477e71ea7ba171480fe94df4fc5822ff7963f0dc8e249e62e1cd98a8ed072` |
| 15 | `theorem` | [counted_ne_nil_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/counted-ne-nil-right--3a4ebfd56ba090a035e73d2f.md) | 106 | `result-track:3a4ebfd56ba090a035e73d2f387fe0df52c16a6013b711006153ea497bb49b48` |
| 16 | `theorem` | [counted_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/counted-succ-succ--e11dd1509a631de17b7b4c82.md) | 109 | `result-track:e11dd1509a631de17b7b4c82443eafb6c9fb0625ecd43a69cb1cd605432db272` |
| 17 | `theorem` | [countedSequence_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/countedsequence-finite--690238847084c01b74d5d9b5.md) | 145 | `result-track:690238847084c01b74d5d9b5e620d26f0a521e78480e977773eccfc2520a5307` |
| 18 | `theorem` | [countedSequence_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/countedsequence-nonempty--ccdd69f9394691a3420b0db2.md) | 153 | `result-track:ccdd69f9394691a3420b0db22bca30960b7e0e23712533b68fccab823bf76d37` |
| 19 | `theorem` | [sum_of_mem_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/sum-of-mem-countedsequence--c10bbca3fe41b37aa973c5d1.md) | 160 | `result-track:c10bbca3fe41b37aa973c5d17df7ed324c4f0feb44a4b3e613437da3675a7ed9` |
| 20 | `theorem` | [disjoint_bits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/disjoint-bits--8e1f7be98aa17ade2fbfda0e.md) | 163 | `result-track:8e1f7be98aa17ade2fbfda0e54510c24e477282321d13913da7554d30a2937ce` |
| 21 | `instance` | [measurableSpace_list_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/measurablespace-list-int--f5f8797d789b1d708c9612c5.md) | 172 | `declaration-track:f5f8797d789b1d708c9612c5d0413cb0b120046166dfdac02f5807d4b2ef06ce` |
| 22 | `instance` | [measurableSingletonClass_list_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/measurablesingletonclass-list-int--c1cd029d0d1c6bf4c530c9db.md) | 174 | `declaration-track:c1cd029d0d1c6bf4c530c9db7efd506a2cc7aa6df21dddf88334cc5540ef2cbd` |
| 23 | `theorem` | [list_int_measurableSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/list-int-measurableset--4671a6eecdd428ea203d87e9.md) | 177 | `result-track:4671a6eecdd428ea203d87e9031b04781d7486bcfdba86932220e6574d98f8da` |
| 24 | `theorem` | [count_countedSequence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/count-countedsequence--888c4d0e350f5c2de094b245.md) | 179 | `result-track:888c4d0e350f5c2de094b24576d881e46afe77f9f1942dca18b44b784f65997a` |
| 25 | `theorem` | [first_vote_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/first-vote-pos--49a2d90ba1c86a0c93792287.md) | 189 | `result-track:49a2d90ba1c86a0c93792287bdf4b22e6d3237deb80c0b627e66d38d75011695` |
| 26 | `theorem` | [headI_mem_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/headi-mem-of-nonempty--c5060dfdf63a30caebdba5fb.md) | 226 | `result-track:c5060dfdf63a30caebdba5fbc1722cab8f886fe3a4c70c63e60b6a64dd052d29` |
| 27 | `theorem` | [first_vote_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/first-vote-neg--76cbfff9453b32810fa4b5b7.md) | 230 | `result-track:76cbfff9453b32810fa4b5b7a4e9b46aedf8a96733eb75b5709a13c7751f72f6` |
| 28 | `theorem` | [ballot_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/ballot-same--2c53bc2bccfd96950fed8185.md) | 240 | `result-track:2c53bc2bccfd96950fed8185c62029d3d9ef6f43301b2e8f913e42d0eecb69e4` |
| 29 | `theorem` | [ballot_edge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/ballot-edge--e9e67e82ea049eff4118e113.md) | 249 | `result-track:e9e67e82ea049eff4118e11337a8b7df5d1ca216c7acb14c9ce8effcd1ba7f36` |
| 30 | `theorem` | [countedSequence_int_pos_counted_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/countedsequence-int-pos-counted-succ-succ--2d9876c38f8eee8296bb2e72.md) | 256 | `result-track:2d9876c38f8eee8296bb2e72c3c6a6b3e54df41fb303369b7e0ee8fe1b4d0f09` |
| 31 | `theorem` | [ballot_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/ballot-pos--50288e56067e451924771409.md) | 267 | `result-track:50288e56067e451924771409b5a5cafa1812ee823403f081c75b57ea7768b74b` |
| 32 | `theorem` | [countedSequence_int_neg_counted_succ_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/countedsequence-int-neg-counted-succ-succ--544a87922c70f974c9be7c83.md) | 282 | `result-track:544a87922c70f974c9be7c83f8072c4f2a4989e5f544f69e2b5aca4301984602` |
| 33 | `theorem` | [ballot_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/ballot-neg--47ea333575b446a2b9713101.md) | 294 | `result-track:47ea333575b446a2b97131019b25e0173b07dfac87a95c8ae04bd2c2e02c785e` |
| 34 | `theorem` | [ballot_problem'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/ballot-problem--e48c267587c7996558118318.md) | 310 | `result-track:e48c267587c799655811831856aec579ceafb506fb744f98058169c7765fd9c3` |
| 35 | `theorem` | [ballot_problem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantfc6db11e814df901fd8ff1890cc95255b2390bb3c3758bbf9a681f4c8c9fe07d.lean/declarations/ballot-problem--21ef29fea3c2a48b045f7a3b.md) | 348 | `result-track:21ef29fea3c2a48b045f7a3b2fe5d94c997db6f05e6ae1e3894d44ee36707390` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
