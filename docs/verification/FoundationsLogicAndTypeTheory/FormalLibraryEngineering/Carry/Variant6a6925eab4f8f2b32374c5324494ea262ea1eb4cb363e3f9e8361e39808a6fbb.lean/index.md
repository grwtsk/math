# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Carry.Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98c02fdb457a7d0fc22267b41292814074ed0145",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98c02fdb457a7d0fc22267b41292814074ed0145`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OverflowInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean/declarations/overflowinput--d6a44f915f89ee632a9967db.md) | 30 | `declaration-track:d6a44f915f89ee632a9967dbbd7264fdd634177f6aa13cdfc73da18acb254931` |
| 2 | `def` | [mkOverflowBit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean/declarations/mkoverflowbit--72a2f29fdf23187a6ebd5a94.md) | 35 | `declaration-track:72a2f29fdf23187a6ebd5a942e8b9d3327a834d0fe8864cdf52020464636c7e8` |
| 3 | `theorem` | [go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean/declarations/go-le-size--9167c775b7594e2eb6dfff3c.md) | 58 | `result-track:9167c775b7594e2eb6dfff3c0b728d9a73e678074f16a89b44607dccdf11d02a` |
| 4 | `theorem` | [go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean/declarations/go-decl-eq--8e65a6ec6ec4612a621c02eb.md) | 69 | `result-track:8e65a6ec6ec4612a621c02eb7442e1cde306f5259016ea6b0736957e6c577a57` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Carry/Variant6a6925eab4f8f2b32374c5324494ea262ea1eb4cb363e3f9e8361e39808a6fbb.lean/declarations/instance--1b29342ba314505dabeba281.md) | 85 | `declaration-track:1b29342ba314505dabeba2811dfee352bf9b3d98095261a683d5d84fa333df31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
