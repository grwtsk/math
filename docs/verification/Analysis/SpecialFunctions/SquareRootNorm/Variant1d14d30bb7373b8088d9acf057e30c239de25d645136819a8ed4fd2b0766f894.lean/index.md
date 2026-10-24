# Verification target: GRWTSK.Analysis.SpecialFunctions.SquareRootNorm.Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f03b07ae2c319796c60b50ce9900491facd97c5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f03b07ae2c319796c60b50ce9900491facd97c5`.

Source path: `GRWTSK/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.PurityBridge` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareRootWeight](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/declarations/squarerootweight--b72cbbb66bbef4493f8900a6.md) | 16 | `declaration-track:b72cbbb66bbef4493f8900a6347adbcc826bc50b2aea04d9a79ff63a5fe1302d` |
| 2 | `structure` | [SquareRootNormCertificate](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/declarations/squarerootnormcertificate--7735f7deb52f87eb4858b94e.md) | 20 | `declaration-track:7735f7deb52f87eb4858b94ee6a8a1bedd63d9d8448d06cc63c4f8fd06452aef` |
| 3 | `constant` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/declarations/constant--e7d9d3c703a0168f65f548b4.md) | 24 | `declaration-track:e7d9d3c703a0168f65f548b4ec3b7f020eebb13f21edf0174e0f8930df299e9c` |
| 4 | `constant` | [*](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/declarations/anonymous--85f72b1b4e96fe44ad64a316.md) | 30 | `declaration-track:85f72b1b4e96fe44ad64a3164065d9a800fc38cb2fc090fa10c02820f208604e` |
| 5 | `def` | [SquareRootNormFinite](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/declarations/squarerootnormfinite--9f967e0d9a6887b107f7008f.md) | 33 | `declaration-track:9f967e0d9a6887b107f7008f5571d8bd6ae77d82425456abbad2ee5c2b9eb200` |
| 6 | `constant` | [*](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/declarations/anonymous--d1e81c88d8e2f95f3abe2b17.md) | 40 | `declaration-track:d1e81c88d8e2f95f3abe2b17993d80790cef8590ebd3ead635aba316a934d934` |
| 7 | `theorem` | [squareRootNorm_finite](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/declarations/squarerootnorm-finite--72f7eab77b5ffc1bae8d3e93.md) | 43 | `result-track:72f7eab77b5ffc1bae8d3e93c246f1b9c67494f54d8f13b4b8ce37f126040e5c` |
| 8 | `structure` | [BitfieldSquareRootBudget](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/declarations/bitfieldsquarerootbudget--1116999a49001592f974e271.md) | 52 | `declaration-track:1116999a49001592f974e27112340f339a9dc4477ad0437308aafd9a5dc80238` |
| 9 | `constant` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/declarations/constant--2a171173361cc592b66bebf0.md) | 57 | `declaration-track:2a171173361cc592b66bebf01a2516d4ccc62d7d5b70b8edeaf90382aa2ca52a` |
| 10 | `constant` | [*](../../../../../mathematics/Analysis/SpecialFunctions/SquareRootNorm/Variant1d14d30bb7373b8088d9acf057e30c239de25d645136819a8ed4fd2b0766f894.lean/declarations/anonymous--910333f3a402d2f8184396bd.md) | 61 | `declaration-track:910333f3a402d2f8184396bd7b308f4b6a63804fcce6130d96b9934d16bd989c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
