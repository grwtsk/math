# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Infix.Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29b1a855652a70fd9f95b33c7df13918f17140d1",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29b1a855652a70fd9f95b33c7df13918f17140d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.TakeDrop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Induction` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsPrefix.take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/isprefix-take--3f9ed468076d48ca5d31dabc.md) | 39 | `result-track:3f9ed468076d48ca5d31dabc4d7dab423ff98e04e7f80b5ca5388fabef6b85ab` |
| 2 | `lemma` | [IsPrefix.drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/isprefix-drop--5c765bbb6e873aacdb9e29b8.md) | 42 | `result-track:5c765bbb6e873aacdb9e29b85c7cd0fcead9b0cde1267271b3e09a5c7b2c646c` |
| 3 | `lemma` | [isPrefix_append_of_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/isprefix-append-of-length--08f0d5fe8e5497359c059ee5.md) | 47 | `result-track:08f0d5fe8e5497359c059ee51bc3828a2da0e871a6545ced4e75996b31d5a5c0` |
| 4 | `lemma` | [take_isPrefix_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/take-isprefix-take--3b05439e38d83d17867b4b92.md) | 51 | `result-track:3b05439e38d83d17867b4b924e82d4cdc8dfb7fc4623d21cbb34895b112583a1` |
| 5 | `theorem` | [IsPrefix.flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/isprefix-flatten--c6eb30137258a7c6d6a9cb3f.md) | 55 | `result-track:c6eb30137258a7c6d6a9cb3f3e4a394dba9b00b9d71608c8ae73cce6938e97b1` |
| 6 | `theorem` | [IsPrefix.flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/isprefix-flatmap--56c2112caf84c5fa83670458.md) | 61 | `result-track:56c2112caf84c5fa83670458b463b8b6a85a15b5fa02b8f22ba05eb1c02df8c8` |
| 7 | `theorem` | [IsSuffix.flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/issuffix-flatten--ba5d3739da424c88b8280296.md) | 66 | `result-track:ba5d3739da424c88b8280296480e32a8bd47b059bb44c75a64be53bbb9459997` |
| 8 | `theorem` | [IsSuffix.flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/issuffix-flatmap--a9bc4b12e9f2e408bbb7ac28.md) | 72 | `result-track:a9bc4b12e9f2e408bbb7ac286834316b7e67249c504f0e007a9155d3506a72bf` |
| 9 | `theorem` | [IsInfix.flatten](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/isinfix-flatten--2105d1432a66b2d84e7fc6c9.md) | 77 | `result-track:2105d1432a66b2d84e7fc6c928de88d1225373c9f40cd5a52d07aec5f13d7a23` |
| 10 | `theorem` | [IsInfix.flatMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/isinfix-flatmap--2d6287398b9bc7c7aa0894a5.md) | 83 | `result-track:2d6287398b9bc7c7aa0894a5cb4d156b23f5628773b6251ac107cc95345aa766` |
| 11 | `lemma` | [dropSlice_sublist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/dropslice-sublist--97e6e6903c6dff5fa280cd13.md) | 87 | `result-track:97e6e6903c6dff5fa280cd13cbcd250237cb297522e07ec316df9e54decba2f3` |
| 12 | `lemma` | [dropSlice_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/dropslice-subset--cbef088c00fc57bcae9c1220.md) | 93 | `result-track:cbef088c00fc57bcae9c12208bd5864ccdabd0c33c841e195bff139fc8a35761` |
| 13 | `lemma` | [mem_of_mem_dropSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/mem-of-mem-dropslice--c2de6b88334dc79f1569ace1.md) | 96 | `result-track:c2de6b88334dc79f1569ace1f0ea8e45a493b2a255047b28dd98c0be64dafe23` |
| 14 | `theorem` | [tail_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/tail-subset--dbb6298c48d8d370c4cbab71.md) | 99 | `result-track:dbb6298c48d8d370c4cbab71810f3116ffe5e5a5980ef815d09b43dee06ab0c0` |
| 15 | `theorem` | [mem_of_mem_dropLast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/mem-of-mem-droplast--5501f0603db887aff5500f82.md) | 102 | `result-track:5501f0603db887aff5500f82a7d26689186bee4bc20652b1c8c1da633bc7d69b` |
| 16 | `theorem` | [concat_get_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/concat-get-prefix--06203f8e132ea5a553eec6ce.md) | 108 | `result-track:06203f8e132ea5a553eec6ce2c7909bef9df17393e62c030c6f072c2df31ddc7` |
| 17 | `instance` | [decidableInfix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/decidableinfix--9692ebf906ba1a16f4ba868f.md) | 115 | `declaration-track:9692ebf906ba1a16f4ba868f180b83086ae94130012fcb36a9a28626ebc21ef1` |
| 18 | `theorem` | [IsPrefix.reduceOption](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/isprefix-reduceoption--3a16adc76afa4e961d4d0770.md) | 123 | `result-track:3a16adc76afa4e961d4d077058aa02138775a3b93ad797dcd4d2f9f1b1b949bb` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/instance--ca1fa5545830455e4386d6e3.md) | 127 | `declaration-track:ca1fa5545830455e4386d6e3c6b7b71667731f6358b2ca3357010fd57da9e8f6` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/instance--3ae1f88e7cfa8db65658b9f8.md) | 132 | `declaration-track:3ae1f88e7cfa8db65658b9f8f0dd603b9cab1ed3edf7b31c2bd64aba9305dde2` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/instance--4659ec89f11cfdc0f9f6aaa0.md) | 137 | `declaration-track:4659ec89f11cfdc0f9f6aaa0d32a09cbe012810e21a2236c0de410901a0c840f` |
| 22 | `theorem` | [mem_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/mem-inits--981ddfb6505c000ba8e8aaf3.md) | 147 | `result-track:981ddfb6505c000ba8e8aaf3db42478744b13dd2ab6459c841a98ae3d7051e0e` |
| 23 | `theorem` | [mem_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/mem-tails--a5c51592c26780af934fa280.md) | 167 | `result-track:a5c51592c26780af934fa28019ec43d454b35703d9e3f0cd23e01ee20d5937c0` |
| 24 | `theorem` | [inits_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/inits-cons--f9e1a289fe00e8616031fa27.md) | 183 | `result-track:f9e1a289fe00e8616031fa274a24db870949af108ed4cabdd499582661dcef7c` |
| 25 | `theorem` | [tails_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/tails-cons--28e3e980855dd612b86d9fe6.md) | 186 | `result-track:28e3e980855dd612b86d9fe695dc65a9b338a6cc75e6cdccfd519b30eb5a6ac1` |
| 26 | `theorem` | [inits_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/inits-append--71d9401ae26ed40260444680.md) | 189 | `result-track:71d9401ae26ed40260444680678c6b614ebf0eb10f5730895e82330d9ff631c5` |
| 27 | `theorem` | [tails_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/tails-append--72ef6d4cd7f3807cf13981a5.md) | 195 | `result-track:72ef6d4cd7f3807cf13981a5a495a670ce7fd08828d496b34de6b3654823f442` |
| 28 | `theorem` | [inits_eq_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/inits-eq-tails--ddd9eb8258797da22d34fcfa.md) | 202 | `result-track:ddd9eb8258797da22d34fcfac225c951e549fceccbd50ca010330b8259995e00` |
| 29 | `theorem` | [tails_eq_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/tails-eq-inits--142bc3aa0417260bcdfbb3a1.md) | 206 | `result-track:142bc3aa0417260bcdfbb3a1722810da10c2430bb8d3cb7a677c2819d433a906` |
| 30 | `theorem` | [inits_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/inits-reverse--08e51e3c61de2a4e5b9d7cd5.md) | 210 | `result-track:08e51e3c61de2a4e5b9d7cd51213d46e09866d3231fa2c3f0ead66042fb44eb5` |
| 31 | `theorem` | [tails_reverse](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/tails-reverse--9eeb55e4b6fd79a717b79b8c.md) | 214 | `result-track:9eeb55e4b6fd79a717b79b8c165f7ff981908a13b68b0a0efba6ddcfc2145f80` |
| 32 | `theorem` | [map_reverse_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/map-reverse-inits--132de0d2fc8eae882e95ebaa.md) | 218 | `result-track:132de0d2fc8eae882e95ebaa132aa44ca22b5b75e00ce62d09bb3a86e2f51df2` |
| 33 | `theorem` | [map_reverse_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/map-reverse-tails--9cb57064ff7b5540c6e97827.md) | 222 | `result-track:9cb57064ff7b5540c6e9782700d8008b47fd3e0d7e7c3813d85f351fe0f612fb` |
| 34 | `theorem` | [length_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/length-tails--0e8589dacb07e53b000965c6.md) | 227 | `result-track:0e8589dacb07e53b000965c63b99dabe2dd7f9d7691617d41ac3c930d1cab0b9` |
| 35 | `theorem` | [length_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/length-inits--6699acd19357e79945d2d169.md) | 233 | `result-track:6699acd19357e79945d2d169b5061079af5bd73d6b1de1b845820f2cab21871a` |
| 36 | `theorem` | [getElem_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/getelem-tails--13c41fa68033d8b44c2a152a.md) | 236 | `result-track:13c41fa68033d8b44c2a152a11d7e154a411c288d828f2e7e3fdd874304bc7b4` |
| 37 | `theorem` | [get_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/get-tails--57056af7d5494e79f53afef6.md) | 245 | `result-track:57056af7d5494e79f53afef6824156ffb39025121fbee0d8d738886d89052eb4` |
| 38 | `theorem` | [getElem_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/getelem-inits--08723d181f46d98a97755dce.md) | 249 | `result-track:08723d181f46d98a97755dce299a7e6d3d386d90f017a2db39c8db9a75a6f438` |
| 39 | `theorem` | [get_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/get-inits--8303afea7320a0c09aa27c5d.md) | 258 | `result-track:8303afea7320a0c09aa27c5de6e79767421ea8dc1c430b73aee7dc962aec27aa` |
| 40 | `lemma` | [map_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/map-inits--11750d5104ab450679c38d36.md) | 261 | `result-track:11750d5104ab450679c38d36fe8b1c18f9de905493fb87be47003e66885601ef` |
| 41 | `lemma` | [map_tails](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/map-tails--ad2d0207f7d2ae862060075f.md) | 264 | `result-track:ad2d0207f7d2ae862060075f8d12b66c78d6d8ae18263da7c343949c011225f7` |
| 42 | `lemma` | [take_inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/take-inits--b6b96f0b899d3ad649e8b303.md) | 267 | `result-track:b6b96f0b899d3ad649e8b3039c211f22d96aa6ce7b6baabde63f89313c28f50b` |
| 43 | `theorem` | [insert_eq_ite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/insert-eq-ite--b24d9217393efa2ddea9f91b.md) | 279 | `result-track:b24d9217393efa2ddea9f91bc1e1b5680cd849d5ecd5c4df27ea7a6ff59fde76` |
| 44 | `theorem` | [suffix_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/suffix-insert--d7cb4dc0dcaf449b10fadff4.md) | 284 | `result-track:d7cb4dc0dcaf449b10fadff44a91f8b78a9a564584ae253e5dd9e94813491606` |
| 45 | `theorem` | [infix_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/infix-insert--db7637c65edd244e8b2bb99c.md) | 289 | `result-track:db7637c65edd244e8b2bb99c730ac365a45a66bcec3932265bd1d13a7f1b1a76` |
| 46 | `theorem` | [sublist_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/sublist-insert--5a541cf09795d48c5fa314b4.md) | 292 | `result-track:5a541cf09795d48c5fa314b4e38535d5f2212204283e26516ba37e0fdbdc0607` |
| 47 | `theorem` | [subset_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Infix/Variant0a0423644f02d3360d360a33781acb464826a3c64fc1e1df1eb9a330b8f05a1f.lean/declarations/subset-insert--632ebd4d9a95c8e12c1125de.md) | 295 | `result-track:632ebd4d9a95c8e12c1125de875f33abdfe3d0ec16dabef58a53633c7b41df70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
