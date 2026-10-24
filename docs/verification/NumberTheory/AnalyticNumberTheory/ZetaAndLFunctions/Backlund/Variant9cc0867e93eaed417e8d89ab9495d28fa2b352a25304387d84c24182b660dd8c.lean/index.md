# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Backlund.Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b53b984edd7dd34a14c656c928b79798ae274f69",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b53b984edd7dd34a14c656c928b79798ae274f69`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.ZetaGrowth` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.BacklundDefs` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ReZeroCount` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.Statement` — import line 31; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.StrongPNTPrefix` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ofReal_add_mul_I_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/ofreal-add-mul-i-ne-one--e048c0cb86be2c043f3b9886.md) | 67 | `result-track:e048c0cb86be2c043f3b988686569fa128491039820e3e5ec888e0e662b5182f` |
| 2 | `lemma` | [hasDerivAt_riemannZeta_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/hasderivat-riemannzeta-horizontal--c782edd6fd5557b13ceec1c4.md) | 74 | `result-track:c782edd6fd5557b13ceec1c44ae40506ed8989e2bce5d91ba7932651c7210471` |
| 3 | `lemma` | [continuous_riemannZeta_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/continuous-riemannzeta-horizontal--aacfecb339fd69c7c98c43f4.md) | 83 | `result-track:aacfecb339fd69c7c98c43f456fa74c6dc6aa1ffda7e5113e5f34e7f0ff1cc0a` |
| 4 | `lemma` | [continuous_deriv_riemannZeta_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/continuous-deriv-riemannzeta-horizontal--2ff4720285d383295f5fbb18.md) | 87 | `result-track:2ff4720285d383295f5fbb18a0a970c33023eb4c7db51ef4acbb0b4e4f751936` |
| 5 | `lemma` | [continuousOn_logDeriv_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/continuouson-logderiv-horizontal--6b6031aef143288b6e7ca46c.md) | 94 | `result-track:6b6031aef143288b6e7ca46ca11cac161359a12426f3fc73279259bbc1ce9492` |
| 6 | `lemma` | [intervalIntegrable_logDeriv_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/intervalintegrable-logderiv-horizontal--472de61a7f34be953b801c35.md) | 103 | `result-track:472de61a7f34be953b801c3589a351e250cf0b9c118f8f89715a12f6dc47c18a` |
| 7 | `lemma` | [im_integral_le_two_pi](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/im-integral-le-two-pi--a3efee71319a44b1e08a8c38.md) | 111 | `result-track:a3efee71319a44b1e08a8c3891dec36c7236b81551de30a738b131209b347c61` |
| 8 | `lemma` | [im_integral_logDeriv_le_aux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/im-integral-logderiv-le-aux--dffcb9ae57676d7fbbbb76f7.md) | 194 | `result-track:dffcb9ae57676d7fbbbb76f7d9320cb9db93df3e5d9a6e9e196375e5f9af1266` |
| 9 | `theorem` | [im_integral_logDeriv_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/im-integral-logderiv-le--6ebd6d742274f1db63c9c68b.md) | 274 | `result-track:6ebd6d742274f1db63c9c68b8f98b358773a3ed3ece63cdae2caf0137e4887c0` |
| 10 | `lemma` | [riemannZeta_ne_zero_on_segment](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/riemannzeta-ne-zero-on-segment--e362d698d3374dc33e88fd11.md) | 295 | `result-track:e362d698d3374dc33e88fd113a098f345f4f0fffbbf569be63273767c8639e1d` |
| 11 | `theorem` | [backlund_horizontal_of_count_at](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/backlund-horizontal-of-count-at--2757310c617d5cd186400518.md) | 306 | `result-track:2757310c617d5cd186400518e8ebe3c95f8e7cf8c5f2e39a54314b54a8823f12` |
| 12 | `theorem` | [backlund_horizontal_of_count](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/backlund-horizontal-of-count--ab757157ed1147b38936429e.md) | 327 | `result-track:ab757157ed1147b38936429ecd46b9de82d214dfa39490665e93ac1004871cb6` |
| 13 | `theorem` | [backlund_horizontal](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/backlund-horizontal--5743eb5745ba4d014047dad7.md) | 338 | `result-track:5743eb5745ba4d014047dad7ce4fb78941481f675a90155c2571eac15899ee71` |
| 14 | `theorem` | [backlund_horizontal_at](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/backlund-horizontal-at--702e5966064fd4167a318b78.md) | 346 | `result-track:702e5966064fd4167a318b78aff20532bdba4efe1a5a32e0bb81b78accc86ce5` |
| 15 | `lemma` | [re_riemannZeta_two_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/re-riemannzeta-two-pos--c3168816c1f30fbc656067a1.md) | 356 | `result-track:c3168816c1f30fbc656067a163076d15a30c2fdc73d560ce216aeab2485b9dac` |
| 16 | `lemma` | [two_add_mul_I_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/two-add-mul-i-ne-one--8d223cd52fe84fa5b5a329f8.md) | 364 | `result-track:8d223cd52fe84fa5b5a329f858decc60fa2beb3add180770db432e3f33a55bed` |
| 17 | `lemma` | [hasDerivAt_log_riemannZeta_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/hasderivat-log-riemannzeta-two--92083fbb194c40ca91fcabe9.md) | 370 | `result-track:92083fbb194c40ca91fcabe9a72d4050586531fdbd9ebc29212e1a9a8dbc0a15` |
| 18 | `lemma` | [continuous_logDeriv_riemannZeta_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/continuous-logderiv-riemannzeta-two--3609fda87c40d9058768bd21.md) | 391 | `result-track:3609fda87c40d9058768bd211c04792719b260c20dee9a40ab280f7dfbc05eb7` |
| 19 | `theorem` | [vertical_two](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/declarations/vertical-two--e05019c34838f4445a87185a.md) | 408 | `result-track:e05019c34838f4445a87185a27e9967187b1efe7a04b50c889c692aa550b4fa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
