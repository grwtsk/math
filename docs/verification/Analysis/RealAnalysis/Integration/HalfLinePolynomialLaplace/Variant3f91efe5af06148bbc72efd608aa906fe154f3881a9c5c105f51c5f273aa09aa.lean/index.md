# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.HalfLinePolynomialLaplace.Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c4a643f91247e50ac8d41ea4944d45524688f88",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c4a643f91247e50ac8d41ea4944d45524688f88`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [half_line_polynomial_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean/declarations/half-line-polynomial-laplace-integrable--8f437b0b4fee26bc76b60fd0.md) | 22 | `result-track:8f437b0b4fee26bc76b60fd027f41f3a794674a77075c749e2079661398e6ffc` |
| 2 | `theorem` | [polynomial_laplace_has_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean/declarations/polynomial-laplace-has-deriv--9e16d7e495649effad70a399.md) | 36 | `result-track:9e16d7e495649effad70a399451110641450896cd0b0138f7107e280f39d917e` |
| 3 | `theorem` | [half_line_polynomial_laplace_recurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean/declarations/half-line-polynomial-laplace-recurrence--953939b152ebb7461b82b4bd.md) | 48 | `result-track:953939b152ebb7461b82b4bdd9fa144ba71b1bf6b690605b877d803158906c69` |
| 4 | `theorem` | [half_line_polynomial_laplace_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/HalfLinePolynomialLaplace/Variant3f91efe5af06148bbc72efd608aa906fe154f3881a9c5c105f51c5f273aa09aa.lean/declarations/half-line-polynomial-laplace-integral--0ece1ea41913a134008e56d3.md) | 65 | `result-track:0ece1ea41913a134008e56d364a3a27cc09bcf05fd83531dac60ada1d82fc95e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
