# Verification target: GRWTSK.Algebra.LinearAlgebra.HomogeneousLinearIdeal.Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "869cc5e0f3009dbb4de80cedfc86065735b0901f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `869cc5e0f3009dbb4de80cedfc86065735b0901f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.SymmetricAlgebra.Basis` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nullstellensatz` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_linearIdeal_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/declarations/symmetric-linearideal-eq-ker--dead638e5bbe4fc8f39436d8.md) | 32 | `result-track:dead638e5bbe4fc8f39436d814da367d39634313b7afa27e52d21651dc8630b9` |
| 2 | `theorem` | [linearIdeal_span_eq](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/declarations/linearideal-span-eq--fc2e80c281fd97147e7a0aeb.md) | 74 | `result-track:fc2e80c281fd97147e7a0aeb562f82790d5effd66d87e78b50da383b7e3b19eb` |
| 3 | `theorem` | [symmetric_linearIdeal_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/declarations/symmetric-linearideal-isprime--b8b3a6173cff268056d07ecb.md) | 101 | `result-track:b8b3a6173cff268056d07ecb455ccf1f9022ab7c127061b1cb37d31b6f990118` |
| 4 | `theorem` | [symmetric_linearGeneratorIdeal_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/declarations/symmetric-lineargeneratorideal-isprime--eebb3826748a204890bcf1f0.md) | 108 | `result-track:eebb3826748a204890bcf1f0a2ef0bd7447392a5af32e57f78300db70f27c4cf` |
| 5 | `theorem` | [homogeneous_linear_equationIdeal_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/declarations/homogeneous-linear-equationideal-isprime--8201c5968caf1c481e252d21.md) | 117 | `result-track:8201c5968caf1c481e252d2198f842c726e59a3d0998dd1856dcae7235a92e69` |
| 6 | `theorem` | [homogeneous_linear_equationIdeal_isRadical](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/declarations/homogeneous-linear-equationideal-isradical--3c36e028f4bdc0f935d4217a.md) | 131 | `result-track:3c36e028f4bdc0f935d4217ae07c8a4227e48adcb93cdb50bd84353a083254a5` |
| 7 | `theorem` | [homogeneous_mulVec_equationIdeal_isPrime](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/declarations/homogeneous-mulvec-equationideal-isprime--3fbd160ef3ebe3bddcf75e72.md) | 139 | `result-track:3fbd160ef3ebe3bddcf75e725f85167fa41b5ff514ed377395bb3b84f561d4d3` |
| 8 | `theorem` | [homogeneous_mulVec_equationIdeal_isRadical](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/declarations/homogeneous-mulvec-equationideal-isradical--add655aaca8b62ea3b49c2f4.md) | 148 | `result-track:add655aaca8b62ea3b49c2f4891ff6c98c7abc401d0e5411e6f8548c9a72be20` |
| 9 | `theorem` | [homogeneous_mulVec_equationIdeal_eq_vanishingIdeal_zeroLocus](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/declarations/homogeneous-mulvec-equationideal-eq-vanishingideal-zerolocus--84f65ac3013fbbd1696e5f74.md) | 157 | `result-track:84f65ac3013fbbd1696e5f7497ef779cbbcee22c6630a217254069dc80f53880` |
| 10 | `theorem` | [homogeneous_mulVec_origin_mem_zeroLocus](../../../../../mathematics/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/declarations/homogeneous-mulvec-origin-mem-zerolocus--947d4eb20df53da4cb38e113.md) | 169 | `result-track:947d4eb20df53da4cb38e113c4152064a29216c25a19c7372f63682895cd919c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
