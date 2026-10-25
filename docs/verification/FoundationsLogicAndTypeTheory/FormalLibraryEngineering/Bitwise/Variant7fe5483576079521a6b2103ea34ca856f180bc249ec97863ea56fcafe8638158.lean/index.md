# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitwise.Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0a7b17c020b8d9d70785a63e0ee75d0350ff1e9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0a7b17c020b8d9d70785a63e0ee75d0350ff1e9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Bitwise.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [and_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/and-val--5fbdd6b27303ab1b78cb0d34.md) | 17 | `result-track:5fbdd6b27303ab1b78cb0d34e7dbf02fa7e24bb5f2ec5b1e0326bbb0b84d828b` |
| 2 | `theorem` | [or_val_of_two_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/or-val-of-two-pow--efb824e134b926cfee2927d2.md) | 20 | `result-track:efb824e134b926cfee2927d247c7188d16a5d177a83b4ff0cece496fa3c8f409` |
| 3 | `theorem` | [or_val_of_uInt8Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/or-val-of-uint8size--e53b2649ff2e11d25b88b239.md) | 23 | `result-track:e53b2649ff2e11d25b88b2398516e34b91b0b39a8efb32778028cef6c8413313` |
| 4 | `theorem` | [or_val_of_uInt16Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/or-val-of-uint16size--7ad493aea1dff82be56020a0.md) | 24 | `result-track:7ad493aea1dff82be56020a0b2caf50d5e54033a8d0c3c178c83b37466786f40` |
| 5 | `theorem` | [or_val_of_uInt32Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/or-val-of-uint32size--12608a9b5817d87d57d5db01.md) | 25 | `result-track:12608a9b5817d87d57d5db017e3a50d237be4591bbd5d2918cb1c307299bb052` |
| 6 | `theorem` | [or_val_of_uInt64Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/or-val-of-uint64size--687637381236648cac34b261.md) | 26 | `result-track:687637381236648cac34b261787f8c0c47628d8d3e3fdc494c657b6534daebd9` |
| 7 | `theorem` | [or_val_of_uSizeSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/or-val-of-usizesize--68fedff9d8d271b90c5fe45f.md) | 27 | `result-track:68fedff9d8d271b90c5fe45f46962d5f20ac9601ec6959f66f0ac7ce0a97635e` |
| 8 | `theorem` | [or_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/or-val--3d2606da4df25be4c0b59637.md) | 29 | `result-track:3d2606da4df25be4c0b59637d4bc7925c6ff894a7394d9abdd07997a2bab9fdd` |
| 9 | `theorem` | [xor_val_of_two_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/xor-val-of-two-pow--ac69b6c2e3b5c163a0d723cc.md) | 31 | `result-track:ac69b6c2e3b5c163a0d723ccbdab28d4c65df868849cca233203c203015ec9a9` |
| 10 | `theorem` | [xor_val_of_uInt8Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/xor-val-of-uint8size--b2f7eb7ad23a6cb9fe492698.md) | 34 | `result-track:b2f7eb7ad23a6cb9fe492698259e2c056a9b3d89bb29012893135d1d501ceb68` |
| 11 | `theorem` | [xor_val_of_uInt16Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/xor-val-of-uint16size--b9c970de1ac68d4a07370037.md) | 35 | `result-track:b9c970de1ac68d4a07370037e5a632b96c552465769b8acbac2e8e4cd8381912` |
| 12 | `theorem` | [xor_val_of_uInt32Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/xor-val-of-uint32size--4bef26e3be2946c577ef7ff9.md) | 36 | `result-track:4bef26e3be2946c577ef7ff95f299e3731a9a533e6cd3723f2f163c15e621f44` |
| 13 | `theorem` | [xor_val_of_uInt64Size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/xor-val-of-uint64size--ec879ddf6e5d9511061d8251.md) | 37 | `result-track:ec879ddf6e5d9511061d8251249d5f8dd8d1b14f70547648141cf2b8d0d1b205` |
| 14 | `theorem` | [xor_val_of_uSizeSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/xor-val-of-usizesize--994bb42092011b1f97773515.md) | 38 | `result-track:994bb42092011b1f9777351585c06c3895cb71b41bedb6eacf550966d7af91b3` |
| 15 | `theorem` | [xor_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/xor-val--7b887feb874171e1519c7c47.md) | 40 | `result-track:7b887feb874171e1519c7c477f5367649124fb7c0d1c72a61dfe103f0da0cfec` |
| 16 | `theorem` | [shiftLeft_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/shiftleft-val--592dea416b27dc5333b0c627.md) | 42 | `result-track:592dea416b27dc5333b0c627de7f476327e0c11573ea3e5111d792b7e029673b` |
| 17 | `theorem` | [shiftRight_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitwise/Variant7fe5483576079521a6b2103ea34ca856f180bc249ec97863ea56fcafe8638158.lean/declarations/shiftright-val--a46d5d43188fec48855b7a62.md) | 44 | `result-track:a46d5d43188fec48855b7a62587d039cfd1f5aea331fd4d692fb9ac2f1dc7876` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
