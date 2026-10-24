# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Attempt02.Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ce92d05511817555e6eff7e3e798b2b59c4aa27",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ce92d05511817555e6eff7e3e798b2b59c4aa27`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.GeomSum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Summable` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mangoldtError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/mangoldterror--3ded6ed03ee94d8f5974eda3.md) | 37 | `declaration-track:3ded6ed03ee94d8f5974eda3f2a14ed111509f927f90e528404281bdf6eb3b3a` |
| 2 | `abbrev` | [primeError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/primeerror--3ddeb9c06357e37ff367e957.md) | 39 | `declaration-track:3ddeb9c06357e37ff367e957665b94dd0b75b0442c6aa806b6135aee61369eb9` |
| 3 | `abbrev` | [E₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/e--a939ae0c156b088f981162d2.md) | 42 | `declaration-track:a939ae0c156b088f981162d2340838a6fb54176a2abf6fa4fd8198d9fd2db5c6` |
| 4 | `lemma` | [E₁.summand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/e-summand-nonneg--b42b0b8709060540b658690f.md) | 44 | `result-track:b42b0b8709060540b658690fffb854bc1020454aa8a76f61e693a9b060b35148` |
| 5 | `theorem` | [E₁.summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/e-summable--4dc3de7e4d44607e4f1eaccd.md) | 51 | `result-track:4dc3de7e4d44607e4f1eaccdee17e101861652cee22bc1a4fca56cd895bf6a70` |
| 6 | `lemma` | [antitoneOn_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/antitoneon-log-div-sq--c740d92d551cc243ab749604.md) | 75 | `result-track:c740d92d551cc243ab749604a8aac5f26400e6239a3d8680f8843c70914c1dcf` |
| 7 | `lemma` | [log_div_sq_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/log-div-sq-nonneg--f36c2701bcfb5dd474991607.md) | 96 | `result-track:f36c2701bcfb5dd474991607da823c7992dcc48a11d9e7c08ba5acac563fecad` |
| 8 | `lemma` | [log_div_sq_is_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/log-div-sq-is-deriv--a3bab0e199673acc5dfcdb4c.md) | 100 | `result-track:a3bab0e199673acc5dfcdb4c6bcff12037c22f36cd0af77fa2855fbeae00ac25` |
| 9 | `lemma` | [tendsto_antideriv_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/tendsto-antideriv-log-div-sq--b6d9929f8ebde07a65713fe2.md) | 113 | `result-track:b6d9929f8ebde07a65713fe22a1fca1eb7569e8e46ab064890ea865ece805f84` |
| 10 | `lemma` | [integrableOn_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/integrableon-log-div-sq--b78997ea45e9b17b00ddd740.md) | 124 | `result-track:b78997ea45e9b17b00ddd740b70cd5eead81e3fb12277190595aa63cb880722f` |
| 11 | `lemma` | [integral_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/integral-log-div-sq--57fdcbf1a12cc673563dfd37.md) | 128 | `result-track:57fdcbf1a12cc673563dfd372d0441018ca81292d201cfb215628b5c6f715007` |
| 12 | `lemma` | [summable_log_div_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/summable-log-div-sq--9203052cdf5032274afed075.md) | 133 | `result-track:9203052cdf5032274afed075c6e4899ca4a488d194276d298baebc02a0392c93` |
| 13 | `lemma` | [sum_log_div_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/sum-log-div-sq-le--4193d586d2a59e83a9422335.md) | 143 | `result-track:4193d586d2a59e83a94223359d0b837228a44c644b345977cc2b6a6d4e3e8d94` |
| 14 | `theorem` | [E₁.le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/e-le--ea77b78f48477409973cae20.md) | 157 | `result-track:ea77b78f48477409973cae209fad80d0efb10b6c29ccf5ccf799380e5e47de07` |
| 15 | `theorem` | [E₁.nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/e-nonneg--f138eb569e7144003e6b3495.md) | 183 | `result-track:f138eb569e7144003e6b34959ed585d0c04fa22b1d681e0eb1bd5fa3095549b2` |
| 16 | `theorem` | [mangoldtError.le_primeError_add_E₁](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/mangoldterror-le-primeerror-add-e--17fb22be586053a7e77c447b.md) | 186 | `result-track:17fb22be586053a7e77c447b6741d5615b60159f2d01d3868528b1364602be71` |
| 17 | `theorem` | [mangoldtError_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/mangoldterror-bounds--dac592e49f59c4531939c249.md) | 232 | `result-track:dac592e49f59c4531939c24951fa39a4ebffea55f2a650f32c4db00cc42dce79` |
| 18 | `theorem` | [primeError_le_mangoldtError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/primeerror-le-mangoldterror--d1113ebc8ff4c7a67989b206.md) | 244 | `result-track:d1113ebc8ff4c7a67989b2060de21579d9232a623c2a8eb8694a4d9eeeef5143` |
| 19 | `theorem` | [primeError_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/primeerror-bounds--bfb644f375276839eddabd55.md) | 251 | `result-track:bfb644f375276839eddabd557de07e966a84349ba46cb67f204ab9a18be5f85c` |
| 20 | `theorem` | [log_four_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/log-four-eq--c300db52e5443dbc28f80800.md) | 257 | `result-track:c300db52e5443dbc28f8080033d0b4a43410a68a745a39403716bcba1da76b50` |
| 21 | `theorem` | [primeError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/primeerror-abs-le--9f016af214c533b4587a838c.md) | 262 | `result-track:9f016af214c533b4587a838c06abd350cce337925357e033f4ab209ff56b9c76` |
| 22 | `theorem` | [actual_primeLogError_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/actual-primelogerror-eq--93e796dc0043656a173c86fd.md) | 270 | `result-track:93e796dc0043656a173c86fde3481343c7b9647d51e75a20946a66d380bc7bcc` |
| 23 | `theorem` | [actual_primeLogError_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/actual-primelogerror-bounds--873c4d7d0d379866d7b88117.md) | 274 | `result-track:873c4d7d0d379866d7b8811731531e3705078a05d9b98793f1c461fa2439d971` |
| 24 | `theorem` | [actual_primeLogError_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/actual-primelogerror-abs-le--5049068fbbedbe119f129461.md) | 279 | `result-track:5049068fbbedbe119f1294610e73096451bae4bc9ce143093b7b18f93a519fe9` |
| 25 | `theorem` | [explicit_prime_budget_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/explicit-prime-budget-lt--fa2aa6fc10041a1ff2928336.md) | 284 | `result-track:fa2aa6fc10041a1ff2928336f639a501d83bd223d839edd4e8ce329d9be51647` |
| 26 | `theorem` | [actual_primeLogError_abs_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/actual-primelogerror-abs-lt--c3ec817ce8fe75639890af1c.md) | 288 | `result-track:c3ec817ce8fe75639890af1c9059ac4e4e36d707103a74574e2c111e304be81b` |
| 27 | `theorem` | [actual_negativeErrorMean_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/actual-negativeerrormean-abs-le--39df9643f293a1aac84ccdae.md) | 293 | `result-track:39df9643f293a1aac84ccdaed9f7061024cedb139827b91c9a18735c586d84e3` |
| 28 | `theorem` | [actual_negativeErrorMean_abs_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/actual-negativeerrormean-abs-lt--017f83ccfa6408a264b04555.md) | 297 | `result-track:017f83ccfa6408a264b04555513303355839dcb47c9a28f1a79f17013aca4749` |
| 29 | `theorem` | [actual_negativeErrorMean_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean/declarations/actual-negativeerrormean-lower--b7c68deb40940851b533b8a9.md) | 302 | `result-track:b7c68deb40940851b533b8a9341d84a4891d6998176efc3d16573551f17a0654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
