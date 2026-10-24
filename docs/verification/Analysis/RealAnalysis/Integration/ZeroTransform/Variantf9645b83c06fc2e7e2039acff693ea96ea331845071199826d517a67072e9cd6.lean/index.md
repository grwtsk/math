# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroTransform.Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2cc73c6411c209f01327d82a98b9370aeb09f98",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2cc73c6411c209f01327d82a98b9370aeb09f98`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/bumppolynomial--e4167fd06e552aa11cc887b3.md) | 31 | `declaration-track:e4167fd06e552aa11cc887b382ad8eb333592353d6c56664d2cc61f1fa8d7f4b` |
| 2 | `def` | [primitivePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/primitivepolynomial--314e424e8a68b35ea88bcfac.md) | 33 | `declaration-track:314e424e8a68b35ea88bcfaca3a6a1f07da8c5b9d8f1bedfc856eb73f944d4d6` |
| 3 | `theorem` | [primitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/primitive-derivative--5017d77b23524cb3589148e3.md) | 58 | `result-track:5017d77b23524cb3589148e396580b66525f2ec9ecacd2acc59ebfa506e84b44` |
| 4 | `theorem` | [primitive_endpoint_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/primitive-endpoint-pos--c91a85bf6c5ce1fd9bfb3c5b.md) | 66 | `result-track:c91a85bf6c5ce1fd9bfb3c5b8d03cc84e83e81207c5a107d473de66cd6cf188f` |
| 5 | `theorem` | [primitive_endpoint_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/primitive-endpoint-neg--381f6de0e27073c2d194bde5.md) | 71 | `result-track:381f6de0e27073c2d194bde5d32c9329c618587eb63f5b9175977af9de7c3e2f` |
| 6 | `def` | [fullPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/fullprimitive--86dafbcbdd9af14616005462.md) | 76 | `declaration-track:86dafbcbdd9af14616005462acde271a55a9ffad260774de46aa3bf7f6f452a9` |
| 7 | `theorem` | [fullPrimitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/fullprimitive-derivative--325f395b152dfe0836abffa0.md) | 80 | `result-track:325f395b152dfe0836abffa01408d6b1db364c99bf1dfe4d8ebe77c3926255cc` |
| 8 | `theorem` | [fullPrimitive_endpoint_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/fullprimitive-endpoint-pos--64f5f0ea1ad9ceae20f6d934.md) | 89 | `result-track:64f5f0ea1ad9ceae20f6d93430cd01c16028c294361e952587408a7867920155` |
| 9 | `theorem` | [fullPrimitive_endpoint_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/fullprimitive-endpoint-neg--16bdccb13f6a6bd0f9bf9c6a.md) | 95 | `result-track:16bdccb13f6a6bd0f9bf9c6aeeec5359d3ad7c16082a0383c44913e2acfe5416` |
| 10 | `def` | [interior](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/interior--aa5265dfc925c34948633bb9.md) | 101 | `declaration-track:aa5265dfc925c34948633bb97790b78289f3ff45c392580e823d371c0f9342cc` |
| 11 | `theorem` | [interior_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/interior-eq--5fdf6c8509bd5295f8e6d97b.md) | 105 | `result-track:5fdf6c8509bd5295f8e6d97bc00f2dccc4ecbb9c624e75a999fe969d5102be56` |
| 12 | `theorem` | [exponential_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/exponential-primitive--ca2100be7f6bbb977efab401.md) | 118 | `result-track:ca2100be7f6bbb977efab4012b19053e3ce218fd718c6024e0b13440b263493e` |
| 13 | `theorem` | [interior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/interior-continuous--fc2e3024fe0f9e194d0130aa.md) | 130 | `result-track:fc2e3024fe0f9e194d0130aafd79bce98b51a7343fb8bb56e84b19fefdf6985a` |
| 14 | `theorem` | [actual_integrand_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/actual-integrand-indicator--d8ed4db0377bfd9ca825c6a9.md) | 134 | `result-track:d8ed4db0377bfd9ca825c6a9e7d8a2fa1848f1c8b3fb18d2842693695c323b89` |
| 15 | `theorem` | [actual_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/actual-integrable--a8b405654ebeebab1836af06.md) | 142 | `result-track:a8b405654ebeebab1836af06c7b31461175da278689f25f2fff742646576fd67` |
| 16 | `theorem` | [actual_integral_interval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/actual-integral-interval--585def9fc5c73262f0ce7268.md) | 149 | `result-track:585def9fc5c73262f0ce7268f95f1da996468a4e2cee86c268e19f362cb497d0` |
| 17 | `theorem` | [normalized_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/normalized-primitive--cebf01248667562e786cb2a0.md) | 156 | `result-track:cebf01248667562e786cb2a075e8185fecd71d0c3d5b92852d1ec9c23b7a4fcc` |
| 18 | `theorem` | [source_scale](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/source-scale--54b10db72ab0ee718c71b1c7.md) | 168 | `result-track:54b10db72ab0ee718c71b1c759389c9c19fddc22be10fe8aebd0064d01772073` |
| 19 | `theorem` | [actual_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/actual-transform--c316ba5024d62c584312097a.md) | 172 | `result-track:c316ba5024d62c584312097a8a01a6f31468deb632d764ed04ed85554271d16c` |
| 20 | `theorem` | [bilateral_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/declarations/bilateral-transform--7993f3ca76d08ec9d05ca758.md) | 186 | `result-track:7993f3ca76d08ec9d05ca758a54a4239c44e9d9a350ac8df1c48b72cfe0bd044` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
