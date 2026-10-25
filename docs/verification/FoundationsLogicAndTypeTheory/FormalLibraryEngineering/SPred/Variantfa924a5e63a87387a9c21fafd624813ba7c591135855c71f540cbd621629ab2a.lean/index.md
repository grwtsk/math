# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SPred.Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8825c2e1cbc75c79e35d069336c162aba789b00a",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8825c2e1cbc75c79e35d069336c162aba789b00a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/spred--fe9b142856c0ad11e96af5c3.md) | 42 | `declaration-track:fe9b142856c0ad11e96af5c3f7149acf6015abf5ae0a955ed70144eabae3ec03` |
| 2 | `theorem` | [ext_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/ext-nil--ffbe746aa51ea06e33f1d228.md) | 50 | `result-track:ffbe746aa51ea06e33f1d22877f845753e918899a4872956e514f504dd16df22` |
| 3 | `theorem` | [ext_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/ext-cons--1d8188248aee94238bcccc29.md) | 54 | `result-track:1d8188248aee94238bcccc293a17e3563471a6a14a484d96b93d9b96a9da13b6` |
| 4 | `def` | [pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/pure--a34a8e71567af278c3ff80ae.md) | 60 | `declaration-track:a34a8e71567af278c3ff80ae39d3eac30718119c40f9d465643ce73a7e5b9272` |
| 5 | `theorem` | [pure_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/pure-nil--978fd634c4a57a971dd9e93c.md) | 63 | `result-track:978fd634c4a57a971dd9e93caad848c6bac5d9f17c22574aa6ae1fd0a2b39a66` |
| 6 | `theorem` | [pure_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/pure-cons--6d27e346303b39b63dc56285.md) | 64 | `result-track:6d27e346303b39b63dc5628563fa990cafda67b66d2186770acfb2701daab347` |
| 7 | `theorem` | [down_pure_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/down-pure-nil--f91d3dfaa4982bc1a3d6bbfb.md) | 65 | `result-track:f91d3dfaa4982bc1a3d6bbfbe10816048cbc798fb3a2c1d013ee8e09e7f3149c` |
| 8 | `theorem` | [apply_pure_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/apply-pure-cons--3d3e02802814ce85ea858817.md) | 66 | `result-track:3d3e02802814ce85ea858817f354f5ee55876810c3089af0f646673c9c8e7554` |
| 9 | `def` | [entails](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/entails--1ce0cc4b43bde40fbd0f61a6.md) | 75 | `declaration-track:1ce0cc4b43bde40fbd0f61a60e58cd97df24067d239933bd3d85c5368ed45d91` |
| 10 | `theorem` | [entails_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/entails-nil--120bf2b0f667bdfc4dd2c7e1.md) | 78 | `result-track:120bf2b0f667bdfc4dd2c7e1aa9a1f83b11f67298f7537d12f6784f2d784e8cc` |
| 11 | `theorem` | [entails_nil_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/entails-nil-intro--8a94cf3d8ba6cdf528f4434d.md) | 79 | `result-track:8a94cf3d8ba6cdf528f4434d276e18f4dcd96100dbf17aa2a8dbafec012342ba` |
| 12 | `theorem` | [entails_nil_pure_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/entails-nil-pure-intro--c50c44739e2a29daa4c5fb23.md) | 80 | `result-track:c50c44739e2a29daa4c5fb234740f275db902b22c2ae5cc9421c43f71290dc64` |
| 13 | `theorem` | [entails_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/entails-cons--8c2de5656952cf6417ba0bc6.md) | 83 | `result-track:8c2de5656952cf6417ba0bc67cec1756aac7c9e62942157ef30559b5578f47ac` |
| 14 | `theorem` | [entails_cons_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/entails-cons-intro--a8f53bf168bd509cca32127c.md) | 84 | `result-track:a8f53bf168bd509cca32127c3d5fdaaa41a0b92bc8b5e75318e2028743c0733c` |
| 15 | `def` | [bientails](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/bientails--be2474614a64d1a9e188d13d.md) | 94 | `declaration-track:be2474614a64d1a9e188d13d571e747876635fac32a13d37fe5f6c0348f00d20` |
| 16 | `theorem` | [bientails_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/bientails-nil--fd31c7d6a10996b513464802.md) | 97 | `result-track:fd31c7d6a10996b513464802e0a51ce3be941df14036dd0de8cf0055eed8a4d0` |
| 17 | `theorem` | [bientails_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/bientails-cons--bdc00aa179ad07448e6e93fd.md) | 98 | `result-track:bdc00aa179ad07448e6e93fd0675e07cf0cfdf09fc5e65415b668cf6eadb3f46` |
| 18 | `theorem` | [bientails_cons_intro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/bientails-cons-intro--5bb08554362318b5feda97b4.md) | 99 | `result-track:5bb08554362318b5feda97b469a875188f2eb6e53c13c33de7160d9015501142` |
| 19 | `def` | [and](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/and--a0f2e9a31b19b3b40cb9a3d2.md) | 102 | `declaration-track:a0f2e9a31b19b3b40cb9a3d2ecbbbad066237710b500b576ed249b0cbaecffa9` |
| 20 | `theorem` | [and_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/and-nil--0bf93786687db4f10b11083f.md) | 105 | `result-track:0bf93786687db4f10b11083fd6aac65e224599d4004762ef9d2145c945f95058` |
| 21 | `theorem` | [and_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/and-cons--7d563eba7810b2a0da29ecc0.md) | 106 | `result-track:7d563eba7810b2a0da29ecc08cc29e619929ac36f647d472f320e8304bd63c94` |
| 22 | `def` | [or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/or--af68dba32141eeaedacfa1cc.md) | 109 | `declaration-track:af68dba32141eeaedacfa1ccf60a479818150373198c57410c02de2a352c3668` |
| 23 | `theorem` | [or_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/or-nil--f8761c96a23664b79f6c47cd.md) | 112 | `result-track:f8761c96a23664b79f6c47cd0998b93b2ed4d36bd057507f027a0d366a2db2cf` |
| 24 | `theorem` | [or_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/or-cons--8b43a5204d0048e7a87d71b5.md) | 113 | `result-track:8b43a5204d0048e7a87d71b5d4abba1020d7b46efdefa15c7223400c443f466f` |
| 25 | `def` | [not](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/not--92bd0091488def9520c19e74.md) | 116 | `declaration-track:92bd0091488def9520c19e74e768cb183eedcddf8396638e43ca3c2415fc4314` |
| 26 | `theorem` | [not_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/not-nil--54b8138e29fc5799bd488ba1.md) | 119 | `result-track:54b8138e29fc5799bd488ba1e9b3823c3672004f444157a5df5d306be65c7216` |
| 27 | `theorem` | [not_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/not-cons--efd835af1e5ddfd89b902afb.md) | 120 | `result-track:efd835af1e5ddfd89b902afbaadcbdb2af010059531a9760f7766babbda8f828` |
| 28 | `def` | [imp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/imp--e74b44b96fe694bda7debf10.md) | 125 | `declaration-track:e74b44b96fe694bda7debf10fe656735aba8e3526b6409c4b043436673f46f4e` |
| 29 | `theorem` | [imp_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/imp-nil--5898980bcd502d1af9207a30.md) | 128 | `result-track:5898980bcd502d1af9207a306a62eddcec623d53a9e9a8a50b2ee34687eb8994` |
| 30 | `theorem` | [imp_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/imp-cons--a545efb026faf1706f32a4ad.md) | 129 | `result-track:a545efb026faf1706f32a4ada447fbb05e169aa0f64209947d4920a869be4b48` |
| 31 | `def` | [iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/iff--7ecdbca39c5814f9245d5f71.md) | 135 | `declaration-track:7ecdbca39c5814f9245d5f712453005b8ecda6d331069aa7011a2a0e1fad096b` |
| 32 | `theorem` | [iff_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/iff-nil--2e9c0268fc8f8a1b8b91f578.md) | 138 | `result-track:2e9c0268fc8f8a1b8b91f578d460271498b138199d00dd107cb799280f3be86b` |
| 33 | `theorem` | [iff_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/iff-cons--b04b3dc675eac63cf8779a28.md) | 139 | `result-track:b04b3dc675eac63cf8779a28c1fdd35d9e76aaf5f301cc8e0dd056777e5fa0e1` |
| 34 | `def` | [«exists»](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/exists--2d32d4f53d309ae86bca1e99.md) | 142 | `declaration-track:2d32d4f53d309ae86bca1e99ffa3aab69b01e31db74a8f1730fcdb768be282fb` |
| 35 | `theorem` | [exists_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/exists-nil--e1c69d94757fd20b880b8cb3.md) | 145 | `result-track:e1c69d94757fd20b880b8cb33f783274a708a013aa91337b23d88fc23959d4ae` |
| 36 | `theorem` | [exists_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/exists-cons--33e492058cfc8d1663978c0c.md) | 146 | `result-track:33e492058cfc8d1663978c0c9c2562796f4e70bd36062860100a6a6a88d4e664` |
| 37 | `def` | [«forall»](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/forall--b8b8324eabae36c1ed6bb943.md) | 149 | `declaration-track:b8b8324eabae36c1ed6bb943caaea54c4596ee01458f22892cf3da1e6ccb7e4f` |
| 38 | `theorem` | [forall_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/forall-nil--08d6008c5df505e512c15dca.md) | 152 | `result-track:08d6008c5df505e512c15dcadda490fa8fa6195f73d03a1bccc9e7f80708ca41` |
| 39 | `theorem` | [forall_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/forall-cons--edfd89f1633af41aa7ac4f20.md) | 153 | `result-track:edfd89f1633af41aa7ac4f200a58be57c8c5ea8fe181efa814ad0db74c5b362e` |
| 40 | `def` | [conjunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/conjunction--8e2049ed3e78ac08992eb01a.md) | 159 | `declaration-track:8e2049ed3e78ac08992eb01a3cbd63c20f94de740602f31f0f8d3f2bbdf224c9` |
| 41 | `theorem` | [conjunction_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/conjunction-nil--6d8d98fc02fe81590f8b360d.md) | 162 | `result-track:6d8d98fc02fe81590f8b360d14f05ea6bd3ea05b93e775b12fcac94991b0ffeb` |
| 42 | `theorem` | [conjunction_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/conjunction-cons--eb992fe41e5bb9281621e29d.md) | 163 | `result-track:eb992fe41e5bb9281621e29d0aaed1c5dbcb89300b0838ccba329d960afabdc3` |
| 43 | `theorem` | [conjunction_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SPred/Variantfa924a5e63a87387a9c21fafd624813ba7c591135855c71f540cbd621629ab2a.lean/declarations/conjunction-apply--055eb106169134b06c845be5.md) | 164 | `result-track:055eb106169134b06c845be51bda816754a3d58451a02fd7059d19288a58d8f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
