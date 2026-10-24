# Verification target: GRWTSK.Algebra.GroupTheory.Torsion.Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff6ecc826d006a3b01995485c20948ad84f091da",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff6ecc826d006a3b01995485c20948ad84f091da`.

Source path: `GRWTSK/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Exponent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.PGroup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Operations` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTorsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion--74231c162cdab0d26794c498.md) | 63 | `declaration-track:74231c162cdab0d26794c4982322e2d2951005b3f6227f778c557ebbd07f04d7` |
| 2 | `theorem` | [not_isTorsion_iff](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/not-istorsion-iff--e73e0eb8d3461afe7cc6a56a.md) | 71 | `result-track:e73e0eb8d3461afe7cc6a56a691684a8a76b913f7758ad72bd73076b612608d7` |
| 3 | `def` | [IsTorsion.group](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion-group--712a7004237a09a176a718cd.md) | 82 | `declaration-track:712a7004237a09a176a718cdd1602208566e26039339ef681f60a93ced461857` |
| 4 | `theorem` | [IsTorsion.subgroup](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion-subgroup--d6e1d4deae348b7585f364af.md) | 97 | `result-track:d6e1d4deae348b7585f364afa98d943373d9d105a33a0484d606d4d907f4607e` |
| 5 | `theorem` | [IsTorsion.of_surjective](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion-of-surjective--c596d0a4793371774cc6f5e1.md) | 105 | `result-track:c596d0a4793371774cc6f5e138aa27bf7325a7659bf2779172dae6fc3c97faf7` |
| 6 | `theorem` | [IsTorsion.extension_closed](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion-extension-closed--bc2bd01342e2ebf20e68dd54.md) | 115 | `result-track:bc2bd01342e2ebf20e68dd54c22cd3a1ff6cb5ec1e18e7a8e7cabc8ec9e2a2f6` |
| 7 | `theorem` | [IsTorsion.quotient_iff](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion-quotient-iff--ba5cebb00a263247464e3303.md) | 131 | `result-track:ba5cebb00a263247464e330364a478f3ec3c71319bc73d5c353cd6fb58fb9726` |
| 8 | `theorem` | [ExponentExists.isTorsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/exponentexists-istorsion--bc4d4999e07269c26e1ac00e.md) | 140 | `result-track:bc4d4999e07269c26e1ac00e881d9263353cb870769ec331c5fcad2c28348da2` |
| 9 | `theorem` | [IsTorsion.exponentExists](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion-exponentexists--2d204f57ac908d91330ec6e2.md) | 149 | `result-track:2d204f57ac908d91330ec6e25a67d2f71b9d9e137a60e9005729d2aa64cc7c83` |
| 10 | `theorem` | [isTorsion_of_finite](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion-of-finite--f875b404b7318a44e29c9eac.md) | 158 | `result-track:f875b404b7318a44e29c9eac669253a2663918f30775e94d3380f8c13f57eacc` |
| 11 | `theorem` | [IsTorsion.module_of_torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion-module-of-torsion--d9d569f3bf597c9efa4c24dc.md) | 173 | `result-track:d9d569f3bf597c9efa4c24dc5e0b1bf06b2443c175c85bcb4b3cc6876b9f233a` |
| 12 | `theorem` | [IsTorsion.module_of_finite](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion-module-of-finite--76792b7e61fa010f1af1a5d0.md) | 181 | `result-track:76792b7e61fa010f1af1a5d05a991d4114b629cf1b22cfd205886c1279373ae6` |
| 13 | `def` | [torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/torsion--d953d3985f4c742773b75243.md) | 200 | `declaration-track:d953d3985f4c742773b75243b8d1cc472031a0e3e2103649117a1016c2ecd279` |
| 14 | `theorem` | [torsion.isTorsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/torsion-istorsion--6c5cb98d0d2157dda9444c1b.md) | 211 | `result-track:6c5cb98d0d2157dda9444c1bcbe367060503d1291f18c824fa661b93c78e2ac0` |
| 15 | `def` | [primaryComponent](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/primarycomponent--b33c4bda71d961c8d3259034.md) | 228 | `declaration-track:b33c4bda71d961c8d325903427c00fb3bc31247a64468c4cd10ec5f38162f218` |
| 16 | `theorem` | [primaryComponent.exists_orderOf_eq_prime_pow](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/primarycomponent-exists-orderof-eq-prime-pow--22248498b95c8e3c7d4dda3f.md) | 247 | `result-track:22248498b95c8e3c7d4dda3f0b49f9546e499619cb874ee3c104cab2b8b81777` |
| 17 | `theorem` | [primaryComponent.disjoint](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/primarycomponent-disjoint--1fa1a3108f31b062f6ffa52a.md) | 254 | `result-track:1fa1a3108f31b062f6ffa52a83fa49c502ad202053fee87eed8bf71148fe2a41` |
| 18 | `theorem` | [torsion_eq_top](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/torsion-eq-top--5cded7fa28133bafda86aeec.md) | 274 | `result-track:5cded7fa28133bafda86aeec7665138f2644eb65c9fc72182e464f37e3ad93c4` |
| 19 | `def` | [torsionMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/torsionmulequiv--2bd3921504c4e607e499092d.md) | 280 | `declaration-track:2bd3921504c4e607e499092d40483b3e61c95c6cd612194daf22bc724655b559` |
| 20 | `theorem` | [torsionMulEquiv_apply](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/torsionmulequiv-apply--068fc6d5343347e7a38ac265.md) | 286 | `result-track:068fc6d5343347e7a38ac265a8fcb598dc3d88ce0fcc307cc196120fa7019b69` |
| 21 | `theorem` | [torsionMulEquiv_symm_apply_coe](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/torsionmulequiv-symm-apply-coe--46b1c05f7d9acf1fe67b701f.md) | 293 | `result-track:46b1c05f7d9acf1fe67b701fbc0715f496ee7f74f87ec213510fae0106f50dfa` |
| 22 | `def` | [Torsion.ofTorsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/torsion-oftorsion--88ba4e1e8a6a23cfe17eae7c.md) | 305 | `declaration-track:88ba4e1e8a6a23cfe17eae7c00167a620ae457fafc1321b12695f88f93766c26` |
| 23 | `def` | [torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/torsion--dfdf2bce5f46db789c561bf6.md) | 320 | `declaration-track:dfdf2bce5f46db789c561bf6bf4b435d58f837ad6e3dd9b22bff855debabe54a` |
| 24 | `theorem` | [torsion_eq_torsion_submonoid](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/torsion-eq-torsion-submonoid--f8194aae93006376e609af8e.md) | 329 | `result-track:f8194aae93006376e609af8edab842203d9b533603708501868e5ea7fcc75fe4` |
| 25 | `theorem` | [mem_torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/mem-torsion--846ba4a3a785c1493676ffc5.md) | 335 | `result-track:846ba4a3a785c1493676ffc5bb6f6ab91966b338878fbc26d6efd73c3b646fe7` |
| 26 | `def` | [primaryComponent](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/primarycomponent--f8d963754c9c190394c40b2d.md) | 343 | `declaration-track:f8d963754c9c190394c40b2dba6dc60421f72cf6522b1fa6458912ac3651611b` |
| 27 | `theorem` | [primaryComponent.isPGroup](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/primarycomponent-ispgroup--68a3b2d3bcaa28b47edf7c81.md) | 352 | `result-track:68a3b2d3bcaa28b47edf7c818237786ea7a93f73f47aa0dc7cd5e1aee56235ea` |
| 28 | `def` | [IsTorsionFree](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsionfree--c083e4486f4ae12f49e9fa58.md) | 367 | `declaration-track:c083e4486f4ae12f49e9fa580900cb52795b1584ef77fc555df748247922e069` |
| 29 | `theorem` | [not_isTorsionFree_iff](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/not-istorsionfree-iff--7edd4a473440a59a13cfe601.md) | 375 | `result-track:7edd4a473440a59a13cfe601bb668e84ca0b303778da5e94cf6adb59f77362e4` |
| 30 | `theorem` | [IsTorsion.not_torsion_free](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsion-not-torsion-free--200843af733985571627ccbf.md) | 391 | `result-track:200843af733985571627ccbf03441814a661a505340d345f15ad3a3f36b44b1b` |
| 31 | `theorem` | [IsTorsionFree.not_torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsionfree-not-torsion--6615dca274c1f99fab2ef4fe.md) | 401 | `result-track:6615dca274c1f99fab2ef4fe510d908350db92dea607aaf5396963ba19007cca` |
| 32 | `theorem` | [IsTorsionFree.subgroup](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsionfree-subgroup--a6de78b1a5c9726cf1d22d4c.md) | 410 | `result-track:a6de78b1a5c9726cf1d22d4c633a046176546869cbea73dad92f98e1af0f289a` |
| 33 | `theorem` | [IsTorsionFree.prod](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsionfree-prod--d9fad41354a3075843f6c26b.md) | 420 | `result-track:d9fad41354a3075843f6c26b69cc4dbbff1019b0d46c25a49166598dbc2e495f` |
| 34 | `theorem` | [IsTorsionFree.quotient_torsion](../../../../../mathematics/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/declarations/istorsionfree-quotient-torsion--79d169987c36a8807bb58ad2.md) | 440 | `result-track:79d169987c36a8807bb58ad20cc637434eab0665f93dc02bf00765ba3e71b31f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
