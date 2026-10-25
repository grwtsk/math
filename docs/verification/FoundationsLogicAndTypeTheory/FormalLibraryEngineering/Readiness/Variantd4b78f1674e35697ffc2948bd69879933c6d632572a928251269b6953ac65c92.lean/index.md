# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Readiness.Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b970fa96f470ade701f7f22545156f2682e913a9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b970fa96f470ade701f7f22545156f2682e913a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Arithmetic.EllipticCurve.BSD.Flow` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BSDReadiness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/declarations/bsdreadiness--22d8417c723055d8a1cafa0c.md) | 15 | `declaration-track:22d8417c723055d8a1cafa0c3ab44e1c8180bc2015012a6b3a343cd8fcedfa75` |
| 2 | `def` | [BSDReadiness.statementSupportReady](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/declarations/bsdreadiness-statementsupportready--5ca99e3fd3c565eafc640798.md) | 29 | `declaration-track:5ca99e3fd3c565eafc6407988ee2d5bd1c8f7d00ae0b62adaca67309d8a5ce94` |
| 3 | `def` | [BSDReadiness.theoremReady](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/declarations/bsdreadiness-theoremready--d7ab7f56b5c60af6e35e6e63.md) | 44 | `declaration-track:d7ab7f56b5c60af6e35e6e635978a7c36b5accf6b03d2b734ec0282c18d6df17` |
| 4 | `def` | [BSDReadiness.ready](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/declarations/bsdreadiness-ready--e3325f0802aa6c9e205b60e6.md) | 51 | `declaration-track:e3325f0802aa6c9e205b60e646cfad4a083c2b91b5025f702bb7daa16a7b509e` |
| 5 | `def` | [currentBSDTheoremSeed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/declarations/currentbsdtheoremseed--7919078eb5fa6886e6fdb9f3.md) | 57 | `declaration-track:7919078eb5fa6886e6fdb9f373a9636a4930c3668f3fa6560dee0f68878e75ab` |
| 6 | `def` | [currentBSDReadiness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/declarations/currentbsdreadiness--0f3716f26d535ab1d30fb919.md) | 70 | `declaration-track:0f3716f26d535ab1d30fb919f8c67d3bf95140af8e7a9e65294e70c9610e3b9e` |
| 7 | `theorem` | [currentBSDTheoremSeed_not_available](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/declarations/currentbsdtheoremseed-not-available--5f9f0d82ad8c9366fa852856.md) | 84 | `result-track:5f9f0d82ad8c9366fa8528564ccae7d24a51fea72198a33938eba7b03720b2f2` |
| 8 | `theorem` | [currentBSDTheoremSeed_not_smooth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/declarations/currentbsdtheoremseed-not-smooth--12e274318b0ed66550638d7c.md) | 89 | `result-track:12e274318b0ed66550638d7ca3bf64a37a7574d6fd8d0cf5dff37535bb563dd7` |
| 9 | `theorem` | [currentBSDReadiness_not_ready](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/declarations/currentbsdreadiness-not-ready--3e6efd4a25dad842f1c20ac4.md) | 95 | `result-track:3e6efd4a25dad842f1c20ac450c758d31818fb78a4aa8a44d7c3b525944864c8` |
| 10 | `theorem` | [currentBSDStatementSupport_not_ready](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Readiness/Variantd4b78f1674e35697ffc2948bd69879933c6d632572a928251269b6953ac65c92.lean/declarations/currentbsdstatementsupport-not-ready--0492b349adced2722f8cb8e3.md) | 102 | `result-track:0492b349adced2722f8cb8e3e0e57a06afcbf3e63b76f5761b83f189e2cb59c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
