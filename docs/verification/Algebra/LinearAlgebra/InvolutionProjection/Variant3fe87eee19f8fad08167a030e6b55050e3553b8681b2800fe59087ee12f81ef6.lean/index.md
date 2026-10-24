# Verification target: GRWTSK.Algebra.LinearAlgebra.InvolutionProjection.Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db76815d283b3d7e8fcf9310109d533533594083",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db76815d283b3d7e8fcf9310109d533533594083`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GlobalProjection` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Galois` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Involution` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitMatrix.Algebra.InvolutionProjection](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/bitmatrix-algebra-involutionprojection--3074387e4641319509ff61ab.md) | 18 | `declaration-track:3074387e4641319509ff61abacf1493a2a0a2d02305c7c3d23a0119c6978bdf3` |
| 2 | `def` | [ofCertified](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/ofcertified--5f758607c0acc5a763ecae20.md) | 36 | `declaration-track:5f758607c0acc5a763ecae208307325822acb58f357d750afe06def7595d1837` |
| 3 | `theorem` | [actionMatrix_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/actionmatrix-eq-iff--319f2b3613320e423247ff05.md) | 49 | `result-track:319f2b3613320e423247ff057c04c731f64c927be8b1e0d59aae659cbb6499a5` |
| 4 | `theorem` | [existsUnique_true_in_column](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/existsunique-true-in-column--7c9a13782f60ea2af79e508a.md) | 55 | `result-track:7c9a13782f60ea2af79e508aac503ca9973c9dc45ca6091434a3c1f7d166bd40` |
| 5 | `theorem` | [existsUnique_true_in_row](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/existsunique-true-in-row--2b51b103c851b71af9b4e4ed.md) | 63 | `result-track:2b51b103c851b71af9b4e4ede031a8a0a55448974dd184f9d23b14c814c49cc9` |
| 6 | `theorem` | [actionMatrix_column](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/actionmatrix-column--23fa2375453f45f236dfa5a9.md) | 80 | `result-track:23fa2375453f45f236dfa5a9d0eeccb2668e0fd53dbedf3fb2096a234ae22580` |
| 7 | `theorem` | [f2Matrix_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/f2matrix-eq-ite--edc3195e59e8cd59af46c9b1.md) | 87 | `result-track:edc3195e59e8cd59af46c9b1977fb2413d706d7d36da4a39fbe447930763a753` |
| 8 | `def` | [stateVector](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/statevector--fd8c4c7762b5d28132e29ac1.md) | 101 | `declaration-track:fd8c4c7762b5d28132e29ac16a811e5c764a62d3ba0c59b7d7f33aedc1b0e142` |
| 9 | `theorem` | [stateVector_apply](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/statevector-apply--fa06c825a12d4660e7d8c1de.md) | 105 | `result-track:fa06c825a12d4660e7d8c1de16fb140178bbee9044138ed24df3a1c22cfc33e3` |
| 10 | `theorem` | [mulVec_stateVector](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/mulvec-statevector--fb7d8c11642edad86756d0a3.md) | 110 | `result-track:fb7d8c11642edad86756d0a32c41a7ec6ebf8c7fd7c21ca984d20efc290e2b57` |
| 11 | `theorem` | [f2Matrix_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/f2matrix-mul-self--d7a5f73a346cbbab1ca11f2f.md) | 125 | `result-track:d7a5f73a346cbbab1ca11f2f73808233dfa9d13ad0dcb6ac2d31597c4fc9d235` |
| 12 | `def` | [f2LinearMap](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/f2linearmap--41886b5f86bf6d83862abccc.md) | 139 | `declaration-track:41886b5f86bf6d83862abccc000ae2b5fc581119f1c19f3c36b3968adadb5907` |
| 13 | `theorem` | [f2LinearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/f2linearmap-apply--416e2d28575964f19bc00947.md) | 144 | `result-track:416e2d28575964f19bc00947bf09d276d897a40ecb86ae4be8b1ef763067d94a` |
| 14 | `theorem` | [f2LinearMap_involutive](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/f2linearmap-involutive--507abdaf76cdf3718f8b2f05.md) | 149 | `result-track:507abdaf76cdf3718f8b2f05946066287b420f564b9bbaa82f77fd1a5f79a518` |
| 15 | `def` | [f2LinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/f2linearequiv--0a64d3495ac47c496c51442f.md) | 156 | `declaration-track:0a64d3495ac47c496c51442f4b29ec0ad95ba9c440a73b0be12b7d7f41418c8a` |
| 16 | `theorem` | [f2LinearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/f2linearmap-injective--bd24494d370e18cc8ec4951d.md) | 165 | `result-track:bd24494d370e18cc8ec4951d76d54113207e9c7787defd9bdc576af0dd11f2b3` |
| 17 | `theorem` | [f2LinearMap_ker](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant3fe87eee19f8fad08167a030e6b55050e3553b8681b2800fe59087ee12f81ef6.lean/declarations/f2linearmap-ker--29c946f9684cff601fa77fdb.md) | 173 | `result-track:29c946f9684cff601fa77fdb29e43e5e76faf0aa20e13533670246dc51fd8d01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
