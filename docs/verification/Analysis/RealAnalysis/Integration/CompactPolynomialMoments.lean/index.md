# Verification target: GRWTSK.Analysis.Integration.CompactPolynomialMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4605d9acb3c48b032ad7d0b444edab2dff01b4f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Integration/CompactPolynomialMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/index.md) · [Full source](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4605d9acb3c48b032ad7d0b444edab2dff01b4f`.

Source path: `GRWTSK/Analysis/Integration/CompactPolynomialMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Integration/CompactPolynomialMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.CompactResidualNormalization`](../../../../../mathematics/Analysis/InnerProductSpace/CompactResidualNormalization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CorrelationPairing`](../../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareCoefficient](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/squarecoefficient--5b23a99bd998c90786d0973f.md) | 25 | `declaration-track:5b23a99bd998c90786d0973f457fbf00d0dcdfa180f656813612c3f6b2db4ad8` |
| 2 | `def` | [squarePrimitive](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/squareprimitive--414f8651ec1658dd83c52598.md) | 37 | `declaration-track:414f8651ec1658dd83c52598f10a45ea405ea2c40db5fc1a7a31de7f014b1d7d` |
| 3 | `theorem` | [monomial_primitive_hasDerivAt](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/monomial-primitive-hasderivat--d7a91bc157b610967bece88d.md) | 40 | `result-track:d7a91bc157b610967bece88d31744563f7b38583761c7ac4e9c4aa175ce3588d` |
| 4 | `theorem` | [square_primitive_hasDerivAt](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/square-primitive-hasderivat--eb52d9a3872455153bec4fbc.md) | 47 | `result-track:eb52d9a3872455153bec4fbc092b5479fa0f70b642e502177af7ef82f705930a` |
| 5 | `theorem` | [unscaled_square_integral](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/unscaled-square-integral--a8896d91ab952a8ab557ffbf.md) | 60 | `result-track:a8896d91ab952a8ab557ffbf5e9e86467c087b700f614e7ce03aae0080a43378` |
| 6 | `theorem` | [source_amplitude_square](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/source-amplitude-square--6c59ae0be7fa63bf574c0f01.md) | 73 | `result-track:6c59ae0be7fa63bf574c0f01479c93eec980bd77d367960fdc9364ea38a49e6e` |
| 7 | `theorem` | [source_normalization_eq_interval](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/source-normalization-eq-interval--2d3deee5c189458330e3762f.md) | 78 | `result-track:2d3deee5c189458330e3762fb68d6f2e0b1f8ff1a9ff218c216bd9132d60de18` |
| 8 | `theorem` | [source_normalization_eq_rational](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/source-normalization-eq-rational--fe614458fe9844c7a0405ee2.md) | 90 | `result-track:fe614458fe9844c7a0405ee28b44d7168adf258f247ed1f8f53bdbffd753a7a2` |
| 9 | `theorem` | [source_eq_scaled_bump](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/source-eq-scaled-bump--0baea87b56ce4da0f28f9978.md) | 111 | `result-track:0baea87b56ce4da0f28f9978bc18840df3a1fe9c8d3ed82839b908b29f6a645f` |
| 10 | `theorem` | [dilation_test_eq_residual](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/dilation-test-eq-residual--aa3e90c4123d6a02a1bd3d9e.md) | 119 | `result-track:aa3e90c4123d6a02a1bd3d9e4dfa39d84837584a1589e7761b4ee98e74a66ac3` |
| 11 | `theorem` | [normalized_test_eq_source](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/normalized-test-eq-source--bb2e6450be5cb51827be7fa0.md) | 128 | `result-track:bb2e6450be5cb51827be7fa030ce2b0420ed982edda2ad3e0d9cdbf60a31c687` |
| 12 | `theorem` | [source_pairing_correlation_eq](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactPolynomialMoments.lean/declarations/source-pairing-correlation-eq--fbe926f0b1cc91a1c1293e2c.md) | 135 | `result-track:fbe926f0b1cc91a1c1293e2c6d5c98427e63178917f2c7d6bdfd211a3d61a44d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
