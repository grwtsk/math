# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OptBound.Variantff28154af7affcf9e41a208e902912205bcf9b6e7305882bdfee37ae2900a7c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b06685123e7778cd0e81ef3e3387c1099e8b6349",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variantff28154af7affcf9e41a208e902912205bcf9b6e7305882bdfee37ae2900a7c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variantff28154af7affcf9e41a208e902912205bcf9b6e7305882bdfee37ae2900a7c8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variantff28154af7affcf9e41a208e902912205bcf9b6e7305882bdfee37ae2900a7c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b06685123e7778cd0e81ef3e3387c1099e8b6349`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variantff28154af7affcf9e41a208e902912205bcf9b6e7305882bdfee37ae2900a7c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variantff28154af7affcf9e41a208e902912205bcf9b6e7305882bdfee37ae2900a7c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Validity.Bounds` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.BoundVerify` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkGlobalOptConfigExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variantff28154af7affcf9e41a208e902912205bcf9b6e7305882bdfee37ae2900a7c8.lean/declarations/mkglobaloptconfigexpr--147bd6285b73e28cfc076fe8.md) | 35 | `declaration-track:147bd6285b73e28cfc076fe87b2b7f4f40090371fee14b8ac1e2b35250b1b2b7` |
| 2 | `def` | [optBoundCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variantff28154af7affcf9e41a208e902912205bcf9b6e7305882bdfee37ae2900a7c8.lean/declarations/optboundcore--3a4d68fe3f7be8afbf24eb76.md) | 39 | `declaration-track:3a4d68fe3f7be8afbf24eb76383765bef8b9d9e449c673c5f3f027c8fcb19b67` |
| 3 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptBound/Variantff28154af7affcf9e41a208e902912205bcf9b6e7305882bdfee37ae2900a7c8.lean/declarations/elab--0460f18851d902976c56d69d.md) | 107 | `declaration-track:0460f18851d902976c56d69d37d7526d3fb4bc6ce1eca9ec2dffe38037a6d4d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
