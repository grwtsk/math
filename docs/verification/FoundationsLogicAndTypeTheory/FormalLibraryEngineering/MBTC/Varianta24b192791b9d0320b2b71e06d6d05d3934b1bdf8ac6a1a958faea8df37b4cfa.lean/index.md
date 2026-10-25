# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MBTC.Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a93c96a8a45b6950eb6061e50505a3209481804b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a93c96a8a45b6950eb6061e50505a3209481804b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.MBTC` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.ModelUtil` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Model` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.LinearM` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toRatValue?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean/declarations/toratvalue--12b4ee4052d990f8ae9e157b.md) | 24 | `declaration-track:12b4ee4052d990f8ae9e157b12f12bb3d1479405c036ec179505f9cd3df81920` |
| 2 | `def` | [getAssignmentExt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean/declarations/getassignmentext--5e7f1530be46de34e63b71d2.md) | 40 | `declaration-track:5e7f1530be46de34e63b71d26fe6da5909543f3933f0efc99545650467f1c328` |
| 3 | `def` | [hasTheoryVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean/declarations/hastheoryvar--83414d02a91a56b453e856c0.md) | 46 | `declaration-track:83414d02a91a56b453e856c060cf4581c6c97702d9d8df9df8b97fe068711a9a` |
| 4 | `def` | [isInterpreted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean/declarations/isinterpreted--e08fe9d52880e84ee1bb6822.md) | 49 | `declaration-track:e08fe9d52880e84ee1bb6822a9d60465394728f997a68d02f0c7e0e4d1f6c6b6` |
| 5 | `def` | [eqAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean/declarations/eqassignment--c06d0947f070f145ac3fcf7e.md) | 54 | `declaration-track:c06d0947f070f145ac3fcf7ec259701f3a699ac7a30c6518dbb5a7e8ad8cd7ee` |
| 6 | `def` | [mbtc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Varianta24b192791b9d0320b2b71e06d6d05d3934b1bdf8ac6a1a958faea8df37b4cfa.lean/declarations/mbtc--e40a6f11fd058f6ef8348963.md) | 65 | `declaration-track:e40a6f11fd058f6ef8348963569b5a8858c54c5d0328ad0e47ecd2e4c1e2ffc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
