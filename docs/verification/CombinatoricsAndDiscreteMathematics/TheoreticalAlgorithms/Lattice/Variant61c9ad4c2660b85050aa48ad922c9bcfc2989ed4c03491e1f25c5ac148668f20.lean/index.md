# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lattice.Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc45b6850fb6611254bfcbadbc64ef1dc05605c4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc45b6850fb6611254bfcbadbc64ef1dc05605c4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Count` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Infix` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.MinMax` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Disjoint.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/disjoint-symm--abcf7eec073ea6a089b15e34.md) | 52 | `result-track:abcf7eec073ea6a089b15e347184057bcf4ebf77440b9ef4931d038b1149069a` |
| 2 | `theorem` | [mem_union_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/mem-union-left--b29d7dae1010451de87b0eae.md) | 90 | `result-track:b29d7dae1010451de87b0eae6293b3eaf84fc480da4a0a6351ce6206c071f536` |
| 3 | `theorem` | [mem_union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/mem-union-right--fe2ad07b9b122a70b65eb783.md) | 94 | `result-track:fe2ad07b9b122a70b65eb7836842d1a3fd6a186354b1b011c30d268d5cc4ffc2` |
| 4 | `theorem` | [sublist_suffix_of_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/sublist-suffix-of-union--bce90b8227834065e4a9e688.md) | 98 | `result-track:bce90b8227834065e4a9e68813c8f4f579df87ad99dafd72071a2790be3fdebd` |
| 5 | `theorem` | [suffix_union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/suffix-union-right--32cbdc9cc6a9dc9b24a52e2d.md) | 110 | `result-track:32cbdc9cc6a9dc9b24a52e2de4d040bee3d24cd68b182dc7677a7bb67c384e1c` |
| 6 | `theorem` | [union_sublist_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/union-sublist-append--4d09e1aebc6b08a657691ee0.md) | 114 | `result-track:4d09e1aebc6b08a657691ee017f745176dbed3dfb3c35e1a8eea432cbcc2a026` |
| 7 | `theorem` | [forall_mem_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/forall-mem-union--d490677159c4b47d1f34bb3e.md) | 119 | `result-track:d490677159c4b47d1f34bb3e24bfcf84b5b3cc2a95f29aa46c3ecee9558de94c` |
| 8 | `theorem` | [forall_mem_of_forall_mem_union_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/forall-mem-of-forall-mem-union-left--61b352ee09048e2942651546.md) | 123 | `result-track:61b352ee09048e29426515464d83d7245466fd7587a5bef9095fd2e4665da243` |
| 9 | `theorem` | [forall_mem_of_forall_mem_union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/forall-mem-of-forall-mem-union-right--e2de78fe6d425f4d26a76457.md) | 127 | `result-track:e2de78fe6d425f4d26a76457c953fc1fade8079225e47703bef5b6d4f7e06f2d` |
| 10 | `theorem` | [inter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/inter-nil--26b41bb3ec3e0bf61ffd8e1b.md) | 139 | `result-track:26b41bb3ec3e0bf61ffd8e1b197b4b8d5d42a43f91502206cf93a1e8553014b5` |
| 11 | `theorem` | [inter_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/inter-cons-of-mem--41fd2c8cc921215d78d7f916.md) | 144 | `result-track:41fd2c8cc921215d78d7f916f2b420c42f9268530a44ad94536f0529685ce214` |
| 12 | `theorem` | [inter_cons_of_not_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/inter-cons-of-not-mem--4a1907379e5a73cdc74e8454.md) | 149 | `result-track:4a1907379e5a73cdc74e845452c11a1f99e3d76b6ff94654cea10d8396b6e9f4` |
| 13 | `theorem` | [mem_of_mem_inter_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/mem-of-mem-inter-left--c23432e217ee1f3a8b0142bb.md) | 153 | `result-track:c23432e217ee1f3a8b0142bbaccaa70e26065336b2ea1a8f3477deecb9fa2d36` |
| 14 | `theorem` | [mem_of_mem_inter_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/mem-of-mem-inter-right--633af5b6c07dcea0564f6b0e.md) | 157 | `result-track:633af5b6c07dcea0564f6b0e951980f024d02e9f86301e2a95627063a8baa223` |
| 15 | `theorem` | [mem_inter_of_mem_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/mem-inter-of-mem-of-mem--1c348cbc9af860ba6e889924.md) | 160 | `result-track:1c348cbc9af860ba6e88992473f1977801141007eea77b09c930f566bc4b4b22` |
| 16 | `theorem` | [inter_subset_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/inter-subset-left--9b3dcedef732b504ff7c0187.md) | 166 | `result-track:9b3dcedef732b504ff7c0187f765864ff3d7feed311d4e43e631793afbf21d3e` |
| 17 | `theorem` | [inter_subset_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/inter-subset-right--b8e8c5a5e938db5214ef503d.md) | 170 | `result-track:b8e8c5a5e938db5214ef503d7936a8c25a59acaf7886b6929dd322857aad2433` |
| 18 | `theorem` | [subset_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/subset-inter--ae67eec75fbaf7ee16d0e797.md) | 173 | `result-track:ae67eec75fbaf7ee16d0e79765faae9ece09919656bb793df7dac95c2aa07f30` |
| 19 | `theorem` | [inter_eq_nil_iff_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/inter-eq-nil-iff-disjoint--545fddb5052881428de7410b.md) | 177 | `result-track:545fddb5052881428de7410b66efad13bc51ea68a15549bd31af484147d81c44` |
| 20 | `theorem` | [forall_mem_inter_of_forall_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/forall-mem-inter-of-forall-left--cb241a8cb442d7b416629484.md) | 182 | `result-track:cb241a8cb442d7b416629484609be8bd072d9ff7f4bc533dbda8e3b249dd1ecf` |
| 21 | `theorem` | [forall_mem_inter_of_forall_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/forall-mem-inter-of-forall-right--c3b3f91f05b8caf1d8ae2ae2.md) | 187 | `result-track:c3b3f91f05b8caf1d8ae2ae20d3fa2ec24a9c2982c3726ba8b1828b5929d14f4` |
| 22 | `theorem` | [inter_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/inter-reverse--bb63d48a0c9747240c8c215a.md) | 193 | `result-track:bb63d48a0c9747240c8c215ac2c4a7eb21ca094053895d1ad087ebab4cbb2454` |
| 23 | `theorem` | [nil_bagInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/nil-baginter--dfc917fea3e1559bc77e7464.md) | 205 | `result-track:dfc917fea3e1559bc77e746479fea46c7342e0149c152509e193a0f8b45fc03b` |
| 24 | `theorem` | [bagInter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/baginter-nil--2f1c5a695a718c63d4de1d64.md) | 209 | `result-track:2f1c5a695a718c63d4de1d64d7c261352ffc6211a1a8d86a660aead440f7d0a9` |
| 25 | `theorem` | [cons_bagInter_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/cons-baginter-of-pos--1b5bcbe9cd0e88be0ee90c20.md) | 213 | `result-track:1b5bcbe9cd0e88be0ee90c2019dc4337ed1df6a5852bdd172493678c75295e75` |
| 26 | `theorem` | [cons_bagInter_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/cons-baginter-of-neg--ee123e31d1fea33358526127.md) | 221 | `result-track:ee123e31d1fea33358526127b59ec8f87f4ea8554f674cf33f80b104e47e4d40` |
| 27 | `theorem` | [mem_bagInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/mem-baginter--be7c5a5ffc828d7c31b943a2.md) | 228 | `result-track:be7c5a5ffc828d7c31b943a28e48464e592363c68502ec0d416196b01765f633` |
| 28 | `theorem` | [count_bagInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/count-baginter--8ffd6ce59feed26ba400b6a4.md) | 244 | `result-track:8ffd6ce59feed26ba400b6a4503b24fe36bbd6219f35de62512d51fd44c4f317` |
| 29 | `theorem` | [bagInter_sublist_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/baginter-sublist-left--8862fb30fbbb7d36392cf924.md) | 263 | `result-track:8862fb30fbbb7d36392cf924b9ff758dd16954de7db159fde2cb9efbac71b497` |
| 30 | `theorem` | [bagInter_nil_iff_inter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant61c9ad4c2660b85050aa48ad922c9bcfc2989ed4c03491e1f25c5ac148668f20.lean/declarations/baginter-nil-iff-inter-nil--f27fcbd843e0ce2f8c5a71a9.md) | 272 | `result-track:f27fcbd843e0ce2f8c5a71a9d25e9095f969c398be4c3040c4e54027f406ad8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
