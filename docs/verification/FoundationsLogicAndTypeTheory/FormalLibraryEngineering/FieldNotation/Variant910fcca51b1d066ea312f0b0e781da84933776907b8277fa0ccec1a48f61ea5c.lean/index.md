# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FieldNotation.Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0167df68da7e63354c0a316102a9c15e51ab122",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0167df68da7e63354c0a316102a9c15e51ab122`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/declarations/projinfo--d0aba0216a1dc9ce4c35eb71.md) | 32 | `declaration-track:d0aba0216a1dc9ce4c35eb71844e2869082bd8867bd8e35efd700abfff3641ed` |
| 2 | `def` | [isAppOfBaseName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/declarations/isappofbasename--d4ecb052bcf8bdf3c2181ad0.md) | 49 | `declaration-track:d4ecb052bcf8bdf3c2181ad0b903fa36ab90a7f9dde341214bd6fd97129cc1ba` |
| 3 | `def` | [typeMatchesBaseName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/declarations/typematchesbasename--0aaf38fb3af70e41460d19b0.md) | 58 | `declaration-track:0aaf38fb3af70e41460d19b047f8652ad3156e0a68e3c0f2293f1de847073876` |
| 4 | `def` | [generalizedFieldInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/declarations/generalizedfieldinfo--5ef0248756d3437c76e51431.md) | 76 | `declaration-track:5ef0248756d3437c76e514313254bb5e4868c05add0527844e122ef9cbf46a48` |
| 5 | `def` | [testAppOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/declarations/testappof--7f5966dc4ba81a0e426b8b12.md) | 105 | `declaration-track:7f5966dc4ba81a0e426b8b1227289b9a139d8fb0e1509600cdd1260ae9d3d2f7` |
| 6 | `def` | [fieldNotationCandidate?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/declarations/fieldnotationcandidate--07f4dcd912af1d0319527e1d.md) | 115 | `declaration-track:07f4dcd912af1d0319527e1de4b1d6c059667cc7313e439b444f779718bd9503` |
| 7 | `def` | [parentProj?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/declarations/parentproj--0cd25baf7ac1886f66d81c45.md) | 145 | `declaration-track:0cd25baf7ac1886f66d81c45963be8629b16c07e3516de038829b78e76999ed9` |
| 8 | `def` | [isParentProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FieldNotation/Variant910fcca51b1d066ea312f0b0e781da84933776907b8277fa0ccec1a48f61ea5c.lean/declarations/isparentproj--1e417ca3219e80716ca3d19d.md) | 158 | `declaration-track:1e417ca3219e80716ca3d19d6d94b72059a306ecabaa2356fc71a58b9b22510a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
