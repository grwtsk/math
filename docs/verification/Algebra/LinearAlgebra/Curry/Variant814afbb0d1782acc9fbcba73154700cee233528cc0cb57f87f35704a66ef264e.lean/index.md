# Verification target: GRWTSK.Algebra.LinearAlgebra.Curry.Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90a49ef04a3004b7dc1f3b5f06c336cd4df90def",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90a49ef04a3004b7dc1f3b5f06c336cd4df90def`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Sort` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.uncurryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/linearmap-uncurryleft--1a95af823d3db4d18df3c596.md) | 56 | `declaration-track:1a95af823d3db4d18df3c596af182209b1735b083fc507c2d2b9e17e98dafabd` |
| 2 | `theorem` | [LinearMap.uncurryLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/linearmap-uncurryleft-apply--3f97fdf09751dda5dca02a25.md) | 63 | `result-track:3f97fdf09751dda5dca02a25ec0386aa4b3b70f34c10f450b8f7d15856ea24db` |
| 3 | `def` | [MultilinearMap.curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-curryleft--1adb687e0a4c993573b2e7dc.md) | 69 | `declaration-track:1adb687e0a4c993573b2e7dc46ff8438c7654ccfa2cbfc344618b3de18048428` |
| 4 | `theorem` | [MultilinearMap.curryLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-curryleft-apply--cfe1f167ece6fe24c5254732.md) | 80 | `result-track:cfe1f167ece6fe24c5254732e95b8982978e6672f036efcb9b192ba618e0ee4e` |
| 5 | `theorem` | [LinearMap.curry_uncurryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/linearmap-curry-uncurryleft--cee596f20403c7a37a774573.md) | 85 | `result-track:cee596f20403c7a37a7745733c7a014d8df983dd836d3c00a9059b0e12f1a7a6` |
| 6 | `theorem` | [MultilinearMap.uncurry_curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-uncurry-curryleft--a53332da16035e7b0d5e3423.md) | 92 | `result-track:a53332da16035e7b0d5e3423e6bbbb68392285dae9af72178a99028f59d89bcc` |
| 7 | `def` | [multilinearCurryLeftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearcurryleftequiv--dc04dd1c725fa9efc3dd6811.md) | 106 | `declaration-track:dc04dd1c725fa9efc3dd6811f5c05db830307a9527c2d8f27ffed3216148fc8b` |
| 8 | `def` | [MultilinearMap.uncurryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-uncurryright--e80bc280a506f55b95f7ced3.md) | 123 | `declaration-track:e80bc280a506f55b95f7ced3b76d2909b7b77779f70567e41a760cf18f908ae5` |
| 9 | `theorem` | [MultilinearMap.uncurryRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-uncurryright-apply--9e37b71a71c9a6aa47b47875.md) | 131 | `result-track:9e37b71a71c9a6aa47b4787578d546557fad4a8a106d31ce917e71905ec7ef2e` |
| 10 | `def` | [MultilinearMap.curryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-curryright--d18ef073cd0a9b30319a28f3.md) | 139 | `declaration-track:d18ef073cd0a9b30319a28f3f358fb6d477a9d1ac4ffc80f745ecf096c00658a` |
| 11 | `theorem` | [MultilinearMap.curryRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-curryright-apply--fb205ee27d3e3b61f8cb4b2c.md) | 147 | `result-track:fb205ee27d3e3b61f8cb4b2cef76a9bab7c97fe2dc84ebee4b84d6ab9a34dd07` |
| 12 | `theorem` | [MultilinearMap.curry_uncurryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-curry-uncurryright--7cfcdf47fa754ad52cb67f16.md) | 152 | `result-track:7cfcdf47fa754ad52cb67f16b43f8c9246533b13371cc4287af94f2e3b877786` |
| 13 | `theorem` | [MultilinearMap.uncurry_curryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-uncurry-curryright--8259f009530f37e1925228ad.md) | 160 | `result-track:8259f009530f37e1925228ad96aa3d9d13fc5f3a20a474237534bd17949e8b4e` |
| 14 | `def` | [multilinearCurryRightEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearcurryrightequiv--fc899c42cd88b9ff6fa47ccf.md) | 174 | `declaration-track:fc899c42cd88b9ff6fa47ccfa6df633a727f53c8a9a6007336f65fad5e1d8973` |
| 15 | `def` | [LinearMap.uncurryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/linearmap-uncurrymid--84c0c45ef9538362b4c83bb4.md) | 190 | `declaration-track:84c0c45ef9538362b4c83bb40c3c7a07ae13f00360fccb00b63d9b30157f4b68` |
| 16 | `def` | [MultilinearMap.curryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-currymid--7059ceed42ce70d1d5ac11a5.md) | 199 | `declaration-track:7059ceed42ce70d1d5ac11a546024e4bb9478936aad8676e9f7508b2d6ff3aad` |
| 17 | `theorem` | [LinearMap.curryMid_uncurryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/linearmap-currymid-uncurrymid--3d7671a06c3dbe61bc8580af.md) | 206 | `result-track:3d7671a06c3dbe61bc8580afbee2d429e342963c5d20119484423ddd477c1358` |
| 18 | `theorem` | [MultilinearMap.uncurryMid_curryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-uncurrymid-currymid--35acbcfaf066af1203ca30db.md) | 211 | `result-track:35acbcfaf066af1203ca30db64e3e1b9ae56a7dd7a2bcb93cba1c4a11d24c598` |
| 19 | `def` | [MultilinearMap.curryMidLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/multilinearmap-currymidlinearequiv--43becdf8fc8a8b6a9142e4c4.md) | 218 | `declaration-track:43becdf8fc8a8b6a9142e4c438e1f0d60e358e38ef5dbf3b837b311094c7ede9` |
| 20 | `def` | [currySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/currysum--f715542e2b56e805ba8ac19c.md) | 236 | `declaration-track:f715542e2b56e805ba8ac19c1bd8da070edf6a6eaf10797c1acea5da66ffc0cb` |
| 21 | `theorem` | [currySum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/currysum-apply--21ba755af75c9711c74ea124.md) | 248 | `result-track:21ba755af75c9711c74ea1240b8980f18bec17cc82c7d1d363fabdf68ceac012` |
| 22 | `theorem` | [currySum_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/currysum-apply--2eb61e26d74c73adc543f072.md) | 253 | `result-track:2eb61e26d74c73adc543f072ab17f185e7bbe18f9a0cfcbaa2e2993a92e2e76f` |
| 23 | `lemma` | [currySum_add](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/currysum-add--6741e9cc9e0032c1f4332e33.md) | 259 | `result-track:6741e9cc9e0032c1f4332e33e98bf4ea275a85094880090e8408dc0fc6707654` |
| 24 | `lemma` | [currySum_smul](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/currysum-smul--3a3151abcea4d21fb3b8e91a.md) | 263 | `result-track:3a3151abcea4d21fb3b8e91ae4078d34c5537c77a38f145798fbea13e8ff3180` |
| 25 | `def` | [uncurrySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/uncurrysum--52bc3251ed280c0ba9f60dfa.md) | 270 | `declaration-track:52bc3251ed280c0ba9f60dfa3731784a2abed5c55dd4c5aa581b3532a1039409` |
| 26 | `theorem` | [uncurrySum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/uncurrysum-apply--9c2836cc05391ca3a940f21d.md) | 285 | `result-track:9c2836cc05391ca3a940f21dcdd22d07e42b11599b1ce88b64a8c83c72bcf124` |
| 27 | `lemma` | [uncurrySum_add](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/uncurrysum-add--f8f7e671bed3a9b3cae97d63.md) | 292 | `result-track:f8f7e671bed3a9b3cae97d63112d7c4ea853578c1d2424c3b237a8fa50c595e1` |
| 28 | `lemma` | [uncurrySum_smul](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/uncurrysum-smul--a9c10fd3efd893f312a05728.md) | 298 | `result-track:a9c10fd3efd893f312a057287fad51dff978ab81d38de4e15429d0dacf26a111` |
| 29 | `lemma` | [uncurrySum_currySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/uncurrysum-currysum--f3038c970198a4f0e08d0ffa.md) | 307 | `result-track:f3038c970198a4f0e08d0ffad8189705bb2f6051c4ececc428ad66e421397fe7` |
| 30 | `lemma` | [currySum_uncurrySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/currysum-uncurrysum--e9b761a18b5873f0b6199383.md) | 315 | `result-track:e9b761a18b5873f0b6199383054f47bfffe0fed40484cf8f825d34b5acde48cf` |
| 31 | `def` | [currySumEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/currysumequiv--b687a9302f02c98f36a0b8e6.md) | 325 | `declaration-track:b687a9302f02c98f36a0b8e64ce2bdbcd4593b69a9540e9b83a422745afa462b` |
| 32 | `theorem` | [coe_currySumEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/coe-currysumequiv--8f0e8e7363f83d8100790176.md) | 336 | `result-track:8f0e8e7363f83d81007901760b3b3f0b4df13048da1b5f9015f48c33a720ec41` |
| 33 | `theorem` | [coe_currySumEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/coe-currysumequiv-symm--1086f7e8140aa162d1ffd72e.md) | 340 | `result-track:1086f7e8140aa162d1ffd72e5c56582cf24084079839967a5f35e37cb075ce3f` |
| 34 | `def` | [curryFinFinset](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/curryfinfinset--dfbdb2be1cc45fe33e7c6e29.md) | 349 | `declaration-track:dfbdb2be1cc45fe33e7c6e29c820918fe9f15f1d9128d46f7a1a39c0f31b1881` |
| 35 | `theorem` | [curryFinFinset_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/curryfinfinset-apply--a3c57e449244787ce0068624.md) | 358 | `result-track:a3c57e449244787ce0068624e67215bc43a8b9e8d632dce9784c43cb64db4483` |
| 36 | `theorem` | [curryFinFinset_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/curryfinfinset-symm-apply--1c0f1c79f81e85d3817f7d32.md) | 365 | `result-track:1c0f1c79f81e85d3817f7d32150c3b68ba09565036b279deba3885346c327072` |
| 37 | `theorem` | [curryFinFinset_symm_apply_piecewise_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/curryfinfinset-symm-apply-piecewise-const--0009e562275aebb3718e7389.md) | 374 | `result-track:0009e562275aebb3718e73894a729b0a432b95d9291e7e301c0fc65b8fdd19ef` |
| 38 | `theorem` | [curryFinFinset_symm_apply_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/curryfinfinset-symm-apply-const--3873cf6ef7ceb02441b69d28.md) | 389 | `result-track:3873cf6ef7ceb02441b69d28d616f31d01b2d7de667b6d8b303a97aa20fd5faf` |
| 39 | `theorem` | [curryFinFinset_apply_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variant814afbb0d1782acc9fbcba73154700cee233528cc0cb57f87f35704a66ef264e.lean/declarations/curryfinfinset-apply-const--4b265d37ac90b6670883ec79.md) | 395 | `result-track:4b265d37ac90b6670883ec79d76a3435b8c65ef2e107538e69ed28debfc73423` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
