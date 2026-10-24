# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.PullOut.Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce9732219aad38850f6376c8baed04bfb9f2ddf2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce9732219aad38850f6376c8baed04bfb9f2ddf2`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Indicator` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Holder` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [condExp_stronglyMeasurable_simpleFunc_bilin](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-stronglymeasurable-simplefunc-bilin--7089143869eca3473c9306c5.md) | 60 | `result-track:7089143869eca3473c9306c5b79f9508083064de705e898242d3024a8a53f191` |
| 2 | `theorem` | [condExp_stronglyMeasurable_bilin_of_bound](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-stronglymeasurable-bilin-of-bound--19c06c80685592fd238af4ad.md) | 93 | `result-track:19c06c80685592fd238af4ad51f75231c09820eb5203abece62b966c28384aff` |
| 3 | `theorem` | [condExp_aestronglyMeasurable_bilin_of_bound](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-aestronglymeasurable-bilin-of-bound--4ebf17980d950caf94abf361.md) | 142 | `result-track:4ebf17980d950caf94abf361f4a47196a5abd9beb39724a3e499766fb8f6cc1e` |
| 4 | `theorem` | [condExp_bilin_of_stronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-bilin-of-stronglymeasurable-left--b67550fa609bb8edef54e1bd.md) | 159 | `result-track:b67550fa609bb8edef54e1bd3424d932f93e3eeada33a6ce13340f1d9178a202` |
| 5 | `theorem` | [condExp_bilin_of_stronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-bilin-of-stronglymeasurable-right--da5080ca62e69e6057f03d8d.md) | 199 | `result-track:da5080ca62e69e6057f03d8dacbf2efde1bcd97f37ec3f92c724405310dcff3e` |
| 6 | `theorem` | [condExp_bilin_of_aestronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-bilin-of-aestronglymeasurable-left--36c195437a2a9b316dc4266c.md) | 207 | `result-track:36c195437a2a9b316dc4266c9cce104eb6ac9ac67682bc2fdfac18a835d382ec` |
| 7 | `theorem` | [condExp_bilin_of_aestronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-bilin-of-aestronglymeasurable-right--13ec23d5cf71625780ba7056.md) | 223 | `result-track:13ec23d5cf71625780ba7056f86cdf391ab28062f6240ee346d927ff27871148` |
| 8 | `theorem` | [condExp_smul_of_aestronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-smul-of-aestronglymeasurable-left--fe0cbfe23c18f1821a9380d9.md) | 231 | `result-track:fe0cbfe23c18f1821a9380d9bdd42fcf93bbe74d948e79f77cab5cb880e4a131` |
| 9 | `theorem` | [condExp_smul_of_aestronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-smul-of-aestronglymeasurable-right--9591d069a03df7a7dc82d186.md) | 237 | `result-track:9591d069a03df7a7dc82d186fc9d86a28e19fa98586b8382ed0504897fc769d7` |
| 10 | `theorem` | [condExp_mul_of_aestronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-mul-of-aestronglymeasurable-left--9f326b279de2c6707c2e82b1.md) | 243 | `result-track:9f326b279de2c6707c2e82b1a529836c78ddf543d4044ea993a0ab66ddc52ee2` |
| 11 | `theorem` | [condExp_mul_of_aestronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-mul-of-aestronglymeasurable-right--fc4f4e152a47b7cfeebdb004.md) | 248 | `result-track:fc4f4e152a47b7cfeebdb004a7bf4c9dd67d9d78d50faea9dfcee9c64735637c` |
| 12 | `theorem` | [condExp_mul_of_stronglyMeasurable_left](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-mul-of-stronglymeasurable-left--4b35b1efe413fe5819121f8b.md) | 253 | `result-track:4b35b1efe413fe5819121f8b0210f8f5a086fe93272b3ecd37dac7a1ff2469b9` |
| 13 | `lemma` | [condExp_mul_of_stronglyMeasurable_right](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-mul-of-stronglymeasurable-right--1afef2820e842a78178ddc1e.md) | 259 | `result-track:1afef2820e842a78178ddc1e98b6aaabda8dd0c17204d490fad3d383324ac2ff` |
| 14 | `theorem` | [condExp_stronglyMeasurable_simpleFunc_mul](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-stronglymeasurable-simplefunc-mul--fe54db9131356583fd61569d.md) | 264 | `result-track:fe54db9131356583fd61569d3d4a33825ef04ba14c228ae788eb93c992002fc6` |
| 15 | `theorem` | [condExp_stronglyMeasurable_mul_of_bound](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-stronglymeasurable-mul-of-bound--99518be5bb1d519b668f6b65.md) | 268 | `result-track:99518be5bb1d519b668f6b6560413bd4efb11be362d57737b769935f4748ad73` |
| 16 | `theorem` | [condExp_stronglyMeasurable_mul_of_bound₀](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantb8923262888e6ddbed450045b356fa687c21720d3d660ee3d9ef6230b92e03b1.lean/declarations/condexp-stronglymeasurable-mul-of-bound--271c644bdeceaa43d0da018b.md) | 273 | `result-track:271c644bdeceaa43d0da018bfad65e533d857cdec9e6b1a8defd8f4bcceda8b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
