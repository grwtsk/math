# Verification target: GRWTSK.NumberTheory.BinaryDigits.Carry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c17d116861d36c4ae20624c803c06819686c8ecd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/BinaryDigits/Carry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c17d116861d36c4ae20624c803c06819686c8ecd`.

Source path: `GRWTSK/NumberTheory/BinaryDigits/Carry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/BinaryDigits/Carry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [carry](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/declarations/carry--0166c630c8c61c3d0c09e10c.md) | 14 | `declaration-track:0166c630c8c61c3d0c09e10c3976bf5600b9d3e95944872109f9e7a849d10b3a` |
| 2 | `def` | [bit](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/declarations/bit--c307ff9a4241f79c8bc98b98.md) | 18 | `declaration-track:c307ff9a4241f79c8bc98b9885b5c6f0b537bde89e6ec1f06def8b1866275ce0` |
| 3 | `def` | [prefix](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/declarations/prefix--47d41319df743b7a800f99d2.md) | 21 | `declaration-track:47d41319df743b7a800f99d2f83de555380ac2856eed39076bb4e45612fc53b2` |
| 4 | `theorem` | [local_identity](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/declarations/local-identity--4893b518e42c6ef2e3131b97.md) | 26 | `result-track:4893b518e42c6ef2e3131b97374d0abf711359016ff1b36cdb9ad114214e6e7a` |
| 5 | `theorem` | [bit_lt_two](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/declarations/bit-lt-two--af7822853b9ff901acf67578.md) | 32 | `result-track:af7822853b9ff901acf675780ec21103eebaf5a89f3aff045252ea41ae5f9b3f` |
| 6 | `theorem` | [carry_le_one](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/declarations/carry-le-one--5e6bce7b4bb8cfe6cbc2cff8.md) | 34 | `result-track:5e6bce7b4bb8cfe6cbc2cff88d3bd88fd367a230a5c49dffa9e239e395a6b423` |
| 7 | `theorem` | [input_digit_split](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/declarations/input-digit-split--2cd538484b223d65cbc9b4d7.md) | 45 | `result-track:2cd538484b223d65cbc9b4d7ed56c80e6665d81e7067bc10f6538b8cf9dd9707` |
| 8 | `theorem` | [prefix_identity](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/declarations/prefix-identity--909dc3af06c9ca148e3fdbd0.md) | 71 | `result-track:909dc3af06c9ca148e3fdbd0d6712fcf4ada721dd9b21f22c440cfe4c51bf3ab` |
| 9 | `theorem` | [hankel_index](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/declarations/hankel-index--680e70179f75eeca10a860c6.md) | 82 | `result-track:680e70179f75eeca10a860c6b07747920444eb56b9993243c3e890597abcd492` |
| 10 | `theorem` | [coefficient_return](../../../../mathematics/NumberTheory/BinaryDigits/Carry.lean/declarations/coefficient-return--b019d1cd789af8e277bc69a6.md) | 87 | `result-track:b019d1cd789af8e277bc69a6c5f7614bc8f88c4df4ed32962cd1482b18efcb9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
