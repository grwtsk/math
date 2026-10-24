# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MvPolynomial.Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d14ddb929b770a015782594d7c3c5614eeeb9a1d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d14ddb929b770a015782594d7c3c5614eeeb9a1d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MvPolynomial/Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quotient_mk_comp_C_injective](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161.lean/declarations/quotient-mk-comp-c-injective--f63585cd949b1ed7aaec9ab7.md) | 31 | `result-track:f63585cd949b1ed7aaec9ab7009c738815d17b4c7a369a2898e0430d751dbd72` |
| 2 | `theorem` | [rank_eq_lift](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161.lean/declarations/rank-eq-lift--aa58471c9ad88a30c58bb893.md) | 42 | `result-track:aa58471c9ad88a30c58bb893c172e6c0dfc8766b3e60ba72ef34ac287119d88f` |
| 3 | `theorem` | [rank_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161.lean/declarations/rank-eq--5d54b14d70bc2070b9cc2bb3.md) | 45 | `result-track:5d54b14d70bc2070b9cc2bb3ebdb9d70b86d6bb1f54c7b72181879f2d9718221` |
| 4 | `theorem` | [finrank_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161.lean/declarations/finrank-eq-zero--4f2d151db97bc13f8ba07d5f.md) | 50 | `result-track:4f2d151db97bc13f8ba07d5fa7daf00a5f453f267556117892688681b25493b9` |
| 5 | `theorem` | [finrank_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/MvPolynomial/Variant6d25220ea73d42256c12e9ebabeb562e4e567f565059ea77414758a8f582f161.lean/declarations/finrank-eq-one--178cef60c547dcc8dca0894b.md) | 54 | `result-track:178cef60c547dcc8dca0894b62708f4ddd32cbcb239023f72e0f17108d01cf67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
