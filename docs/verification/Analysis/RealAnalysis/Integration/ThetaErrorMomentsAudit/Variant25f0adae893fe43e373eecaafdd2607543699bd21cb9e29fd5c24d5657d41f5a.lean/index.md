# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaErrorMomentsAudit.Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "749692eff05ad85662ed039e9fb026876b9fe043",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `749692eff05ad85662ed039e9fb026876b9fe043`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePrimePrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/sourceprimeprefix--36724bcd1f8aea87a8ae66a8.md) | 23 | `declaration-track:36724bcd1f8aea87a8ae66a8807dc00d803d81343000953f388cf1dcf40fa6c0` |
| 2 | `theorem` | [sourcePrimePrefix_eq_theta](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/sourceprimeprefix-eq-theta--1dd2080088c21c7621c4fa62.md) | 26 | `result-track:1dd2080088c21c7621c4fa62719b4c4efe41a9515516386fe25e57e0bc79601b` |
| 3 | `def` | [thetaLogError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror--ab482c6b00fbb3cf209960ff.md) | 46 | `declaration-track:ab482c6b00fbb3cf209960ff311272a09f6a181971cbd0170ebed3127f89b86d` |
| 4 | `theorem` | [thetaLogError_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror-eq--2c158c4ed8ebf62dff590667.md) | 49 | `result-track:2c158c4ed8ebf62dff590667415d5e3e07aeb9d459cf896047be2b3f13e665d1` |
| 5 | `theorem` | [thetaLogError_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror-measurable--722a5e4fa208af61a6171aff.md) | 53 | `result-track:722a5e4fa208af61a6171aff21319015b5dea0836b95b7583a73a8ef8397aa93` |
| 6 | `theorem` | [thetaLogError_abs_le_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror-abs-le-global--86dfc7be6e34ee9471b0d352.md) | 62 | `result-track:86dfc7be6e34ee9471b0d352cd18da22131a6623507d61ab2d22712d8ceb1668` |
| 7 | `theorem` | [thetaLogError_abs_le_psi_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror-abs-le-psi-error--9ab2ad090a00e7d60dd621ed.md) | 78 | `result-track:9ab2ad090a00e7d60dd621edf85653c29e8b528a511919846ccf269526d5b4bb` |
| 8 | `theorem` | [thetaLogError_eventual_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror-eventual-bound--f11a4aac88df8f807b07a7fd.md) | 105 | `result-track:f11a4aac88df8f807b07a7fd029ea5814f9e19f4b0f7f209aa5a02ab0fd74187` |
| 9 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/polynomial-stretched-integrable--73bca99cb2bb0e266c8afc7c.md) | 121 | `result-track:73bca99cb2bb0e266c8afc7c610777fda871b09692341cac9b4ce2958cc330d8` |
| 10 | `theorem` | [thetaLogError_moment_prefix_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror-moment-prefix-integrable--2909d84126a22c9bfda4f50e.md) | 130 | `result-track:2909d84126a22c9bfda4f50e8a05803a9502a8a9b5fdb3996eb25e28b2b5f791` |
| 11 | `theorem` | [thetaLogError_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror-moment-integrable--aaa334b79209c139fbae568e.md) | 143 | `result-track:aaa334b79209c139fbae568e5e1651d59d2904c52c999162b588eab6f72d5d69` |
| 12 | `theorem` | [thetaLogError_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror-integrable--b42d5e53b56a8a6dad006080.md) | 187 | `result-track:b42d5e53b56a8a6dad00608005c6d1996e918563aab05d2185f8baca81d182fa` |
| 13 | `theorem` | [thetaLogError_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror-first-moment-integrable--c0ab38190d26c524ece01acd.md) | 190 | `result-track:c0ab38190d26c524ece01acda5f5860808e39dd461b153b78ffac4633970cbbc` |
| 14 | `theorem` | [thetaLogError_second_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/thetalogerror-second-moment-integrable--043c78428fe406bc5276aab3.md) | 194 | `result-track:043c78428fe406bc5276aab3ecb869c6e754a1e33f882bbe4cf8722524afeb93` |
| 15 | `theorem` | [theta_error_logarithmic_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variant25f0adae893fe43e373eecaafdd2607543699bd21cb9e29fd5c24d5657d41f5a.lean/declarations/theta-error-logarithmic-moment-integrable--50aab78a7d3cefd42ba950c4.md) | 199 | `result-track:50aab78a7d3cefd42ba950c47e8775ec54aed3280e9c3917cdc9ed55dc8f4a23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
