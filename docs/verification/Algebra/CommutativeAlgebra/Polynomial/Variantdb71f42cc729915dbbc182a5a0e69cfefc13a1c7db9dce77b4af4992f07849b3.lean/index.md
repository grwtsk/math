# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b8b542ad94e7b56602f94bf6b37949026f9167b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b8b542ad94e7b56602f94bf6b37949026f9167b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_det_X_add_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean/declarations/natdegree-det-x-add-c-le--41055bcff2527e4fabfc5ed0.md) | 38 | `result-track:41055bcff2527e4fabfc5ed015b1ab12115048372636b5cfcba4e3257229ecde` |
| 2 | `theorem` | [coeff_det_X_add_C_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean/declarations/coeff-det-x-add-c-zero--c5d456ee8cad8a19a1d9c100.md) | 69 | `result-track:c5d456ee8cad8a19a1d9c1009d5c72c186960e5626f99f3fad6ef112a0bb2e35` |
| 3 | `theorem` | [coeff_det_X_add_C_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean/declarations/coeff-det-x-add-c-card--83a86a33f80fd1d7e879f7e7.md) | 80 | `result-track:83a86a33f80fd1d7e879f7e7a18fac23d6ec29a5b370a3eb1f12003e6407c810` |
| 4 | `theorem` | [leadingCoeff_det_X_one_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantdb71f42cc729915dbbc182a5a0e69cfefc13a1c7db9dce77b4af4992f07849b3.lean/declarations/leadingcoeff-det-x-one-add-c--7822d0f19b3b2f73ff3498b6.md) | 97 | `result-track:7822d0f19b3b2f73ff3498b689128b105884fc38893a8dc2659e7ef4fcd5ee1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
