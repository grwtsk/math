# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3630e6086c915a1cdb8b638eb778790a41e285f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3630e6086c915a1cdb8b638eb778790a41e285f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MvPolynomial/Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quotient_mk_comp_C_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287.lean/declarations/quotient-mk-comp-c-injective--83c0cef1fdddf8ff6f2de2e1.md) | 39 | `result-track:83c0cef1fdddf8ff6f2de2e15be95922211f9fcbc8201131f167660b6bcb3f46` |
| 2 | `theorem` | [rank_eq_lift](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287.lean/declarations/rank-eq-lift--84793d9ff309e8feedd6ed84.md) | 50 | `result-track:84793d9ff309e8feedd6ed8409b759d89eaf5d4568e50831b0f72f932f2d1af8` |
| 3 | `theorem` | [rank_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287.lean/declarations/rank-eq--fa22c057ab0e01c8be959b20.md) | 53 | `result-track:fa22c057ab0e01c8be959b20b3e94888d609ce0639926efb468385bdb6839b03` |
| 4 | `theorem` | [finrank_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287.lean/declarations/finrank-eq-zero--d35eb07bc2691e6fb8e9499a.md) | 58 | `result-track:d35eb07bc2691e6fb8e9499a1c55591b11101bcee8383c8fee34afbaed9d5083` |
| 5 | `theorem` | [finrank_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variantb57489ef7ba4f7762b0c3bc1db8df26ee198c81f9d8db553bfa6f26d7842d287.lean/declarations/finrank-eq-one--f1bb994cafbfbb2b0f004afd.md) | 62 | `result-track:f1bb994cafbfbb2b0f004afd272979c1d3b0fb9b84505b8f51edc9d37e60fd4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
