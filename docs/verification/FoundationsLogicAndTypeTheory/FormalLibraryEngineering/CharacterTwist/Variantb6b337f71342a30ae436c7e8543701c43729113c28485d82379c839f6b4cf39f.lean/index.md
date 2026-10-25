# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacterTwist.Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f817d3513e49dc28c9a1c4db1672c2a32367e85a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f817d3513e49dc28c9a1c4db1672c2a32367e85a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Arithmetic.CharacterProjector` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.DifferentialComplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CharacterTwist](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean/declarations/charactertwist--e53915ad16b92edef566e111.md) | 34 | `declaration-track:e53915ad16b92edef566e1114309aaeb00c43319dd9c30a4e4db2c4dea07033f` |
| 2 | `def` | [twistedDifferential](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean/declarations/twisteddifferential--f128cf23b5db1710e705a644.md) | 48 | `declaration-track:f128cf23b5db1710e705a6442f997f0b95da23dabe5c83ba9ad68027c3fca1bc` |
| 3 | `theorem` | [twistedDifferential_sq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean/declarations/twisteddifferential-sq-zero--db335b00ee7abf8171865bd2.md) | 53 | `result-track:db335b00ee7abf8171865bd265545b6742c65ccc81ad4f4fc85d7647f940404c` |
| 4 | `def` | [twistedComplex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean/declarations/twistedcomplex--f3cfe3baadea797e8b435e93.md) | 72 | `declaration-track:f3cfe3baadea797e8b435e93b9491e9653199e03c582dabd97af9ec546bd81c9` |
| 5 | `def` | [identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean/declarations/identity--c4ed29411bfc32e21d731ab0.md) | 79 | `declaration-track:c4ed29411bfc32e21d731ab05c8e09ea8750a3364628bfc3699736862f3f919c` |
| 6 | `theorem` | [identity_twistedDifferential](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean/declarations/identity-twisteddifferential--fcd6ebd1dfd971f3d4edb5c3.md) | 88 | `result-track:fcd6ebd1dfd971f3d4edb5c3ca0afac1ee98e907c1760149309cfa77a02df1a3` |
| 7 | `theorem` | [characterTwist_flat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CharacterTwist/Variantb6b337f71342a30ae436c7e8543701c43729113c28485d82379c839f6b4cf39f.lean/declarations/charactertwist-flat--72531ed31e692705e6aa85d6.md) | 95 | `result-track:72531ed31e692705e6aa85d6f2ecedf456606293a2c7c05a9b8a2730efc446dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
