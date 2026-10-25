# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Lemmas.Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e925f2aefbbbc40d44a26ea4c5b1ed0a3ae6e79e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e925f2aefbbbc40d44a26ea4c5b1ed0a3ae6e79e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Subtype.orderBot](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/subtype-orderbot--278fc20c32b262d516c214a4.md) | 41 | `declaration-track:278fc20c32b262d516c214a40eade7d402da47532e5bfd9787afb532e09e4ee5` |
| 2 | `instance` | [Subtype.semilatticeSup](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/subtype-semilatticesup--0e0b62b0d3615182eed4d845.md) | 46 | `declaration-track:0e0b62b0d3615182eed4d845dd345eb8fdb7ed5965e556c29d34667642213bbd` |
| 3 | `theorem` | [Subtype.coe_bot](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/subtype-coe-bot--883ff1730b89cece26510588.md) | 50 | `result-track:883ff1730b89cece26510588f8f9ba69c1b8149e6bcfe1503ae4c63ce3ac54d0` |
| 4 | `theorem` | [set_eq_univ](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/set-eq-univ--a53801ff7fed6dc9ee16119d.md) | 55 | `result-track:a53801ff7fed6dc9ee16119dea44e937f61fef6578f0d2a8377e6f973ce42309` |
| 5 | `theorem` | [lt_div_iff_mul_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/lt-div-iff-mul-lt--af4dcee707390f61a01d89f3.md) | 61 | `result-track:af4dcee707390f61a01d89f3003ba41ee98f1cdf619ea335438c29439d187890` |
| 6 | `theorem` | [mul_div_eq_iff_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/mul-div-eq-iff-dvd--2785ad050db82c456d86e619.md) | 67 | `result-track:2785ad050db82c456d86e6196906bb50c23a4f6b61590b67dc4d82b39c7c03c6` |
| 7 | `theorem` | [mul_div_lt_iff_not_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/mul-div-lt-iff-not-dvd--c0634ebaaf7545f235a08c36.md) | 73 | `result-track:c0634ebaaf7545f235a08c3636fb46fe63b69b1abab530bab76141a1018f9a27` |
| 8 | `theorem` | [div_eq_iff_eq_of_dvd_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/div-eq-iff-eq-of-dvd-dvd--fcb23b2e92890f60921d6fb1.md) | 76 | `result-track:fcb23b2e92890f60921d6fb132bc5389b42d6406d64f84f95e76c030969c2437` |
| 9 | `theorem` | [div_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/div-eq-zero-iff--d0cea2bfe828290ac65bfc08.md) | 88 | `result-track:d0cea2bfe828290ac65bfc08bb27e0e6cd176ab381537ffabc35a563dd2a4c62` |
| 10 | `theorem` | [div_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/div-eq-zero--01a1f1de329440dc6da3159c.md) | 94 | `result-track:01a1f1de329440dc6da3159c7492775f5481bc4c32f6a107a5aeff3fb010d211` |
| 11 | `theorem` | [dvd_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-one--0d8ca3b45430c305da6f6109.md) | 102 | `result-track:0d8ca3b45430c305da6f61097a86b4bbcbf5d7bdad2bfdfd33db4542668323a8` |
| 12 | `theorem` | [not_two_dvd_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/not-two-dvd-bit1--1e7aeeaf2f739dee255ea1a1.md) | 108 | `result-track:1e7aeeaf2f739dee255ea1a12701a840897e486e84f6d518e5bbd281d91bb518` |
| 13 | `theorem` | [dvd_add_self_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-add-self-left--f29dc7a9780288ba98ba7132.md) | 116 | `result-track:f29dc7a9780288ba98ba71321dffc7704ce72dde1e44aa1a6cb0742e72134ac9` |
| 14 | `theorem` | [dvd_add_self_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-add-self-right--49c1cf66fd491c222207859f.md) | 122 | `result-track:49c1cf66fd491c222207859ffc764a4d12b51434454bdf21d333b4e4df950cdd` |
| 15 | `theorem` | [dvd_sub'](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-sub--e177878ec5495c09b3ea5ece.md) | 127 | `result-track:e177878ec5495c09b3ea5eced4ccf611006a4827a1cd2ad102971fb65ba8ddb0` |
| 16 | `theorem` | [succ_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/succ-div--956e302e8eca510cbe69834b.md) | 134 | `result-track:956e302e8eca510cbe69834b4f14faf38c0c5f9c6bba6d7edbd76a9d3b6a36a6` |
| 17 | `theorem` | [succ_div_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/succ-div-of-dvd--65375a1542051a7ca26b23d8.md) | 164 | `result-track:65375a1542051a7ca26b23d80366bb9b743639550f03acd2b540fa76135a25af` |
| 18 | `theorem` | [succ_div_of_not_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/succ-div-of-not-dvd--387a30de2f5e9566eaaee561.md) | 168 | `result-track:387a30de2f5e9566eaaee5615d61c772f8914f07a23b7201f1641c9047883909` |
| 19 | `theorem` | [dvd_iff_div_mul_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-iff-div-mul-eq--993dfd5c0af4ce4b0ff0d4e5.md) | 172 | `result-track:993dfd5c0af4ce4b0ff0d4e5befac83537e6872392c705146fbf7ec011ea078d` |
| 20 | `theorem` | [dvd_iff_le_div_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-iff-le-div-mul--121c616edecfeaf2b12d1c00.md) | 176 | `result-track:121c616edecfeaf2b12d1c00ea24753511cdbcc841a68176bf5cb814739b534b` |
| 21 | `theorem` | [dvd_iff_dvd_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-iff-dvd-dvd--04da09a222a502d5d1cffaee.md) | 180 | `result-track:04da09a222a502d5d1cffaeefd1eae9ea02f5d8cf5b7b3e3f0cd35a827f28963` |
| 22 | `theorem` | [dvd_div_of_mul_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-div-of-mul-dvd--91496f9be17f6e36c947d534.md) | 184 | `result-track:91496f9be17f6e36c947d534b8f05c5b2e8f4166e8867adf7a7debf2f462bcd0` |
| 23 | `theorem` | [dvd_div_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-div-iff--29f3133c2fa5789a245230d4.md) | 195 | `result-track:29f3133c2fa5789a245230d4bc63a62bb910e0c1bc6ca538bce6d66ff2410c94` |
| 24 | `theorem` | [div_div_div_eq_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/div-div-div-eq-div--3ab3d206dc86cd35065f717e.md) | 200 | `result-track:3ab3d206dc86cd35065f717eb88b2b2b11189b2d7414df0e0b71e707f856f386` |
| 25 | `theorem` | [eq_zero_of_dvd_of_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/eq-zero-of-dvd-of-lt--08e5018c9e5372656377ca9e.md) | 218 | `result-track:08e5018c9e5372656377ca9e82bbdaccfae1f7f2cb46ce7f1f9f5a1ad7c2085a` |
| 26 | `theorem` | [le_of_lt_add_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/le-of-lt-add-of-dvd--436065296ac663aeebded3b5.md) | 223 | `result-track:436065296ac663aeebded3b542623a6056aa6464bbe188df38cab85cee5340c8` |
| 27 | `theorem` | [mod_div_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/mod-div-self--c2c7f9b52e046d51687c6b93.md) | 231 | `result-track:c2c7f9b52e046d51687c6b93e908f42b014ae2781385c00be192d41a7187c604` |
| 28 | `theorem` | [not_dvd_iff_between_consec_multiples](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/not-dvd-iff-between-consec-multiples--0888e532d1086e9c253b9ec4.md) | 238 | `result-track:0888e532d1086e9c253b9ec45c50a8b0d5ea04970c3ad172f10d98c9c4d707e3` |
| 29 | `theorem` | [dvd_right_iff_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-right-iff-eq--47416309ed862d68b4851250.md) | 247 | `result-track:47416309ed862d68b4851250e264f64058c783a1abd9e6914461070cd22c7124` |
| 30 | `theorem` | [dvd_left_iff_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-left-iff-eq--56625559df91e28f46b71fa5.md) | 252 | `result-track:56625559df91e28f46b71fa508839fedf1b535da0c4c4943316de5c56bb8264f` |
| 31 | `theorem` | [dvd_left_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/dvd-left-injective--7e0645d40536f8c0aa9a9a5d.md) | 257 | `result-track:7e0645d40536f8c0aa9a9a5db2611b118aa01d977d99ca42f7eca8698f17437b` |
| 32 | `theorem` | [div_lt_div_of_lt_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant1ae515a570cfded250aa5f5e80ea449fe08f8664fd2e1641ca1c4516d465a52e.lean/declarations/div-lt-div-of-lt-of-dvd--c363de3338d9901b13ed668d.md) | 261 | `result-track:c363de3338d9901b13ed668d94966a8e3560fd2c1b85e76453910251cde3adce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
