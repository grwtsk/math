# Verification target: GRWTSK.Analysis.MeasureTheory.Periodic.Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d35a690e6dbedf6d86d523ab875a305a0e1b705",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d35a690e6dbedf6d86d523ab875a305a0e1b705`.

Source path: `GRWTSK/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Floor` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [AddCircle.measurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/addcircle-measurablespace--588321e306ad97fac4541f5e.md) | 34 | `declaration-track:588321e306ad97fac4541f5e4f54144f1fbf31cf9591a21a7ae9505c8ecc7569` |
| 2 | `instance` | [AddCircle.borelSpace](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/addcircle-borelspace--e5413e0604d992877e7b7977.md) | 38 | `declaration-track:e5413e0604d992877e7b7977c36ef8ed2f5affb614977ec0f8df308bd8a314b0` |
| 3 | `theorem` | [AddCircle.measurable_mk'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/addcircle-measurable-mk--d8a7c121547630a86a6d9463.md) | 43 | `result-track:d8a7c121547630a86a6d9463fdbd7ff7371ac9803222e4772fd72f9f5e220ed2` |
| 4 | `theorem` | [isAddFundamentalDomain_Ioc](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/isaddfundamentaldomain-ioc--f333b6419c5a74aabbc6012b.md) | 48 | `result-track:f333b6419c5a74aabbc6012bb7c3b7b88e4a8675f8cb95b2b3014a186165dda1` |
| 5 | `theorem` | [isAddFundamentalDomain_Ioc'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/isaddfundamentaldomain-ioc--39642ddfe96ef3f82e13f532.md) | 58 | `result-track:39642ddfe96ef3f82e13f5321d4e64bdee1034ed86e2c8e81a5bc476403112d0` |
| 6 | `instance` | [measureSpace](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/measurespace--f9f690ec4da89bd186be2b45.md) | 73 | `declaration-track:f9f690ec4da89bd186be2b45cbce0fc9c463e257981fac74a4fd8d6060eeeb81` |
| 7 | `theorem` | [measure_univ](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/measure-univ--69a7fc0e77e36fce6847ca8b.md) | 78 | `result-track:69a7fc0e77e36fce6847ca8b836894a197a5cb6800b49dc3f05ce983185b60ef` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/instance--b8bc35e4687881469dfe3708.md) | 84 | `declaration-track:b8bc35e4687881469dfe3708b8881d6631ed436c744e91daab0d0a0c4275e34b` |
| 9 | `instance` | [isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/isfinitemeasure--21a16073b488bc2ea6d7400e.md) | 87 | `declaration-track:21a16073b488bc2ea6d7400e26cbc67b2edbe6356e7bcf6dc12828bb160dd080` |
| 10 | `theorem` | [measurePreserving_mk](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/measurepreserving-mk--9357838a66126c94edf858c1.md) | 95 | `result-track:9357838a66126c94edf858c1d4ac36147ebb2cd6ff11c984f20f615fcadab2dc` |
| 11 | `theorem` | [volume_closedBall](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/volume-closedball--44a16a7de88b5684167ea6ec.md) | 105 | `result-track:44a16a7de88b5684167ea6ecae613ddaf9c5b9018a64abcb37527543c21025e1` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/instance--2d37ff2bf1ce9fe8cd39f52e.md) | 126 | `declaration-track:2d37ff2bf1ce9fe8cd39f52ea816784d2e23879e104512eb4dbb921bebeaa232` |
| 13 | `def` | [measurableEquivIoc](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/measurableequivioc--ea0bbcf3588d869b5284f5bf.md) | 136 | `declaration-track:ea0bbcf3588d869b5284f5bf0b4010ad38a374def8aede521800a7aea53a001e` |
| 14 | `def` | [measurableEquivIco](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/measurableequivico--98b0c73ec6600096cdf51c2c.md) | 146 | `declaration-track:98b0c73ec6600096cdf51c2ca5da36ac5ded250873d5fc8c43c6c34d34236282` |
| 15 | `theorem` | [lintegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/lintegral-preimage--29d79f50e3db7bc883caff77.md) | 156 | `result-track:29d79f50e3db7bc883caff77f0d743d86ab8874a122dcbeda5828ebbd361ba5f` |
| 16 | `theorem` | [integral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/integral-preimage--bf2c3fcc125d2f612327ce7b.md) | 178 | `result-track:bf2c3fcc125d2f612327ce7b3e26c8751e585b782ec20eec44377cf2e0703ab1` |
| 17 | `theorem` | [intervalIntegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/intervalintegral-preimage--bcc442655ef0994bef35e12f.md) | 194 | `result-track:bcc442655ef0994bef35e12f53b86957e533d18501185c0a14855b07fd669741` |
| 18 | `instance` | [measureSpace](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/measurespace--041e515aebb46f35ee8a5a11.md) | 206 | `declaration-track:041e515aebb46f35ee8a5a111c3f74840f5529c07fe9aaec87d5e89c620c3f65` |
| 19 | `theorem` | [measure_univ](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/measure-univ--62f42ba99ceca16d867d668f.md) | 211 | `result-track:62f42ba99ceca16d867d668f664eeae7df53a822ca8df55db488088d442880f2` |
| 20 | `instance` | [isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/isfinitemeasure--0dbb058694b02145d152a4ff.md) | 214 | `declaration-track:0dbb058694b02145d152a4ff65b1a6dce9fd562f8a1957e66491b78e78cb1b70` |
| 21 | `theorem` | [measurePreserving_mk](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/measurepreserving-mk--1fb3035dd2678c581bfc4e83.md) | 222 | `result-track:1fb3035dd2678c581bfc4e839145a65a33d600a2c75034cd8f155e7825b28d09` |
| 22 | `theorem` | [lintegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/lintegral-preimage--a2a5fc7085bd10a1cde8e366.md) | 230 | `result-track:a2a5fc7085bd10a1cde8e36620f8f80bfdfaed05c057b65457da866bb6116f2a` |
| 23 | `theorem` | [integral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/integral-preimage--bc03f374a0c95e56829b62c3.md) | 239 | `result-track:bc03f374a0c95e56829b62c3ef87f9b9916a99b66126f5d3822d00df7653eeb1` |
| 24 | `theorem` | [intervalIntegral_preimage](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/intervalintegral-preimage--1a65d5794a5d2d81c9fe0cfa.md) | 246 | `result-track:1a65d5794a5d2d81c9fe0cfaef83ef86f5f44b42d265e76220128e7d15fa90ab` |
| 25 | `theorem` | [intervalIntegral_add_eq_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/intervalintegral-add-eq-of-pos--2cd7f8938f37a7aa67f3b3ab.md) | 262 | `result-track:2cd7f8938f37a7aa67f3b3abe6bbe36c429271ab30b510b6b4f834bbdae36e6a` |
| 26 | `theorem` | [intervalIntegral_add_eq](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/intervalintegral-add-eq--08bcd2264598e5dcaf84f2a0.md) | 273 | `result-track:08bcd2264598e5dcaf84f2a0f4a20325a434f6d90439dafb12c436661d74f05a` |
| 27 | `theorem` | [intervalIntegral_add_eq_add](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/intervalintegral-add-eq-add--23c9e9738d5991ad2c74cc40.md) | 285 | `result-track:23c9e9738d5991ad2c74cc404bf96fa6b9bbdf902c655c0c8f09e2b559af284a` |
| 28 | `theorem` | [intervalIntegral_add_zsmul_eq](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/intervalintegral-add-zsmul-eq--8df74051f2908e5d7f24f248.md) | 293 | `result-track:8df74051f2908e5d7f24f248d38dd8b053d5c3c04cf9b9f0f155cee5a8244893` |
| 29 | `theorem` | [sInf_add_zsmul_le_integral_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/sinf-add-zsmul-le-integral-of-pos--afad493f0800e4b2547588e7.md) | 326 | `result-track:afad493f0800e4b2547588e759c110f4247224b18469ba7473417a10ca374bee` |
| 30 | `theorem` | [integral_le_sSup_add_zsmul_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/integral-le-ssup-add-zsmul-of-pos--4be17adc6178c628a64fbdab.md) | 342 | `result-track:4be17adc6178c628a64fbdabeecf648e9ddb54649e784e3659c18c3ccaf8bf7b` |
| 31 | `theorem` | [tendsto_atTop_intervalIntegral_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/tendsto-attop-intervalintegral-of-pos--bb297125baa980d9edb7d5c6.md) | 357 | `result-track:bb297125baa980d9edb7d5c66e131aabbccad8bb9f06fc5a99c555d882c550c0` |
| 32 | `theorem` | [tendsto_atBot_intervalIntegral_of_pos](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/tendsto-atbot-intervalintegral-of-pos--d035f82aad4a50966f868919.md) | 367 | `result-track:d035f82aad4a50966f8689192c5b3fa3c0567ec1f24feccec69c507fad28b372` |
| 33 | `theorem` | [tendsto_atTop_intervalIntegral_of_pos'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/tendsto-attop-intervalintegral-of-pos--ae753dd10c91e4fee8d12660.md) | 377 | `result-track:ae753dd10c91e4fee8d12660097f05c9fee656e944d25804fa4d6f90dc30f70d` |
| 34 | `theorem` | [tendsto_atBot_intervalIntegral_of_pos'](../../../../../mathematics/Analysis/MeasureTheory/Periodic/Varianta294c7010d7877a3ee6263afcbfcecbf2a77aef5acd6ca8b30fe4668f78b3ea5.lean/declarations/tendsto-atbot-intervalintegral-of-pos--48b57940b3762fe3093eabd1.md) | 384 | `result-track:48b57940b3762fe3093eabd1f84c323b0ee1dc7e7d5d602072ed91f53506c68d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
