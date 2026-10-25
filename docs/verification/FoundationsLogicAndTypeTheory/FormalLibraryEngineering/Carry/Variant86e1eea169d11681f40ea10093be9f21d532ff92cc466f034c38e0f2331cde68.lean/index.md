# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Carry.Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "014887a64b20432580b1f1966bd10cdea254dc59",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `014887a64b20432580b1f1966bd10cdea254dc59`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OverflowInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean/declarations/overflowinput--75a39a85cbdff6702d94c278.md) | 38 | `declaration-track:75a39a85cbdff6702d94c2782dcb35de2b761dfc344b5ac962b94a053a6d51c0` |
| 2 | `def` | [mkOverflowBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean/declarations/mkoverflowbit--8029962d4bbd2beaec0f8fcb.md) | 43 | `declaration-track:8029962d4bbd2beaec0f8fcb56ae07cf4189721a12914ce3cf6e0649352fb365` |
| 3 | `theorem` | [go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean/declarations/go-le-size--1747182040855007b63be616.md) | 66 | `result-track:1747182040855007b63be616dfc5856860c64197090566ad3abe0849d547fdf9` |
| 4 | `theorem` | [go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean/declarations/go-decl-eq--6b257d7c939ed17e236cc787.md) | 77 | `result-track:6b257d7c939ed17e236cc78772ca14c542d43518967c183d7e23eb24ead90911` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant86e1eea169d11681f40ea10093be9f21d532ff92cc466f034c38e0f2331cde68.lean/declarations/instance--979847fb1dcf7e58ab400289.md) | 93 | `declaration-track:979847fb1dcf7e58ab400289ed1533146b6a1e8c603360e26ccd64609d10ac5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
