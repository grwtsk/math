# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lattice.Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5902bcaca37ad61aaa4910b78487b54b79e340e9",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5902bcaca37ad61aaa4910b78487b54b79e340e9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Count` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Infix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.MinMax` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Disjoint.symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/disjoint-symm--ef82b4860df0da036f80498c.md) | 44 | `result-track:ef82b4860df0da036f80498c1480c48e6d20e1360ad2a0239c0005b4beeb3b0a` |
| 2 | `theorem` | [mem_union_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/mem-union-left--908b75b9917841e8aafe7b74.md) | 82 | `result-track:908b75b9917841e8aafe7b74cb6d1bf76bb17e8f9491e264f4eb745fd208f575` |
| 3 | `theorem` | [mem_union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/mem-union-right--d560d5e0108207bebac0c533.md) | 86 | `result-track:d560d5e0108207bebac0c533e77c949f868765cbd5a6b888e939d11db8efa33b` |
| 4 | `theorem` | [sublist_suffix_of_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/sublist-suffix-of-union--db7fcd7b70646f6c1916074c.md) | 90 | `result-track:db7fcd7b70646f6c1916074c159c2aa191269484d3762186e4edd9d75c7d30bf` |
| 5 | `theorem` | [suffix_union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/suffix-union-right--eead86274e731c5efcd4ad2e.md) | 102 | `result-track:eead86274e731c5efcd4ad2e8455ce34a6fbb35dea3115b7cc72d1652f3d23a3` |
| 6 | `theorem` | [union_sublist_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/union-sublist-append--bf8ca89bb09d5f5dfbae8286.md) | 106 | `result-track:bf8ca89bb09d5f5dfbae82867f1fd1a1ae96915cfbc55420f34aba2ec00330c1` |
| 7 | `theorem` | [forall_mem_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/forall-mem-union--0747894d5bff4cd7537ee000.md) | 111 | `result-track:0747894d5bff4cd7537ee000bac12b0d92fb18ef785f466f7f8906fc8db9221f` |
| 8 | `theorem` | [forall_mem_of_forall_mem_union_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/forall-mem-of-forall-mem-union-left--efec0be959feb6378612961b.md) | 115 | `result-track:efec0be959feb6378612961b94ed97bfb8c689f23057455d90f7d16213b1114d` |
| 9 | `theorem` | [forall_mem_of_forall_mem_union_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/forall-mem-of-forall-mem-union-right--75f4e81d4683c1967fcd908c.md) | 119 | `result-track:75f4e81d4683c1967fcd908c413898fbceb5b5721cdc8f6e40d10e5ebb13ef77` |
| 10 | `theorem` | [inter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/inter-nil--4a076032a7194be4af79221e.md) | 131 | `result-track:4a076032a7194be4af79221e25002a2b32233b37faa7e8af324a9ca664533784` |
| 11 | `theorem` | [inter_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/inter-cons-of-mem--83fd445ce85d3509c82d3700.md) | 136 | `result-track:83fd445ce85d3509c82d37003c69a789dfd770c234c4fe9ae1501a0919544a6a` |
| 12 | `theorem` | [inter_cons_of_not_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/inter-cons-of-not-mem--22a81f753d608d32920ac8cd.md) | 141 | `result-track:22a81f753d608d32920ac8cd13e38d0dc49200497661f9eacc1cbb86717075d1` |
| 13 | `theorem` | [mem_of_mem_inter_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/mem-of-mem-inter-left--b6619d64a64be1b4ca32f592.md) | 145 | `result-track:b6619d64a64be1b4ca32f592d61b5aac7e1c7fc2d6a2c54911583bb24d209e3c` |
| 14 | `theorem` | [mem_of_mem_inter_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/mem-of-mem-inter-right--dbd3119456f3d5cc9235d0cd.md) | 149 | `result-track:dbd3119456f3d5cc9235d0cd4d5b9a64053541a373987a99a12b41b3ea5c05c2` |
| 15 | `theorem` | [mem_inter_of_mem_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/mem-inter-of-mem-of-mem--bc5439db7772ccac2ce41f4a.md) | 152 | `result-track:bc5439db7772ccac2ce41f4a2dc0a615ccb4ac6436fbb83e57fc33e7d23541bc` |
| 16 | `theorem` | [inter_subset_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/inter-subset-left--5ff36d96cd784297876035a9.md) | 158 | `result-track:5ff36d96cd784297876035a9aab84667c7a9d6bf5e128ee0b8b8f6cb5c831351` |
| 17 | `theorem` | [inter_subset_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/inter-subset-right--511f4bf0291a6f7195e4d560.md) | 162 | `result-track:511f4bf0291a6f7195e4d560749a3ea4edd6a17ad96bb3ca692ee4a3d807337a` |
| 18 | `theorem` | [subset_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/subset-inter--f69b58225e966d4cd433a45d.md) | 165 | `result-track:f69b58225e966d4cd433a45dd4ec9de998e709b9983eacc68231e12ae30da3bc` |
| 19 | `theorem` | [inter_eq_nil_iff_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/inter-eq-nil-iff-disjoint--d3cfdc6e43cb9b3351e9ad6c.md) | 169 | `result-track:d3cfdc6e43cb9b3351e9ad6c60ce05f06f94b1ddffc6edd012d1d816aed8cc54` |
| 20 | `theorem` | [forall_mem_inter_of_forall_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/forall-mem-inter-of-forall-left--cc2e9e5bf11df6567201376f.md) | 174 | `result-track:cc2e9e5bf11df6567201376fb99341f682dc068a417af4c11a81499e99344d33` |
| 21 | `theorem` | [forall_mem_inter_of_forall_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/forall-mem-inter-of-forall-right--9f2a9510cf9cda346f7a9710.md) | 179 | `result-track:9f2a9510cf9cda346f7a9710a9a439db04d820950ba7b491c3407f684021f8dc` |
| 22 | `theorem` | [inter_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/inter-reverse--2fe8e5a0f30f2dc8a659b255.md) | 185 | `result-track:2fe8e5a0f30f2dc8a659b255ca89d7ef57d4ca986d9ed50643a130e05b792dbd` |
| 23 | `theorem` | [nil_bagInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/nil-baginter--3a6a54cc0a00226af6d43ed5.md) | 197 | `result-track:3a6a54cc0a00226af6d43ed5577ed098ba498eaff911b70253a679fb12c0104e` |
| 24 | `theorem` | [bagInter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/baginter-nil--cd1b35f53d939c42e64e9540.md) | 201 | `result-track:cd1b35f53d939c42e64e95404c6c71571f6a5c43d12cf237ed6ab2a68b61b783` |
| 25 | `theorem` | [cons_bagInter_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/cons-baginter-of-pos--6039419a333d0f7e93cc5c31.md) | 205 | `result-track:6039419a333d0f7e93cc5c31a89940aa27190834d375eaa47b43414d78977776` |
| 26 | `theorem` | [cons_bagInter_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/cons-baginter-of-neg--56234c444f43900f3551e949.md) | 213 | `result-track:56234c444f43900f3551e949adfe610dc632da9ec2b34c55b7b52625f8135530` |
| 27 | `theorem` | [mem_bagInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/mem-baginter--5f8e70f0b99cf4bbdf30135d.md) | 220 | `result-track:5f8e70f0b99cf4bbdf30135d51833cfcfd74655e3d5e6b67aee2fccd7f347e25` |
| 28 | `theorem` | [count_bagInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/count-baginter--8cabe717c973e984fbbec563.md) | 236 | `result-track:8cabe717c973e984fbbec563f6f25e136b38ebc51f2903d21f76e46c8a76f9ee` |
| 29 | `theorem` | [bagInter_sublist_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/baginter-sublist-left--ca08a68df90c855f6ab67279.md) | 255 | `result-track:ca08a68df90c855f6ab67279df44c85a3abe9e3d8e5e66cf8500f428de3bc984` |
| 30 | `theorem` | [bagInter_nil_iff_inter_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean/declarations/baginter-nil-iff-inter-nil--a88a9065f833ea678306ed94.md) | 264 | `result-track:a88a9065f833ea678306ed94279246db7f544fcae4911a8e2397e687c7c2f59a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
