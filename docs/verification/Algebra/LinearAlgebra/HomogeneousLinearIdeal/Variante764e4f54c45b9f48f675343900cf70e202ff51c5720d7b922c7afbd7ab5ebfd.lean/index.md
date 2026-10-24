# Verification target: GRWTSK.Algebra.LinearAlgebra.HomogeneousLinearIdeal.Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79f0825f2a5a5b9e0c6ce92320d0de5286d7b618",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79f0825f2a5a5b9e0c6ce92320d0de5286d7b618`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.SymmetricAlgebra.Basis` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nullstellensatz` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_linearIdeal_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/declarations/symmetric-linearideal-eq-ker--b931ac134c8b5c37a3fd2dce.md) | 40 | `result-track:b931ac134c8b5c37a3fd2dceb62c59225f3a5576a0824e3b01e30eb8d4623ac9` |
| 2 | `theorem` | [linearIdeal_span_eq](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/declarations/linearideal-span-eq--a7f165bda4a508d5ad934622.md) | 82 | `result-track:a7f165bda4a508d5ad93462218d97faad9c284051f93f001570c8d830cf23630` |
| 3 | `theorem` | [symmetric_linearIdeal_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/declarations/symmetric-linearideal-isprime--9da3ee23b4c3577236188747.md) | 109 | `result-track:9da3ee23b4c3577236188747bac4960674881b0e50a50b1f23548de6ba07e830` |
| 4 | `theorem` | [symmetric_linearGeneratorIdeal_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/declarations/symmetric-lineargeneratorideal-isprime--cc8321085f0de81bf8b9e966.md) | 116 | `result-track:cc8321085f0de81bf8b9e96623e1349766a1f8c948fb767c0da393d9d769cb4c` |
| 5 | `theorem` | [homogeneous_linear_equationIdeal_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/declarations/homogeneous-linear-equationideal-isprime--3bc56ea1f2a25e1aa4696a84.md) | 125 | `result-track:3bc56ea1f2a25e1aa4696a84988fd33027a5686086520cc7ec3d9796ff52fc89` |
| 6 | `theorem` | [homogeneous_linear_equationIdeal_isRadical](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/declarations/homogeneous-linear-equationideal-isradical--4ec88fa1461060878cd7d524.md) | 139 | `result-track:4ec88fa1461060878cd7d524d40a1df81912413e19ff27ace03ef94175c51f5a` |
| 7 | `theorem` | [homogeneous_mulVec_equationIdeal_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/declarations/homogeneous-mulvec-equationideal-isprime--14fd4e4a57e915e780843610.md) | 147 | `result-track:14fd4e4a57e915e780843610b60ffa1b0b8693bb9b3f07dc560246372de05597` |
| 8 | `theorem` | [homogeneous_mulVec_equationIdeal_isRadical](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/declarations/homogeneous-mulvec-equationideal-isradical--c3550301fa5e1d4851fe6c47.md) | 156 | `result-track:c3550301fa5e1d4851fe6c4760ee541ee33de8bfab17e8bbaeaedadd33e61b88` |
| 9 | `theorem` | [homogeneous_mulVec_equationIdeal_eq_vanishingIdeal_zeroLocus](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/declarations/homogeneous-mulvec-equationideal-eq-vanishingideal-zerolocus--2e3b9c54feb63912400b6b77.md) | 165 | `result-track:2e3b9c54feb63912400b6b774a49fce90bbbb3728ab82196998cd20c59ba6735` |
| 10 | `theorem` | [homogeneous_mulVec_origin_mem_zeroLocus](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/declarations/homogeneous-mulvec-origin-mem-zerolocus--a470b6f96142c9377cfb173c.md) | 177 | `result-track:a470b6f96142c9377cfb173c6f1baf10debc84941276871b3e8398632b7a15d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
