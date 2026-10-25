# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtensionOperator.Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "254eeee9eade64c6d99ef6ff57694b453f41dc2c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `254eeee9eade64c6d99ef6ff57694b453f41dc2c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.Decoupling.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtensionOperatorData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4.lean/declarations/extensionoperatordata--a47fbbae50f8c9986fdb9420.md) | 17 | `declaration-track:a47fbbae50f8c9986fdb94205ef261cae737ff5f98127702fe8eb6dc2ce690d6` |
| 2 | `def` | [extensionOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4.lean/declarations/extensionoperator--972a0896f80c8bcedd4b0f99.md) | 29 | `declaration-track:972a0896f80c8bcedd4b0f99d32b25bea436c49c0b852ed635e7c71b3bee6616` |
| 3 | `def` | [graphExtensionOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4.lean/declarations/graphextensionoperator--208be6fdc69ba9c1e677213d.md) | 37 | `declaration-track:208be6fdc69ba9c1e677213d7fb70ed8910cb11ef283ecaab74a20901062030a` |
| 4 | `def` | [extensionOperatorResidue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4.lean/declarations/extensionoperatorresidue--d7ec19ff2f76c05086753652.md) | 44 | `declaration-track:d7ec19ff2f76c05086753652e9a323f5b3f57d22073ac5dd569ff84fa8d541d1` |
| 5 | `theorem` | [graph_extension_operator_is_specialization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant07b6d0332538420ff85bd7e99013240db669c151be435812e1ba12b05c05c3a4.lean/declarations/graph-extension-operator-is-specialization--4929dda8985d7de96ff86229.md) | 47 | `result-track:4929dda8985d7de96ff8622976399e50041863945cb87a5491c29bf99cc0d701` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
