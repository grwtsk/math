# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacteristicFormula.Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62e63f3619b914bedf52956c4d1e812f3322c701",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62e63f3619b914bedf52956c4d1e812f3322c701`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CrystallineIndex.CharacteristicFormula` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chern_character_additive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean/declarations/chern-character-additive--fd68eb0403f7c901fb05d6e1.md) | 20 | `result-track:fd68eb0403f7c901fb05d6e1f2eee7df863ac136a6e43ad924b618fc7b1336a9` |
| 2 | `theorem` | [chern_character_connection_compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean/declarations/chern-character-connection-compatible--4fc997536d590416843550a0.md) | 26 | `result-track:4fc997536d590416843550a0990d5297b80c20dc7de8f903837121f2878e9206` |
| 3 | `theorem` | [ahat_genus_multiplicative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean/declarations/ahat-genus-multiplicative--807420964cd22679c3605772.md) | 32 | `result-track:807420964cd22679c3605772e7709c32d1404c6e121cdf5161521d5bfedd4ea7` |
| 4 | `theorem` | [witten_genus_refines_ahat_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean/declarations/witten-genus-refines-ahat-if-supplied--6579a52522cf1b7e23eda730.md) | 38 | `result-track:6579a52522cf1b7e23eda73024142e535eb2e131a3a8c1093514d702f52e2d41` |
| 5 | `theorem` | [witten_genus_requires_string_orientation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean/declarations/witten-genus-requires-string-orientation--4d4522d5e3878a2c16ea1083.md) | 44 | `result-track:4d4522d5e3878a2c16ea10837f4867f28a826da202547584eecfd9cc9d632589` |
| 6 | `theorem` | [characteristic_formula_compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean/declarations/characteristic-formula-compatible--adbac80f964f2ea9bec37b56.md) | 50 | `result-track:adbac80f964f2ea9bec37b56d8d2c2d87e778c7b2b352b2acd9d9cb6a20a6aa1` |
| 7 | `theorem` | [characteristic_formula_is_index_style](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacteristicFormula/Variant96f45b0ec2adee7a22cf439c19da11c98c20ca54f45332f08b3c15a9e662fd87.lean/declarations/characteristic-formula-is-index-style--c0b17f4dae0ff4058ab600a1.md) | 61 | `result-track:c0b17f4dae0ff4058ab600a199e83c51bb0da2366699266dbb3224a647bd9dd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
