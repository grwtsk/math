# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4b9f4cab66495a3472a4d0413c2e0956043d91e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4b9f4cab66495a3472a4d0413c2e0956043d91e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Backtracking` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr.ForwardAttr` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GCongrLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/gcongrlemma--fa368d0ef5b63b52d4787204.md) | 126 | `declaration-track:fa368d0ef5b63b52d478720498a51906eed62644f499d272c676b09fdfeb26ad` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/initialize--8a8e491ef3b72801f701d74f.md) | 133 | `declaration-track:8a8e491ef3b72801f701d74f242d3c04c58fcf34e186c149f29b8e8d0e590904` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/initialize--c8d05393c06296b15cbc2060.md) | 150 | `declaration-track:c8d05393c06296b15cbc206074a9a0918b2c25808c784e756ae216f6f419a408` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/initialize--32dbed5dac8d5a04adef5bfe.md) | 207 | `declaration-track:32dbed5dac8d5a04adef5bfee8c916f07a932e5eaeb8dd113a1b3c22c15e665b` |
| 5 | `def` | [_root_.Lean.MVarId.gcongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/root-lean-mvarid-gcongr--4f237160cc3c73517ae69db4.md) | 214 | `declaration-track:4f237160cc3c73517ae69db4274815c834dee9ae9539e3e34ff396b0c91a4a22` |
| 6 | `def` | [exactRefl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/exactrefl--c98e4ab52a294f2ec0b7cb97.md) | 353 | `declaration-track:c98e4ab52a294f2ec0b7cb97c39e6fb9dc867145f89caadbf160580ccc4e18b8` |
| 7 | `def` | [exactLeOfLt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/exactleoflt--0d79d04b49a1163b289c6c38.md) | 360 | `declaration-track:0d79d04b49a1163b289c6c386c440cd833e69ed15abd03f67ee26f3b536bece8` |
| 8 | `def` | [symmExact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/symmexact--ff0d321c37a87128c90fbc35.md) | 364 | `declaration-track:ff0d321c37a87128c90fbc3549537ed324532da76cf402a92d064a7c63a7be8d` |
| 9 | `def` | [exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/exact--28f7171ca1f7136e5bdb1f60.md) | 367 | `declaration-track:28f7171ca1f7136e5bdb1f6090b0ca5533049dc68b2e13ff1a8b06a384b38310` |
| 10 | `def` | [_root_.Lean.MVarId.gcongrForward](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/root-lean-mvarid-gcongrforward--b984ef0ad84e76c2a268a8d9.md) | 373 | `declaration-track:b984ef0ad84e76c2a268a8d9464b967ff7652910fa4970be6d042f533c06e9fc` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/syntax--b074565dcfbeafcae3ac3e4a.md) | 388 | `declaration-track:b074565dcfbeafcae3ac3e4a1459bfe795af59ba8b71ea4fa30dd445550b413b` |
| 12 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/elab--7de3c7a2a59115cbb8031f54.md) | 426 | `declaration-track:7de3c7a2a59115cbb8031f54b4fc2a17b68a05be0ff28d3284cbecd480ceee77` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/syntax--434faeae2a30ae404a064626.md) | 482 | `declaration-track:434faeae2a30ae404a06462631b25e1e6394705a43818ad125cecddc7b208f57` |
| 14 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/declarations/elab-rules--ca3185152eb5e9d4e47d8ad1.md) | 484 | `declaration-track:ca3185152eb5e9d4e47d8ad120d5f1b36d577621170ad98b07b926a92db903a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
