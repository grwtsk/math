# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceHeatExpansion.Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2900e246d8cace336edf4924e96672d0a59d216",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2900e246d8cace336edf4924e96672d0a59d216`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceSignedHeat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Taylor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negExpPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/negexppolynomial--ebd1f30e0e52458eb952c7f0.md) | 28 | `declaration-track:ebd1f30e0e52458eb952c7f0b11d0abaa20d7c9a8f2ab026b7097370aede9131` |
| 2 | `theorem` | [negExpPolynomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/negexppolynomial-zero--3c0c004636b830201aa54f37.md) | 31 | `result-track:3c0c004636b830201aa54f37da74d6f8a50e74c218c1935c49eebdeb70ce09c5` |
| 3 | `theorem` | [negExpPolynomial_eq_taylor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/negexppolynomial-eq-taylor--752832a018ae121acac7f023.md) | 39 | `result-track:752832a018ae121acac7f0237e6f200ed3925400ace86d044f574f0f15ac1ea2` |
| 4 | `theorem` | [exp_neg_taylor_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/exp-neg-taylor-bound--0570cf9f8413b27a74787c8c.md) | 50 | `result-track:0570cf9f8413b27a74787c8c95b898612cab87a9f2e29ceec2c0f1610cf9910c` |
| 5 | `def` | [heatRemainderPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/heatremainderpolynomial--ed4215a0414843161dc1298d.md) | 67 | `declaration-track:ed4215a0414843161dc1298d2e4e2e20190ab198e463b4e4ee0be4704a589449` |
| 6 | `theorem` | [heatRemainderPolynomial_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/heatremainderpolynomial-eq-sum--0c0bd674fb02a20d7e5eb563.md) | 71 | `result-track:0c0bd674fb02a20d7e5eb5637f3fad28bca38ce07ffc32cb6953bda6774b001e` |
| 7 | `theorem` | [heatRemainderPolynomial_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/heatremainderpolynomial-error--f2068205a90453d9df8edce1.md) | 91 | `result-track:f2068205a90453d9df8edce1ff3c7690c092688ee8732f550af37adb59212779` |
| 8 | `theorem` | [integral_heatRemainderPolynomial_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/integral-heatremainderpolynomial-error--ebce0c898780bc2d7d194761.md) | 112 | `result-track:ebce0c898780bc2d7d19476100c2b62dd1ad3b96eafa23fc166fa78cb7bd54db` |
| 9 | `theorem` | [absolutePower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/absolutepower-integrable--32dd832f98ab57ea0700fdfd.md) | 135 | `result-track:32dd832f98ab57ea0700fdfdc05da51259ba525c1cd7fa1bf51509e259290967` |
| 10 | `theorem` | [heatRemainder_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/heatremainder-integrable--5a833d0958ee4206fb06b82e.md) | 143 | `result-track:5a833d0958ee4206fb06b82ecbe225602750594bfbb621d79a569c31fc50893e` |
| 11 | `theorem` | [signedHeatRemainder_polynomial_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/signedheatremainder-polynomial-error--2110c5640e767a51348addc5.md) | 153 | `result-track:2110c5640e767a51348addc589b51eddad586bc1dd8c476046859fc2fd0d42ba` |
| 12 | `theorem` | [sourceHeatRemainder_polynomial_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variant66b57d826dd804cc51c86b5209e212e1e8bfb808ece9452c4caad57e46ba67cc.lean/declarations/sourceheatremainder-polynomial-error--45e3153aa8c2bb566947da81.md) | 185 | `result-track:45e3153aa8c2bb566947da81ecaeeb3a88c5df913f41a0d4a414cfa21d889de6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
