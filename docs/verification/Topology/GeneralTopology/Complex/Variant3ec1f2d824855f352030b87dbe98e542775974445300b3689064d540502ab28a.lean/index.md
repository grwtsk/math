# Verification target: GRWTSK.Topology.GeneralTopology.Complex.Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e776100272383a5bc5e205b786d6fc7110489c59",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e776100272383a5bc5e205b786d6fc7110489c59`.

Source path: `GRWTSK/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.QuadraticDiscriminant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.SpecificFunctions.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cos_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/cos-eq-zero-iff--e8a1ee99f72c216102f2d0d7.md) | 31 | `result-track:e8a1ee99f72c216102f2d0d76f933352b9a425eb802beff621a1b2dc27b674d3` |
| 2 | `theorem` | [cos_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/cos-ne-zero-iff--fa839c4d45d284b55e2e41ba.md) | 42 | `result-track:fa839c4d45d284b55e2e41ba5687857e915e06b974a9538e5c3c8d768c2dbb16` |
| 3 | `theorem` | [sin_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/sin-eq-zero-iff--2e56c0897cc071c198bfaf42.md) | 46 | `result-track:2e56c0897cc071c198bfaf42caed0e9570d4c1408c23f5a54e7391ef7ecb154a` |
| 4 | `theorem` | [sin_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/sin-ne-zero-iff--1dbe48aba60a723d7259a98a.md) | 59 | `result-track:1dbe48aba60a723d7259a98aa840a8b59918f1c170df036b36efc12b3f6bd332` |
| 5 | `theorem` | [tan_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/tan-eq-zero-iff--5119d816fcc809add3b98c44.md) | 63 | `result-track:5119d816fcc809add3b98c44a10d6199b732e256c665dca00185d553ccd976f4` |
| 6 | `theorem` | [tan_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/tan-ne-zero-iff--d08d5043f7e3c6a0fce4e21e.md) | 72 | `result-track:d08d5043f7e3c6a0fce4e21ee9a478462edc726a618d4cd5c135b299b4409765` |
| 7 | `theorem` | [tan_int_mul_pi_div_two](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/tan-int-mul-pi-div-two--1d3b61a6f771639ce0719700.md) | 76 | `result-track:1d3b61a6f771639ce071970080aebab7f319c93b10d5a6c326439b7f19cbda06` |
| 8 | `theorem` | [cos_eq_cos_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/cos-eq-cos-iff--5b92aff0d2f4a238e161df80.md) | 80 | `result-track:5b92aff0d2f4a238e161df808a7e2758921e7ab25a57b5bc2160d25abe13322f` |
| 9 | `theorem` | [sin_eq_sin_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/sin-eq-sin-iff--9086b0626698651aa8989475.md) | 94 | `result-track:9086b0626698651aa89894750c21533e5a7dfdd2cc64d03e39e22a4667596865` |
| 10 | `theorem` | [tan_add](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/tan-add--0e28c812551dde60dd40772a.md) | 100 | `result-track:0e28c812551dde60dd40772a684adbbc8b1de74367010d187fffb20f249845e1` |
| 11 | `theorem` | [tan_add'](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/tan-add--28b6d01693dc78eb0b4b2d8a.md) | 118 | `result-track:28b6d01693dc78eb0b4b2d8a78e1c17c4bda5c0559772eadd2fe4d097d25e951` |
| 12 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/macro-rules--398f79443187b7e8d649a704.md) | 124 | `declaration-track:398f79443187b7e8d649a7045bbd753d76ee3373ee42fd3e9005a41cc542e5b9` |
| 13 | `theorem` | [tan_two_mul](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/tan-two-mul--9d44d0a834ae2c659e9f0169.md) | 126 | `result-track:9d44d0a834ae2c659e9f016936ab372d80da3432677cccae7a2a3f19475549f5` |
| 14 | `theorem` | [tan_add_mul_I](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/tan-add-mul-i--92fae9330244ba48cdf1d4ef.md) | 133 | `result-track:92fae9330244ba48cdf1d4ef49e2f2c577d7ecade72f55bfeba681e702eab909` |
| 15 | `theorem` | [tan_eq](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/tan-eq--7e3e605a6faaf7880e4a2835.md) | 142 | `result-track:7e3e605a6faaf7880e4a2835ec7888cd0484e42a4d9f72982fb77cead77e0676` |
| 16 | `theorem` | [continuousOn_tan](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/continuouson-tan--4b9109bec08a39942291c5ff.md) | 154 | `result-track:4b9109bec08a39942291c5ff63113842cab4197fe6fa5199f97592aa62dec594` |
| 17 | `theorem` | [continuous_tan](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/continuous-tan--084ed80f01a624f3f2b89181.md) | 159 | `result-track:084ed80f01a624f3f2b89181da1ea183e58273c2e19cf60e2b475c9aaff25920` |
| 18 | `theorem` | [cos_eq_iff_quadratic](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/cos-eq-iff-quadratic--1aea6eeb6fc997bbb575328a.md) | 163 | `result-track:1aea6eeb6fc997bbb575328aadce844f37658d912cbf09a6aaef91b4bd7971d3` |
| 19 | `theorem` | [cos_surjective](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/cos-surjective--977bcd29b8ad6c893da11fd9.md) | 171 | `result-track:977bcd29b8ad6c893da11fd9789e2615746661ef3fb7c60c8e6055b2d15d705b` |
| 20 | `theorem` | [range_cos](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/range-cos--021fbe2a546f412db2fe55b4.md) | 187 | `result-track:021fbe2a546f412db2fe55b4da9787255c1e7387180ef45a38887e91860153fc` |
| 21 | `theorem` | [sin_surjective](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/sin-surjective--0a6e6d951e1d2437aea6fdea.md) | 191 | `result-track:0a6e6d951e1d2437aea6fdea0596b7d20b1f3a28119974f1978e6dd6eda43cbd` |
| 22 | `theorem` | [range_sin](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/range-sin--85829864670b3df41596ef39.md) | 198 | `result-track:85829864670b3df41596ef395281110a8272436bd2833a58bf82a98faa6a4248` |
| 23 | `theorem` | [cos_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/cos-eq-zero-iff--c3d1926df292417d7b93ece2.md) | 208 | `result-track:c3d1926df292417d7b93ece282dd89ded8bb777261eefef16876de88e1fc7c39` |
| 24 | `theorem` | [cos_ne_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/cos-ne-zero-iff--1fb9ac4432f277b449c65d85.md) | 212 | `result-track:1fb9ac4432f277b449c65d855f032b5b98a55ac6f3f75a59f5ae7e05fad7e286` |
| 25 | `theorem` | [cos_eq_cos_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/cos-eq-cos-iff--521e564ca0af846ecd69ff52.md) | 216 | `result-track:521e564ca0af846ecd69ff52b85cbe19507dc6002efaa1060c61ff8ca4949f67` |
| 26 | `theorem` | [sin_eq_sin_iff](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/sin-eq-sin-iff--c8bce9eb44a00c128b7d28e6.md) | 220 | `result-track:c8bce9eb44a00c128b7d28e63aa3f4fe67f42c5397e39884f32e1fc12137a3a1` |
| 27 | `theorem` | [lt_sin_mul](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/lt-sin-mul--f61cbbb9168fbcee7242b09d.md) | 225 | `result-track:f61cbbb9168fbcee7242b09d5f274941c744f1ef290e2c0e73059475f991a00a` |
| 28 | `theorem` | [le_sin_mul](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/le-sin-mul--ab272b929d84dc9e28c23428.md) | 231 | `result-track:ab272b929d84dc9e28c23428653eff269cd0487192515f065e6667fc83b94b3d` |
| 29 | `theorem` | [mul_lt_sin](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/mul-lt-sin--e77c39a803c9074351bc609a.md) | 237 | `result-track:e77c39a803c9074351bc609abe0af29b52952f6aa3953db1c9dc4a9292e16522` |
| 30 | `theorem` | [mul_le_sin](../../../../../mathematics/Topology/GeneralTopology/Complex/Variant3ec1f2d824855f352030b87dbe98e542775974445300b3689064d540502ab28a.lean/declarations/mul-le-sin--0e41e612a6c09f11beab551f.md) | 245 | `result-track:0e41e612a6c09f11beab551ff45e05330b5c94f0cad837f8ba4969a9f1dfd9a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
