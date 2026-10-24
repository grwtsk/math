# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.TwoInsertionBoundary.Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "228aa727efa6ffe81c871f224bdc803155c9aaae",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `228aa727efa6ffe81c871f224bdc803155c9aaae`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeInsertion` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.RoughClassReduction` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceSamplingDerivative` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rectangularContribution_const_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/rectangularcontribution-const-mul--190d4bc1aa57f9c84977cf1d.md) | 25 | `result-track:190d4bc1aa57f9c84977cf1d6fcbbedcacd005510b16fc93d052eca53da55ec1` |
| 2 | `theorem` | [rectangular_rankOne_dilate_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/rectangular-rankone-dilate-two--b64e777ba03ab60d614b7f94.md) | 35 | `result-track:b64e777ba03ab60d614b7f94abd90b7ab423229705d94c8a8d1d9fe89e67bdbb` |
| 3 | `theorem` | [rankOne_square_insert_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/rankone-square-insert-two--85fe0ee0cc10b4de88c27b8d.md) | 49 | `result-track:85fe0ee0cc10b4de88c27b8d4aa5e9fc31b5586abe2e81c051b56a8d46891779` |
| 4 | `theorem` | [rectangular_difference_eq_boundary](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/rectangular-difference-eq-boundary--4487aec222c2dfc9543124f4.md) | 63 | `result-track:4487aec222c2dfc9543124f48ebb12bb5a936653864eb2182ffc20d012d98c43` |
| 5 | `theorem` | [rankOne_square_insert_two_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/rankone-square-insert-two-coprime--9f262df78ee6662c1ea7bd2e.md) | 76 | `result-track:9f262df78ee6662c1ea7bd2e4790b41a831b380981fcb2695a345c97b1633758` |
| 6 | `theorem` | [rankOne_square_insert_two_not_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/rankone-square-insert-two-not-coprime--d9c833fa801e380f9ada113b.md) | 88 | `result-track:d9c833fa801e380f9ada113b169fc7c43672c751144e86316832377c1161a495` |
| 7 | `theorem` | [rectangularContribution_sub](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/rectangularcontribution-sub--89b17faae5a64e69e65c9e13.md) | 96 | `result-track:89b17faae5a64e69e65c9e13fdf89b06be552cc5f41e53bf5e6a44576b545687` |
| 8 | `theorem` | [thetaRemainder_rectangle_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/thetaremainder-rectangle-eq--1248bef2d3c862907b67a115.md) | 105 | `result-track:1248bef2d3c862907b67a1153e9bf3360b7f6d88cbaf64dbcdd90142b49a1016` |
| 9 | `theorem` | [thetaRemainder_insert_two_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/thetaremainder-insert-two-coprime--9831394d41ba3bc81c4e25a6.md) | 113 | `result-track:9831394d41ba3bc81c4e25a6b53eeb01e637052e2438f96fd05c44e570d2c6fa` |
| 10 | `theorem` | [moebius_two_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/moebius-two-mul--93ad08fd12c4dc2f56a6ea2f.md) | 128 | `result-track:93ad08fd12c4dc2f56a6ea2fb563b86da41646cb32dd292d4cb32e7c6bee69cf` |
| 11 | `theorem` | [two_dvd_of_not_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/two-dvd-of-not-coprime--48dc7fe7fe14946887cea1a9.md) | 140 | `result-track:48dc7fe7fe14946887cea1a90c2f8e5db0346820515d23f95ce53f8de1a34d4c` |
| 12 | `theorem` | [even_sum_reindex](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/even-sum-reindex--cdaa6171ec3f7c96dbd33978.md) | 143 | `result-track:cdaa6171ec3f7c96dbd339788022482aaa7498bafd31edc1a1bd5644428ee677` |
| 13 | `theorem` | [moebius_sum_two_split](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/moebius-sum-two-split--22f89440e2c9b969574d9f01.md) | 167 | `result-track:22f89440e2c9b969574d9f0144cb2ed031caa014483536c9c7ef314ff402e279` |
| 14 | `theorem` | [sourceLinear_two_split](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/sourcelinear-two-split--5f1dc86bdcf93b4b62c9f4ba.md) | 188 | `result-track:5f1dc86bdcf93b4b62c9f4bacea55903cf6a452e0c1bf551f872c081a6d27302` |
| 15 | `theorem` | [sourceLinear_two_difference_boundary](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/sourcelinear-two-difference-boundary--669985a011e6d8e8a41a051b.md) | 197 | `result-track:669985a011e6d8e8a41a051b9529d44c079b7e7f147eb7ffa25d27ba397a1d28` |
| 16 | `theorem` | [sourceSamplingKernel_two_difference_abs_le](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/sourcesamplingkernel-two-difference-abs-le--84f9c2dad12783a174c227f4.md) | 225 | `result-track:84f9c2dad12783a174c227f4c4a68d790c56b7a11841520818e2e90f93e292ac` |
| 17 | `theorem` | [reciprocal_moebius_two_split](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/reciprocal-moebius-two-split--63a795a915848af654e456f9.md) | 257 | `result-track:63a795a915848af654e456f9fe3baea6e1c2120caf7def98604caaab783d347c` |
| 18 | `theorem` | [sourceQuadraticValue_two_split](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/sourcequadraticvalue-two-split--933e4aa783899cba1d13ef80.md) | 274 | `result-track:933e4aa783899cba1d13ef80566ba2757eb17db59c965782daf9765b6a71bccb` |
| 19 | `theorem` | [sourceQuadraticValue_two_boundary](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundary/Variant396d8020d4eafddc5d242b5cb1b04a3987f24b055bb7bc5ffc65cbd75de49090.lean/declarations/sourcequadraticvalue-two-boundary--c7ad41ce4202eba48bb3fcf9.md) | 295 | `result-track:c7ad41ce4202eba48bb3fcf92ad41458c6b7eb7044c4c8d2c5e51f717034cf40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
