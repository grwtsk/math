# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ZetaGrowth.Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79523c00f44c58bd648d60906369762e89044d27",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79523c00f44c58bd648d60906369762e89044d27`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.ZetaBounds` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ZetaValues` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 31; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticOnNhd_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/analyticonnhd-riemannzeta--0ace22b7a39daab4c119d94d.md) | 43 | `result-track:0ace22b7a39daab4c119d94db38b3b53e8e9506c4e56de6338a1b4c09c0ba2b1` |
| 2 | `theorem` | [norm_riemannZeta_le_of_re_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/norm-riemannzeta-le-of-re-pos--d54c22bb327542c1329ad21e.md) | 56 | `result-track:d54c22bb327542c1329ad21e01fa5a69ac5b0aea31ad453262c4e18046a6b05e` |
| 3 | `theorem` | [riemannZeta_linear_growth](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/riemannzeta-linear-growth--4e6ae64620f842315704498b.md) | 78 | `result-track:4e6ae64620f842315704498bc28335b49f1cf48c3de5b5a772b23b8834c18039` |
| 4 | `theorem` | [zeta_growth](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/zeta-growth--2cd988ca337372ca2c0ba5a2.md) | 102 | `result-track:2cd988ca337372ca2c0ba5a26a3582387af0a0985fe57f74257bc03017f0f56f` |
| 5 | `theorem` | [zeta_growth_quarter](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/zeta-growth-quarter--5d1e1b37f3539edeb4fe98e8.md) | 109 | `result-track:5d1e1b37f3539edeb4fe98e81900a0f66c868cb2d11ec626abf7836dd8314557` |
| 6 | `theorem` | [zeta_growth_right_at](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/zeta-growth-right-at--e5709e694d1235539a49cf5e.md) | 119 | `result-track:e5709e694d1235539a49cf5e5f58c087ea5c325839e48d7e0b691d6c89c9bad6` |
| 7 | `theorem` | [zeta_growth_right](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/zeta-growth-right--19614a7c9a5bd779e88ed2e0.md) | 143 | `result-track:19614a7c9a5bd779e88ed2e03fc2820f4c0451ee35840a78f4ee66f84b3fbde3` |
| 8 | `theorem` | [norm_riemannZeta_sub_one_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/norm-riemannzeta-sub-one-le--b89283192a341c8290bc80fc.md) | 151 | `result-track:b89283192a341c8290bc80fc7fd0519cfc3715442aca3b7e8ba39327bcebb5fa` |
| 9 | `lemma` | [pi_sq_div_six_sub_one_lt_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/pi-sq-div-six-sub-one-lt-one--fa9f8907006e5193cf2ea813.md) | 193 | `result-track:fa9f8907006e5193cf2ea813896104f2686891c52057e3af62577bb72b17024c` |
| 10 | `theorem` | [norm_riemannZeta_ge_of_two_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/norm-riemannzeta-ge-of-two-le-re--3061cf92319297f88bb418ad.md) | 198 | `result-track:3061cf92319297f88bb418ad10e7db3310389e19723d542d48152824173d0696` |
| 11 | `lemma` | [two_sub_pi_sq_div_six_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/two-sub-pi-sq-div-six-pos--25972d044299db49228918ce.md) | 207 | `result-track:25972d044299db49228918cea4dd219dad41fd415950791f8d4d714f9f53aad1` |
| 12 | `lemma` | [one_third_lt_two_sub_pi_sq_div_six](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/one-third-lt-two-sub-pi-sq-div-six--0a8e7bdb0ba768a2c509e500.md) | 211 | `result-track:0a8e7bdb0ba768a2c509e5007b497eee152ad3703f626f1563b4493cd7ab15ac` |
| 13 | `theorem` | [zeta_lower_bound_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/zeta-lower-bound-two--351df922765883c4c9c54073.md) | 216 | `result-track:351df922765883c4c9c5407341d6745936bb51d5567a9e0893d4f07ebb17c4db` |
| 14 | `theorem` | [riemannZeta_ne_zero_of_two_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/riemannzeta-ne-zero-of-two-le-re--3d9f9d8accd291e7417163a2.md) | 223 | `result-track:3d9f9d8accd291e7417163a209c7185e7d9f3221566ff3ee9025ee97de6496d5` |
| 15 | `theorem` | [norm_riemannZeta_le_of_two_le_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaGrowth/Variant91a33dcf908921bfaa05ec64f4c20f40d83593228f956d945cd71c272a98ef44.lean/declarations/norm-riemannzeta-le-of-two-le-re--57974605c3d8e18868ee707d.md) | 227 | `result-track:57974605c3d8e18868ee707d933b3a898e2dac19dd52b027dbd74a1444e82f08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
