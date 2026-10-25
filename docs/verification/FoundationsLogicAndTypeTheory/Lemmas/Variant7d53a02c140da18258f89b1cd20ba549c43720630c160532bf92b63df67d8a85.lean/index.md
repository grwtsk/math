# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Lemmas.Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6905fe69973b266b71fabef5bc192b56e389a23b",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6905fe69973b266b71fabef5bc192b56e389a23b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Subtype.orderBot](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/subtype-orderbot--abe76d4c3aaf584a66fee0fc.md) | 33 | `declaration-track:abe76d4c3aaf584a66fee0fc7f0fbb5f9e61b3ba9da98fea4b79dd31a5bedfee` |
| 2 | `instance` | [Subtype.semilatticeSup](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/subtype-semilatticesup--4b31832aebf5f401896f2c9d.md) | 38 | `declaration-track:4b31832aebf5f401896f2c9d03e1355ffc9a93787917c162568bbc66df59300e` |
| 3 | `theorem` | [Subtype.coe_bot](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/subtype-coe-bot--5ad796e02f7a48602151f84f.md) | 42 | `result-track:5ad796e02f7a48602151f84f560142f6c9b614665a5e743dc960c6b27a3acfe8` |
| 4 | `theorem` | [set_eq_univ](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/set-eq-univ--3e16f3266f0a25a82de23e22.md) | 47 | `result-track:3e16f3266f0a25a82de23e228ec6bf7890fde139fd04977147db0ff01ab17339` |
| 5 | `theorem` | [lt_div_iff_mul_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/lt-div-iff-mul-lt--e6990c9ac7d0627039fe01de.md) | 53 | `result-track:e6990c9ac7d0627039fe01de2722e4dcce91e36f6d4dba6c64949895e69b556b` |
| 6 | `theorem` | [mul_div_eq_iff_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/mul-div-eq-iff-dvd--2abe8f635c8ea7e66b16845e.md) | 59 | `result-track:2abe8f635c8ea7e66b16845eb07f43701fcc3cb9656eb10145986b45ebc96c0c` |
| 7 | `theorem` | [mul_div_lt_iff_not_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/mul-div-lt-iff-not-dvd--17e36e8d3bdf1c52cf882c1c.md) | 65 | `result-track:17e36e8d3bdf1c52cf882c1cbcd7df90ce46fd4045be55598cb08fcb3f07f3e9` |
| 8 | `theorem` | [div_eq_iff_eq_of_dvd_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/div-eq-iff-eq-of-dvd-dvd--2d9f3b92346d7801cc6b608f.md) | 68 | `result-track:2d9f3b92346d7801cc6b608fd7d23b238c55db80ee254a9f86378bcf429e9703` |
| 9 | `theorem` | [div_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/div-eq-zero-iff--3b1ed079762c09b3ed5d04bf.md) | 80 | `result-track:3b1ed079762c09b3ed5d04bf9200e80d91da77702514f558f09f7d559d4f99dc` |
| 10 | `theorem` | [div_eq_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/div-eq-zero--f30da746c3580b881b1c3c44.md) | 86 | `result-track:f30da746c3580b881b1c3c4470e94cb482e3e114a59c4ef277b54a0af6113c3b` |
| 11 | `theorem` | [dvd_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-one--3af22d687aa66e2cd302e4b1.md) | 94 | `result-track:3af22d687aa66e2cd302e4b114728a1e6044348df2b5688fa4a33a60f161ffd6` |
| 12 | `theorem` | [not_two_dvd_bit1](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/not-two-dvd-bit1--035620e8609e9b73664ff39e.md) | 100 | `result-track:035620e8609e9b73664ff39e8c823d0d5475dbff7a6682c1bea075e29fc9ae94` |
| 13 | `theorem` | [dvd_add_self_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-add-self-left--7bac33a818d6feec7a6bb756.md) | 108 | `result-track:7bac33a818d6feec7a6bb756289f5decae56f8cd9b8b610cb33fb2cbccb2a525` |
| 14 | `theorem` | [dvd_add_self_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-add-self-right--e9359fd76a40ae4ddef5e79d.md) | 114 | `result-track:e9359fd76a40ae4ddef5e79d076ba26502f28672283806d5ed3194626e0d94ad` |
| 15 | `theorem` | [dvd_sub'](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-sub--b6fa6918eabee77dc8d7bb18.md) | 119 | `result-track:b6fa6918eabee77dc8d7bb181dca0a6a205a93d428541c93259dce5059bdbd08` |
| 16 | `theorem` | [succ_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/succ-div--4df984d4754318b5baf9576f.md) | 126 | `result-track:4df984d4754318b5baf9576f7b551c3ce01b9a93c3cf1c7d07e7e39414ea68ff` |
| 17 | `theorem` | [succ_div_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/succ-div-of-dvd--961f80216f57d7a876d9fc4d.md) | 156 | `result-track:961f80216f57d7a876d9fc4db12f96a28be8fa50e12cb0d677823640f32616b7` |
| 18 | `theorem` | [succ_div_of_not_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/succ-div-of-not-dvd--e4cf9891d7d60c111de06ee6.md) | 160 | `result-track:e4cf9891d7d60c111de06ee65231e66226f3927cd8f1a21563bf84a6a471ee99` |
| 19 | `theorem` | [dvd_iff_div_mul_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-iff-div-mul-eq--820f931cecea86b9e9c0679f.md) | 164 | `result-track:820f931cecea86b9e9c0679fa8367c7962d45498d16698c8b1d4f5cbdd29adbc` |
| 20 | `theorem` | [dvd_iff_le_div_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-iff-le-div-mul--d50cdac2a47b4fc188669cdb.md) | 168 | `result-track:d50cdac2a47b4fc188669cdbc003fc3667fc809b4df4b6eaab8078a33478dfb9` |
| 21 | `theorem` | [dvd_iff_dvd_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-iff-dvd-dvd--88e6434623dbfdf7d0903445.md) | 172 | `result-track:88e6434623dbfdf7d0903445caea88cff1cf997696976f0ca5f0902a4043b719` |
| 22 | `theorem` | [dvd_div_of_mul_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-div-of-mul-dvd--a9b464c864d1ac5f73a70466.md) | 176 | `result-track:a9b464c864d1ac5f73a70466e7bd932d8b1668797f84b8906bf2ef8d0c48bd18` |
| 23 | `theorem` | [dvd_div_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-div-iff--f538884391b3b47bf04cd7ec.md) | 187 | `result-track:f538884391b3b47bf04cd7ec20e5eba84281837abb6b58e979e5b0af071ff727` |
| 24 | `theorem` | [div_div_div_eq_div](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/div-div-div-eq-div--31d2b82cb22a34443f1a90ed.md) | 192 | `result-track:31d2b82cb22a34443f1a90edd46cd974c13e0cecb68559dcf4be61e4d8a9cc87` |
| 25 | `theorem` | [eq_zero_of_dvd_of_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/eq-zero-of-dvd-of-lt--f5587b40f2684c26cc681815.md) | 210 | `result-track:f5587b40f2684c26cc681815c1acb9ad942ddbb2f196799e5fb52d900693f3dc` |
| 26 | `theorem` | [le_of_lt_add_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/le-of-lt-add-of-dvd--53e95e512a838d207b7ad8b1.md) | 215 | `result-track:53e95e512a838d207b7ad8b195a48d600efe8cab1270ad510e227b248a42206b` |
| 27 | `theorem` | [mod_div_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/mod-div-self--bafb620a67c918bbece6c53f.md) | 223 | `result-track:bafb620a67c918bbece6c53f7ae87ef27b78f9cfc1a29b5f0cab8b50e5bcc9f9` |
| 28 | `theorem` | [not_dvd_iff_between_consec_multiples](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/not-dvd-iff-between-consec-multiples--603ca944ba295575815554a1.md) | 230 | `result-track:603ca944ba295575815554a18902dfea206b8126b6e642c6c283f9dc4755b5d0` |
| 29 | `theorem` | [dvd_right_iff_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-right-iff-eq--2de6e03b3766f563f2443278.md) | 239 | `result-track:2de6e03b3766f563f244327807d84a818ac2033cd240ca9447e7c00699d26d5e` |
| 30 | `theorem` | [dvd_left_iff_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-left-iff-eq--d37d9884af8f8529aaa97252.md) | 244 | `result-track:d37d9884af8f8529aaa9725294e29fefd2d0f0e693cd1591575d67b75168d1bb` |
| 31 | `theorem` | [dvd_left_injective](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/dvd-left-injective--85c4552a2d3a2fbff2dcfb0d.md) | 249 | `result-track:85c4552a2d3a2fbff2dcfb0dd20301bfb0b143babe054bda86fc28d4e2d4bbd1` |
| 32 | `theorem` | [div_lt_div_of_lt_of_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Lemmas/Variant7d53a02c140da18258f89b1cd20ba549c43720630c160532bf92b63df67d8a85.lean/declarations/div-lt-div-of-lt-of-dvd--7f9a6f95998f382827a9b9fa.md) | 253 | `result-track:7f9a6f95998f382827a9b9fa7382fe645f5027d1afc99df58de747f4e8cf0b4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
