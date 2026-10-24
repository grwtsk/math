# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointDerivativesAttempt02.Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fadfff37a282d81a87e57bc216d171c18cd6e08",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fadfff37a282d81a87e57bc216d171c18cd6e08`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `EndpointExpansion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFirstPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpointfirstpolynomial--6d05f212accaa3e15637917d.md) | 18 | `declaration-track:6d05f212accaa3e15637917d94e7e65b17c9d3faf79896e53a0546a3e27a125a` |
| 2 | `def` | [endpointSecondPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpointsecondpolynomial--dfdaaf1be91640f8db879e5f.md) | 47 | `declaration-track:dfdaaf1be91640f8db879e5fb6cc3a78aa5f71e8122ba8a7b504b26351713142` |
| 3 | `def` | [endpointFullSlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpointfullslope--3183da95b894f369bcc1ffd7.md) | 76 | `declaration-track:3183da95b894f369bcc1ffd7b4b92a4fdf3e27f95d92fabe11de6e026979916d` |
| 4 | `def` | [endpointFullCurvature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpointfullcurvature--8827df2ab2dbb1d05beb49c0.md) | 79 | `declaration-track:8827df2ab2dbb1d05beb49c0fd6349d1ed369134fcfdfd3c6e1e02216a33340a` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpointfullpolynomial-contdiff--6621f5d91d4806748f159231.md) | 82 | `result-track:6621f5d91d4806748f159231660305e6dcd87d7cf1ff6c5f2495c2cf0ac0d014` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpointfirstpolynomial-contdiff--63bc1ac9a13bc4455b1271dc.md) | 86 | `result-track:63bc1ac9a13bc4455b1271dc8cb2d97e70cb5e220e2a668e788062c1e3514730` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpoint-full-deriv--6acc8c233d7d60c649f1da4e.md) | 90 | `result-track:6acc8c233d7d60c649f1da4e2e7f7c9e5fc139c2184fe89411cacfd20836c99e` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpoint-first-deriv--6aec0e391fb9bd71dffed7f3.md) | 96 | `result-track:6aec0e391fb9bd71dffed7f3416b30962fcbb655ff0649577b1b267c74bc70f4` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpoint-full-hasderivat--16dc58f73feb9db6b214b0c5.md) | 102 | `result-track:16dc58f73feb9db6b214b0c59969c2a96192cb9bc63a4366fabc492ced1c6a77` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpoint-first-hasderivat--87c8c1d70577f8ee6cd95202.md) | 107 | `result-track:87c8c1d70577f8ee6cd952021b4c64c660d2ecdc0849017ca8d0ed776406f4a8` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpoint-slope-zero--cf7f4fd30e089715b7d59909.md) | 112 | `result-track:cf7f4fd30e089715b7d59909707edbb0a6cbafee8ad2c90a4a492324ed431309` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpoint-curvature-zero--d4f5f9d7f46afdadf42ff5dd.md) | 116 | `result-track:d4f5f9d7f46afdadf42ff5dd30a3ba6e14cab09f37a50afb20c73ac738cd1374` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpoint-slope-continuous--58a7f745866d3a4e4c920dc4.md) | 122 | `result-track:58a7f745866d3a4e4c920dc48bd18199afea7212241db68ffc69aa19f470fe76` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt02/Variant6107bd0798136013cfb0a36617797e6abc4f620f65b83c3884e57eb14eb1e998.lean/declarations/endpoint-curvature-continuous--9205e99152e895c352ff6b36.md) | 126 | `result-track:9205e99152e895c352ff6b36703f045141c759df98b23b811742181eb53f3675` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
