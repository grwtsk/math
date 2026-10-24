# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IntegralNormalization.Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51de2348bfab70a9b271c437a0836ede18dd5f8b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51de2348bfab70a9b271c437a0836ede18dd5f8b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Monic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/integralnormalization--b8673b561a79852e328266e9.md) | 46 | `declaration-track:b8673b561a79852e328266e92a7b6de8bfa2f74d04ff3cac0a570aeb59645de9` |
| 2 | `theorem` | [integralNormalization_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/integralnormalization-zero--a6e915c4a5b34ff67d199448.md) | 52 | `result-track:a6e915c4a5b34ff67d19944894859846fffe0f7c92dc5d4d794115f5648629ca` |
| 3 | `theorem` | [integralNormalization_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/integralnormalization-coeff--ac74ef0517c9781926d32213.md) | 56 | `result-track:ac74ef0517c9781926d3221353dda1be12e715cccf482b1368a6383a635da6d9` |
| 4 | `theorem` | [integralNormalization_support](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/integralnormalization-support--838e0cf85c70416393c7b5da.md) | 64 | `result-track:838e0cf85c70416393c7b5da67fdbbce981af45914678c2080c3ca3c2068dbd5` |
| 5 | `theorem` | [integralNormalization_coeff_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/integralnormalization-coeff-degree--b3a547f2d29a091ac1300fe2.md) | 70 | `result-track:b3a547f2d29a091ac1300fe2e41daeb7523b91b26a55da0b017754593f96065d` |
| 6 | `theorem` | [integralNormalization_coeff_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/integralnormalization-coeff-natdegree--6fec18fd31a791efd0846016.md) | 74 | `result-track:6fec18fd31a791efd084601653943900fd38a304846f59b5908a67a95a9c6e59` |
| 7 | `theorem` | [integralNormalization_coeff_ne_degree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/integralnormalization-coeff-ne-degree--46daba292f558dc9aa336121.md) | 79 | `result-track:46daba292f558dc9aa33612128e1100cdfd4d7b3c85410140ebb0fed03b5a04b` |
| 8 | `theorem` | [integralNormalization_coeff_ne_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/integralnormalization-coeff-ne-natdegree--ef9bbebf67877078fa74ebc7.md) | 84 | `result-track:ef9bbebf67877078fa74ebc70e7dc44c12689ef5a31d5f2f18de23284492a0bb` |
| 9 | `theorem` | [monic_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/monic-integralnormalization--32317a95229e7a6aef7f0601.md) | 89 | `result-track:32317a95229e7a6aef7f06018944d934ad1e06e8699365087deef18c3fa4bca2` |
| 10 | `theorem` | [support_integralNormalization](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/support-integralnormalization--40f16227b639c5a596a0b4df.md) | 103 | `result-track:40f16227b639c5a596a0b4dfc591f5d17ed40adbcc4f10e0797dc559276818da` |
| 11 | `theorem` | [integralNormalization_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/integralnormalization-eval-eq-zero--7c280bf6dfc5c3ebc1e00beb.md) | 121 | `result-track:7c280bf6dfc5c3ebc1e00beb2ae2a017f3c37a1b7b6edb068760be234e92f2ab` |
| 12 | `theorem` | [integralNormalization_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IntegralNormalization/Variantec490e3c3d1d443932b0ab81acf67c3e345a32fef6818dd69dc0e1444316592b.lean/declarations/integralnormalization-aeval-eq-zero--fbcfe4779a3a9626d40ae67f.md) | 155 | `result-track:fbcfe4779a3a9626d40ae67faf9ea6952ed004f82341b8cc091ba18a35146832` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
