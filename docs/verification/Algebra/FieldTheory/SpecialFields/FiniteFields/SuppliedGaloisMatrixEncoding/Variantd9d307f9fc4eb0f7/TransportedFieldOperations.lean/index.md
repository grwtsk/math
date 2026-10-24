# Verification target: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.TransportedFieldOperations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8be6e8f74df6c6926bf51de84bd81c6f44ea67f9",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/index.md) · [Full source](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8be6e8f74df6c6926bf51de84bd81c6f44ea67f9`.

Source path: `GRWTSK/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Dynamics.Avalanche` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLinearEquiv` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 22; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.SuppliedGaloisMatrixEncoding.Variantd9d307f9fc4eb0f7.SuppliedLinearFieldEncoding`](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/SuppliedLinearFieldEncoding.lean/index.md) — import line 24; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gfZero](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfzero--bef799124e6a869c67296b62.md) | 62 | `declaration-track:bef799124e6a869c67296b6284c0cc38191d3c64154d7b8de56437c2d8b5fe7c` |
| 2 | `def` | [gfOne](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfone--57aa9db70de0c963165b62a2.md) | 66 | `declaration-track:57aa9db70de0c963165b62a24feae658a06a414809fe5d611538837dc6743902` |
| 3 | `def` | [gfAdd](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfadd--93a24a0f2b461aec5f68ffc6.md) | 70 | `declaration-track:93a24a0f2b461aec5f68ffc6f0472b4ab93fd18b39244dcd01f8b90337ab257d` |
| 4 | `def` | [gfMul](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfmul--edc78242caf77e0d152f7b4f.md) | 75 | `declaration-track:edc78242caf77e0d152f7b4f1452d99c9fb155a472d9eca9f54431d4de1b4929` |
| 5 | `def` | [gfNeg](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfneg--d0913461f0673ca556051f77.md) | 80 | `declaration-track:d0913461f0673ca556051f775e51dee3244edd61cd90ecc1042f5b55a20c980e` |
| 6 | `def` | [gfInv](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfinv--8d82536fe54525067a6f09af.md) | 85 | `declaration-track:8d82536fe54525067a6f09af63f958430fab1392682c81c836b419e1346db849` |
| 7 | `theorem` | [decode_gfAdd](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/decode-gfadd--2b2a6f733f2749c1623d2ca2.md) | 90 | `result-track:2b2a6f733f2749c1623d2ca29b3e65b03647830e1a2179caa53ca4ca5d098bb5` |
| 8 | `theorem` | [decode_gfMul](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/decode-gfmul--4582b1857f9798aad9e6e556.md) | 97 | `result-track:4582b1857f9798aad9e6e556280e8a787d72b3b6f79995495dc64b95a564e789` |
| 9 | `theorem` | [decode_gfNeg](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/decode-gfneg--f093b6f8698a76bbf7055793.md) | 104 | `result-track:f093b6f8698a76bbf7055793d16b33f62b202c7841bf5d2dee58c08164bd0a13` |
| 10 | `theorem` | [decode_gfInv](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/decode-gfinv--f591572568b8e9501f330323.md) | 111 | `result-track:f591572568b8e9501f330323f035177e8b184238c4b1346f3968e128ac1a2da5` |
| 11 | `theorem` | [gfZero_eq_zeroMatrix](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfzero-eq-zeromatrix--05cd1a8007a16ab343430176.md) | 118 | `result-track:05cd1a8007a16ab343430176336555702e8e524d282c30555bca077b2de4d4e1` |
| 12 | `theorem` | [gfAdd_eq_xor](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfadd-eq-xor--3fd62600e37c60cdd7cc59fa.md) | 127 | `result-track:3fd62600e37c60cdd7cc59fa3ff88cfe919a6192cc4943dae78872fcca303056` |
| 13 | `theorem` | [gfAdd_assoc](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfadd-assoc--a4f52b247d132ffa77b66af6.md) | 136 | `result-track:a4f52b247d132ffa77b66af675ad4e3df7685e7a1b9e2644e1d2966b8bbcb808` |
| 14 | `theorem` | [gfAdd_comm](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfadd-comm--68db7def9306c6a25ff1d5ca.md) | 142 | `result-track:68db7def9306c6a25ff1d5ca1449e1a561b1501a31975801e8eabbdad3afab2a` |
| 15 | `theorem` | [gfAdd_zero](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfadd-zero--f9f1f46e8fcf299af5f69c1b.md) | 148 | `result-track:f9f1f46e8fcf299af5f69c1b4af3ba7a0b92a95f46485b56d21da31814f8601c` |
| 16 | `theorem` | [gfAdd_self](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfadd-self--dfaffe212052a39aa7048b15.md) | 154 | `result-track:dfaffe212052a39aa7048b15af29377d2a659a706136c54edd6c3cda6fdf7299` |
| 17 | `theorem` | [gfMul_assoc](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfmul-assoc--703259c3738b2f5e8d6ddb69.md) | 159 | `result-track:703259c3738b2f5e8d6ddb697c2d05b88047a67b84635e1c20e765e596e8b9bb` |
| 18 | `theorem` | [gfMul_comm](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfmul-comm--99812d4e312df75cbdcc0f36.md) | 165 | `result-track:99812d4e312df75cbdcc0f3652215df8c286c4ec933db2839080d2086cad3c18` |
| 19 | `theorem` | [gfMul_one](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfmul-one--cd71898eb184340448e2070d.md) | 171 | `result-track:cd71898eb184340448e2070dbe1f5108df9a6e0fb24daecb947976c790d33d21` |
| 20 | `theorem` | [gfMul_zero](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfmul-zero--39252b2e4587d23510eb239c.md) | 177 | `result-track:39252b2e4587d23510eb239cd4e47aedfb4cd8de533dd129ad5c931592568c3a` |
| 21 | `theorem` | [gfMul_add](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfmul-add--d7b7cd2e912cd6c165b8389d.md) | 183 | `result-track:d7b7cd2e912cd6c165b8389d2ca503667faa3de2093838255afb8d4d5116d7a1` |
| 22 | `theorem` | [gfMul_ne_zero](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfmul-ne-zero--e0ddc2f27545bad732e85ca7.md) | 189 | `result-track:e0ddc2f27545bad732e85ca799610accd207cff89f8a50b6f405fae21bd53ba4` |
| 23 | `theorem` | [gfMul_inv](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfmul-inv--56b85220f1e8420d96cd2f38.md) | 208 | `result-track:56b85220f1e8420d96cd2f3832e6652a8a6255ddc4c0b611eb40c5e9cfec827a` |
| 24 | `theorem` | [gfInv_mul](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/gfinv-mul--30b1d090584bef70316b4412.md) | 221 | `result-track:30b1d090584bef70316b4412a43094de8e11be75b2b400a63b9925a368420a5c` |
| 25 | `theorem` | [transported_mul_differs_from_pointwise_and](../../../../../../../../mathematics/Algebra/FieldTheory/SpecialFields/FiniteFields/SuppliedGaloisMatrixEncoding/Variantd9d307f9fc4eb0f7/TransportedFieldOperations.lean/declarations/transported-mul-differs-from-pointwise-and--5267fd7afbe9c2161313aa67.md) | 233 | `result-track:5267fd7afbe9c2161313aa673d2d794195896a3716b379abdbf44ccd26cec825` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
