# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Inhabited.Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaf7203d838ba9e1257a0a604ac63041f50fd2b1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaf7203d838ba9e1257a0a604ac63041f50fd2b1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Util` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IndexSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean/declarations/indexset--af8541e769e3885b5fbea60d.md) | 25 | `declaration-track:af8541e769e3885b5fbea60d57216cd7e08c0fe7b257d809a11e786b4aada232` |
| 2 | `abbrev` | [LocalInst2Index](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean/declarations/localinst2index--c8705acc9f4c34114036bb6c.md) | 26 | `declaration-track:c8705acc9f4c34114036bb6cb343ac90a29e2ad6bdb3a0adfe3a8301a3115a85` |
| 3 | `def` | [mkInhabitedInstanceUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean/declarations/mkinhabitedinstanceusing--ffd1e3e90bca2a9686d760ed.md) | 28 | `declaration-track:ffd1e3e90bca2a9686d760eda45d88dc9b2dd617f68dc04abfcefe2eea1440ee` |
| 4 | `def` | [mkInhabitedInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean/declarations/mkinhabitedinstance--b69689d620f6c46055074492.md) | 150 | `declaration-track:b69689d620f6c460550744926a3a760d12beacbd361727c37c44fcb03064318d` |
| 5 | `def` | [mkInhabitedInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean/declarations/mkinhabitedinstancehandler--0438b2bf1418cde755217b7f.md) | 161 | `declaration-track:0438b2bf1418cde755217b7f88d07a2b1945b0aaf2ddf8a01c09d4743f96e0cd` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inhabited/Variant12030fa240ce72f8fcbeeae5f0025b6698f6cc7b53af591323d578edb5b59910.lean/declarations/builtin-initialize--61d8d74b203f9a6c0bff2aed.md) | 168 | `declaration-track:61d8d74b203f9a6c0bff2aedc568efa6228fad070db09f672d762dff01e00326` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
