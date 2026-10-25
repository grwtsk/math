# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35a2ae9728510141c908b46ba927c3e5f79055a7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35a2ae9728510141c908b46ba927c3e5f79055a7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.MinMax` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Factories` — import line 12; external provider; requires a separately pinned dependency.
- `Init.NotationExtra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instIsLinearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d.lean/declarations/instislinearorder--500cc5ce0812a24aa32229b4.md) | 19 | `declaration-track:500cc5ce0812a24aa32229b47e58b11d4f43317c3c2dd10481b0f58dc9b151cf` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d.lean/declarations/instance--beb8f34ebbea265f0d29c3d1.md) | 25 | `declaration-track:beb8f34ebbea265f0d29c3d1c6ccb8bf62c4f1659910dd05979e2a0f9261cffe` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d.lean/declarations/instance--27a59ed181ac7e5d2b21861e.md) | 29 | `declaration-track:27a59ed181ac7e5d2b21861ec4c5ce1b86066ca075e67b2ce3d89c81b3a574f3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d.lean/declarations/instance--818c42896afceff55423c17c.md) | 36 | `declaration-track:818c42896afceff55423c17c0c83e5c4924752fb7c0104fbb14f1a06031e903e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
