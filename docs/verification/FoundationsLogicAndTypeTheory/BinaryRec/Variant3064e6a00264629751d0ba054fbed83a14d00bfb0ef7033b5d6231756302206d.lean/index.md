# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.BinaryRec.Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c3fdde3f84978a904c76cde5e4d1dc7ba2e8e05",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c3fdde3f84978a904c76cde5e4d1dc7ba2e8e05`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Alias` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bit](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/bit--0000ea10a37a3297359d776e.md) | 35 | `declaration-track:0000ea10a37a3297359d776e6c697f376ddf18e9074c10e7553cd31c2493e53a` |
| 2 | `theorem` | [shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/shiftright-one--e2ad43992bc89679e8fdd07b.md) | 38 | `result-track:e2ad43992bc89679e8fdd07ba42a3c64d327d2cb5aad67cc14b75e0df1d7eaa1` |
| 3 | `theorem` | [bit_decide_mod_two_eq_one_shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/bit-decide-mod-two-eq-one-shiftright-one--fa0555ba645c8d7d6cbed4c8.md) | 41 | `result-track:fa0555ba645c8d7d6cbed4c87425f5557dc406a5feb8eacfed1bd7540dec2c14` |
| 4 | `theorem` | [bit_testBit_zero_shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/bit-testbit-zero-shiftright-one--c64919ec7be8aa4c9eb6cbc7.md) | 45 | `result-track:c64919ec7be8aa4c9eb6cbc72082990b92d737f25217a660377463ed6cc9b5a2` |
| 5 | `theorem` | [bit_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/bit-eq-zero-iff--3a984a729145321b5fd3cf13.md) | 49 | `result-track:3a984a729145321b5fd3cf1354d8c3e8c9029a49ba732dffe02594379682a354` |
| 6 | `def` | [bitCasesOn](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/bitcaseson--20762a974437e4b2a1285cf0.md) | 56 | `declaration-track:20762a974437e4b2a1285cf05b23083f80bd015b33159c41b2489f477ab1fa79` |
| 7 | `def` | [binaryRec](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/binaryrec--46cb561fd72d6c3182decd95.md) | 67 | `declaration-track:46cb561fd72d6c3182decd952a4a5b78f98c743b2fee5e8ba43f20b2d8f69f3e` |
| 8 | `def` | [binaryRec'](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/binaryrec--9a61f5762205e05ea85d00b0.md) | 78 | `declaration-track:9a61f5762205e05ea85d00b0a0079d1a33d723511afcc907050d5101e8a31c5c` |
| 9 | `def` | [binaryRecFromOne](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/binaryrecfromone--68756c40c2859cd1c406f238.md) | 91 | `declaration-track:68756c40c2859cd1c406f23869167e849ab05afc1497181429b289f9864184a5` |
| 10 | `theorem` | [bit_val](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/bit-val--c162f4c6a67585355c1823f8.md) | 101 | `result-track:c162f4c6a67585355c1823f890ca97edc23532d200704dee66300aba9530ee11` |
| 11 | `theorem` | [bit_div_two](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/bit-div-two--09ef09cc6626a222549d9aa4.md) | 105 | `result-track:09ef09cc6626a222549d9aa443bc69b51f4be9cbed4ea4c7ed406560a2798fc7` |
| 12 | `theorem` | [bit_mod_two](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/bit-mod-two--9f3b9b22f5922a541c0c6292.md) | 111 | `result-track:9f3b9b22f5922a541c0c629259e7cd707ba27a202da1e830862c1847fc0e1618` |
| 13 | `theorem` | [bit_shiftRight_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/bit-shiftright-one--ef51cbc6fb6b92dc8f37748c.md) | 115 | `result-track:ef51cbc6fb6b92dc8f37748c0d8c71d97856d15b9e8e6473b0dfd5a0328693bd` |
| 14 | `theorem` | [testBit_bit_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/testbit-bit-zero--0bd7645d4748b68f4b9178ed.md) | 118 | `result-track:0bd7645d4748b68f4b9178edc1a36cfb48a756f37492029529bb7d1d1483ccec` |
| 15 | `theorem` | [bitCasesOn_bit](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/bitcaseson-bit--fd7e9356a097a9ddd55a05aa.md) | 124 | `result-track:fd7e9356a097a9ddd55a05aabee5d0c7d50cd1674ae735aa7c05fd6164fc3e0b` |
| 16 | `theorem` | [binaryRec_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/binaryrec-zero--d7a78587202bf96c2413cd6c.md) | 132 | `result-track:d7a78587202bf96c2413cd6cab32ad98ff4a0c6d3c7fabbf932fb3d1d029647c` |
| 17 | `theorem` | [binaryRec_one](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/binaryrec-one--78c1ea53cb227937c0b51bb8.md) | 138 | `result-track:78c1ea53cb227937c0b51bb83b66227c493ea029f6dbce929eb9708961d5923d` |
| 18 | `theorem` | [binaryRec_eq](../../../../mathematics/FoundationsLogicAndTypeTheory/BinaryRec/Variant3064e6a00264629751d0ba054fbed83a14d00bfb0ef7033b5d6231756302206d.lean/declarations/binaryrec-eq--fe05bd3f6fb6b5b45a356192.md) | 144 | `result-track:fe05bd3f6fb6b5b45a356192fd00fb1f331c160fcc94dcffa2f8e9ff66e1a3e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
