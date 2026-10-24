# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6324c4f142f26943ac9c782480700d58ddec699",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6324c4f142f26943ac9c782480700d58ddec699`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Locality.AnchoredCertificates`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Locality/AnchoredCertificates__SourceOccurrencee274d3629fa4621500038121.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredBatchVerification`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredBatchVerification__SourceOccurrence76b2abe780b70eab9c96ca93.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredDependencyRevision`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/AnchoredDependencyRevision__SourceOccurrence2529dea74304d261db32a9b2.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.DynamicalSystems.TransitionSystems.AnchoredReinitialization`](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredReinitialization.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schema](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/schema--4d608ab600b0e9589a580deb.md) | 30 | `declaration-track:4d608ab600b0e9589a580deb6e3cd1ff18605d6c9df16cd330c064906fbdbdf6` |
| 2 | `def` | [policy](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/policy--fc0bd7a47076087ccb75c7bc.md) | 34 | `declaration-track:fc0bd7a47076087ccb75c7bc5232ed77230bb3f714a485e776cf31de478e5239` |
| 3 | `def` | [replayP](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/replayp--af36a71977588f8a2dc3a55d.md) | 41 | `declaration-track:af36a71977588f8a2dc3a55dca96f81d0d0e986d2da6bd598a9e2293756efe80` |
| 4 | `def` | [replayQ](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/replayq--2a3da4de0df37d5e575b529d.md) | 44 | `declaration-track:2a3da4de0df37d5e575b529d8bd8cf0013eb090944ad73b0e1441b618af45f9e` |
| 5 | `theorem` | [replay_P_reads](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/replay-p-reads--eda3d2dcd111715fe3d5acb7.md) | 47 | `result-track:eda3d2dcd111715fe3d5acb78bc7cf5c56f30dd16156006c41fc5d28127f9303` |
| 6 | `theorem` | [replay_Q_reads](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/replay-q-reads--9ce14d1a56d61b5a348dbaca.md) | 49 | `result-track:9ce14d1a56d61b5a348dbaca9bc0471752ba3d617b87ecdac83405651d492f35` |
| 7 | `def` | [recordP](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/recordp--8bbfb727da4bd3c5606d8370.md) | 52 | `declaration-track:8bbfb727da4bd3c5606d8370bac305fd10e51d88f0a74406fc6a3a95ac8861b6` |
| 8 | `def` | [recordQ](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/recordq--eba55815ca4a5e0d74333488.md) | 54 | `declaration-track:eba55815ca4a5e0d74333488e54b6e2e295c7afe0ee66f025443105603066df1` |
| 9 | `def` | [batchRecords](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/batchrecords--7fd7db622de502af2a008988.md) | 56 | `declaration-track:7fd7db622de502af2a00898881c0856b8465c99d9659346234cd9d8fa82b3b57` |
| 10 | `def` | [baseLedger](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/baseledger--c4dfaf9bef3fe9b502c58fc1.md) | 58 | `declaration-track:c4dfaf9bef3fe9b502c58fc1442d0fe6352a7b8cf8c86d3a4778b3e5794c8568` |
| 11 | `theorem` | [base_revision_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/base-revision-safe--eea14d3994592ae6a0cfa20d.md) | 67 | `result-track:eea14d3994592ae6a0cfa20d750dc167a99971d4a8542aacf8a5cc7be0f20c4e` |
| 12 | `def` | [initialLedger](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/initialledger--2d1e9eeef49e61c477c7889b.md) | 70 | `declaration-track:2d1e9eeef49e61c477c7889b5b56de00399e80f2e6a0e537be232e6f8ac626b4` |
| 13 | `theorem` | [initial_replay_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/initial-replay-safe--d6fb820895fe84db63edddcf.md) | 72 | `result-track:d6fb820895fe84db63edddcf15e580d5931bb798eb3afabe0676fb14f8225ff7` |
| 14 | `def` | [batchAdmission](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/batchadmission--80f19bcb3ff2332737018684.md) | 75 | `declaration-track:80f19bcb3ff233273701868424005fdc7e1fe637697e86de74d7124b1b53cb9a` |
| 15 | `def` | [admittedLedger](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/admittedledger--5c0c988009481078a1fc62b8.md) | 96 | `declaration-track:5c0c988009481078a1fc62b8e1c44694077e2c69f8d884ed9d3023bafe5dabe9` |
| 16 | `theorem` | [admitted_replay_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/admitted-replay-safe--c0a83569957c660a72558f23.md) | 98 | `result-track:c0a83569957c660a72558f23ff7275643e6d5f8c5d3d2797cfe3a9b81262fed2` |
| 17 | `theorem` | [admitted_status](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/admitted-status--c25b12e23e9b9efca3e99f24.md) | 101 | `result-track:c25b12e23e9b9efca3e99f244d7525f3175263a41c0228721f04557a5e2b18bc` |
| 18 | `theorem` | [admitted_current_target](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/admitted-current-target--bab5a4f76c1dc900607594ad.md) | 106 | `result-track:bab5a4f76c1dc900607594ad4990ab045d40d5ae1e2a52432a697d8183657dfd` |
| 19 | `theorem` | [admitted_archive_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/admitted-archive-exact--53ef2fa8a6a2f64dc11584be.md) | 110 | `result-track:53ef2fa8a6a2f64dc11584be97aebceafaf88b56474560342ba7d2be5927575c` |
| 20 | `theorem` | [admitted_base_not_revision_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/admitted-base-not-revision-safe--8a780a72e79394b57c93675c.md) | 114 | `result-track:8a780a72e79394b57c93675ce1abdfaf4ae5a1e44c7121428b3e16e6ba45fbac` |
| 21 | `theorem` | [same_footprint_Q_global_blocked](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/same-footprint-q-global-blocked--1a9cc903b913e7d1be7abc4b.md) | 121 | `result-track:1a9cc903b913e7d1be7abc4b9e93cc6c7e5ea2f527c5be2952fa0e25ee5f7322` |
| 22 | `def` | [config](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/config--3bd4c145b04f39f6e814197b.md) | 128 | `declaration-track:3bd4c145b04f39f6e814197b030b66129add2a025829df0a6e9d54cebf0998ca` |
| 23 | `def` | [session](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/session--e9fc39d8e9c42ac2b46ccdf1.md) | 130 | `declaration-track:e9fc39d8e9c42ac2b46ccdf139ae490f37277a41a87b7438123a82dd3bd79e50` |
| 24 | `theorem` | [restarted_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/restarted-safe--e6900a9e3e152e4702be779d.md) | 132 | `result-track:e6900a9e3e152e4702be779d77c9527de3d4e8aa7379497fc79bb6a2ece5cc91` |
| 25 | `theorem` | [restarted_history_exact](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/restarted-history-exact--ebcd079dabf0e519a4dd27fd.md) | 135 | `result-track:ebcd079dabf0e519a4dd27fd62785ca0c57a5893eb7a8360defad7d8c5c3a701` |
| 26 | `theorem` | [restarted_has_no_effects](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/restarted-has-no-effects--784e355a850a36d91dcb54f7.md) | 137 | `result-track:784e355a850a36d91dcb54f7f15d0b712c4ae5b178e7ead897c560f731935af5` |
| 27 | `def` | [unreadChange](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/unreadchange--1ca65310eeb8114302076c66.md) | 139 | `declaration-track:1ca65310eeb8114302076c66d5c9e2e84b39104025f0a8466602402ea7b67fab` |
| 28 | `def` | [readChange](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/readchange--aa6a07a28e04d69c625e6fea.md) | 141 | `declaration-track:aa6a07a28e04d69c625e6fea76c967bca00a20523bed2489986fc33949393f2a` |
| 29 | `theorem` | [unread_change_tokens](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/unread-change-tokens--61bbafb2ffda771e39652985.md) | 143 | `result-track:61bbafb2ffda771e3965298580896470d1ef8dd50ef09596dc551b2f53c940d9` |
| 30 | `theorem` | [unread_change_affected_empty](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/unread-change-affected-empty--9e7ff94f5004628152ed5fa0.md) | 146 | `result-track:9e7ff94f5004628152ed5fa01be20c0b758f8015cc2a9714c4661a7f2982d6f4` |
| 31 | `theorem` | [read_change_affected_all](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/read-change-affected-all--1bc91a600b0413922657320b.md) | 152 | `result-track:1bc91a600b0413922657320b9a8030197e9f41195915aee6a8a3ff3fe3f1ff8d` |
| 32 | `def` | [unreadLedger](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/unreadledger--19e887617e661d1931f8553b.md) | 163 | `declaration-track:19e887617e661d1931f8553b737c5dfc4bfb99e954fed082a51dec41f0331c8c` |
| 33 | `def` | [changedLedger](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/changedledger--f50d54a81558623628ebbe01.md) | 165 | `declaration-track:f50d54a81558623628ebbe01b9e126c84a66f75d49397a15a878c2b5dfd68224` |
| 34 | `theorem` | [unread_corrected_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/unread-corrected-safe--57e7e84fe1a17a63e1f29715.md) | 167 | `result-track:57e7e84fe1a17a63e1f297159b22b34d0f5cbd47dd128f590f8965ff79ea3cd5` |
| 35 | `theorem` | [changed_corrected_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/changed-corrected-safe--be95ae7ee9c5acde14b1e6e3.md) | 170 | `result-track:be95ae7ee9c5acde14b1e6e33851be768e6eefe726e51e1eac35cd80e0aa1929` |
| 36 | `theorem` | [unread_verified_all](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/unread-verified-all--775c8ff9e2d1859f8bd66e5a.md) | 173 | `result-track:775c8ff9e2d1859f8bd66e5a0ae14fb634583adad4743ad6e3313cd15109ea04` |
| 37 | `theorem` | [unread_current_targets](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/unread-current-targets--0694a28f50669850ac69ee45.md) | 177 | `result-track:0694a28f50669850ac69ee45a2a1c9fb6b13469fa69619714fd1e14844490eb7` |
| 38 | `theorem` | [changed_status](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/changed-status--d0ecfdb534c2732b2382b50b.md) | 181 | `result-track:d0ecfdb534c2732b2382b50bac8f131eed2a217faf3bfd08dfb8ddcc06e99a12` |
| 39 | `theorem` | [Q_true_but_reopened](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/q-true-but-reopened--384c168c05b47daa64c7c944.md) | 193 | `result-track:384c168c05b47daa64c7c9445f084299f6efa4f26f944e61fd75ad39678d1574` |
| 40 | `theorem` | [correction_archives_literal](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean/declarations/correction-archives-literal--5cc65b1c5b12151aaa4177fc.md) | 200 | `result-track:5cc65b1c5b12151aaa4177fc158ee228f8e608ed89100bcd2a649bf88212a7b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
