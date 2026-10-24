# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SetSemiring.Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87579e8754f3f458a6f0c584eae89652656ff1ad",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87579e8754f3f458a6f0c584eae89652656ff1ad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Accumulate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSetSemiring](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/issetsemiring--84a3801d5bf2d36bf3282f69.md) | 67 | `declaration-track:84a3801d5bf2d36bf3282f69afe4be884eb97e5054812c8f2d41770bf6877c95` |
| 2 | `lemma` | [isPiSystem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/ispisystem--ce6815b03d28522be61ae98e.md) | 75 | `result-track:ce6815b03d28522be61ae98e5aef4fcd36f876c5fab9378dff6dc25eb983a355` |
| 3 | `def` | [disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjointofdiff--f6097c6982fcf57b7087c7bf.md) | 85 | `declaration-track:f6097c6982fcf57b7087c7bf3304930e29a13e6ac07d639c518de21b5b9d3f49` |
| 4 | `lemma` | [empty_notMem_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/empty-notmem-disjointofdiff--7640886b2b5038da45bffd2e.md) | 89 | `result-track:7640886b2b5038da45bffd2e1952534cd06c290932ea8f8822544ac1e97453da` |
| 5 | `lemma` | [subset_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/subset-disjointofdiff--738c32a4a981502359f67c84.md) | 97 | `result-track:738c32a4a981502359f67c84364ae12f5a4f796050206c55239f7e66a4eec465` |
| 6 | `lemma` | [pairwiseDisjoint_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/pairwisedisjoint-disjointofdiff--78cd427dc840216aa7a2f349.md) | 103 | `result-track:78cd427dc840216aa7a2f3497e61ca61cf437d842012a16f87c79e48cace58d7` |
| 7 | `lemma` | [sUnion_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/sunion-disjointofdiff--c1bc87dbf93461b931c51572.md) | 110 | `result-track:c1bc87dbf93461b931c51572201090dc475f9247c190e08c810b0985c134e94b` |
| 8 | `lemma` | [notMem_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/notmem-disjointofdiff--720dab091c1d4f73b7779c4f.md) | 117 | `result-track:720dab091c1d4f73b7779c4fc20a81e1e04be27cf89c1cf9398518d205146a18` |
| 9 | `lemma` | [sUnion_insert_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/sunion-insert-disjointofdiff--98020e375a58e09d546e7223.md) | 131 | `result-track:98020e375a58e09d546e72238544828c6dd4d3af136c1d0f9ee125a09ee9689c` |
| 10 | `lemma` | [disjoint_sUnion_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjoint-sunion-disjointofdiff--c61b31690d4935906afc2f60.md) | 137 | `result-track:c61b31690d4935906afc2f60574d4fd3156ee903c6d092037d2ae6eee4409808` |
| 11 | `lemma` | [pairwiseDisjoint_insert_disjointOfDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/pairwisedisjoint-insert-disjointofdiff--c1bfde2385fc32462294c0b8.md) | 142 | `result-track:c1bfde2385fc32462294c0b869d6720d80fe85cca0f8a514b7d3dc5d9e838b1c` |
| 12 | `lemma` | [exists_disjoint_finset_diff_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/exists-disjoint-finset-diff-eq--a741176e98eb74ccda801898.md) | 161 | `result-track:a741176e98eb74ccda8018986745729f095217df458f04a0c0c5d459778bbab7` |
| 13 | `def` | [disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjointofdiffunion--fa1280cf81b979837c136818.md) | 231 | `declaration-track:fa1280cf81b979837c136818e623609e41e4191ac6f336b00860871133289e2c` |
| 14 | `lemma` | [empty_notMem_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/empty-notmem-disjointofdiffunion--dfaf78dae7ea65b2ab99fedb.md) | 235 | `result-track:dfaf78dae7ea65b2ab99fedba662cca93317e785872b0aefffdc0787ab5d9945` |
| 15 | `lemma` | [disjointOfDiffUnion_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjointofdiffunion-subset--c2cda4de1fc3256dd43abfeb.md) | 245 | `result-track:c2cda4de1fc3256dd43abfeb652a8fc47cef29f53271432a13fa8013e2647322` |
| 16 | `lemma` | [pairwiseDisjoint_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/pairwisedisjoint-disjointofdiffunion--d35aa041efeba06466992c1a.md) | 251 | `result-track:d35aa041efeba06466992c1ae967dd1192c7b32d9b2b46037b04ecf7c8a72bf6` |
| 17 | `lemma` | [diff_sUnion_eq_sUnion_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/diff-sunion-eq-sunion-disjointofdiffunion--cfe0a089686c85d54472dd84.md) | 258 | `result-track:cfe0a089686c85d54472dd842153473764d7089064685c9a125231ee556e50af` |
| 18 | `lemma` | [sUnion_disjointOfDiffUnion_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/sunion-disjointofdiffunion-subset--93db95926a00190fb2c38a83.md) | 265 | `result-track:93db95926a00190fb2c38a835ff696e7f22548d84adafc1fded75485c1aac8b0` |
| 19 | `lemma` | [subset_of_diffUnion_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/subset-of-diffunion-disjointofdiffunion--8dce94bfcc9d221c35c1431e.md) | 270 | `result-track:8dce94bfcc9d221c35c1431e7a18601d4361601aca69759bcf0e57c5e1ab8308` |
| 20 | `lemma` | [subset_of_mem_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/subset-of-mem-disjointofdiffunion--02e7f736d8ec5bb4413163cc.md) | 276 | `result-track:02e7f736d8ec5bb4413163cca774007ddd755a8ab4c3f027489f4821ec8215e5` |
| 21 | `lemma` | [disjoint_sUnion_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjoint-sunion-disjointofdiffunion--683e7d4b5dbb5784d394d31f.md) | 283 | `result-track:683e7d4b5dbb5784d394d31f7d34ef2e383c65281424a96c859ed73ccbb2381b` |
| 22 | `lemma` | [disjoint_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjoint-disjointofdiffunion--066fbdeb672114a958735fd7.md) | 288 | `result-track:066fbdeb672114a958735fd7b92fbdd3f27af210b4d839caf53dc97016dda5cc` |
| 23 | `lemma` | [pairwiseDisjoint_union_disjointOfDiffUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/pairwisedisjoint-union-disjointofdiffunion--f4125a32e7d67b36bd9eb42b.md) | 300 | `result-track:f4125a32e7d67b36bd9eb42be815e71f1d1badb5da28e0a77a5bfc26b064328a` |
| 24 | `lemma` | [sUnion_union_sUnion_disjointOfDiffUnion_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/sunion-union-sunion-disjointofdiffunion-of-subset--6d020ed886c3f8e2c3f28828.md) | 309 | `result-track:6d020ed886c3f8e2c3f28828b6ddc1625f77bd375147d6fdb5321b0583df5ff2` |
| 25 | `lemma` | [sUnion_union_disjointOfDiffUnion_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/sunion-union-disjointofdiffunion-of-subset--8d51f8bcfb62ae2d72ad4d94.md) | 315 | `result-track:8d51f8bcfb62ae2d72ad4d946b63a830e3572291e16867b4b155fceaf9f8e549` |
| 26 | `theorem` | [disjointOfUnion_props](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjointofunion-props--b9d72c7035c19dd8b6968ea3.md) | 331 | `result-track:b9d72c7035c19dd8b6968ea3b3d3f600cd1f202464c9c425eec56f0a5c16a7fc` |
| 27 | `def` | [disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjointofunion--bfe48dee567bb2696607e37d.md) | 415 | `declaration-track:bfe48dee567bb2696607e37d4e3cfc9fd7492280c0fc11243b2fd0a289f21687` |
| 28 | `lemma` | [pairwiseDisjoint_disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/pairwisedisjoint-disjointofunion--a4f4cb8b6377998b51744f9d.md) | 418 | `result-track:a4f4cb8b6377998b51744f9d6a475f87b69aede2c1bd52a29370ade1479d938b` |
| 29 | `lemma` | [disjointOfUnion_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjointofunion-subset--5e97cb926139e74342af4ce0.md) | 422 | `result-track:5e97cb926139e74342af4ce00e3ac04fd422b92eca52a9cd366043290952c8ca` |
| 30 | `lemma` | [pairwiseDisjoint_biUnion_disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/pairwisedisjoint-biunion-disjointofunion--353b16e8743760ed5b3fb978.md) | 426 | `result-track:353b16e8743760ed5b3fb978f2c7b990f3467b3957a11b714e133e2f17005169` |
| 31 | `lemma` | [pairwiseDisjoint_disjointOfUnion_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/pairwisedisjoint-disjointofunion-of-mem--18545bc44aa1afd47b9ec149.md) | 430 | `result-track:18545bc44aa1afd47b9ec149836644a83820bf403d468d214e3845efb6f21cd6` |
| 32 | `lemma` | [disjointOfUnion_subset_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjointofunion-subset-of-mem--2722ee573fa566d40068cf6d.md) | 435 | `result-track:2722ee573fa566d40068cf6d0d51433c30969fd91a9034bc367eb5c6aadf71e5` |
| 33 | `lemma` | [subset_of_mem_disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/subset-of-mem-disjointofunion--7275cdf8267f90bfc98c0620.md) | 439 | `result-track:7275cdf8267f90bfc98c062096ab4246b5ea92f49b441e83a7c351dbebdc6ac8` |
| 34 | `lemma` | [empty_notMem_disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/empty-notmem-disjointofunion--5e3685ba3f41ff65a330d5d6.md) | 443 | `result-track:5e3685ba3f41ff65a330d5d644844aacda73f9b133acb9027fbb45aa4ceff1c5` |
| 35 | `lemma` | [sUnion_disjointOfUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/sunion-disjointofunion--e747472bfbb443159410b2e3.md) | 450 | `result-track:e747472bfbb443159410b2e3f7e91b49efb791584a0c12e7bcf4ac2f809922d4` |
| 36 | `structure` | [IsSetRing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/issetring--3ce40cd863fd4c1f76b5e2e5.md) | 460 | `declaration-track:3ce40cd863fd4c1f76b5e2e53be27479c58103031eb25ecd28e5eb8868ff7eba` |
| 37 | `lemma` | [inter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/inter-mem--433417a1a0986babae284a21.md) | 467 | `result-track:433417a1a0986babae284a2148ff0d5b1caf4ba2ed651364d85d8b652bcaecc2` |
| 38 | `lemma` | [isSetSemiring](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/issetsemiring--dc72f25d2d1037eeab7efc50.md) | 470 | `result-track:dc72f25d2d1037eeab7efc50031a8a293896280c3bdeac94a76406c1eb386121` |
| 39 | `lemma` | [biUnion_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/biunion-mem--371c712eb8e4af34dc91af70.md) | 480 | `result-track:371c712eb8e4af34dc91af708a312205d4612112f29d438d8f06d6e08117582f` |
| 40 | `lemma` | [biInter_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/biinter-mem--14ed6003901adb39d665de07.md) | 491 | `result-track:14ed6003901adb39d665de07f468d69af54c8576f140ab354e1e9af50eff09e9` |
| 41 | `lemma` | [finsetSup_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/finsetsup-mem--39e88c21454995d19a569cda.md) | 503 | `result-track:39e88c21454995d19a569cda349cea94c3e3c3471240ec0aa731118a677b5a2c` |
| 42 | `lemma` | [partialSups_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/partialsups-mem--8e81baa3c4925aca88a0f18a.md) | 513 | `result-track:8e81baa3c4925aca88a0f18a56adb175b927c6bf7a6164fdfa476a91aaac96d4` |
| 43 | `lemma` | [disjointed_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/disjointed-mem--2a40adbc669ff5b6f5216692.md) | 518 | `result-track:2a40adbc669ff5b6f521669283f3b7bde6eb169b4abb636b43c4081b18d0ec8d` |
| 44 | `theorem` | [iUnion_le_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/iunion-le-mem--1d41848cf5cba311344be9f7.md) | 523 | `result-track:1d41848cf5cba311344be9f7a55d776442fdb97a2d502072d5c1cc3285ea80f9` |
| 45 | `theorem` | [iInter_le_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/iinter-le-mem--feee79aa3574f9600355dabd.md) | 529 | `result-track:feee79aa3574f9600355dabd04f10091620adab1664a069b027930716ba824ed` |
| 46 | `theorem` | [accumulate_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SetSemiring/Varianta89651f006b36b1e7932feebeca0214751014ffa64717e13375e0bdeca444efb.lean/declarations/accumulate-mem--449366c87ce429f8c39759b2.md) | 535 | `result-track:449366c87ce429f8c39759b209dc6e857677a724380eb3d2dce2e9aabc0cfd5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
