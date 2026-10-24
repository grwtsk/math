# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Eigs.Variant4cc6133c5280072f332971569d188e2c9981c8992f5622e4476bd593b5d1caec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36f179f57b5af6d81c7959333e758cb67c946744",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variant4cc6133c5280072f332971569d188e2c9981c8992f5622e4476bd593b5d1caec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Eigs/Variant4cc6133c5280072f332971569d188e2c9981c8992f5622e4476bd593b5d1caec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Eigs/Variant4cc6133c5280072f332971569d188e2c9981c8992f5622e4476bd593b5d1caec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36f179f57b5af6d81c7959333e758cb67c946744`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variant4cc6133c5280072f332971569d188e2c9981c8992f5622e4476bd593b5d1caec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Eigs/Variant4cc6133c5280072f332971569d188e2c9981c8992f5622e4476bd593b5d1caec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_eq_prod_roots_charpoly_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Eigs/Variant4cc6133c5280072f332971569d188e2c9981c8992f5622e4476bd593b5d1caec.lean/declarations/det-eq-prod-roots-charpoly-of-splits--d946b1c0957aa2adf019113c.md) | 66 | `result-track:d946b1c0957aa2adf019113cc4fabb476bd95ff76b3e3072192370ab4f2c0e98` |
| 2 | `theorem` | [trace_eq_sum_roots_charpoly_of_splits](../../../../../mathematics/Algebra/CommutativeAlgebra/Eigs/Variant4cc6133c5280072f332971569d188e2c9981c8992f5622e4476bd593b5d1caec.lean/declarations/trace-eq-sum-roots-charpoly-of-splits--181d23b8310e48e52df9f4d7.md) | 72 | `result-track:181d23b8310e48e52df9f4d776ddeceb88085198e3d7cfb6d16d1086dbe91c5b` |
| 3 | `theorem` | [det_eq_prod_roots_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Eigs/Variant4cc6133c5280072f332971569d188e2c9981c8992f5622e4476bd593b5d1caec.lean/declarations/det-eq-prod-roots-charpoly--70e2fee56b760c327a31affb.md) | 84 | `result-track:70e2fee56b760c327a31affb67b0ca1d9ce93cec6a94be63dc532668dc648c11` |
| 4 | `theorem` | [trace_eq_sum_roots_charpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/Eigs/Variant4cc6133c5280072f332971569d188e2c9981c8992f5622e4476bd593b5d1caec.lean/declarations/trace-eq-sum-roots-charpoly--b73f466608f198d1b35ee7c7.md) | 87 | `result-track:b73f466608f198d1b35ee7c772bdba431341787c0f8c713922891dffd4b4a8c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
