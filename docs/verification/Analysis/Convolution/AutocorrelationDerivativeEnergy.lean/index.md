# Verification target: GRWTSK.Analysis.Convolution.AutocorrelationDerivativeEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe74d0f81e1736aa5316590dcfe5bbaccc47d801",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/index.md) · [Full source](../../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe74d0f81e1736aa5316590dcfe5bbaccc47d801`.

Source path: `GRWTSK/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Calculus.PolynomialBumpDerivativeEnergy`](../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpDerivativeEnergy.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_hasDerivAt_integral](../../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/declarations/sourcecorrelation-hasderivat-integral--b102d7678237ad623a7e34a0.md) | 28 | `result-track:b102d7678237ad623a7e34a0b6bfbb4f5a3c03a1a6a6e8c2dba78a9f612ae02f` |
| 2 | `theorem` | [sourceCorrelation_deriv_eq_integral](../../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/declarations/sourcecorrelation-deriv-eq-integral--5418ddfbaa569396715bf9e8.md) | 39 | `result-track:5418ddfbaa569396715bf9e8c7b35f48c223e6f0997d3b224e70a92ce8d007dd` |
| 3 | `theorem` | [sourceCorrelation_deriv_integrand_integrable](../../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/declarations/sourcecorrelation-deriv-integrand-integrable--62c0fda14c958fc16d88d6ee.md) | 46 | `result-track:62c0fda14c958fc16d88d6eeafe1885c2d166264ec5e66f1ef4610def3418225` |
| 4 | `theorem` | [integral_mul_square_le_of_unit](../../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/declarations/integral-mul-square-le-of-unit--2c2751af3aa5d4d18d0e7a3c.md) | 54 | `result-track:2c2751af3aa5d4d18d0e7a3c3e42134777c5ca7525089c230e08e8a023aab80b` |
| 5 | `theorem` | [sourceCorrelation_deriv_square_le_energy](../../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/declarations/sourcecorrelation-deriv-square-le-energy--95d3662ce7b74bbb845a6d7c.md) | 78 | `result-track:95d3662ce7b74bbb845a6d7c34e707a048e61fc1111f59e6c1bb25b2e9f24e3c` |
| 6 | `theorem` | [sourceCorrelation_deriv_abs_le_coefficient](../../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/declarations/sourcecorrelation-deriv-abs-le-coefficient--52825cf57524c23507283dd2.md) | 92 | `result-track:52825cf57524c23507283dd2e5c6e2c00ade5f4aef587f34cb4c77e661bf552d` |
| 7 | `theorem` | [sourceCorrelation_deriv_abs_le_five_div](../../../../mathematics/Analysis/Convolution/AutocorrelationDerivativeEnergy.lean/declarations/sourcecorrelation-deriv-abs-le-five-div--c2088df72f380e6e78511fc6.md) | 105 | `result-track:c2088df72f380e6e78511fc63ff8dd61030da8be182c1efaa2bdab6a218bfe5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
