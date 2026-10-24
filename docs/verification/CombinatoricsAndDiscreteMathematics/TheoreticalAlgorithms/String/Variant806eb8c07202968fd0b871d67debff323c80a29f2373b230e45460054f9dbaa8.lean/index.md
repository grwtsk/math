# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f24da016c213a2fcc289e84bf8af1ec989220bf4",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f24da016c213a2fcc289e84bf8af1ec989220bf4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.TakeDrop.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.String` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [skipPrefix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipprefix-slice-of-isempty--ca60ef276aa6e33778ea418c.md) | 34 | `result-track:ca60ef276aa6e33778ea418c26ace393d38d7b065d82bbec29015834f3a6e6ad` |
| 2 | `theorem` | [skipPrefix?_slice_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipprefix-slice-eq-some-iff--cf0a494224e223f602adc4ee.md) | 39 | `result-track:cf0a494224e223f602adc4ee06a476129b2f6df5d025f2cd5bf013aec5a05956` |
| 3 | `theorem` | [startsWith_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-slice-of-isempty--0811e9de4cab637e42789fda.md) | 43 | `result-track:0811e9de4cab637e42789fdac43283e945a4f85824f32db7715d32b4c470b685` |
| 4 | `theorem` | [startsWith_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-slice-iff--621c0de32af0f2d4882b970d.md) | 48 | `result-track:621c0de32af0f2d4882b970de3fa727a26239a7270de55df9ec0e58b60364540` |
| 5 | `theorem` | [startsWith_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-slice-eq-false-iff--01729b88e2ab01aa7322fc9b.md) | 56 | `result-track:01729b88e2ab01aa7322fc9b59a97b52329bff5ee1370270469fc3fb0174d976` |
| 6 | `theorem` | [dropPrefix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/dropprefix-slice-of-isempty--f14e2522496b709460e6ecea.md) | 60 | `result-track:f14e2522496b709460e6ecea24edb27f350c83ca4d1c7940a188a96965b4df2d` |
| 7 | `theorem` | [eq_append_of_dropPrefix?_slice_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/eq-append-of-dropprefix-slice-eq-some--6382f006b06f5eb79a3a7d53.md) | 64 | `result-track:6382f006b06f5eb79a3a7d530476707fc048ee47342bbdb0d7990b3fc53fafab` |
| 8 | `theorem` | [all_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/all-slice-iff--f1d47063dc2ca564a30b244d.md) | 72 | `result-track:f1d47063dc2ca564a30b244de738f2db2c4938081331f4861a2e9d9708fa8300` |
| 9 | `theorem` | [revAll_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/revall-slice-iff--24c98dfc96d2c4fe1c254cac.md) | 76 | `result-track:24c98dfc96d2c4fe1c254cace0cab8fe01784fde4eebb2c73206ddde078255bc` |
| 10 | `theorem` | [skipPrefix?_string_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipprefix-string-eq-some-iff--b88bf5d7891a8b49e8a00902.md) | 80 | `result-track:b88bf5d7891a8b49e8a009024b888330b2ee713d5f55d47732029f73e7068ced` |
| 11 | `theorem` | [skipPrefix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipprefix-string-empty--f1fbac48e8bd8c8e77455310.md) | 85 | `result-track:f1fbac48e8bd8c8e774553103f333cf0b63efc9282c8a6c9424f94fd65dba79a` |
| 12 | `theorem` | [startsWith_string_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-string-iff--21320173230650e6fe5dc01d.md) | 89 | `result-track:21320173230650e6fe5dc01dbfad1cbae3ebdc370c7f8951b906c0db0f06e2aa` |
| 13 | `theorem` | [startsWith_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-string-empty--d997f4df22c9dbc94b1887f3.md) | 94 | `result-track:d997f4df22c9dbc94b1887f337c75596412a9d37b6a1a46409faa45daad1839f` |
| 14 | `theorem` | [startsWith_string_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-string-eq-false-iff--ccac6f5df26ac9b964207356.md) | 98 | `result-track:ccac6f5df26ac9b964207356b9951a4a54b1b3016ecd2c09a5829f39df2eff18` |
| 15 | `theorem` | [dropPrefix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/dropprefix-string-empty--11dda8c180ceb00da16a8306.md) | 103 | `result-track:11dda8c180ceb00da16a830634bd6f948887d0df8a31a1d5de88499f3dd9c3b7` |
| 16 | `theorem` | [eq_append_of_dropPrefix?_string_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/eq-append-of-dropprefix-string-eq-some--441eeb20e2580cf24165ab03.md) | 106 | `result-track:441eeb20e2580cf24165ab034bec5b39ef496e711a44065c135d3e195f3da1dc` |
| 17 | `theorem` | [skipSuffix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipsuffix-slice-of-isempty--c60f7e0a1c6a420a6c167d9b.md) | 112 | `result-track:c60f7e0a1c6a420a6c167d9bec7f7f46f3b76b9188b8b0093f25ee3244ba6236` |
| 18 | `theorem` | [skipSuffix?_slice_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipsuffix-slice-eq-some-iff--b6055dab0245b9ca0533a722.md) | 117 | `result-track:b6055dab0245b9ca0533a722e30f82bfda5b5105ec0c891c2d2d07c44ebe65e9` |
| 19 | `theorem` | [endsWith_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/endswith-slice-of-isempty--a4b2f555b7a38941db6e8d52.md) | 121 | `result-track:a4b2f555b7a38941db6e8d5241a75b494c72061142010cfccaa52c1243e4fa26` |
| 20 | `theorem` | [endsWith_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/endswith-slice-iff--1c03d3175d652c6f714c9d4d.md) | 126 | `result-track:1c03d3175d652c6f714c9d4dd0b7b3ca9c13805bb5b0895b069ccaa8017dc332` |
| 21 | `theorem` | [endsWith_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/endswith-slice-eq-false-iff--29f9698a353e523d3f2d160c.md) | 134 | `result-track:29f9698a353e523d3f2d160c3756cf82722106a9c541acdb6c5187e5b02d167e` |
| 22 | `theorem` | [dropSuffix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/dropsuffix-slice-of-isempty--73e523c3c4262597d1c1e1c7.md) | 138 | `result-track:73e523c3c4262597d1c1e1c72091cc907b43c8aff721d7d11f1e87c33a68dfeb` |
| 23 | `theorem` | [eq_append_of_dropSuffix?_slice_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/eq-append-of-dropsuffix-slice-eq-some--f0b57c7d676f6fcb8eb82f75.md) | 142 | `result-track:f0b57c7d676f6fcb8eb82f759f4f54a5019fcd773514b150337a1f59ed5a7f86` |
| 24 | `theorem` | [skipSuffix?_string_eq_some_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipsuffix-string-eq-some-iff--68e3209cd5fe389c1d5068e4.md) | 150 | `result-track:68e3209cd5fe389c1d5068e42c1ee03bfab3f5ac078a1e9f95c837614eba0248` |
| 25 | `theorem` | [skipSuffix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipsuffix-string-empty--cee9b148fa9b31a638078827.md) | 155 | `result-track:cee9b148fa9b31a638078827da79a8d6bfe8006c45794ed00cb371f7644d8142` |
| 26 | `theorem` | [endsWith_string_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/endswith-string-iff--ae72b921f86ca0caf0f4220b.md) | 159 | `result-track:ae72b921f86ca0caf0f4220bbfa296e3230790283ba90e5bc4f448b8c647d011` |
| 27 | `theorem` | [endsWith_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/endswith-string-empty--359d8af1342d622cdcb5b65c.md) | 164 | `result-track:359d8af1342d622cdcb5b65c758ea634811138a71c4671978f9362d409a5d4ab` |
| 28 | `theorem` | [endsWith_string_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/endswith-string-eq-false-iff--0471d00ad44584cbe6552e87.md) | 168 | `result-track:0471d00ad44584cbe6552e874b27c6767c194ef585e15cc9c80f73336c2643a6` |
| 29 | `theorem` | [dropSuffix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/dropsuffix-string-empty--65cc4e501504be79772c5387.md) | 173 | `result-track:65cc4e501504be79772c538713047cd1ed77bce907dfcec78e7cecda7b504ff8` |
| 30 | `theorem` | [eq_append_of_dropSuffix?_string_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/eq-append-of-dropsuffix-string-eq-some--09faf13f3ad79a6dc5518310.md) | 176 | `result-track:09faf13f3ad79a6dc5518310749f6b49fde0b966ab6e26da7df7ad765faff938` |
| 31 | `theorem` | [skipPrefix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipprefix-slice-of-isempty--78f11deeaabd16c1c5f1c109.md) | 183 | `result-track:78f11deeaabd16c1c5f1c109e150d954c9da1a734571874b6a3855584e12391b` |
| 32 | `theorem` | [skipPrefix?_slice_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipprefix-slice-eq-some-iff--c98fa6e375c5edb3f2b73859.md) | 189 | `result-track:c98fa6e375c5edb3f2b7385989e25475e3b2b972c4c65555d25826dc14a0b2a2` |
| 33 | `theorem` | [startsWith_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-slice-of-isempty--f6ff614d2ac827b4eb0f710f.md) | 197 | `result-track:f6ff614d2ac827b4eb0f710f623585e773d4c5189c2ad6e3a46d9d44ac9f399b` |
| 34 | `theorem` | [startsWith_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-slice-iff--cd042aa3953cfd274546a27f.md) | 202 | `result-track:cd042aa3953cfd274546a27f415a1ec76ff778df30f65b58f870b0df3cdd1701` |
| 35 | `theorem` | [startsWith_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-slice-eq-false-iff--7637bf62e16722083f247267.md) | 207 | `result-track:7637bf62e16722083f2472677b25334d3fc502da088f483401b4f2f3bcd99937` |
| 36 | `theorem` | [dropPrefix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/dropprefix-slice-of-isempty--d5aa5684e56afe248c517a53.md) | 211 | `result-track:d5aa5684e56afe248c517a53da672dcd6d8546913cb2a028eeab3cdcc29277cd` |
| 37 | `theorem` | [eq_append_of_dropPrefix?_slice_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/eq-append-of-dropprefix-slice-eq-some--e054afcad278a46d97198d38.md) | 215 | `result-track:e054afcad278a46d97198d38eb5403b029cb0f845a098f6b8ee2b2a2b6dc6cdd` |
| 38 | `theorem` | [skipPrefix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipprefix-string-empty--66c0b5c01419f8c829389b75.md) | 221 | `result-track:66c0b5c01419f8c829389b75f0c0283fa2c8d2a68974865c1c26443e233b2e7e` |
| 39 | `theorem` | [skipPrefix?_string_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/skipprefix-string-eq-some-iff--fff10dbbc68a5bde1150eaa1.md) | 225 | `result-track:fff10dbbc68a5bde1150eaa1e1854f16af2576026d42815a4638de1d5baf1c0f` |
| 40 | `theorem` | [startsWith_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-string-empty--33573d94dc3609aab0f28e8c.md) | 234 | `result-track:33573d94dc3609aab0f28e8c60e583379bd4e0e82cfaf9bda77ad009c7ace70e` |
| 41 | `theorem` | [startsWith_string_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-string-iff--40370d1c815e3d82577be960.md) | 238 | `result-track:40370d1c815e3d82577be960615dc6a773f1250d1ccd58feacfaa688dfe33d5b` |
| 42 | `theorem` | [startsWith_string_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/startswith-string-eq-false-iff--a7d907e841d559b07cf97467.md) | 243 | `result-track:a7d907e841d559b07cf97467a7f7b8ebdab3a9c953461b96ca0ad9be014c0bae` |
| 43 | `theorem` | [dropPrefix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/dropprefix-string-empty--d3788f0252b669972b669033.md) | 248 | `result-track:d3788f0252b669972b669033135e57ab781bc27bc5b7ccc31f95a9769f7b126a` |
| 44 | `theorem` | [eq_append_of_dropPrefix?_string_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant806eb8c07202968fd0b871d67debff323c80a29f2373b230e45460054f9dbaa8.lean/declarations/eq-append-of-dropprefix-string-eq-some--0eeee55bcf06741eefba3598.md) | 251 | `result-track:0eeee55bcf06741eefba359824abb9176f224e74ff05e7ecaab277e4f8c397d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
