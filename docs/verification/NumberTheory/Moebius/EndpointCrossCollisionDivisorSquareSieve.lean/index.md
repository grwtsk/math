# Verification target: GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionDivisorSquareSieve

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17a993e4f6d6e2fd29d39b02f40554523c3e7ecb",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17a993e4f6d6e2fd29d39b02f40554523c3e7ecb`.

Source path: `GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionSquarefreeMidpoint`](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionSquarefreeMidpoint.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareDivisorMobiusSum](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/squaredivisormobiussum--9efb368d62f76f6e723db50b.md) | 47 | `declaration-track:9efb368d62f76f6e723db50bc133393a1624022c4aa034f85afbf69b1c339441` |
| 2 | `structure` | [SquarefreeDivisorSquareMobiusIdentity](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/squarefreedivisorsquaremobiusidentity--fbae2f9e012cc5ba098cc5a3.md) | 54 | `declaration-track:fbae2f9e012cc5ba098cc5a3c42079e7e66bf48ef7b0102a9ac3eda1b2a928bf` |
| 3 | `theorem` | [moebiusReal_sq_eq_squareDivisorMobiusSum](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/moebiusreal-sq-eq-squaredivisormobiussum--27d880d9ce67e58e638cdc18.md) | 61 | `result-track:27d880d9ce67e58e638cdc18424d28b019392c200416112d54ca3e2bed209bfe` |
| 4 | `def` | [mertensSquarefreeMidpointDivisorSieveTerm](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/mertenssquarefreemidpointdivisorsieveterm--b44c9fd8d24936e2b3d8ef51.md) | 70 | `declaration-track:b44c9fd8d24936e2b3d8ef51545d31ece05afcb7c4dc9fcef11cf1bd22d9f4b0` |
| 5 | `theorem` | [mertensThreePointProgressionTerm_eq_divisorSquareSieve](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/mertensthreepointprogressionterm-eq-divisorsquaresieve--95ec0c4e36d0a8e45d61adbe.md) | 77 | `result-track:95ec0c4e36d0a8e45d61adbef0736ed2732569d2afa0f30b6b4a1e4fb1cb927b` |
| 6 | `def` | [mertensEndpointCrossCollisionDivisorSquareSieveEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/mertensendpointcrosscollisiondivisorsquaresieveenergy--aa49ff7e898469d81f94c272.md) | 91 | `declaration-track:aa49ff7e898469d81f94c2721a2c24b98e54e547e4deefef245c50980a4a6e66` |
| 7 | `theorem` | [mertensEndpointCrossCollisionProgressionEnergy_eq_divisorSquareSieve](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/mertensendpointcrosscollisionprogressionenergy-eq-divisorsquaresieve--dd5fea1e5ca5ae98be0591bb.md) | 99 | `result-track:dd5fea1e5ca5ae98be0591bbe6d3b05cd08d40dac0c5f59597d1f7a011ee134d` |
| 8 | `theorem` | [mertensEndpointFibreCrossCollisionEnergy_eq_divisorSquareSieve](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/mertensendpointfibrecrosscollisionenergy-eq-divisorsquaresieve--f3056627676cb60ac195dfdf.md) | 117 | `result-track:f3056627676cb60ac195dfdf9f66c9df6a8ef7f82f243f111e0d9187213adc99` |
| 9 | `def` | [weightedMertensEndpointCrossCollisionDivisorSquareSieveEnergy](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/weightedmertensendpointcrosscollisiondivisorsquaresieveenergy--ee3a070176924c3980712eb4.md) | 127 | `declaration-track:ee3a070176924c3980712eb4b1273b37f78cf02b29a42e55dc356bc8f737c873` |
| 10 | `theorem` | [weightedMertensEndpointCrossCollisionEnergy_eq_divisorSquareSieve](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/weightedmertensendpointcrosscollisionenergy-eq-divisorsquaresieve--202a208e9c6a8470718638ee.md) | 135 | `result-track:202a208e9c6a8470718638ee50185db77b24ea9611c99583e4b82c9c1222d23e` |
| 11 | `theorem` | [weightedMertensEndpointCrossCollisionSquarefreeMidpointEnergy_eq_divisorSquareSieve](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/weightedmertensendpointcrosscollisionsquarefreemidpointenergy-eq-divisor--c3e9f75a9f99dd2cf2563dff.md) | 149 | `result-track:c3e9f75a9f99dd2cf2563dffa93b00a892250fa1edf484ed69681e9f4862f0af` |
| 12 | `def` | [SubpolynomialWeightedMertensEndpointDivisorSquareCrossCollision](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/subpolynomialweightedmertensendpointdivisorsquarecrosscollision--aa010294f3a7afb10d4b1dfc.md) | 159 | `declaration-track:aa010294f3a7afb10d4b1dfc19f75bc22a80872fad9f5b27af02c2790a5413d8` |
| 13 | `theorem` | [subpolynomialWeightedMertensEndpointDivisorSquareCrossCollision_iff_squarefreeMidpoint](../../../../mathematics/NumberTheory/Moebius/EndpointCrossCollisionDivisorSquareSieve.lean/declarations/subpolynomialweightedmertensendpointdivisorsquarecrosscollision-iff-squa--c6817af4aab0bbacde25eda7.md) | 168 | `result-track:c6817af4aab0bbacde25eda7467668f8d5fa28ddd13764c882b6f40d61cc53a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
