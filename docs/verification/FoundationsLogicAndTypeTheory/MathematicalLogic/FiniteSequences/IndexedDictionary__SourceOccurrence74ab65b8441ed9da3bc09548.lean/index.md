# Verification target: GRWTSK.Logic.FiniteSequences.IndexedDictionary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecf0105e1883c7074d68264248ef1cea613e480c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/FiniteSequences/IndexedDictionary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecf0105e1883c7074d68264248ef1cea613e480c`.

Source path: `GRWTSK/Logic/FiniteSequences/IndexedDictionary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/FiniteSequences/IndexedDictionary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Dedup` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Packed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/packed--9c631f726c61662a21848a57.md) | 30 | `declaration-track:9c631f726c61662a21848a57da7720676886f30d28fe7ab290f4d531a4c8a832` |
| 2 | `def` | [decodeReference](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/decodereference--433e71761034971e57be08d8.md) | 35 | `declaration-track:433e71761034971e57be08d8e31eaa50bbf7f284a24e4dd986f56a6a0f9f521e` |
| 3 | `def` | [unpack](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/unpack--5d4e4b5df8f1bd758d9121fa.md) | 40 | `declaration-track:5d4e4b5df8f1bd758d9121fa4c6d0b9708321aa82e41b908f6b1ea802b12be2f` |
| 4 | `def` | [Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/valid--fa7290fe52967f89fc2ce772.md) | 44 | `declaration-track:fa7290fe52967f89fc2ce7727de418514b2ac47b3b4392b5a50ce959e73f5696` |
| 5 | `def` | [pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/pack--f7c800800e3f561a1e9ffbef.md) | 51 | `declaration-track:f7c800800e3f561a1e9ffbefe47ef7bed1f7d0c804d70bff584b40628e1182a8` |
| 6 | `theorem` | [payload_mem_dictionary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/payload-mem-dictionary--49a0124e103ab358846dbccc.md) | 56 | `result-track:49a0124e103ab358846dbccc4f68cf4e3acf9264bb57fef03d2f2cd4b07f8bc6` |
| 7 | `theorem` | [pack_dictionary_nodup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/pack-dictionary-nodup--b2c7796eb2b0e359d0840f15.md) | 62 | `result-track:b2c7796eb2b0e359d0840f151d13a3ad6a8959807c8a476590c61f0880982e1f` |
| 8 | `theorem` | [pack_reference_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/pack-reference-bound--6f8faaa486262b16ac3a17ce.md) | 67 | `result-track:6f8faaa486262b16ac3a17ceefca9aa1cee2d7223e2f1480de317993d1bde118` |
| 9 | `theorem` | [pack_valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/pack-valid--4ede64457ded6006d0bb266d.md) | 74 | `result-track:4ede64457ded6006d0bb266dc27c806bdf991527636310be1760a11c32074f72` |
| 10 | `theorem` | [pack_references_keys](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/pack-references-keys--ccc8384adb10d8821a94e8fb.md) | 78 | `result-track:ccc8384adb10d8821a94e8fbecf1994685ef732199be660bea9dc1f6156feb6b` |
| 11 | `theorem` | [pack_references_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/pack-references-length--d64ec1984a21efc76e76feef.md) | 83 | `result-track:d64ec1984a21efc76e76feef02c5d215572f2fea23fd46d0df32b40e14f50ad1` |
| 12 | `theorem` | [decodeReference_index_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/decodereference-index-of-mem--300890bf0ab03350c9e5e1a0.md) | 88 | `result-track:300890bf0ab03350c9e5e1a09f34922e9df0bb7f400c6ff046fe909f846bd737` |
| 13 | `theorem` | [unpack_map_indices](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/unpack-map-indices--b9f064b273b9c93be3b8f557.md) | 94 | `result-track:b9f064b273b9c93be3b8f557495873a65f1b45296c15e7be81fe8c382e075fed` |
| 14 | `theorem` | [unpack_pack](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/unpack-pack--8473e793cf5e5777257e4cc7.md) | 109 | `result-track:8473e793cf5e5777257e4cc7cbeffaae69ffbb7ba8c6f645f98ee47f0e0ef196` |
| 15 | `theorem` | [pack_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/pack-injective--29535ce5a89a692723b795e8.md) | 115 | `result-track:29535ce5a89a692723b795e872e09e4d1c1da4fddc2d94c06c0c51cf5a909e13` |
| 16 | `theorem` | [unpack_pack_position](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/IndexedDictionary__SourceOccurrence74ab65b8441ed9da3bc09548.lean/declarations/unpack-pack-position--076820ce41ad4a42196f8698.md) | 121 | `result-track:076820ce41ad4a42196f86983ef41883bf5f79a0d6b1a9d758fb7809b16897c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
