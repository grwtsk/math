# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Midpoint.Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f937dddb911ebb381e43f1aaff4dd62532ab5bb2",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f937dddb911ebb381e43f1aaff4dd62532ab5bb2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineEquiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint--733a09d0e58fd8064577fb4b.md) | 44 | `declaration-track:733a09d0e58fd8064577fb4bfd39cf3dd16e494c94914a21e3e9a8c42cbd9478` |
| 2 | `theorem` | [AffineMap.map_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/affinemap-map-midpoint--da3dbcabe368aadd1b3ada10.md) | 51 | `result-track:da3dbcabe368aadd1b3ada105a3f65a40684218d031bec725f92846c7d8c375f` |
| 3 | `theorem` | [AffineEquiv.map_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/affineequiv-map-midpoint--0e98e4a227cb82bd34c6042d.md) | 57 | `result-track:0e98e4a227cb82bd34c6042d57f2a42f6f6b0a4a3719b4ff0a54c04aef1b0c0c` |
| 4 | `theorem` | [AffineEquiv.pointReflection_midpoint_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/affineequiv-pointreflection-midpoint-left--a71ae668067b5ee85c76f3a2.md) | 62 | `result-track:a71ae668067b5ee85c76f3a2475a3feceb80d3da55f024c94cc7561776737dd2` |
| 5 | `theorem` | [Equiv.pointReflection_midpoint_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/equiv-pointreflection-midpoint-left--fc6a7ea0b73f8eace6edea03.md) | 69 | `result-track:fc6a7ea0b73f8eace6edea03db65778fc03ef7a42a5f140c2144e2fc7f23f3b1` |
| 6 | `theorem` | [midpoint_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-comm--5ba4704a07382b1fb580c724.md) | 74 | `result-track:5ba4704a07382b1fb580c72450d809c2c1a34ef002411ecd88d59d45dfbac459` |
| 7 | `theorem` | [AffineEquiv.pointReflection_midpoint_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/affineequiv-pointreflection-midpoint-right--f184b78a7a6bb2cb100c55d5.md) | 78 | `result-track:f184b78a7a6bb2cb100c55d5c4f19a5d51990032aa02072981178687d692d932` |
| 8 | `theorem` | [Equiv.pointReflection_midpoint_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/equiv-pointreflection-midpoint-right--79924cf323523e97b82f3e42.md) | 84 | `result-track:79924cf323523e97b82f3e4223ab5f2aa702c42cc10d02c81e3f0beed794e8a2` |
| 9 | `theorem` | [midpoint_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-vsub-midpoint--6930196af1d6224ae5151361.md) | 88 | `result-track:6930196af1d6224ae515136101f992336dc5ffedad35ee46937e9bbc881ecbca` |
| 10 | `theorem` | [midpoint_vadd_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-vadd-midpoint--27c5ae26904bb98f30949a5a.md) | 93 | `result-track:27c5ae26904bb98f30949a5a7a8b63d21b522af54704fe237fe0c40be935c0b3` |
| 11 | `theorem` | [midpoint_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-eq-iff--e62e60db0fbb94b4231991b9.md) | 98 | `result-track:e62e60db0fbb94b4231991b916e9afc96146e497e854336de2558d4ded282c32` |
| 12 | `theorem` | [midpoint_pointReflection_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-pointreflection-left--2b8f186ec21378d01d77a5e5.md) | 105 | `result-track:2b8f186ec21378d01d77a5e5977e0d8f45b2119fa6ec905df792563a67ec19cf` |
| 13 | `theorem` | [midpoint_pointReflection_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-pointreflection-right--58cacac8c7627d9143f9102c.md) | 110 | `result-track:58cacac8c7627d9143f9102c5e368327736223782fece660d00a15021b98efb7` |
| 14 | `theorem` | [midpoint_vsub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-vsub-left--18872fff46dc925ade955df4.md) | 115 | `result-track:18872fff46dc925ade955df47f4ab02cc022937a6c0a44da07fb0690b5fea6f6` |
| 15 | `theorem` | [midpoint_vsub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-vsub-right--91fe7bbbd2ee9606695a1ae1.md) | 120 | `result-track:91fe7bbbd2ee9606695a1ae116397404f82ec8dfea671af584590a3338321f02` |
| 16 | `theorem` | [left_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/left-vsub-midpoint--a1be74f847307850d115f940.md) | 125 | `result-track:a1be74f847307850d115f94093238b16f960fde2a880859b02aee7c66adde6e7` |
| 17 | `theorem` | [right_vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/right-vsub-midpoint--6d4f338ce702f71f643e200e.md) | 130 | `result-track:6d4f338ce702f71f643e200eca4883e09479d6c1ea561bc7b2a7fd52d90fd309` |
| 18 | `theorem` | [midpoint_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-vsub--aea8ba39a4955f3e02932c6b.md) | 134 | `result-track:aea8ba39a4955f3e02932c6b48ef51eb5b0677bb711b6c0e927ef75e62eab364` |
| 19 | `theorem` | [vsub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/vsub-midpoint--23502fcaba1e950d07f751f9.md) | 141 | `result-track:23502fcaba1e950d07f751f95fc3b8fcf2d0a1e7128fb932c2c576479919d242` |
| 20 | `theorem` | [midpoint_sub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-sub-left--b712bcc783f3f09645047b14.md) | 148 | `result-track:b712bcc783f3f09645047b14e21ebd14fb2901cb0a04b023df9ffe10baec98e6` |
| 21 | `theorem` | [midpoint_sub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-sub-right--47263aeffb29aed0da85c754.md) | 153 | `result-track:47263aeffb29aed0da85c754420ab7aad25bf03150c1d6a8c1d059274f0b6c09` |
| 22 | `theorem` | [left_sub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/left-sub-midpoint--f4947b4a2e47224c09e39a4a.md) | 158 | `result-track:f4947b4a2e47224c09e39a4a3f1edd589c365e2fe7d3172b0eff18ace7408bd6` |
| 23 | `theorem` | [right_sub_midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/right-sub-midpoint--98d53286a9fa517e27549fbe.md) | 163 | `result-track:98d53286a9fa517e27549fbebb656e885396e3a746afe74b3f5e135923d3fce6` |
| 24 | `theorem` | [midpoint_eq_left_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-eq-left-iff--5151ca9e151efe9821cc5ce2.md) | 170 | `result-track:5151ca9e151efe9821cc5ce2ffcf2a78a34fc0293105de518602d58a8c93fc77` |
| 25 | `theorem` | [left_eq_midpoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/left-eq-midpoint-iff--86e217dfd633351cc1c15ad9.md) | 175 | `result-track:86e217dfd633351cc1c15ad9c8319038627dc5c99d0f595d9744eb2f81ac00f1` |
| 26 | `theorem` | [midpoint_eq_right_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-eq-right-iff--0610db81c83fa287171ab176.md) | 180 | `result-track:0610db81c83fa287171ab176ee19065750dfe02746b2a6ab1751dd7ada7e0a1d` |
| 27 | `theorem` | [right_eq_midpoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/right-eq-midpoint-iff--ab0bf9c859eec682be236c4b.md) | 185 | `result-track:ab0bf9c859eec682be236c4beb94909da1c81d38a187f2979de17bb323d94d69` |
| 28 | `theorem` | [midpoint_eq_midpoint_iff_vsub_eq_vsub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-eq-midpoint-iff-vsub-eq-vsub--bb25cc6e02a0a6f6f5d1442a.md) | 189 | `result-track:bb25cc6e02a0a6f6f5d1442a3d5f4f21b4068351029e2dbd53701b91fbe8e559` |
| 29 | `theorem` | [midpoint_eq_iff'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-eq-iff--65baf4c300a74a38bb60fa15.md) | 195 | `result-track:65baf4c300a74a38bb60fa15929a7072bef308f3a71f3993a191db050dbdc5f5` |
| 30 | `theorem` | [midpoint_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-unique--64709839a493e9d88c631693.md) | 200 | `result-track:64709839a493e9d88c631693f8a952090ab45824ce6fe443499c4484722eb672` |
| 31 | `theorem` | [midpoint_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-self--2c3c3e0dc46b28f18f172166.md) | 206 | `result-track:2c3c3e0dc46b28f18f172166ee86542d5b0dcc9c5559088a014e67ec4f6b1c1a` |
| 32 | `theorem` | [midpoint_add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-add-self--9d1ce7dda8cb2f516a638149.md) | 211 | `result-track:9d1ce7dda8cb2f516a638149bc9ab8a4e6d5b28d07966519d4190ee6f0bc35f9` |
| 33 | `theorem` | [midpoint_zero_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-zero-add--c62a44024faa9ab5b0607926.md) | 217 | `result-track:c62a44024faa9ab5b0607926d2140f198dd36904a38e0cc117246d54f39388c7` |
| 34 | `theorem` | [midpoint_eq_smul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-eq-smul-add--fdcc207a6eb9e5fa2415c8e5.md) | 221 | `result-track:fdcc207a6eb9e5fa2415c8e524717e530dc2f64157e2b44bf4cd00ced1b682f4` |
| 35 | `theorem` | [midpoint_self_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-self-neg--7dd43c7e4b5c5a7f9cef4c98.md) | 227 | `result-track:7dd43c7e4b5c5a7f9cef4c989870ba06e469055f0af81c93eb60f3fdd4a46f80` |
| 36 | `theorem` | [midpoint_neg_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-neg-self--3881ca9d6d24df45a9c1145a.md) | 232 | `result-track:3881ca9d6d24df45a9c1145a0f429304d7265073547550ffc6f9dd15c2f5bb5a` |
| 37 | `theorem` | [midpoint_sub_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-sub-add--7554c36d9f89200e8b9cde3f.md) | 236 | `result-track:7554c36d9f89200e8b9cde3fc92645f2a978c7dfd91c5a60372645a229ec74bb` |
| 38 | `theorem` | [midpoint_add_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/midpoint-add-sub--0279e7e0cd0bd08d25ca1b39.md) | 241 | `result-track:0279e7e0cd0bd08d25ca1b39840f5833efc8d08710c98410953389ad16ec81c5` |
| 39 | `def` | [ofMapMidpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/ofmapmidpoint--c03e542e8642f662e3f61a29.md) | 253 | `declaration-track:c03e542e8642f662e3f61a296cdb7ef1823d0dfb4b7ae699005c81f3244db1b7` |
| 40 | `theorem` | [coe_ofMapMidpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Midpoint/Variant28bb930fd9d2f703f1df85cebad36bf48ca1b72da57b2aa9ec5541a8a95dcf23.lean/declarations/coe-ofmapmidpoint--933fe489abcb4baf76794163.md) | 268 | `result-track:933fe489abcb4baf76794163655a0ade55511176c9a21e3b04ce182fe6e2fae2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
