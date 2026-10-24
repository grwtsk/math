# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e712211a3afa14f5cacaf737e4a2e38f69ebd885",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e712211a3afa14f5cacaf737e4a2e38f69ebd885`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_log_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hasstrictderivat-log-of-pos--0d4fcc5c4d209f2bd3b2263f.md) | 41 | `result-track:0d4fcc5c4d209f2bd3b2263f0a424263c35bcd4f3f36c393d418581c3e8f275c` |
| 2 | `theorem` | [hasStrictDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hasstrictderivat-log--47d0eeb8288d344a210a516d.md) | 48 | `result-track:47d0eeb8288d344a210a516d9935a959a61d6f84e4f4029dbfacd48193d6796d` |
| 3 | `theorem` | [hasDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hasderivat-log--d0aa455014d7674007bb481e.md) | 55 | `result-track:d0aa455014d7674007bb481eb20b2f6348d0abfadf554a91d8e35cc166898a30` |
| 4 | `theorem` | [differentiableAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/differentiableat-log--83e226726b453883c659a4ce.md) | 58 | `result-track:83e226726b453883c659a4ced4556dd80a51789085151c74047ed4c4b191d7f9` |
| 5 | `theorem` | [differentiableOn_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/differentiableon-log--276ea0c4d75f34eb0fdd16ca.md) | 61 | `result-track:276ea0c4d75f34eb0fdd16ca7c6b24d97a499f5eecaf67c94095a70c6b101ba6` |
| 6 | `theorem` | [differentiableAt_log_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/differentiableat-log-iff--6079d635d238a49e100e720a.md) | 65 | `result-track:6079d635d238a49e100e720a14bafc4af874f214ee31e96047bc0bb1638a433a` |
| 7 | `theorem` | [deriv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/deriv-log--031198943be7d66efe48db34.md) | 68 | `result-track:031198943be7d66efe48db341fec1da4fbacef86349a170147f98d994d6fc95b` |
| 8 | `theorem` | [deriv_log'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/deriv-log--f3f3df3227321533e03b1c0f.md) | 74 | `result-track:f3f3df3227321533e03b1c0f0f7e406ef9632a81a2e00fb2a8b2279a6a612a64` |
| 9 | `theorem` | [contDiffAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/contdiffat-log--b3082a22d9bb7adae0e1b984.md) | 77 | `result-track:b3082a22d9bb7adae0e1b984304def1525c632e056a31ef0a8a2e5363176bf26` |
| 10 | `theorem` | [contDiffOn_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/contdiffon-log--84f81c6289591fb9ec685435.md) | 95 | `result-track:84f81c6289591fb9ec68543584a43d506dd2b4d1fca4d2f854b95c55ce248f1f` |
| 11 | `theorem` | [HasDerivWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hasderivwithinat-log--71ae48656b6f1086d1e41b62.md) | 110 | `result-track:71ae48656b6f1086d1e41b621afd3206aab379fff05ed208c616971a2d9d71f0` |
| 12 | `theorem` | [HasDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hasderivat-log--b5dbef76ecbeb1c7c82dbda5.md) | 115 | `result-track:b5dbef76ecbeb1c7c82dbda56de130fc3ed6532748cb7b35cedb5fb46aaeb2cc` |
| 13 | `theorem` | [HasStrictDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hasstrictderivat-log--e5c7573b91acd6182adfe782.md) | 120 | `result-track:e5c7573b91acd6182adfe7820d69ba733c798a3f4ac5362d5750d02dda2b193c` |
| 14 | `theorem` | [derivWithin.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/derivwithin-log--d07befdb83c0056a79588f29.md) | 125 | `result-track:d07befdb83c0056a79588f294ff174f1bb212645c5984fe346e1f62e3f0ef344` |
| 15 | `theorem` | [deriv.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/deriv-log--c7950e1624cf0778691900dc.md) | 131 | `result-track:c7950e1624cf0778691900dc9dc063b8f8bb73e7ec4d0823c6094328b2a20766` |
| 16 | `lemma` | [Real.deriv_log_comp_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/real-deriv-log-comp-eq-logderiv--239748335ce980e32f7f7f09.md) | 137 | `result-track:239748335ce980e32f7f7f090e0a7ef9be221d49984affe3fb5aa76cc82c9e6e` |
| 17 | `theorem` | [HasFDerivWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hasfderivwithinat-log--a4ccc4d4752411b138c56010.md) | 148 | `result-track:a4ccc4d4752411b138c56010640fd4d7bddbcfae1bccc99d0cff2eecb37c928e` |
| 18 | `theorem` | [HasFDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hasfderivat-log--654651fc7bf93152b65e312d.md) | 152 | `result-track:654651fc7bf93152b65e312d9c8e3cda2eb32e24dd550ed5433c7d4b294c4d6a` |
| 19 | `theorem` | [HasStrictFDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hasstrictfderivat-log--fe4b7cd16e23ca17f88782e3.md) | 156 | `result-track:fe4b7cd16e23ca17f88782e3beac90ddeb5c96deb0ae737a8a828a9c5251de88` |
| 20 | `theorem` | [DifferentiableWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/differentiablewithinat-log--55c228762c129ab6c18cb7aa.md) | 160 | `result-track:55c228762c129ab6c18cb7aa3f522eeeed5f49cf63c894628c6e36cf1eb7a837` |
| 21 | `theorem` | [DifferentiableAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/differentiableat-log--575af999d90ec1b465de2739.md) | 165 | `result-track:575af999d90ec1b465de2739e6743cb13d9200a1997041f685f2f654aec5816c` |
| 22 | `theorem` | [ContDiffAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/contdiffat-log--717c0d8d725bf11c9b79275c.md) | 170 | `result-track:717c0d8d725bf11c9b79275cd0f1839ed4165c7f02c3eaae02e940c23200d567` |
| 23 | `theorem` | [ContDiffWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/contdiffwithinat-log--86838285aa3b57e33165a4b7.md) | 175 | `result-track:86838285aa3b57e33165a4b751804597d05fa120bd48192f43e3448b9225fc0c` |
| 24 | `theorem` | [ContDiffOn.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/contdiffon-log--120881525274688df11291a2.md) | 180 | `result-track:120881525274688df11291a2c2f97cd95aefd98d619da6198fa15afdb7a72de7` |
| 25 | `theorem` | [ContDiff.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/contdiff-log--065a57c358e0d4a678c36132.md) | 184 | `result-track:065a57c358e0d4a678c361327f53290c3682c0bd4793ca6e1628a26daf5dd821` |
| 26 | `theorem` | [DifferentiableOn.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/differentiableon-log--63abc71b015528a1da8b4ba9.md) | 189 | `result-track:63abc71b015528a1da8b4ba903634b00f1f07a3ee92267b9ce3ff1894bda3bef` |
| 27 | `theorem` | [Differentiable.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/differentiable-log--07b1e9291c415db7120ad93e.md) | 193 | `result-track:07b1e9291c415db7120ad93e1669b3a0dad083d63cfa4a127345ecbd27dabcc3` |
| 28 | `theorem` | [fderivWithin.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/fderivwithin-log--35c3c863628b45a83fa5a649.md) | 196 | `result-track:35c3c863628b45a83fa5a649861cbb88ed6d24aa89c555641f3f4461666ad02f` |
| 29 | `theorem` | [fderiv.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/fderiv-log--6e2fc99445c65b840bf80c37.md) | 202 | `result-track:6e2fc99445c65b840bf80c376914753c0ce8d3a3ee00328d181352490498d6ce` |
| 30 | `theorem` | [abs_log_sub_add_sum_range_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/abs-log-sub-add-sum-range-le--c115ce342d1439fdeaa40391.md) | 218 | `result-track:c115ce342d1439fdeaa40391165023a0d25a57f9b132dc7b7365cadb6f6acf62` |
| 31 | `theorem` | [hasSum_pow_div_log_of_abs_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hassum-pow-div-log-of-abs-lt-one--6b8edb4ab8bc7ed540c58671.md) | 259 | `result-track:6b8edb4ab8bc7ed540c58671fcfb7dc9e0ee49a132033be0e83f3dfe51b9a88e` |
| 32 | `theorem` | [hasSum_log_sub_log_of_abs_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hassum-log-sub-log-of-abs-lt-one--2f7861224c9d7dc75e55807e.md) | 284 | `result-track:2f7861224c9d7dc75e55807ee884c3f8bf9ec9ecd923051e5aeea2f6edacb4c5` |
| 33 | `theorem` | [hasSum_log_one_add_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hassum-log-one-add-inv--0bfdfe27b83345a1221575b0.md) | 305 | `result-track:0bfdfe27b83345a1221575b0ec687a56135258420c2c8178c8d1c75c23344fe9` |
| 34 | `theorem` | [hasSum_log_one_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/hassum-log-one-add--31ddb13d30627a502ea665e1.md) | 325 | `result-track:31ddb13d30627a502ea665e1d745e0bb295be6d78d93be873d73608b514bffc1` |
| 35 | `lemma` | [le_log_one_add_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/le-log-one-add-of-nonneg--8178bfbba2ed2a5dd537b982.md) | 333 | `result-track:8178bfbba2ed2a5dd537b982350be202ab9bef9f7891734fbcff0bf5c6e99659` |
| 36 | `lemma` | [lt_log_one_add_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant0e5b47015fc980e90182bc90d99ce108e3aed7c428a4702b68f00c14253eba52.lean/declarations/lt-log-one-add-of-pos--d5e1c28f83ccefaff7a2dacf.md) | 337 | `result-track:d5e1c28f83ccefaff7a2dacf0efa97b7d4a24768de45a3dc2eefa150be8262a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
