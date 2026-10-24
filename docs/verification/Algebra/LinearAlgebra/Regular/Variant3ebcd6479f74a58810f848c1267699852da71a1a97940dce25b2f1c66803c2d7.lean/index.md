# Verification target: GRWTSK.Algebra.LinearAlgebra.Regular.Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab3d68b3e45981d8f9dfe1cd423370b25fa42385",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab3d68b3e45981d8f9dfe1cd423370b25fa42385`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.FiniteField.Galois` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gf2MatMul](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/gf2matmul--f3d358bedb389fd6a4ac8759.md) | 43 | `declaration-track:f3d358bedb389fd6a4ac87592636bdd1278e560119d04d7a0481176530d86ae8` |
| 2 | `def` | [gf2IdentityMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/gf2identitymatrix--7973de04419cf7a77a19d332.md) | 48 | `declaration-track:7973de04419cf7a77a19d332c91478bab3fba41a36febf545c3d61b2994bf663` |
| 3 | `theorem` | [boolMatrixGF2Equiv_identity](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/boolmatrixgf2equiv-identity--59686e4dedc31bf9952e10f2.md) | 52 | `result-track:59686e4dedc31bf9952e10f2a6fe504335a42e26022c633a6bcdbf4f465b88b3` |
| 4 | `theorem` | [gf2MatMul_identity_left](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/gf2matmul-identity-left--489f0a0858a170acf2063763.md) | 60 | `result-track:489f0a0858a170acf206376313aeb2a55dc70e08ab2ad29595e27b1f23369173` |
| 5 | `theorem` | [gf2MatMul_identity_right](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/gf2matmul-identity-right--2f0b11fb64f17390c675fdb6.md) | 67 | `result-track:2f0b11fb64f17390c675fdb68f6c334e1a90791d844f56cf70327c3aac773106` |
| 6 | `theorem` | [gf2MatMul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/gf2matmul-assoc--d14f8141f79c39493c33b3da.md) | 73 | `result-track:d14f8141f79c39493c33b3da532d096ef97a00f106f26c66a9b6828e5b7347f6` |
| 7 | `theorem` | [gf2MatMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/gf2matmul-apply--1f54a15b87eecc68485daa16.md) | 83 | `result-track:1f54a15b87eecc68485daa16646f929d9d7947e6d006b63a72f2e95f7ac99208` |
| 8 | `def` | [leftMulLinear](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/leftmullinear--c928df2583c5f5d7fb3ac1a6.md) | 102 | `declaration-track:c928df2583c5f5d7fb3ac1a6743dedb4f7945e294d731cba5e42e775707a4e42` |
| 9 | `theorem` | [leftMulLinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/leftmullinear-apply--9997654f06b2966b50956724.md) | 106 | `result-track:9997654f06b2966b50956724f2cd09fe44c17ec9e9d43d5b24373a31ec713086` |
| 10 | `def` | [regularMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularmatrix--86008c7eea50ae5ed2f7cfe5.md) | 111 | `declaration-track:86008c7eea50ae5ed2f7cfe535d6f05f7b852b477c4b2177d6df59a0815cd31f` |
| 11 | `theorem` | [regularMatrix_zero](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularmatrix-zero--5992aefa1a5d6543415b625d.md) | 118 | `result-track:5992aefa1a5d6543415b625d041b70250d1b1d885ae2852919b4b17e0a8b549c` |
| 12 | `theorem` | [regularMatrix_one](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularmatrix-one--2a5068a824357507d10963b7.md) | 124 | `result-track:2a5068a824357507d10963b72262e9102e201cacb95f45ebe4834acb44cd23ae` |
| 13 | `theorem` | [regularMatrix_add](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularmatrix-add--9da4a1038dda4ed1b65d5ca8.md) | 129 | `result-track:9da4a1038dda4ed1b65d5ca81188f0292604ee7535d35c284d8d1d97cfaf74de` |
| 14 | `theorem` | [regularMatrix_mul](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularmatrix-mul--63d2de62339d3f8158055d8b.md) | 143 | `result-track:63d2de62339d3f8158055d8b6f34dd2082dd9041c6e45399cfc55c6fa3a457ff` |
| 15 | `def` | [regularRepresentation](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularrepresentation--f5daa371ee9e76277189b504.md) | 153 | `declaration-track:f5daa371ee9e76277189b504d091491c8ceed792e7e8bfd7fb933a1752cac488` |
| 16 | `theorem` | [regularRepresentation_apply](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularrepresentation-apply--ee09f582aeb0f9f84e1225f7.md) | 159 | `result-track:ee09f582aeb0f9f84e1225f7f7defe0b59fb5c08de23029e6b2ed2640ddaf5e8` |
| 17 | `theorem` | [regularMatrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularmatrix-injective--8a7114be4d10e7b069861774.md) | 170 | `result-track:8a7114be4d10e7b069861774175fe5678a799fd093b042fa69d9c550a36cff60` |
| 18 | `def` | [regularBitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularbitmatrix--62f8e2f1a4a68f1b64271c05.md) | 184 | `declaration-track:62f8e2f1a4a68f1b64271c0565ea511334799ed6a1071118e890cb37bd922e66` |
| 19 | `theorem` | [regularBitMatrix_add](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularbitmatrix-add--25dfc4e7e800e3b59b9caa15.md) | 191 | `result-track:25dfc4e7e800e3b59b9caa150e126daf1e2cb3f9482b30814a0adf19e063b559` |
| 20 | `theorem` | [regularBitMatrix_mul](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularbitmatrix-mul--068ab4d4e8637af240c39a93.md) | 201 | `result-track:068ab4d4e8637af240c39a93d9012f013fbdf5e22b94b296d869d887c008c339` |
| 21 | `theorem` | [regularBitMatrix_one](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularbitmatrix-one--a682206ba0dcb92bc1ec2c66.md) | 210 | `result-track:a682206ba0dcb92bc1ec2c66a9fae9a816a0fa04b156cbc1cf3bb5ded384c582` |
| 22 | `theorem` | [regularBitMatrix_injective](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularbitmatrix-injective--d02542419519c6ec7928ecde.md) | 217 | `result-track:d02542419519c6ec7928ecde0e429ccb56df3b91cc067fb98a57ab586b060448` |
| 23 | `theorem` | [regularBitMatrix_inverse](../../../../../mathematics/Algebra/LinearAlgebra/Regular/Variant3ebcd6479f74a58810f848c1267699852da71a1a97940dce25b2f1c66803c2d7.lean/declarations/regularbitmatrix-inverse--f8c0e76425c641a7ac6c1b95.md) | 225 | `result-track:f8c0e76425c641a7ac6c1b95ebc4c6e732d043738c48bd4c461192d923c4c464` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
