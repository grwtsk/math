# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Deprecated.Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea4a29871821245b18a9774db4b567dc4bdee1b4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea4a29871821245b18a9774db4b567dc4bdee1b4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Linter.Init` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.InfoTree.Main` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.ExtraModUses` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DeprecationEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/declarations/deprecationentry--12144f616956e64dc7afe1fa.md) | 32 | `declaration-track:12144f616956e64dc7afe1fa7d1a34c2ab13ca06536b64a9aedd59ffbbdc49e6` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/declarations/builtin-initialize--ea2ba791eae02656681f45bd.md) | 38 | `declaration-track:ea2ba791eae02656681f45bd64d454ccf7c3e6f63caa75018682d542a78c7ad0` |
| 3 | `def` | [setDeprecated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/declarations/setdeprecated--3e8b46506346622c3409dff2.md) | 59 | `declaration-track:3e8b46506346622c3409dff2b4f21be4aa7f558396edbde8866102bb8b595303` |
| 4 | `def` | [isDeprecated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/declarations/isdeprecated--0e82661a5499236520d45ceb.md) | 65 | `declaration-track:0e82661a5499236520d45ceb49b4dac2b4719e302732b65622dbb6a441a79cd1` |
| 5 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeprecationEntry.Variant8c4081ce9b1680d514d939b490fa3971c7a18605d74d23c2d122a9b842b47513.Lean.MessageData.isDeprecationWarning](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-depre--ddb799c23beeba4e1bec81a6.md) | 68 | `declaration-track:ddb799c23beeba4e1bec81a679e9de25eec9823fe901a7906e94cf559fdca01d` |
| 6 | `def` | [getDeprecatedNewName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/declarations/getdeprecatednewname--2534b2e669ab3512eed30667.md) | 71 | `declaration-track:2534b2e669ab3512eed3066720f97a47ebfde3631ae9aa9c63b86308ccf20a72` |
| 7 | `def` | [checkDeprecated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/declarations/checkdeprecated--b91b612d5886c5332be59f3f.md) | 75 | `declaration-track:b91b612d5886c5332be59f3f04a6c9048a461f45698d15f252a67912697839d6` |
| 8 | `constant` | [must](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Deprecated/Variantba7b394e24a48541cf3f689285929cf2d52387155f2aa22c7a0d6c867ddfbf89.lean/declarations/must--435f5a713829222fbcc21821.md) | 103 | `declaration-track:435f5a713829222fbcc21821a7dc435bf49ff25b1c984ad1cd6536a50d0ea5bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
