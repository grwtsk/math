# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.NormalForm.Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f10d141eff95dc17e65a3424a1f8827a1703bdd",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f10d141eff95dc17e65a3424a1f8827a1703bdd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Semantics` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/encode--a9e6e9035d8a5ed2d32df220.md) | 7 | `declaration-track:a9e6e9035d8a5ed2d32df220d8a964625f658bec8ac0f85d0bba50638f13f861` |
| 2 | `theorem` | [decode_encode_identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/decode-encode-identity--1da312c7d198562a6006f0c5.md) | 11 | `result-track:1da312c7d198562a6006f0c55143afff74f1ead5721547b300c92c4b6b453951` |
| 3 | `def` | [normalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalize--f3e9378fc91abe62f6ea6853.md) | 16 | `declaration-track:f3e9378fc91abe62f6ea6853e0c41f929a4937a964c53afdad10c8005a2a3d3a` |
| 4 | `theorem` | [normalize_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalize-def--d640dcf1d46a3fed75845b3e.md) | 19 | `result-track:d640dcf1d46a3fed75845b3ef48aa2cbdc4f38d0e14990396700d1cbaf164dfb` |
| 5 | `theorem` | [normalize_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalize-sound--8f1b8dc63a1d0ace6bcae0b0.md) | 23 | `result-track:8f1b8dc63a1d0ace6bcae0b07c95363ec3538bd07bf3f7630567f55f8c2db347` |
| 6 | `theorem` | [normalize_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalize-idempotent--83ab8cc751f6987d067fc537.md) | 29 | `result-track:83ab8cc751f6987d067fc5375f5177ce5b7253f28ea3492c88e805885f4188b6` |
| 7 | `theorem` | [encode_decode_normalizes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/encode-decode-normalizes--1fbd1e05d6f1ba58f1431a39.md) | 35 | `result-track:1fbd1e05d6f1ba58f1431a39a92147751de7bffba2df9e7c016ea9b01a70b007` |
| 8 | `def` | [NormalForm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalform--1f520b994c6d8331dd1b98fd.md) | 39 | `declaration-track:1f520b994c6d8331dd1b98fddedf22ed9b444ff5fdf769d4673bbc822aaf87b8` |
| 9 | `def` | [CanonicalRaw](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/canonicalraw--6eafdf7ff402bbeadfd80e3f.md) | 42 | `declaration-track:6eafdf7ff402bbeadfd80e3f14af535f7a4b5c81db88aaf78ed2b1d6d85549ed` |
| 10 | `theorem` | [encode_is_normal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/encode-is-normal--8ad39f95425dd974a4d04da4.md) | 45 | `result-track:8ad39f95425dd974a4d04da4ddb743220a79ae811d6f6a36381e9e0731c87be4` |
| 11 | `theorem` | [normalize_is_normal](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalize-is-normal--19b0cabbf621cde9596fd0e6.md) | 52 | `result-track:19b0cabbf621cde9596fd0e6e5a840e3d94ec881f2c1148f18f83cf4935a02b3` |
| 12 | `theorem` | [encode_is_canonical_raw](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/encode-is-canonical-raw--931c88848960394917547237.md) | 58 | `result-track:931c888489603949175472378cbd178c46f4a8c2688eeee66e7f747653cba2f9` |
| 13 | `theorem` | [normalForm_is_canonical_raw](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalform-is-canonical-raw--bca4ab5d7e83ee2bff9926b9.md) | 63 | `result-track:bca4ab5d7e83ee2bff9926b956bcd8e99e15a370752697a49deb98abdd271b37` |
| 14 | `theorem` | [normalize_unique_raw](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalize-unique-raw--b9884f26e27b069d690426ce.md) | 69 | `result-track:b9884f26e27b069d690426ce3af3c90bbdac88033b603f0bd02de83d7ca8cb57` |
| 15 | `structure` | [NormalCompressedString](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalcompressedstring--9f3a4343b898736a2d969f47.md) | 82 | `declaration-track:9f3a4343b898736a2d969f471cf800d3a3d55546c860fb03b3ad9d529eb6eb02` |
| 16 | `def` | [normalInclude](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalinclude--c9af265d71e7a2c26a67696a.md) | 87 | `declaration-track:c9af265d71e7a2c26a67696a36733bb938b873ad5c5e76ecef81aebdc17b74f0` |
| 17 | `def` | [reflect](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/reflect--a402c42cc6d6414f1bbcea68.md) | 91 | `declaration-track:a402c42cc6d6414f1bbcea68b57a9c992adb738c7f96ab20d8afa107663752ec` |
| 18 | `theorem` | [include_reflect_raw](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/include-reflect-raw--28dc2a3dc453854cba1b548f.md) | 96 | `result-track:28dc2a3dc453854cba1b548f33578ce116ef8ee29c92aa54786419238e6470d5` |
| 19 | `theorem` | [reflect_include_raw](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/reflect-include-raw--22511c18e95dff0c2ea970d5.md) | 100 | `result-track:22511c18e95dff0c2ea970d58e3680bb2101cf1812739c428d1507ac6aac7a74` |
| 20 | `def` | [normalEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalencode--630e26fcc1d6b6d6876cad5c.md) | 106 | `declaration-track:630e26fcc1d6b6d6876cad5c72c47ba46e74ab96a5f341399a0fca8191c90bd7` |
| 21 | `def` | [normalDecode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normaldecode--6ff33a47dd32147f9ec9a48c.md) | 111 | `declaration-track:6ff33a47dd32147f9ec9a48c8b51af97bf7490e09c06bdc460d0293ae2ebf829` |
| 22 | `theorem` | [normalDecode_normalEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normaldecode-normalencode--d26b963d780320e8b7cc5fcd.md) | 115 | `result-track:d26b963d780320e8b7cc5fcd9b582ede53432cde4bb2c08c7efbbe543ac51c15` |
| 23 | `theorem` | [normalEncode_normalDecode_raw](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/normalencode-normaldecode-raw--5d1a84b8a032deb95656af24.md) | 120 | `result-track:5d1a84b8a032deb95656af24073bbd37650c934c8fdbbb562314304eabd9110b` |
| 24 | `theorem` | [norm_list_left_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/norm-list-left-inverse--ebfaf2946fed5c37f73fd150.md) | 129 | `result-track:ebfaf2946fed5c37f73fd1509df140b29742c8bd000082bb4ca832acb19ece40` |
| 25 | `theorem` | [norm_list_right_inverse_raw](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/norm-list-right-inverse-raw--1f0378c0580b01bd1563802a.md) | 134 | `result-track:1f0378c0580b01bd1563802a0a73f0b6f98efc7e7c6ad91c41397a49fd58185b` |
| 26 | `def` | [adjunctionOrientation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/adjunctionorientation--c8dcbe5d60209e701c32c441.md) | 140 | `declaration-track:c8dcbe5d60209e701c32c441ad30b706cfae09391eaf474fb0536bc64cd27a7f` |
| 27 | `theorem` | [encode_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/encode-injective--752dbb4fcc612399c23cff98.md) | 143 | `result-track:752dbb4fcc612399c23cff98df9ef68aacc715b4761cdd3585afa4d9e2f10f27` |
| 28 | `theorem` | [decode_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/decode-surjective--98e70c6a8bd7061add73b711.md) | 149 | `result-track:98e70c6a8bd7061add73b711fde23be2a40171b9307cba28091e194145f829ba` |
| 29 | `def` | [subword](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/subword--75eed8effe5219cc267e918e.md) | 154 | `declaration-track:75eed8effe5219cc267e918e972b1c178be02114dbbdae7ca2550eb6b409eada` |
| 30 | `theorem` | [subword_preserves_wellFormed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/subword-preserves-wellformed--63fa58865e40944d4d27eba9.md) | 158 | `result-track:63fa58865e40944d4d27eba91a09f7d0cf0b493da134925f1ec82e7e6ab78bc4` |
| 31 | `theorem` | [decode_subword](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/NormalForm/Variant4a4de94b6ee879e30b8e6e741ee4e2dd1a9044a5897415b1c12a47077a510ec0.lean/declarations/decode-subword--06fce0b26962d7cf4f7eb547.md) | 163 | `result-track:06fce0b26962d7cf4f7eb5479fc1427e0ed5f98ca8b172464b42a0832fc9d0b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
