# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Parser.Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff5651ecde581d6c36679c780e22ecb345785870",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff5651ecde581d6c36679c780e22ecb345785870`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/builtin-initialize--d979c7a48b2119597e456cea.md) | 35 | `declaration-track:d979c7a48b2119597e456cea91ba5b7d9b3fd4fa0e476201c0b17dd9a0644c2f` |
| 2 | `def` | [mkAntiquot.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/mkantiquot-parenthesizer--8a56d0cd7c8ca8c758751647.md) | 79 | `declaration-track:8a56d0cd7c8ca8c758751647f3d978a69c909a9710f396bfe2e9428c64669bd4` |
| 3 | `def` | [ident.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/ident-parenthesizer--1e01c886d4e6e21f5fa528cb.md) | 84 | `declaration-track:1e01c886d4e6e21f5fa528cbefd4010a7fd63cb79d6b5cceb64845c6d46f8e21` |
| 4 | `def` | [numLit.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/numlit-parenthesizer--de3d0ac494dfc34eab32feb0.md) | 85 | `declaration-track:de3d0ac494dfc34eab32feb00eaf2e1ffc26bf4ffbada2373e60251b1daec3dd` |
| 5 | `def` | [scientificLit.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/scientificlit-parenthesizer--d8eeb7862731dc8eb0836d3a.md) | 86 | `declaration-track:d8eeb7862731dc8eb0836d3a9b5cb0453e9990817a53a241acde4d2590eaff72` |
| 6 | `def` | [charLit.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/charlit-parenthesizer--65118cafc118a1e0b26c2af6.md) | 87 | `declaration-track:65118cafc118a1e0b26c2af69626cd0b852bef7965c6d944ea09f2eecbd89e41` |
| 7 | `def` | [strLit.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/strlit-parenthesizer--b656a7d6362d902de721e22b.md) | 88 | `declaration-track:b656a7d6362d902de721e22b0c598b82e0ecaf444bfad174e395ec4c5f751b5c` |
| 8 | `def` | [interpretParserDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/interpretparserdescr--4e0adfe16dae3feef58e18d4.md) | 94 | `declaration-track:4e0adfe16dae3feef58e18d459163dd357e6ac46534834dd871938ccb96211a7` |
| 9 | `def` | [mkAntiquot.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/mkantiquot-formatter--c6e21ae4daa212d1a81a4317.md) | 116 | `declaration-track:c6e21ae4daa212d1a81a4317296287261f36162f66b55c9ee2b4100626844409` |
| 10 | `def` | [ident.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/ident-formatter--9e31ea36970f9b438a82ca62.md) | 119 | `declaration-track:9e31ea36970f9b438a82ca62ac8fe3882577775fa7d6572383d4a29afd66166e` |
| 11 | `def` | [numLit.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/numlit-formatter--70d8a3c518ab9bd6f9b07861.md) | 120 | `declaration-track:70d8a3c518ab9bd6f9b0786128dac724273f551e518f93c28bdea94c2de8e4b2` |
| 12 | `def` | [scientificLit.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/scientificlit-formatter--3c43b0be2ea8a420f4f62c65.md) | 121 | `declaration-track:3c43b0be2ea8a420f4f62c65b4b42ca03f86557dd95ac77c0a9437ccf7a17307` |
| 13 | `def` | [charLit.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/charlit-formatter--7ed298635db2f6d9a39b2c19.md) | 122 | `declaration-track:7ed298635db2f6d9a39b2c196663587b0d48743a21ecc158594b31746fb71a18` |
| 14 | `def` | [strLit.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/strlit-formatter--55b7ffff9fd137c2bac7f0fd.md) | 123 | `declaration-track:55b7ffff9fd137c2bac7f0fd1446896f4a5c959a6d0a6de48f6e9a57651ca17e` |
| 15 | `def` | [interpretParserDescr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant72386b5d6a038be26e034c970a883b5e3d28a32b69f8861974342b90ef1a6fa6.lean/declarations/interpretparserdescr--18619d0fb4e281d7e02fc97e.md) | 129 | `declaration-track:18619d0fb4e281d7e02fc97e81141c4148bc44ec8c956ebead1fa0a9907f50bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
