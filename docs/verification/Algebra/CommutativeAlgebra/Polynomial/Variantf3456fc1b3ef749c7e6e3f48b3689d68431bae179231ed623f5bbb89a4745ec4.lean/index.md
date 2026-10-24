# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variantf3456fc1b3ef749c7e6e3f48b3689d68431bae179231ed623f5bbb89a4745ec4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df5b87bf711543d4cb005d1c7ffa1800609b40d0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf3456fc1b3ef749c7e6e3f48b3689d68431bae179231ed623f5bbb89a4745ec4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantf3456fc1b3ef749c7e6e3f48b3689d68431bae179231ed623f5bbb89a4745ec4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantf3456fc1b3ef749c7e6e3f48b3689d68431bae179231ed623f5bbb89a4745ec4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df5b87bf711543d4cb005d1c7ffa1800609b40d0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf3456fc1b3ef749c7e6e3f48b3689d68431bae179231ed623f5bbb89a4745ec4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variantf3456fc1b3ef749c7e6e3f48b3689d68431bae179231ed623f5bbb89a4745ec4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Degree.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ComputeDegree` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_det_X_add_C_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantf3456fc1b3ef749c7e6e3f48b3689d68431bae179231ed623f5bbb89a4745ec4.lean/declarations/natdegree-det-x-add-c-le--6f463966a53f239291244100.md) | 44 | `result-track:6f463966a53f2392912441007df519120be7a839dc2e4edbaa2b9ec02c1ca62c` |
| 2 | `theorem` | [coeff_det_X_add_C_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantf3456fc1b3ef749c7e6e3f48b3689d68431bae179231ed623f5bbb89a4745ec4.lean/declarations/coeff-det-x-add-c-zero--b22d8ecdb2053f5d0bedcfa9.md) | 66 | `result-track:b22d8ecdb2053f5d0bedcfa9f778041d2ee44f8363b146f0d747f6468fde4e93` |
| 3 | `theorem` | [coeff_det_X_add_C_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantf3456fc1b3ef749c7e6e3f48b3689d68431bae179231ed623f5bbb89a4745ec4.lean/declarations/coeff-det-x-add-c-card--ab5f353359583d2b79f20391.md) | 76 | `result-track:ab5f353359583d2b79f203910d29321cb91c03411b66c531df7f6a050715bf89` |
| 4 | `theorem` | [leadingCoeff_det_X_one_add_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variantf3456fc1b3ef749c7e6e3f48b3689d68431bae179231ed623f5bbb89a4745ec4.lean/declarations/leadingcoeff-det-x-one-add-c--01a52cc53d462c61d67291bf.md) | 91 | `result-track:01a52cc53d462c61d67291bf8b9652f85bf4a17a6d45f8a5410baaa3f33b01f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
