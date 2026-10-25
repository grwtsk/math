# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtensionOperator.Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa1d9bff86ad3a9c0f2f987196f4173e003cc56f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa1d9bff86ad3a9c0f2f987196f4173e003cc56f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.Decoupling.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtensionOperatorData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean/declarations/extensionoperatordata--dedf0e89b09d4a629e13c6b9.md) | 9 | `declaration-track:dedf0e89b09d4a629e13c6b9e49c76b054d274ccc95bbf6f5efb2a5107197d01` |
| 2 | `def` | [extensionOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean/declarations/extensionoperator--536599206e290b5ae810327e.md) | 21 | `declaration-track:536599206e290b5ae810327ef5ee6c0c230a8c92e6b857399146423530009485` |
| 3 | `def` | [graphExtensionOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean/declarations/graphextensionoperator--da697e5cd5057f82ed29fcba.md) | 29 | `declaration-track:da697e5cd5057f82ed29fcba9c0c806336a29223898b047489a1948bc00c06f4` |
| 4 | `def` | [extensionOperatorResidue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean/declarations/extensionoperatorresidue--767ee7a052686d690db0f321.md) | 36 | `declaration-track:767ee7a052686d690db0f3217c76490a02aaa1e1a4777c88ef5f1d11aaf1a312` |
| 5 | `theorem` | [graph_extension_operator_is_specialization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean/declarations/graph-extension-operator-is-specialization--29e8ac47874a8901bf061eb8.md) | 39 | `result-track:29e8ac47874a8901bf061eb8d33ab96a2eda3b07c43a168211a9768fd8f6c827` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
