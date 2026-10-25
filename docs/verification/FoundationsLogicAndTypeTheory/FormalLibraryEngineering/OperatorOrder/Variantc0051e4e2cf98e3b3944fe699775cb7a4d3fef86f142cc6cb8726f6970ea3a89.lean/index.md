# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperatorOrder.Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb2c57b2e9ddc0d4fc9c3998c742948ceaff5174",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb2c57b2e9ddc0d4fc9c3998c742948ceaff5174`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DiagonalOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean/declarations/diagonaloperator--5b82f7e8e9896d8d1fba565e.md) | 24 | `declaration-track:5b82f7e8e9896d8d1fba565e9a379c026b5640a1f4bbe4b3098d55a113ff48f2` |
| 2 | `def` | [OperatorNonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean/declarations/operatornonnegative--7a495cf134e317252d409d6c.md) | 27 | `declaration-track:7a495cf134e317252d409d6c433364a7a223ba2a34abba6ecd629493d93263fa` |
| 3 | `def` | [OperatorLe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean/declarations/operatorle--891b6dc13ad59dde1dc47521.md) | 32 | `declaration-track:891b6dc13ad59dde1dc47521a2dc0eff2642a205d4c19ec3892085939cc5fbdd` |
| 4 | `def` | [identityOperator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean/declarations/identityoperator--1283c9d22a7a4445484457ee.md) | 37 | `declaration-track:1283c9d22a7a4445484457ee53ccf6c7e26660f7d63e73a0b8c5232851dc4095` |
| 5 | `theorem` | [operatorLe_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean/declarations/operatorle-refl--71f842995c754050e8d660e7.md) | 42 | `result-track:71f842995c754050e8d660e7fafc2833f5d18fabae9caeb5451e1ec27ee45cd8` |
| 6 | `theorem` | [operatorLe_trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean/declarations/operatorle-trans--a0de4f30c78f7b722219a240.md) | 48 | `result-track:a0de4f30c78f7b722219a24071052b33283095f67a7d2b5e334bfa0c71623624` |
| 7 | `theorem` | [operator_increment_nonnegative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean/declarations/operator-increment-nonnegative--0c28a2c983ecb06583d9cb8e.md) | 59 | `result-track:0c28a2c983ecb06583d9cb8e13c12c9607648ae823dd485cbe2250cedff2bb5e` |
| 8 | `theorem` | [nonnegative_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperatorOrder/Variantc0051e4e2cf98e3b3944fe699775cb7a4d3fef86f142cc6cb8726f6970ea3a89.lean/declarations/nonnegative-add--4ee094eb3a0ac3d26cb6dee7.md) | 67 | `result-track:4ee094eb3a0ac3d26cb6dee761df1904699235ce7acf1290eadd4955236db95e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
