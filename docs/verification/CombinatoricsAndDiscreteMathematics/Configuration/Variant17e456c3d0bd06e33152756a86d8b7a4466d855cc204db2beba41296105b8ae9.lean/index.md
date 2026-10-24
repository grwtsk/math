# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Configuration.Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5259344d91591aadefbb16e34fc3bed00027a85`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Hall.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Rank` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projectivization.Constructions` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Dual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/dual--3229b2ca832d6b3e265a58f7.md) | 42 | `declaration-track:3229b2ca832d6b3e265a58f74478fcf284fad789cf34c07d15945f08bc770740` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/instance--1c86527a8d74034a9197b5e8.md) | 45 | `declaration-track:1c86527a8d74034a9197b5e82c9377eedd67e5cb7715692594ba751deb04385c` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/instance--70af71377bdabcef377c1caf.md) | 48 | `declaration-track:70af71377bdabcef377c1cafbd24ab7c585a67e3bde5ce0b3aeb7e1da5ed52ea` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/instance--a5f31b66420714f126de5db3.md) | 51 | `declaration-track:a5f31b66420714f126de5db3ad456deb38cb9e466ebade5eefa32f8ca8cae556` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/instance--2fff27cbddf08f5565aa6e62.md) | 55 | `declaration-track:2fff27cbddf08f5565aa6e628f8b316c60ff52404da663467e0e5252599ac81d` |
| 6 | `class` | [Nondegenerate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/nondegenerate--f87d0b6ba34b6d9f76351a17.md) | 64 | `declaration-track:f87d0b6ba34b6d9f76351a170e1da5bfbd8ceea892af5e100df01c20a36c9ecf` |
| 7 | `class` | [HasPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haspoints--3f132e2dba9cb9a6ae0a199c.md) | 70 | `declaration-track:3f132e2dba9cb9a6ae0a199c521443d0522444fe16606a3693fac44bde15b9a0` |
| 8 | `class` | [HasLines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haslines--36e7f4ca0cb5d62260f6351f.md) | 76 | `declaration-track:36e7f4ca0cb5d62260f6351f1a6b81412c5721e027743c66436934f13a491c6b` |
| 9 | `instance` | [Dual.Nondegenerate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/dual-nondegenerate--15d448eacbf4aed53c9551ae.md) | 87 | `declaration-track:15d448eacbf4aed53c9551ae52c9cb76e6dcaba545d17583b08426e8a19af504` |
| 10 | `instance` | [Dual.hasLines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/dual-haslines--0968d006948555c429850b7b.md) | 92 | `declaration-track:0968d006948555c429850b7b5481cd611fb2500abf7e06b0fdd3b1a6b9784390` |
| 11 | `instance` | [Dual.hasPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/dual-haspoints--67f48776eafbc1c8ab363950.md) | 97 | `declaration-track:67f48776eafbc1c8ab363950a09e6956957664c24e8d889154db795c8de8484e` |
| 12 | `theorem` | [HasPoints.existsUnique_point](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haspoints-existsunique-point--968549ee01609aa727e81f94.md) | 102 | `result-track:968549ee01609aa727e81f941d5080c6a699b58a2f916b1fd7436ecf3c0f71dd` |
| 13 | `theorem` | [HasLines.existsUnique_line](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haslines-existsunique-line--49280a4a6aa871d8a37d0e28.md) | 107 | `result-track:49280a4a6aa871d8a37d0e28c73ba1eef556d060bd4db7cf6133b3831bfc0c1c` |
| 14 | `theorem` | [Nondegenerate.exists_injective_of_card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/nondegenerate-exists-injective-of-card-le--47caf0aaa52b638b59ba66ed.md) | 115 | `result-track:47caf0aaa52b638b59ba66ed38707bd89be4eeba026bc0830db3821088e9c622` |
| 15 | `def` | [lineCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/linecount--52d9d44ab4da5c2bf1f2a61f.md) | 162 | `declaration-track:52d9d44ab4da5c2bf1f2a61f48f517c5136580fd24b2edb3b6320176ce804830` |
| 16 | `def` | [pointCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/pointcount--ec54d5dab86b5d46fb5de46d.md) | 168 | `declaration-track:ec54d5dab86b5d46fb5de46dae7d2d731f541faaeb0376a3902ce80c8118b7ca` |
| 17 | `theorem` | [sum_lineCount_eq_sum_pointCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/sum-linecount-eq-sum-pointcount--d04920b2350d825c18c58fa0.md) | 173 | `result-track:d04920b2350d825c18c58fa084de3506c9ab335bdd3c6f4a03157fa32cc50d45` |
| 18 | `theorem` | [HasLines.pointCount_le_lineCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haslines-pointcount-le-linecount--cd9a02f56355d36f955675da.md) | 186 | `result-track:cd9a02f56355d36f955675da90eca4f10469cd71c94d0923e6340b0131782ccc` |
| 19 | `theorem` | [HasPoints.lineCount_le_pointCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haspoints-linecount-le-pointcount--009c7e3508fa693dfa04f235.md) | 201 | `result-track:009c7e3508fa693dfa04f235626503ccfd116be0479d13bd225aeb722257a0d7` |
| 20 | `theorem` | [HasLines.card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haslines-card-le--e47060d3863cc7d966dc7fae.md) | 208 | `result-track:e47060d3863cc7d966dc7fae398b3616092a8ea75d430dcfda87e46e53946455` |
| 21 | `theorem` | [HasPoints.card_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haspoints-card-le--88ebc66a7265bf407d800fde.md) | 231 | `result-track:88ebc66a7265bf407d800fde3ed8f2b890b621dd5951d413060e41318573aa3f` |
| 22 | `theorem` | [HasLines.exists_bijective_of_card_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haslines-exists-bijective-of-card-eq--e80cd738f348e54c49355ebe.md) | 237 | `result-track:e80cd738f348e54c49355ebe673f9988a97b1a2ae6be6322fe5d80b5dda33c8d` |
| 23 | `theorem` | [HasLines.lineCount_eq_pointCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haslines-linecount-eq-pointcount--1c09a12ab469f6ffea189c04.md) | 246 | `result-track:1c09a12ab469f6ffea189c04005e2aad48ecd6bfc150829e130f636e0b09a171` |
| 24 | `theorem` | [HasPoints.lineCount_eq_pointCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haspoints-linecount-eq-pointcount--4a92f419c717b0f584143427.md) | 272 | `result-track:4a92f419c717b0f584143427f574a2e2cb25011e62a3d0475a27eb8b29befdda` |
| 25 | `def` | [HasLines.hasPoints](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haslines-haspoints--31fa46d269327637398ae97f.md) | 279 | `declaration-track:31fa46d269327637398ae97f1fd6135afe011122fa299e8009edc0682b0eefbf` |
| 26 | `def` | [HasPoints.hasLines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/haspoints-haslines--5459f7305aa023649a12cc07.md) | 313 | `declaration-track:5459f7305aa023649a12cc07e561f07a48f5a05d31b9d6565e2f020a24ea7d48` |
| 27 | `class` | [ProjectivePlane](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/projectiveplane--3d1cf5982693bef2bd4bc136.md) | 325 | `declaration-track:3d1cf5982693bef2bd4bc1362247b06bb4a6e9891d6d4c3d6477fa25cd9e40f6` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/instance--5d3f36a75326efa1b2ed7bdc.md) | 334 | `declaration-track:5d3f36a75326efa1b2ed7bdcb625de768b577439edeb2999102e48cd61dcf342` |
| 29 | `def` | [order](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/order--17204af89027c75967da0ea0.md) | 342 | `declaration-track:17204af89027c75967da0ea013adb14a077251da26c731a540cd3bca49b42bb7` |
| 30 | `theorem` | [card_points_eq_card_lines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/card-points-eq-card-lines--7dffb0dd9a340518743820f3.md) | 345 | `result-track:7dffb0dd9a340518743820f3868dca1687d793246b9210f583ba88ddfc71c91a` |
| 31 | `theorem` | [lineCount_eq_lineCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/linecount-eq-linecount--07b3ce84c7646f458d89d85b.md) | 350 | `result-track:07b3ce84c7646f458d89d85b204e7e838d5047e148bdceb6a59be8da051ebc30` |
| 32 | `theorem` | [pointCount_eq_pointCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/pointcount-eq-pointcount--464008d5be2273d25ce73e31.md) | 371 | `result-track:464008d5be2273d25ce73e31bbc6d2d0d17627570b31287cbce368d87de0bf7f` |
| 33 | `theorem` | [lineCount_eq_pointCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/linecount-eq-pointcount--556a51f49f8809b50fac3647.md) | 377 | `result-track:556a51f49f8809b50fac364743913d5ebd68f06d96ebe251a8b73ede3190d828` |
| 34 | `theorem` | [Dual.order](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/dual-order--880925978935483a7e82becc.md) | 387 | `result-track:880925978935483a7e82beccd56c51b0b3c5f4e8b9c3b868cf56a436fe3cba85` |
| 35 | `theorem` | [lineCount_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/linecount-eq--c3ddbf2dc03d6ba440bc0ea6.md) | 392 | `result-track:c3ddbf2dc03d6ba440bc0ea600bf5e4e19c53da997f81f5a7dea340641aeeb07` |
| 36 | `theorem` | [pointCount_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/pointcount-eq--b1bef65bc7463b8ef9eb21f6.md) | 402 | `result-track:b1bef65bc7463b8ef9eb21f60eb4a3af3e27807b5565575a01d3a1c07e59ac78` |
| 37 | `theorem` | [one_lt_order](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/one-lt-order--11e1205c898b0a1b1965b5dc.md) | 407 | `result-track:11e1205c898b0a1b1965b5dcbc070b4c8f432d8ec13db192a6c45347fe9b006d` |
| 38 | `theorem` | [two_lt_lineCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/two-lt-linecount--d25e1e131110468a8e8857f6.md) | 420 | `result-track:d25e1e131110468a8e8857f62fff7bd081ee66a933c56b2fbc8fad47ba270612` |
| 39 | `theorem` | [two_lt_pointCount](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/two-lt-pointcount--672ee9456fbffd8c7ae4bd25.md) | 425 | `result-track:672ee9456fbffd8c7ae4bd25e4e6a909f567299a69b7c859af9f0ce7980c5ae3` |
| 40 | `theorem` | [card_points](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/card-points--f0b807bce5c71ee4a2ff0525.md) | 430 | `result-track:f0b807bce5c71ee4a2ff0525d2f19e3b4e5fc5f3ad599029aa0ddf655bc2fb8b` |
| 41 | `theorem` | [card_lines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/card-lines--95e48868741aaaf098ff5d56.md) | 458 | `result-track:95e48868741aaaf098ff5d56845c0060564f59dd69aacf20368ac0becfd90907` |
| 42 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/instance--e2763c62ea8c9c5313af0712.md) | 471 | `declaration-track:e2763c62ea8c9c5313af071213623ad419af769d01673e1d3bf82bd4330b3b41` |
| 43 | `lemma` | [mem_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/mem-iff--a23efb5ddf5d43d071d93ba3.md) | 474 | `result-track:a23efb5ddf5d43d071d93ba34769bb8e907673d70be3d977137b1bc78c9a8328` |
| 44 | `lemma` | [crossProduct_eq_zero_of_dotProduct_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/crossproduct-eq-zero-of-dotproduct-eq-zero--d6e88316fd3ce0afb7c3c907.md) | 478 | `result-track:d6e88316fd3ce0afb7c3c907d35697ab6790c81cea4d6ab54ec2d6c00e5f15ec` |
| 45 | `lemma` | [eq_or_eq_of_orthogonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/eq-or-eq-of-orthogonal--4266efe8c249d988b25edfa6.md) | 493 | `result-track:4266efe8c249d988b25edfa6e49704d7ff858c7abf014f8872336ecdc6d5af79` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/instance--eea6fef046d04af3a7876f1d.md) | 503 | `declaration-track:eea6fef046d04af3a7876f1d171f615cdcbb18b68d3a780f3162692d1d7d1d27` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/declarations/instance--518f0e2772cf8bcb08e1ea33.md) | 508 | `declaration-track:518f0e2772cf8bcb08e1ea3340c9c4ffa6fc2d6cbb94c7b6b4a2a7dcf9606a4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
