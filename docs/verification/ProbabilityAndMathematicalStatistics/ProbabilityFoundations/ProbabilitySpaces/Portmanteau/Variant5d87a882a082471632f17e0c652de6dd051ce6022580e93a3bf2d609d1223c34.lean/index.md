# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Portmanteau.Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eae51b7d85b1a0380f70d247544ca9f1d09da059",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eae51b7d85b1a0380f70d247544ca9f1d09da059`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.ProbabilityMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_measure_compl_liminf_of_limsup_measure_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/le-measure-compl-liminf-of-limsup-measure-le--8decbf4a9985f3e7b13e6cb8.md) | 110 | `result-track:8decbf4a9985f3e7b13e6cb8d05c78e15c18f8eb1403abbc05d338042c5c29d3` |
| 2 | `theorem` | [le_measure_liminf_of_limsup_measure_compl_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/le-measure-liminf-of-limsup-measure-compl-le--d2ab079a4019120fb9317307.md) | 131 | `result-track:d2ab079a4019120fb931730784e03af0e8014886e197c158dc1e4dfca4e1765e` |
| 3 | `theorem` | [limsup_measure_compl_le_of_le_liminf_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/limsup-measure-compl-le-of-le-liminf-measure--a08af8e54f7a75f04ff9945c.md) | 138 | `result-track:a08af8e54f7a75f04ff9945c334b27d1f4e8ef423ef76435f73a0720f019b93c` |
| 4 | `theorem` | [limsup_measure_le_of_le_liminf_measure_compl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/limsup-measure-le-of-le-liminf-measure-compl--65f3e06a74a301fcbad83cbe.md) | 159 | `result-track:65f3e06a74a301fcbad83cbed3cffaff68aa82c43b038835785c11dd1da6581b` |
| 5 | `theorem` | [limsup_measure_closed_le_iff_liminf_measure_open_ge](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/limsup-measure-closed-le-iff-liminf-measure-open-ge--75814afb8d31c803fbd2bcdc.md) | 177 | `result-track:75814afb8d31c803fbd2bcdc5028fee8d8820fae5301e38750a6b9b7b7aa5b89` |
| 6 | `theorem` | [tendsto_measure_of_le_liminf_measure_of_limsup_measure_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/tendsto-measure-of-le-liminf-measure-of-limsup-measure-le--c3ce1c4b90d7dffae23d90a4.md) | 214 | `result-track:c3ce1c4b90d7dffae23d90a4050ca95f78fc967d92c2c38e4179dd4945a80931` |
| 7 | `theorem` | [tendsto_measure_of_null_frontier](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/tendsto-measure-of-null-frontier--8e1fdca503e3aa29e8e04b1b.md) | 247 | `result-track:8e1fdca503e3aa29e8e04b1b7ad94cbb4cfcf8e2c16701fdeab9385a80397998` |
| 8 | `theorem` | [measure_of_cont_bdd_of_tendsto_filter_indicator](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/measure-of-cont-bdd-of-tendsto-filter-indicator--a98750df0d408e20611f8e3d.md) | 291 | `result-track:a98750df0d408e20611f8e3d5d5e183f940ad18d94db6f7f58101e6aba76a59b` |
| 9 | `theorem` | [measure_of_cont_bdd_of_tendsto_indicator](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/measure-of-cont-bdd-of-tendsto-indicator--59192a767434dec954c3d2a9.md) | 312 | `result-track:59192a767434dec954c3d2a98428df87c6812f7fdc140f2bb3e82e064daa85e4` |
| 10 | `theorem` | [tendsto_lintegral_thickenedIndicator_of_isClosed](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/tendsto-lintegral-thickenedindicator-of-isclosed--2557e09029ca9c4f0f807ca5.md) | 329 | `result-track:2557e09029ca9c4f0f807ca5402078352b322215844a4a3f203292f44dcde25e` |
| 11 | `theorem` | [FiniteMeasure.limsup_measure_closed_le_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/finitemeasure-limsup-measure-closed-le-of-tendsto--38152957a1ed4d9ca9bc1244.md) | 345 | `result-track:38152957a1ed4d9ca9bc1244f31e19a32bc426499647f71e60942076e78a1c4e` |
| 12 | `theorem` | [ProbabilityMeasure.limsup_measure_closed_le_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/probabilitymeasure-limsup-measure-closed-le-of-tendsto--862ba05149ebe4b993778211.md) | 384 | `result-track:862ba05149ebe4b993778211cbb12ce9356456170496900fa8f3c35489e59cb3` |
| 13 | `theorem` | [ProbabilityMeasure.le_liminf_measure_open_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/probabilitymeasure-le-liminf-measure-open-of-tendsto--f71ad79b6abbfd319b9fcf2c.md) | 396 | `result-track:f71ad79b6abbfd319b9fcf2c3ca65cd32cc86b42af05a963a827ca830603d8ba` |
| 14 | `theorem` | [ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/probabilitymeasure-tendsto-measure-of-null-frontier-of-tendsto--92386f7db9f7abae48229d52.md) | 406 | `result-track:92386f7db9f7abae48229d5269dac5a9381a631b2dc98fd9e1233487b5798440` |
| 15 | `theorem` | [ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/probabilitymeasure-tendsto-measure-of-null-frontier-of-tendsto--16b090156425f4213f759212.md) | 424 | `result-track:16b090156425f4213f75921276376add7b3e89d7054fae6992264f3518470821` |
| 16 | `theorem` | [exists_null_frontier_thickening](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/exists-null-frontier-thickening--18cf576879c5bcc0d699d12c.md) | 463 | `result-track:18cf576879c5bcc0d699d12c1ba353259f244707495aba846831ea172b2ad7dc` |
| 17 | `theorem` | [exists_null_frontiers_thickening](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/exists-null-frontiers-thickening--168308143165b1f408220f32.md) | 477 | `result-track:168308143165b1f408220f321d975706b059554ee11e157f69a8516e6b724aa0` |
| 18 | `lemma` | [limsup_measure_closed_le_of_forall_tendsto_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/limsup-measure-closed-le-of-forall-tendsto-measure--088e1f94d651819279e8b362.md) | 492 | `result-track:088e1f94d651819279e8b3622216cba7e7f8dfa3b3910ce2275c14b2b4b8c2d5` |
| 19 | `lemma` | [le_liminf_measure_open_of_forall_tendsto_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant5d87a882a082471632f17e0c652de6dd051ce6022580e93a3bf2d609d1223c34.lean/declarations/le-liminf-measure-open-of-forall-tendsto-measure--4fa61be1d5ddf0cde17a6312.md) | 530 | `result-track:4fa61be1d5ddf0cde17a63129a96de237f97b3902d6eb6dd0298ace599eb0948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
