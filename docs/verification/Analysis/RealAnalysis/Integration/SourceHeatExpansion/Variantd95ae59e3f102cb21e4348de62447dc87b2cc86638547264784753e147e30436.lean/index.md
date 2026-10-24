# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceHeatExpansion.Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23166adbe46186a8502fa5bae12566db052f807f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23166adbe46186a8502fa5bae12566db052f807f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceSignedHeat` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Taylor` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negExpPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/negexppolynomial--b2c45e7ee2cd7e2983087ece.md) | 20 | `declaration-track:b2c45e7ee2cd7e2983087ece5b36af3e928c2b621e8ff4cea0b752a5864777be` |
| 2 | `theorem` | [negExpPolynomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/negexppolynomial-zero--be4e7716d596c4760e185c3d.md) | 23 | `result-track:be4e7716d596c4760e185c3d6f5d968ec545b551572ea246d316da3d4ef3c615` |
| 3 | `theorem` | [negExpPolynomial_eq_taylor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/negexppolynomial-eq-taylor--6706c6af83d030a3b03df0ac.md) | 31 | `result-track:6706c6af83d030a3b03df0ac7857c94d13e54f630decd9842423f827416f3909` |
| 4 | `theorem` | [exp_neg_taylor_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/exp-neg-taylor-bound--b6d587401bab7cb2201820c2.md) | 42 | `result-track:b6d587401bab7cb2201820c2af9bb83b9254db3e5d1c2991acf10724057fc209` |
| 5 | `def` | [heatRemainderPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/heatremainderpolynomial--705bcc122b2ed46a7fdd236b.md) | 59 | `declaration-track:705bcc122b2ed46a7fdd236b03adacdd08c709874e5b329e96fd4d04febbf575` |
| 6 | `theorem` | [heatRemainderPolynomial_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/heatremainderpolynomial-eq-sum--23fa059c53a5ce3fa9237e05.md) | 63 | `result-track:23fa059c53a5ce3fa9237e05aff377ef5a6854efcbafdc10b895c0d52cb79ae6` |
| 7 | `theorem` | [heatRemainderPolynomial_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/heatremainderpolynomial-error--01c8a6689180b017d7641fd7.md) | 83 | `result-track:01c8a6689180b017d7641fd73f2f3667abfd4e9f43f07a0e85e23613f7063f49` |
| 8 | `theorem` | [integral_heatRemainderPolynomial_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/integral-heatremainderpolynomial-error--8b3b5fcac91490f5ab173a8d.md) | 104 | `result-track:8b3b5fcac91490f5ab173a8d5c67b179aca888b680e79d69e3cd4a7f284c1c79` |
| 9 | `theorem` | [absolutePower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/absolutepower-integrable--e17d5d94af5e3841ea351e92.md) | 127 | `result-track:e17d5d94af5e3841ea351e923a8fab37146b6c8faa5484c5dab58f8260e5761a` |
| 10 | `theorem` | [heatRemainder_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/heatremainder-integrable--2c38fe5ba09be696f366ff32.md) | 135 | `result-track:2c38fe5ba09be696f366ff32734ce3f3fd6c287d210604bf6174dfa950fcb2a8` |
| 11 | `theorem` | [signedHeatRemainder_polynomial_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/signedheatremainder-polynomial-error--35de04e444a512acd6e40f83.md) | 145 | `result-track:35de04e444a512acd6e40f83c6c17ba281b655a20e778dfced30838e2d5b0ce8` |
| 12 | `theorem` | [sourceHeatRemainder_polynomial_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHeatExpansion/Variantd95ae59e3f102cb21e4348de62447dc87b2cc86638547264784753e147e30436.lean/declarations/sourceheatremainder-polynomial-error--0341318d6581ab58c8ce02f9.md) | 177 | `result-track:0341318d6581ab58c8ce02f9c1de0afe81634804ea623a0e3bfc2ca0b3cd1e8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
