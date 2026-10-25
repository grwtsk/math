# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50978ac73b83bf225edf720ebe5f025518d9f7c3",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50978ac73b83bf225edf720ebe5f025518d9f7c3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_dvd_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/map-dvd-iff--0836a1ea64ad3614f88320e6.md) | 26 | `result-track:0836a1ea64ad3614f88320e6e6b86ffe11ba00ef0a4c57170ab46a4f76ff1a0d` |
| 2 | `theorem` | [map_dvd_iff_dvd_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/map-dvd-iff-dvd-symm--e778a4df49c692d288372e05.md) | 30 | `result-track:e778a4df49c692d288372e051f359a27c93614701d1987410300312bfc68e712` |
| 3 | `theorem` | [MulEquiv.decompositionMonoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/mulequiv-decompositionmonoid--b4ed728e82f37c6652802525.md) | 35 | `result-track:b4ed728e82f37c66528025252cf0140dfa0d9cb51a82fa48f5459d6f954e7c66` |
| 4 | `def` | [Equiv.dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/equiv-dvd--c8762b9a02a74c350dcb8bb0.md) | 48 | `declaration-track:c8762b9a02a74c350dcb8bb037be8b35ad0c192e13ec1b2a25212d37d340acda` |
| 5 | `theorem` | [Equiv.dvd_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/equiv-dvd-apply--73837d7b89139ec8abc1b0f8.md) | 58 | `result-track:73837d7b89139ec8abc1b0f89c33144f804427f0b9c6c1126dd498e3a328a679` |
| 6 | `theorem` | [dvd_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-add--90680744418a5df8724b5814.md) | 67 | `result-track:90680744418a5df8724b581419f4b526fe6083e96e9bfbed5b0e756137d8d175` |
| 7 | `lemma` | [min_pow_dvd_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/min-pow-dvd-add--1e1be4e75c97feeee5df19f8.md) | 77 | `result-track:1e1be4e75c97feeee5df19f85221293b3ca828852b9846b27f61eab01b9546c8` |
| 8 | `theorem` | [Dvd.dvd.linear_comb](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-dvd-linear-comb--fb213277eb24a8860bb3cdbe.md) | 86 | `result-track:fb213277eb24a8860bb3cdbe4ab29adc991af64b67d369e1b6e2b5a5138a3f07` |
| 9 | `theorem` | [dvd_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-neg--4b3c524df1e196f130657287.md) | 98 | `result-track:4b3c524df1e196f1306572878b838d552dba9f83f18f6a7bda48f0e756e4ebed` |
| 10 | `theorem` | [neg_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/neg-dvd--e0680ebaefe61365dbe24312.md) | 105 | `result-track:e0680ebaefe61365dbe2431288bc5be41de2a10c9b92c37d8ce57923a70988c9` |
| 11 | `theorem` | [dvd_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-sub--28c7b21f08fdb22c3fe43d86.md) | 119 | `result-track:28c7b21f08fdb22c3fe43d86ac1c884f3ebab93c1b25f1163bc00fbac9644f73` |
| 12 | `theorem` | [dvd_add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-add-left--da8104ff5e608312d31e3462.md) | 126 | `result-track:da8104ff5e608312d31e346209970a6f754b34b67ce326e1b42687309904c604` |
| 13 | `theorem` | [dvd_add_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-add-right--fd20ad2968e3583c43a53a7d.md) | 131 | `result-track:fd20ad2968e3583c43a53a7d7ca8213d38f8171574fc5c332dae4eea003dcf9d` |
| 14 | `theorem` | [dvd_sub_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-sub-left--2eeeaa24bd75e64144411a8c.md) | 135 | `result-track:2eeeaa24bd75e64144411a8c7d3d2b4de8b1dcbb1692e32489f8713ba84e4ef1` |
| 15 | `theorem` | [dvd_sub_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-sub-right--7e1985139ecb488933320847.md) | 140 | `result-track:7e1985139ecb4889333208471c2de16bf33f20eb664bd8d5d6fbf7a1dc826647` |
| 16 | `theorem` | [dvd_iff_dvd_of_dvd_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-iff-dvd-of-dvd-sub--27b14972e7c2c891b32f4c30.md) | 143 | `result-track:27b14972e7c2c891b32f4c30c350fcf62b32eea865e47a5030ce3db949473e98` |
| 17 | `theorem` | [dvd_sub_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-sub-comm--e84963d9608895b5b35c9bed.md) | 146 | `result-track:e84963d9608895b5b35c9bedc0bb43dbb2662aa9079ace5500e8ffd14426639c` |
| 18 | `theorem` | [dvd_add_self_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-add-self-left--867d2aecba638440d4d47010.md) | 156 | `result-track:867d2aecba638440d4d4701093e9757296b08488c6a90cc16b63f07958b1a338` |
| 19 | `theorem` | [dvd_add_self_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-add-self-right--57ef4972f4fced2fb373c915.md) | 161 | `result-track:57ef4972f4fced2fb373c91571e6ea63e34ede972cc438379a6fc17452eaac5c` |
| 20 | `theorem` | [dvd_sub_self_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-sub-self-left--f5a04c56cd496cfaa850ca74.md) | 166 | `result-track:f5a04c56cd496cfaa850ca74414f77134ee5cd6709984db70a9b54f1b7693dac` |
| 21 | `theorem` | [dvd_sub_self_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-sub-self-right--2d978717717e64e0d65f238a.md) | 171 | `result-track:2d978717717e64e0d65f238a46e0df638713ea85ddcf3006915160a8e0024e92` |
| 22 | `theorem` | [dvd_mul_sub_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ca3960edf2241fadb862f700a5f09df29345b8b2cb1a782c4715848452a6d32.lean/declarations/dvd-mul-sub-mul--10bfc28efe866a2063d22600.md) | 180 | `result-track:10bfc28efe866a2063d226007d51d20fb091b58cdc95bafca4ac89c055e479ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
