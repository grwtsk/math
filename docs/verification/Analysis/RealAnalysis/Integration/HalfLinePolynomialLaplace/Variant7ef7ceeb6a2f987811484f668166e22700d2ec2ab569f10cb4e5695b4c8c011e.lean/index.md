# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLinePolynomialLaplace.Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb321471a2e1ca82d1fb519c014e18be246a7f40",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb321471a2e1ca82d1fb519c014e18be246a7f40`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [half_line_polynomial_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean/declarations/half-line-polynomial-laplace-integrable--728551e4762a79e33fd9a2ef.md) | 30 | `result-track:728551e4762a79e33fd9a2ef8203b1ca4808a22c6fa78ac7f49bed5975d75a55` |
| 2 | `theorem` | [polynomial_laplace_has_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean/declarations/polynomial-laplace-has-deriv--24db6f044442288d256c2e43.md) | 44 | `result-track:24db6f044442288d256c2e43cb5b80d5e33a684c1f69f2d6ce638c7f6d26b0ca` |
| 3 | `theorem` | [half_line_polynomial_laplace_recurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean/declarations/half-line-polynomial-laplace-recurrence--4ff27372009db5f82fd3caae.md) | 56 | `result-track:4ff27372009db5f82fd3caae9e9cfcdf7bfaef6381667c21ab3c2f2d5a620e87` |
| 4 | `theorem` | [half_line_polynomial_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant7ef7ceeb6a2f987811484f668166e22700d2ec2ab569f10cb4e5695b4c8c011e.lean/declarations/half-line-polynomial-laplace-integral--4bb41085fdbb4b56b54c0efb.md) | 73 | `result-track:4bb41085fdbb4b56b54c0efb6b84339a64302c0d84b3632d3ca3240b73de2227` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
