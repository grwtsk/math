# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "181e8809db9e06af15d220fbf0197318f5778f14",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `181e8809db9e06af15d220fbf0197318f5778f14`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSignedPoissonBridge` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiSignedTouchardPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphisignedtouchardpolynomial--3e739b7dc9c6736f87df47e1.md) | 42 | `declaration-track:3e739b7dc9c6736f87df47e15e0f744c641d2812cf1462fb67beb34091e5d60c` |
| 2 | `theorem` | [thetaPhiSignedTouchardPolynomial_coeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphisignedtouchardpolynomial-coeff--9aefe6abd4989afe053e4057.md) | 48 | `result-track:9aefe6abd4989afe053e4057cee71dc9c3d4740009477088ed4556977b667578` |
| 3 | `theorem` | [thetaPhiSignedTouchardPolynomial_eval](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphisignedtouchardpolynomial-eval--d81ff50cddd465bd85756ca8.md) | 64 | `result-track:d81ff50cddd465bd85756ca86febc0c59bb2efa44e99fc09acb254388791bb36` |
| 4 | `def` | [thetaPhiSignedTouchardOperator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphisignedtouchardoperator--2e3b76bd677d004eda218b43.md) | 78 | `declaration-track:2e3b76bd677d004eda218b437cd0c5f70375d37e20b191f5df5b7c9c5045548c` |
| 5 | `theorem` | [thetaPhiSignedTouchardOperator_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphisignedtouchardoperator-apply--863bf1ce02c7476585ba1ffc.md) | 95 | `result-track:863bf1ce02c7476585ba1ffc4dc4cbf1a7fc4589087d7fcc2d18dc196009b295` |
| 6 | `theorem` | [thetaPhiSignedTouchardPolynomial_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphisignedtouchardpolynomial-zero--99f42c24c3b3e381f872d890.md) | 117 | `result-track:99f42c24c3b3e381f872d89017b1ee3505001567d24c45b557004c8d2941689a` |
| 7 | `theorem` | [thetaPhiSignedTouchardOperator_pow_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphisignedtouchardoperator-pow-one--6277ac083fe9ba8911381f8c.md) | 123 | `result-track:6277ac083fe9ba8911381f8c431a36186460a85be1d54acc93ee819718822233` |
| 8 | `def` | [thetaPhiBaseEndomorphism](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphibaseendomorphism--d7f9cdcd5c5c8a834cbf922a.md) | 135 | `declaration-track:d7f9cdcd5c5c8a834cbf922aa769a5db0dbc1390aea5914ab17b81545fca4293` |
| 9 | `theorem` | [thetaPhiBaseEndomorphism_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphibaseendomorphism-apply--55bc3921cdd8d7c6b4f78cef.md) | 142 | `result-track:55bc3921cdd8d7c6b4f78cef3b7541d22fbee0399809f0df3a7c817ca66cf58d` |
| 10 | `theorem` | [thetaPhiBasePolynomial_eq_endomorphism_pow](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphibasepolynomial-eq-endomorphism-pow--20b2d2ae0a76e652cf160583.md) | 160 | `result-track:20b2d2ae0a76e652cf1605831c8f58b547095c4c1075432e52b09d75c60e9159` |
| 11 | `theorem` | [smul_end_pow_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/smul-end-pow-apply--34877bc696b11be4b26debd9.md) | 174 | `result-track:34877bc696b11be4b26debd9f024ddfa6639c8794075cab4643157624340f608` |
| 12 | `theorem` | [scaled_touchard_pow_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/scaled-touchard-pow-one--88304c39c7fad3cb814b4549.md) | 203 | `result-track:88304c39c7fad3cb814b4549d97af5015071f199dea7659be87c20e3ba6ee5dd` |
| 13 | `theorem` | [scaled_id_pow_apply](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/scaled-id-pow-apply--92d904e055d964cf5f97c5c1.md) | 213 | `result-track:92d904e055d964cf5f97c5c1a6d8bbda7bf097656fc1fc12289060c7cb9401d9` |
| 14 | `theorem` | [scaled_touchard_commute_scaled_id](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/scaled-touchard-commute-scaled-id--f2629962abe25d0dfe3cb344.md) | 222 | `result-track:f2629962abe25d0dfe3cb3445730a471a56ce454d9006d9ce97358d229e0551e` |
| 15 | `theorem` | [thetaPhiBaseEndomorphism_pow_one_eq_touchard_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphibaseendomorphism-pow-one-eq-touchard-sum--f1827cb9d681a5369a96809c.md) | 232 | `result-track:f1827cb9d681a5369a96809c085fb286b3ab8b9468c818e9983027994482d0da` |
| 16 | `theorem` | [thetaPhiBasePolynomial_eq_generalizedTouchardPolynomial](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphibasepolynomial-eq-generalizedtouchardpolynomial--5b7b4a12ea122393471983fe.md) | 270 | `result-track:5b7b4a12ea122393471983fe654c5d80372e86cd147e8a2ee28df77e1c3a53dd` |
| 17 | `theorem` | [thetaPhiBaseGeneralizedTouchardIdentification](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphibasegeneralizedtouchardidentification--35f8effbdb610196e58c79f9.md) | 283 | `result-track:35f8effbdb610196e58c79f9930c6c3127c24bd3a8cdf34d8331c1f2f32e0e2c` |
| 18 | `theorem` | [thetaPhiBaseSignedMomentRepresentation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant63fec693ae531e7904f950a4a13d30562f0c498167ac25e7e1518a1574fc44dc.lean/declarations/thetaphibasesignedmomentrepresentation--096864f9e0505841d0e6c4aa.md) | 297 | `result-track:096864f9e0505841d0e6c4aa4d3d36bae653979181f97598b226aac86c383d4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
