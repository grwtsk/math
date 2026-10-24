# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Gamma.Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9efe7cfdd35b4469bd9cf2621563190c5a662337",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9efe7cfdd35b4469bd9cf2621563190c5a662337`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.PolarCoord` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_rpow_mul_exp_neg_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/declarations/integral-rpow-mul-exp-neg-rpow--04d4b6085af6b1ed233aa56c.md) | 21 | `result-track:04d4b6085af6b1ed233aa56cc2fa7d0459696c72b5f7f30e4f6cdc61dadb8848` |
| 2 | `theorem` | [integral_rpow_mul_exp_neg_mul_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/declarations/integral-rpow-mul-exp-neg-mul-rpow--d254ba09dfa2b82e476b614e.md) | 39 | `result-track:d254ba09dfa2b82e476b614e10bcdd2992058182e92f416dfc734a368c7366ac` |
| 3 | `theorem` | [integral_exp_neg_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/declarations/integral-exp-neg-rpow--55574d4f84d65b02903f2392.md) | 59 | `result-track:55574d4f84d65b02903f23922f9de10ae253524ee7f9b99bbdb2f0c80d4706b2` |
| 4 | `theorem` | [integral_exp_neg_mul_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/declarations/integral-exp-neg-mul-rpow--514d68d1842ceacad82b3e6f.md) | 65 | `result-track:514d68d1842ceacad82b3e6faa7df850485c626e65e49a4fadc3eddef3bcbe59` |
| 5 | `theorem` | [Complex.integral_rpow_mul_exp_neg_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/declarations/complex-integral-rpow-mul-exp-neg-rpow--4b88c8012e848f09ed54a378.md) | 75 | `result-track:4b88c8012e848f09ed54a3783f2bceeabc50ca22eb04960c59b87789ccf60c9b` |
| 6 | `theorem` | [Complex.integral_rpow_mul_exp_neg_mul_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/declarations/complex-integral-rpow-mul-exp-neg-mul-rpow--190ec910b4156ccf239023b7.md) | 100 | `result-track:190ec910b4156ccf239023b7b5ae6919c0f23d22c0a27ac75ef38fd01adeebd2` |
| 7 | `theorem` | [Complex.integral_exp_neg_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/declarations/complex-integral-exp-neg-rpow--17b1a0fe6afd2d03d3cee1ec.md) | 127 | `result-track:17b1a0fe6afd2d03d3cee1ec8a634e77038070b8796e74bbd7f882d7b5f0eaf3` |
| 8 | `theorem` | [Complex.integral_exp_neg_mul_rpow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/declarations/complex-integral-exp-neg-mul-rpow--ab85ff9181ec6d12135656af.md) | 134 | `result-track:ab85ff9181ec6d12135656afa27ec649d844b507e444c390e7bcceb340c6e6d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
