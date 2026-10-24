# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1239bb6bc39af81fd64c3b39d774447989c8441d",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1239bb6bc39af81fd64c3b39d774447989c8441d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/length-range--b2beb0ae97d9bd19c9c912a8.md) | 37 | `result-track:b2beb0ae97d9bd19c9c912a805eaa83e78b61f0311b3d3d54c4bee44879f43cf` |
| 2 | `theorem` | [range'_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-eq-nil-iff--938e78bbe112860e5f749743.md) | 41 | `result-track:938e78bbe112860e5f7497434a5d78dfd7bc5f8c1f26543bc07308e879df96da` |
| 3 | `theorem` | [range'_ne_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-ne-nil-iff--293f760c66eed9a1a3b0f5e8.md) | 44 | `result-track:293f760c66eed9a1a3b0f5e844b2b6bb0b8319406b1b535a867840ea86c1e293` |
| 4 | `theorem` | [range'_eq_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-eq-cons-iff--2ad09f01ba49b76a1c211006.md) | 47 | `result-track:2ad09f01ba49b76a1c211006a611e1f405f907cc74e72be5811dd70d185d2da8` |
| 5 | `theorem` | [tail_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/tail-range--59731e15206d27ef9bcf1771.md) | 56 | `result-track:59731e15206d27ef9bcf17718d731a5f65ab785c9627127e78dbd12561c355ab` |
| 6 | `theorem` | [range'_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-inj--d09ebfea45d63f3198aeadaa.md) | 61 | `result-track:d09ebfea45d63f3198aeadaa97ba74aca05a8eb0417909bc8b833b0ebc3b3ee8` |
| 7 | `theorem` | [mem_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/mem-range--2e747c8046fffa194a92c2c3.md) | 74 | `result-track:2e747c8046fffa194a92c2c37a4038e3bc71c4cfdbe107da7342bf4bb8b97ad3` |
| 8 | `theorem` | [getElem?_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/getelem-range--4d7bd756ab65d62fba24f1d1.md) | 82 | `result-track:4d7bd756ab65d62fba24f1d1aac86593ee15573f1885e1750caa25c062b79517` |
| 9 | `theorem` | [getElem_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/getelem-range--533c2e7c033fd0e3a2336034.md) | 90 | `result-track:533c2e7c033fd0e3a233603405d880c64faa0ceb6ebef6641fb97a30cc4e20c7` |
| 10 | `theorem` | [head?_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/head-range--8921249058872e4bb15fe24a.md) | 94 | `result-track:8921249058872e4bb15fe24a9f44dc38238e09e6f4c521db09efb59584562021` |
| 11 | `theorem` | [head_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/head-range--8b4d0096240bfd67e34f945d.md) | 97 | `result-track:8b4d0096240bfd67e34f945da4ff58a12e9977521e93757230633410bd1616b9` |
| 12 | `theorem` | [map_add_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/map-add-range--bd8debafb1cd27b35b233799.md) | 100 | `result-track:bd8debafb1cd27b35b233799d3dc33574b11748f3ae4461fede16c30aae1d9a4` |
| 13 | `theorem` | [range'_succ_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-succ-left--b6d54546e1d87779768b002e.md) | 104 | `result-track:b6d54546e1d87779768b002ec7477dc68feb308b8782d28b211eac9108c2151f` |
| 14 | `theorem` | [range'_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-append--5b7852fdd38490a6dcd34874.md) | 109 | `result-track:5b7852fdd38490a6dcd3487438cc482e9c7c58ba59d27509481412b5b8065ca9` |
| 15 | `theorem` | [range'_append_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-append-1--3a1fe1a3fa6a5f150f5f7cc5.md) | 116 | `result-track:3a1fe1a3fa6a5f150f5f7cc5ba33ef51859fd2e029dc0d7ea063921c2de95540` |
| 16 | `theorem` | [range'_sublist_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-sublist-right--906d42fca23cbb4db783d370.md) | 119 | `result-track:906d42fca23cbb4db783d3708f67e4d4d9e222af1fd2ed6a963ce05bbbf76c80` |
| 17 | `theorem` | [range'_subset_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-subset-right--1a7c8aba84bed23d68e3b400.md) | 123 | `result-track:1a7c8aba84bed23d68e3b4003e33a83e756dfe20f9634ee7309cde71c9e1e4b2` |
| 18 | `theorem` | [range'_subset_right_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-subset-right-1--a212c5cbb9f19c2a83616495.md) | 129 | `result-track:a212c5cbb9f19c2a83616495e9c1db1646b18eb722359ab41019f257256355d6` |
| 19 | `theorem` | [range'_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-concat--6890754fec7956288f8a9a0b.md) | 132 | `result-track:6890754fec7956288f8a9a0b2827ec04d8e6ff904b2bc37a5af23cc2e4abda18` |
| 20 | `theorem` | [range'_1_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-1-concat--638fd791e8a9f4279b9d60f3.md) | 135 | `result-track:638fd791e8a9f4279b9d60f370d952aa11fbff5b5044a486275aea57c39ae214` |
| 21 | `theorem` | [range_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-one--48f6ced2df1be46b51256e37.md) | 140 | `result-track:48f6ced2df1be46b51256e374107f3c1b184d2a8e5392563fc508796127be7ea` |
| 22 | `theorem` | [range_loop_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-loop-range--b3e3085de6e14dd5c84cdd9c.md) | 142 | `result-track:b3e3085de6e14dd5c84cdd9c23f0142fc26298b85f1d6dcce884aef8d56cc718` |
| 23 | `theorem` | [range_eq_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-eq-range--9c7fa204235dfcac61fcd04c.md) | 146 | `result-track:9c7fa204235dfcac61fcd04c8c923506eb9ba03b8ba72f460ac617ab33809960` |
| 24 | `theorem` | [getElem?_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/getelem-range--d72f1ef39add48a9fab85143.md) | 149 | `result-track:d72f1ef39add48a9fab85143295dbb5e5a1631a4a72341abc82f44bb72f7a7ba` |
| 25 | `theorem` | [getElem_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/getelem-range--7b136f55cb01df59937737e0.md) | 152 | `result-track:7b136f55cb01df59937737e04323aeaf9f6a2cc0ea3a5c68a59fd2d8cb83ac6a` |
| 26 | `theorem` | [range_succ_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-succ-eq-map--85aefa0982602e5d2cb1028c.md) | 155 | `result-track:85aefa0982602e5d2cb1028c3d437b9a803641da9d1229ca385dd2aaeca5f6fc` |
| 27 | `theorem` | [range'_eq_map_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-eq-map-range--22899f69e38981aff3bd466c.md) | 159 | `result-track:22899f69e38981aff3bd466cc28a934e4a3405b04f3506618775a94748e189d2` |
| 28 | `theorem` | [length_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/length-range--6d4fedf3647e1a80698140f9.md) | 162 | `result-track:6d4fedf3647e1a80698140f94da6bcae0df339d3995b713e764ff4a53d7928d0` |
| 29 | `theorem` | [range_eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-eq-nil--5819a5796fc1a5884a0f9b0c.md) | 165 | `result-track:5819a5796fc1a5884a0f9b0c3af6a1e3912c0519c88f33ad741ff4a049df1e62` |
| 30 | `theorem` | [range_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-ne-nil--46fe16950405692d8f95428a.md) | 168 | `result-track:46fe16950405692d8f95428a8d4506b262a2852bd6563085b55f2a25a6dd8dd0` |
| 31 | `theorem` | [tail_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/tail-range--70a53e916880eb603c8adba5.md) | 171 | `result-track:70a53e916880eb603c8adba5437ef49ca72768b9fcf3bfccba531f1dd59a6857` |
| 32 | `theorem` | [range_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-sublist--9f6e796a567eb91f80154cbc.md) | 175 | `result-track:9f6e796a567eb91f80154cbcc460b4cf90f08814831379de7aa309bee37e06d5` |
| 33 | `theorem` | [range_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-subset--b788fee8af96d018c01529a7.md) | 179 | `result-track:b788fee8af96d018c01529a753376e1e0e243296685d9716cd5da1567b85c136` |
| 34 | `theorem` | [range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-succ--31b1293afad12fe61e6ad84c.md) | 182 | `result-track:31b1293afad12fe61e6ad84ce2586d4b946d064ea3a20d01335750ebb49c1e7a` |
| 35 | `theorem` | [range_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/range-add--736b1c661bff169a2d24dc9d.md) | 185 | `result-track:736b1c661bff169a2d24dc9d21aef84e22378b977fb6e43dd4f5f9478a69a5de` |
| 36 | `theorem` | [head?_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/head-range--3972c975a428718399f9ce69.md) | 189 | `result-track:3972c975a428718399f9ce69ff6b32046135b4e27682b818a2505e67637fb955` |
| 37 | `theorem` | [head_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/head-range--ac7bd4cadbde94120d02c1d1.md) | 196 | `result-track:ac7bd4cadbde94120d02c1d13cfb357570bf85754c1b0b1fbfd6efb5a7244bec` |
| 38 | `theorem` | [getLast?_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/getlast-range--a785bdf0973aea7b8fcb991f.md) | 201 | `result-track:a785bdf0973aea7b8fcb991f50e0c9e70470d4538c60ba658bec357673f4cc26` |
| 39 | `theorem` | [getLast_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/getlast-range--4a6d10756f5d4e7d1ecfe1ec.md) | 208 | `result-track:4a6d10756f5d4e7d1ecfe1ece9d5e567e19f9902ef2b7d949a57b2afc13b9574` |
| 40 | `theorem` | [zipIdx_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/zipidx-eq-nil-iff--4f0f767cead67982fcab7d14.md) | 216 | `result-track:4f0f767cead67982fcab7d1449e9400b4b5999131c81a62afd71253713175c9d` |
| 41 | `theorem` | [length_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/length-zipidx--dbfd461da90e2c1040755955.md) | 219 | `result-track:dbfd461da90e2c1040755955c4e2936ba8b90259c0afca7214cbaaf97f2b824a` |
| 42 | `theorem` | [getElem?_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/getelem-zipidx--6da9b073d297b0df63ee12d6.md) | 224 | `result-track:6da9b073d297b0df63ee12d6da4602a14a6b63b0688e69a86a87af7d77d5e45e` |
| 43 | `theorem` | [getElem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/getelem-zipidx--f5a2ce75a2e17ace7080135b.md) | 233 | `result-track:f5a2ce75a2e17ace7080135bc00315c2a334c679c863fb2aaf8b9c1e0b0b0bdd` |
| 44 | `theorem` | [tail_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/tail-zipidx--792bbc5e7eaa57af66e49f17.md) | 241 | `result-track:792bbc5e7eaa57af66e49f17373f190b3c32c130132c66e8c8869426ee0ef287` |
| 45 | `theorem` | [map_snd_add_zipIdx_eq_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/map-snd-add-zipidx-eq-zipidx--4e4703ad4b1f8541f16f2102.md) | 246 | `result-track:4e4703ad4b1f8541f16f21026bb8841a656482e50c10b7913f7e75089b6bcef8` |
| 46 | `theorem` | [zipIdx_cons'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/zipidx-cons--90e7580c61f94fce241bce11.md) | 250 | `result-track:90e7580c61f94fce241bce112ffead31b3c720e23b4e64d6c7b61325f164694d` |
| 47 | `theorem` | [zipIdx_map_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/zipidx-map-snd--02596306c8394661909d450b.md) | 256 | `result-track:02596306c8394661909d450bb5444a09eea968d3fe64ab2aa1e007d80251ba2b` |
| 48 | `theorem` | [zipIdx_map_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/zipidx-map-fst--2cd3df4ac889c8555fd05882.md) | 263 | `result-track:2cd3df4ac889c8555fd058822a96bbe276e88c97990489440d1362c98f25cdf7` |
| 49 | `theorem` | [zipIdx_eq_zip_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/zipidx-eq-zip-range--0cff6ecce12c14e0aae566d7.md) | 267 | `result-track:0cff6ecce12c14e0aae566d71ac8cd0ea97f5ac3cb49b729ad3b84f9c67e9db6` |
| 50 | `theorem` | [unzip_zipIdx_eq_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/unzip-zipidx-eq-prod--d74c4e090be2eb12dadd11e6.md) | 271 | `result-track:d74c4e090be2eb12dadd11e630285f3a2d70ee577248b207c7979fd6d58fc670` |
| 51 | `theorem` | [zipIdx_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/zipidx-succ--38b866d88b07cbef5ec42291.md) | 277 | `result-track:38b866d88b07cbef5ec42291832cc4769acde674521a16b4506e3dd7897d3d59` |
| 52 | `theorem` | [zipIdx_eq_map_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant74561923c148bb19e8cbcfbbd30f81dcb1302bb395925e7d06d107eb90e6a29a.lean/declarations/zipidx-eq-map-add--0b35895ccc7fae7058083d96.md) | 285 | `result-track:0b35895ccc7fae7058083d96224b6a73e2028fafc16623893f49692aeb803bc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
