# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lintunused.Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bb05ef2c48e1ca98f0cb538e7c5340674c91e1f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bb05ef2c48e1ca98f0cb538e7c5340674c91e1f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 3; external provider; requires a separately pinned dependency.
- `Batteries.Util.ProofWanted` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo--1e35673d7e89b41a9e5926ab.md) | 11 | `declaration-track:1e35673d7e89b41a9e5926ab69f02e998a39c7c99e1f6c2c135246012d475aa9` |
| 2 | `def` | [foo'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo--84e523cf4c6236840615d45e.md) | 14 | `declaration-track:84e523cf4c6236840615d45ed31b428b2309f35370ff3ee366ce4bf82afcf7c2` |
| 3 | `def` | [fooBad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foobad--2072e3e464254aa63f9ba2ec.md) | 18 | `declaration-track:2072e3e464254aa63f9ba2ecbb39794df5ca50d43e1f15db9534198f3744b8dd` |
| 4 | `theorem` | [foo1_ok](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo1-ok--7532c699fc0af25d8a710c72.md) | 20 | `result-track:7532c699fc0af25d8a710c72a50a3c996f1bd659039c54dd013cead4365d0ece` |
| 5 | `theorem` | [foo2_bad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo2-bad--1e5beb14b3e1b4741a54c23d.md) | 23 | `result-track:1e5beb14b3e1b4741a54c23dbfdafbf91e5bd804fd594892b47df5a57cfe82eb` |
| 6 | `theorem` | [foo3_bad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo3-bad--eb82bf221315d7b5fbed2b2c.md) | 25 | `result-track:eb82bf221315d7b5fbed2b2cd3a13ac383b293f9e75a8a02236b65ebd8f58d5b` |
| 7 | `theorem` | [foo4_bad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo4-bad--642a04c7d0cbe53a40bac8e0.md) | 28 | `result-track:642a04c7d0cbe53a40bac8e08255c67dbc3a2bda7a442acff8970d11929da3bd` |
| 8 | `theorem` | [foo5_ok](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo5-ok--1bd5eb1dda6c2d8b70de9832.md) | 30 | `result-track:1bd5eb1dda6c2d8b70de983288207c1cc93fc88464dad8fb1e44f14944ec79b8` |
| 9 | `theorem` | [foo6_ok](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo6-ok--91f5a7626cf92cebebd5d5c2.md) | 32 | `result-track:91f5a7626cf92cebebd5d5c2b02db70cccf5df44718dd77b68bc2e2510cf7eae` |
| 10 | `theorem` | [foo7_bad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo7-bad--5da10fc6b34a9a5442cd835d.md) | 35 | `result-track:5da10fc6b34a9a5442cd835de8d0c7f000d93603b54bfd6ed72fc79a5a52a6c5` |
| 11 | `theorem` | [foo6_ok'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo6-ok--04479311e658ba7cd2cddcb2.md) | 39 | `result-track:04479311e658ba7cd2cddcb2b678b7f7e49af5afda81492d131fa472656d1bf8` |
| 12 | `theorem` | [foo8_bad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean/declarations/foo8-bad--583a2f90be250c96417e89a6.md) | 42 | `result-track:583a2f90be250c96417e89a62299e3f57d8d69f32218497d7a1a3db0323a2e97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
