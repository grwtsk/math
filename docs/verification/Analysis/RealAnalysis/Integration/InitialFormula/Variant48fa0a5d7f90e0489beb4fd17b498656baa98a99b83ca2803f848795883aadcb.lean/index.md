# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.InitialFormula.Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2adacbe11875d3e1ac1e540fc1412ce79b82d47e",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2adacbe11875d3e1ac1e540fc1412ce79b82d47e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/instance--023de7f49f009a6e66f16c86.md) | 46 | `declaration-track:023de7f49f009a6e66f16c869aebe02e6fad4cf0ad7ef6504769db5893ea285b` |
| 2 | `def` | [rCoeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/rcoeff--4a22fe99f8989f8f7567caee.md) | 56 | `declaration-track:4a22fe99f8989f8f7567caeee05cd533ba10f547bc9f0082bb3a456132a916fe` |
| 3 | `def` | [sCoeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/scoeff--4a128bac7b6cb46ccc9b3187.md) | 70 | `declaration-track:4a128bac7b6cb46ccc9b3187543c74e05fa4a3bc8c3b56191b1eee89ba15aa7b` |
| 4 | `def` | [scalePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/scalepolynomial--c7110a3252660241f4f8f092.md) | 83 | `declaration-track:c7110a3252660241f4f8f092b1bde1f0a7e943b01eed3414c40fd4aafc5d4eaa` |
| 5 | `def` | [positivePolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/positivepolynomial--47853a3c626bb677e4b264ea.md) | 88 | `declaration-track:47853a3c626bb677e4b264eaf872ab01a8cdd6668935714b070d5e8dfa159f98` |
| 6 | `def` | [mixedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/mixedpolynomial--7c3eb31eaab767ec27f71616.md) | 92 | `declaration-track:7c3eb31eaab767ec27f71616c0097e08f04732eb5feec80699728aa13479a847` |
| 7 | `theorem` | [scalePolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/scalepolynomial-eval--13db14d9fec7baf0e0e7a2ce.md) | 95 | `result-track:13db14d9fec7baf0e0e7a2ce3d74af5c7f0bbbcb8a0ee8568656ec78528a5670` |
| 8 | `theorem` | [positivePolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/positivepolynomial-eval--d1e0ce1dcca9066cc78721d6.md) | 101 | `result-track:d1e0ce1dcca9066cc78721d650de0b50b1fd2a9ef3686e1babff83bfbd00ba5e` |
| 9 | `theorem` | [mixedPolynomial_eval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/mixedpolynomial-eval--b4a4c63ee1df78290b2e200f.md) | 106 | `result-track:b4a4c63ee1df78290b2e200feafccc1e56ba89374754b2529a014f1c894f3728` |
| 10 | `theorem` | [positivePolynomial_expansion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/positivepolynomial-expansion--79e539090d5ea3bf3b6e399a.md) | 112 | `result-track:79e539090d5ea3bf3b6e399ade6039df8c1d199bd463ea357a4ddb77f4727f5b` |
| 11 | `theorem` | [mixedPolynomial_expansion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/mixedpolynomial-expansion--bfca8e6f27b1e75929e8945b.md) | 126 | `result-track:bfca8e6f27b1e75929e8945b714d4614a9901f6adb0aeeb30af84143ffd779b2` |
| 12 | `theorem` | [positivePolynomial_natDegree_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/positivepolynomial-natdegree-le--bb98f90cdf354af4c13d6052.md) | 137 | `result-track:bb98f90cdf354af4c13d6052cf880a127a96ea4ae83a40dd257d1b2b951ff9eb` |
| 13 | `theorem` | [mixedPolynomial_natDegree_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/mixedpolynomial-natdegree-le--6fa21cd00894ba5659b535a1.md) | 142 | `result-track:6fa21cd00894ba5659b535a1b391701c7356838fb09bf128fa516323a67f1610` |
| 14 | `theorem` | [positivePolynomial_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/positivepolynomial-coeff--09920fbbbbef8a7a81a9bee6.md) | 148 | `result-track:09920fbbbbef8a7a81a9bee6840fd33db3840abb9a73a697255afabf315f47df` |
| 15 | `theorem` | [positivePolynomial_neg_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/positivepolynomial-neg-coeff--81c5d394343f14e0476f4f17.md) | 158 | `result-track:81c5d394343f14e0476f4f17d25ccdc2d4bb3fa2c591618d9bbc75ba3067d0bb` |
| 16 | `theorem` | [mixedPolynomial_coeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/mixedpolynomial-coeff--931aeee94c6cd9a54bae04ec.md) | 167 | `result-track:931aeee94c6cd9a54bae04ece711d0ec62262adf1e22828a73c061d4a7d51268` |
| 17 | `def` | [polynomialKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/polynomialkernel--c98523203c9ee5682d8bf5c3.md) | 177 | `declaration-track:c98523203c9ee5682d8bf5c35736d816a4df76970fad87daf0769bea54f3ff55` |
| 18 | `def` | [sourceKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/sourcekernel--2543f8cd56c9b08730d9b866.md) | 181 | `declaration-track:2543f8cd56c9b08730d9b866a8af9d3cf046c493cfbb3fd5ad1fa1c94c22824d` |
| 19 | `def` | [equation20Summand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/equation20summand--872f7e3c146c2e84ba51f564.md) | 188 | `declaration-track:872f7e3c146c2e84ba51f564bcc89d062fb28df45076d24a9f11d6a171f9ef47` |
| 20 | `theorem` | [polynomialKernel_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/polynomialkernel-positive--3f2f9666bf985b48f52a6a81.md) | 196 | `result-track:3f2f9666bf985b48f52a6a811b949e5e82e571f2ef94227fea03e969f28267b7` |
| 21 | `theorem` | [polynomialKernel_negative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/polynomialkernel-negative--bdd26cf768fb7f68c5d38c33.md) | 208 | `result-track:bdd26cf768fb7f68c5d38c331a85c48b8d088256dd9a20a3ec23b1b6de211da3` |
| 22 | `theorem` | [polynomialKernel_mixed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/polynomialkernel-mixed--40801e87f3930a2b1b506fcd.md) | 220 | `result-track:40801e87f3930a2b1b506fcd1a9409a7e505ce1a7e19b7bf831279889d386e55` |
| 23 | `theorem` | [sourceKernel_eq_equation20Summand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/sourcekernel-eq-equation20summand--d76e83330d243b41b24f6cbe.md) | 234 | `result-track:d76e83330d243b41b24f6cbef282b81305894f8c58d0837fe1e95741fe94ea88` |
| 24 | `def` | [weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/weightedpolynomial--c093adf9d6377fa83ac0e8b4.md) | 249 | `declaration-track:c093adf9d6377fa83ac0e8b4293c26249de8762c22c7f072b4f65916c1a04ca6` |
| 25 | `theorem` | [weightedPolynomial_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/weightedpolynomial-eq-sum--a1567528c2e01813c9a80893.md) | 253 | `result-track:a1567528c2e01813c9a808935ef3f0b5a2c34663d1080564f0f7b26a5e1b035a` |
| 26 | `theorem` | [weightedPolynomial_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/weightedpolynomial-integrable--41e2f0652877008972db5d68.md) | 270 | `result-track:41e2f0652877008972db5d687626b390e002a59963f1974bae5e182df9089976` |
| 27 | `theorem` | [integral_weightedPolynomial](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/integral-weightedpolynomial--bb0095494c1fad00690d24e1.md) | 283 | `result-track:bb0095494c1fad00690d24e1fa330c6bdaef30dbbd604ab9e5675982a2ae4b58` |
| 28 | `theorem` | [weighted_expandedSummand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/weighted-expandedsummand-eq--9f9133fcde5a9667998c94c3.md) | 302 | `result-track:9f9133fcde5a9667998c94c3de6ee7ca75d6ed7cbe975edc8748ce3a01ffe48d` |
| 29 | `theorem` | [occurrence_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/occurrence-integrable--27b27fa2d3e6c273a92ab89d.md) | 331 | `result-track:27b27fa2d3e6c273a92ab89d35c9281a14747b8a82ec1ea916b1914d87f16493` |
| 30 | `theorem` | [integral_occurrence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/integral-occurrence--6bc712915615b64b1fc99ad3.md) | 368 | `result-track:6bc712915615b64b1fc99ad3616fca77215b453eb5374d59f4205daa66a28574` |
| 31 | `def` | [occurrenceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/occurrenceintegrand--ab1f1bcd06f7bf534452409c.md) | 418 | `declaration-track:ab1f1bcd06f7bf534452409c6810fc6cb760c404b035e643dd48937a02b02ae3` |
| 32 | `def` | [scaleMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/scalemajorant--d0a0b7d0a76e2cc6ee23c97d.md) | 424 | `declaration-track:d0a0b7d0a76e2cc6ee23c97d06a6dc04a0824c6920cef25c80adc2c78bd77476` |
| 33 | `theorem` | [scaleMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/scalemajorant-nonneg--bbb7cc176f9bc315599974e9.md) | 428 | `result-track:bbb7cc176f9bc315599974e9f1e4ce529e186220b8e19fae75b5783377305ac9` |
| 34 | `theorem` | [scaleMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/scalemajorant-integrable--c600cf625e46e7ded3c371a5.md) | 436 | `result-track:c600cf625e46e7ded3c371a563ff37cddc7267d68c0e2c4dbc0691dd602ea8d1` |
| 35 | `theorem` | [occurrenceIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/occurrenceintegrand-norm-le--9d10375386f09c4a5e5a0555.md) | 465 | `result-track:9d10375386f09c4a5e5a05553ee64500df8249294e5674f1fc0ebac6be0c80a7` |
| 36 | `theorem` | [integral_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/integral-norm-le--ec78d84a019908047c6ecf12.md) | 498 | `result-track:ec78d84a019908047c6ecf122d383f3d1547bfb11f50d398cdb1913f182d830d` |
| 37 | `theorem` | [integral_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/integral-norms-summable--4c3d850c22e9c7a8db4dd816.md) | 513 | `result-track:4c3d850c22e9c7a8db4dd8164d2aeff12674fbe8d451e65139554e60827a96c1` |
| 38 | `theorem` | [summedIntegrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/summedintegrand-eq--e276e6ba30c28e10db0e78be.md) | 528 | `result-track:e276e6ba30c28e10db0e78beb30eebbf20575446aef5dfbcaeaed611b1234b6e` |
| 39 | `theorem` | [integral_tsum_occurrences](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/integral-tsum-occurrences--1283b668ce53bbfc61367013.md) | 540 | `result-track:1283b668ce53bbfc61367013fd017270bb8e6c0854401b4ad2315cb8fb369bcb` |
| 40 | `theorem` | [integrals_enorm_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/integrals-enorm-ne-top--bcca5587f1a3939bf2086530.md) | 555 | `result-track:bcca5587f1a3939bf2086530d9f520b411e7cd999177c2f91a82bf71657c3fa2` |
| 41 | `theorem` | [summedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/summedintegrand-integrable--1e51fb145ef4cc93bf812517.md) | 573 | `result-track:1e51fb145ef4cc93bf81251761e19121ad9ffd1e75b273629ad32a4006b662c6` |
| 42 | `theorem` | [weightedSource_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/weightedsource-laplace-integrable--533f1344af394f93439b7b7b.md) | 598 | `result-track:533f1344af394f93439b7b7b5050d14b1cec9c00490b2f8505f905c2538ffb03` |
| 43 | `theorem` | [equation20](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/equation20--b2a1d310ecc854be5e809a0f.md) | 610 | `result-track:b2a1d310ecc854be5e809a0f5f37d06643ac77d2eb6fccf69879ee3651429f83` |
| 44 | `theorem` | [equation20_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/equation20-norms-summable--835801c7a9e45161d83345ba.md) | 632 | `result-track:835801c7a9e45161d83345ba1782dad7403c64d794bf97848cdf21f809c115df` |
| 45 | `def` | [InitialFormulaCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/initialformulacheckpoint--22259189ea2aca985631dc5f.md) | 647 | `declaration-track:22259189ea2aca985631dc5f6924fe8b7ae89c13bd3c2ae9aeabdce89b3c3383` |
| 46 | `theorem` | [initial_formula_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/InitialFormula/Variant48fa0a5d7f90e0489beb4fd17b498656baa98a99b83ca2803f848795883aadcb.lean/declarations/initial-formula-checkpoint--6abebb11c258d0973aa6c832.md) | 663 | `result-track:6abebb11c258d0973aa6c832e9910f50378973ef6f934ac6db204aa43eaea4be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
