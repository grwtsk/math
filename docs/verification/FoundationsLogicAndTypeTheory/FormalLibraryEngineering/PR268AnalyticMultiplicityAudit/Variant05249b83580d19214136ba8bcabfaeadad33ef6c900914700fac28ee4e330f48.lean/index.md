# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PR268AnalyticMultiplicityAudit.Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42de9584f74a9ae0fcafd6757ce33620d54989e0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42de9584f74a9ae0fcafd6757ce33620d54989e0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [order_mul_nonvanishing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/order-mul-nonvanishing--70a7fa16525fe1a52ce1acb4.md) | 31 | `result-track:70a7fa16525fe1a52ce1acb47a0919f8a59ea6ccd9c84c88829f926d26c9ceec` |
| 2 | `theorem` | [order_eq_of_local_normalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/order-eq-of-local-normalization--08ca688c428a8718fc2c3048.md) | 39 | `result-track:08ca688c428a8718fc2c304844b8c259fcc89badfc07dea7db8d5d7f5b179773` |
| 3 | `theorem` | [order_eq_of_local_coordinate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/order-eq-of-local-coordinate--8d32067367d1195050e36802.md) | 47 | `result-track:8d32067367d1195050e36802b2c7856ef300822de22a7cbebe8af55bb4fcc150` |
| 4 | `theorem` | [simple_iff_of_local_coordinate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/simple-iff-of-local-coordinate--25eced5d86a365ba19dccb6e.md) | 59 | `result-track:25eced5d86a365ba19dccb6ef67c9d037f214d4bc24af1d328990e9ebf1233c9` |
| 5 | `theorem` | [order_comp_square](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/order-comp-square--130fcf1cc47a6fd11126ec46.md) | 68 | `result-track:130fcf1cc47a6fd11126ec46e9d0621974dd00ca2b909025dbc663e4dfe28eec` |
| 6 | `theorem` | [order_comp_square_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/order-comp-square-neg--d09a2a6f320aaef2fda46b9d.md) | 75 | `result-track:d09a2a6f320aaef2fda46b9d826326780d66106efc6c517b6b54e9cc1a0eaaf2` |
| 7 | `theorem` | [order_comp_square_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/order-comp-square-zero--bcba2e7bec9cc6f7a0aa0926.md) | 82 | `result-track:bcba2e7bec9cc6f7a0aa0926b0d36ef2025d9cbc0fe859b9005d128fb3f2870a` |
| 8 | `theorem` | [same_zero_support_different_order](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/same-zero-support-different-order--25eeba0dc1890fcdb5587f5e.md) | 92 | `result-track:25eeba0dc1890fcdb5587f5e0de3897f1cf9ee364d80654dde34d801da4b1248` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/example--22fdb95901cd5fb7fde0fd46.md) | 107 | `declaration-track:22fdb95901cd5fb7fde0fd4655fad9447c596a2086d2690b691f586c8ace9690` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/example--7a8ffea7ffe0417b8eae11d7.md) | 113 | `declaration-track:7a8ffea7ffe0417b8eae11d70a619dde431e9fd2f5c1ae954261ff1bee27f765` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/example--c22933533d8367ebb78c31d6.md) | 123 | `declaration-track:c22933533d8367ebb78c31d625151b8d9fb080cf8421e6e7050a2f5bfa7e32d5` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PR268AnalyticMultiplicityAudit/Variant05249b83580d19214136ba8bcabfaeadad33ef6c900914700fac28ee4e330f48.lean/declarations/example--a962ac46dbd4b1f36f304d5f.md) | 133 | `declaration-track:a962ac46dbd4b1f36f304d5fd0cfc487bff62936f120bf57cf9ceb67e7d25ab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
