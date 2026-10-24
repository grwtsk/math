# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Modify.Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "daa94094ee043ae3f6e84489db5b994eaa52a1ef",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `daa94094ee043ae3f6e84489db5b994eaa52a1ef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ByteArray.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pos.set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-set--1af6905df49ce64502db2387.md) | 35 | `declaration-track:1af6905df49ce64502db23879d1d01091acc94483cc737f636cbd5da679fddcb` |
| 2 | `theorem` | [Pos.set_eq_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-set-eq-append--58be0b2fb3c419cafc0d6004.md) | 45 | `result-track:58be0b2fb3c419cafc0d6004eb0131888a7ef4b794629843b3d8bcb726573ef2` |
| 3 | `theorem` | [Pos.Raw.IsValid.set_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-raw-isvalid-set-of-le--37683d6ffab7adcf9cc0bf59.md) | 54 | `result-track:37683d6ffab7adcf9cc0bf5902a6507adda4550988aec1223a49205e27a93ab9` |
| 4 | `def` | [Pos.toSetOfLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-tosetofle--0a7eded5c1e69eb421b6de61.md) | 64 | `declaration-track:0a7eded5c1e69eb421b6de61b1135f0d4eb54d6458f0a4cf1af293c32ea1996c` |
| 5 | `theorem` | [Pos.offset_toSetOfLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-offset-tosetofle--da2d6cb04fbf1d6dda9ef89e.md) | 70 | `result-track:da2d6cb04fbf1d6dda9ef89e6646f3ed1682a3cbd0d1bd320f547e9167665805` |
| 6 | `theorem` | [Pos.Raw.isValid_add_char_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-raw-isvalid-add-char-set--a7f3bb5baa5049223f695041.md) | 73 | `result-track:a7f3bb5baa5049223f6950413220839f4dadbc3d7305739e3715ba81b24d3f04` |
| 7 | `def` | [Pos.pastSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-pastset--356dcc48f243bbb57bd8821b.md) | 79 | `declaration-track:356dcc48f243bbb57bd8821b2aed8ba258e7721bf7518e36bc5c3de36aed3ff6` |
| 8 | `theorem` | [Pos.offset_pastSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-offset-pastset--66fc465e72c11cbd4b998c99.md) | 84 | `result-track:66fc465e72c11cbd4b998c99f4e9f1a6ca36b9ae4bb31e3a4a484d62596a3ec7` |
| 9 | `def` | [Pos.appendRight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-appendright--edc3fba3cd5dc93a0dc3c998.md) | 88 | `declaration-track:edc3fba3cd5dc93a0dc3c998b30f4eac423eac7c7bb54fee9bca0cfe4f4e071c` |
| 10 | `theorem` | [Pos.splits_pastSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-splits-pastset--1521d1cf9ea5c1797c05759b.md) | 92 | `result-track:1521d1cf9ea5c1797c05759b04c55b22e12e351b6f94e398b6f676f2a956ab27` |
| 11 | `theorem` | [remainingBytes_pastSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/remainingbytes-pastset--00ab3ce1c1769c694128c650.md) | 97 | `result-track:00ab3ce1c1769c694128c650530a304b9406363953d1532879d943ccece438aa` |
| 12 | `def` | [Pos.modify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-modify--24985717ebbc912a104f1d8b.md) | 112 | `declaration-track:24985717ebbc912a104f1d8be9d2e2be28333630f5f84b65b691d7fdc2398533` |
| 13 | `theorem` | [Pos.Raw.IsValid.modify_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-raw-isvalid-modify-of-le--920754f51386b81bb868b9cf.md) | 116 | `result-track:920754f51386b81bb868b9cf274dafc99ca535fe180e7bfd066aa63ac9ddde70` |
| 14 | `def` | [Pos.toModifyOfLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-tomodifyofle--aa191383e240c353a41c5adb.md) | 124 | `declaration-track:aa191383e240c353a41c5adb6eebb34a7109c5a16f2ac523703e2474ae70b908` |
| 15 | `theorem` | [Pos.offset_toModifyOfLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-offset-tomodifyofle--80a625ae961f28dc753cb1bc.md) | 130 | `result-track:80a625ae961f28dc753cb1bc2ff266f8237476ec8089da0b2ead5deace2fc4d4` |
| 16 | `def` | [Pos.pastModify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-pastmodify--4feda0f0552d6d4ae9fd0b9a.md) | 135 | `declaration-track:4feda0f0552d6d4ae9fd0b9af8cf1b1a0fd5e87696edec3ba8d562d6db840091` |
| 17 | `theorem` | [remainingBytes_pastModify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/remainingbytes-pastmodify--5bd9e16a57bb316fc40e5f26.md) | 139 | `result-track:5bd9e16a57bb316fc40e5f26ba51c6672c87babebf2ccb0d86bc7bfef8f879a8` |
| 18 | `def` | [Pos.Raw.set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-raw-set--bebf777a38bfd57c14cc7c85.md) | 161 | `declaration-track:bebf777a38bfd57c14cc7c85c66d9c1a7ed8f736e22af05e5715a8a4ed508c4c` |
| 19 | `def` | [set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/set--a067425a5564e0b9c5bfe9fc.md) | 165 | `declaration-track:a067425a5564e0b9c5bfe9fca0e5c49aea5d570995fb88b0d0e1e21ee21c00e8` |
| 20 | `def` | [Pos.Raw.modify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/pos-raw-modify--e948b2391f9fc77063283e19.md) | 183 | `declaration-track:e948b2391f9fc77063283e19f7f068d132ee382c9e9dc99d57b6ddf20217166b` |
| 21 | `def` | [modify](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/modify--f5f2cbbee16893f58f067920.md) | 187 | `declaration-track:f5f2cbbee16893f58f0679203b48b7ae3f15c9f66e13ef03e3043283b2d37ca8` |
| 22 | `def` | [mapAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/mapaux--ed00cea5efac2460f80e3d36.md) | 190 | `declaration-track:ed00cea5efac2460f80e3d36abf2c57d6024c5f6bc19c9b800ca1a835cea58c3` |
| 23 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/map--aafa370896037ed84c9b880a.md) | 207 | `declaration-track:aafa370896037ed84c9b880a1f093fc5dcc0129ebca44a68ade533c33858da46` |
| 24 | `def` | [toUpper](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/toupper--9570572d597582746c0b6f85.md) | 219 | `declaration-track:9570572d597582746c0b6f859260ac8ddc8bd4920e684228929949e1b978a877` |
| 25 | `def` | [toLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/tolower--7e2e5dba884851108a15ff36.md) | 232 | `declaration-track:7e2e5dba884851108a15ff3693476cb42012bfa4b6527791e320f8a85ff24fe1` |
| 26 | `def` | [capitalize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/capitalize--93c65c3d4e194d812764911e.md) | 246 | `declaration-track:93c65c3d4e194d812764911ef8001bc728c501b76bd0448cfaf92d1dc4822107` |
| 27 | `def` | [Internal.capitalizeImpl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/internal-capitalizeimpl--35f05300e3929a32afec64cf.md) | 250 | `declaration-track:35f05300e3929a32afec64cf2c607fb7d8cd951cba34f811fcf92f595a014517` |
| 28 | `def` | [decapitalize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/declarations/decapitalize--976e7dad9861e42f307d5b21.md) | 264 | `declaration-track:976e7dad9861e42f307d5b214a69dac22e773e6ed4c27d69ca85aeb7f8409a79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
