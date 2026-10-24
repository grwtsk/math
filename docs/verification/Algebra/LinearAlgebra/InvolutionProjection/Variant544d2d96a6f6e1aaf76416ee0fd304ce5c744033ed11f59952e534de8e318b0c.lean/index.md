# Verification target: GRWTSK.Algebra.LinearAlgebra.InvolutionProjection.Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f72e2e2ede90b344b33000883be057c7bf5724a0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f72e2e2ede90b344b33000883be057c7bf5724a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GlobalProjection` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.FiniteField.Galois` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Involution` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitMatrix.Algebra.InvolutionProjection](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/bitmatrix-algebra-involutionprojection--ce2334f84833aa74844a493b.md) | 26 | `declaration-track:ce2334f84833aa74844a493b2aab0f423328d7fdd57d6949c050c26e962c2b66` |
| 2 | `def` | [ofCertified](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/ofcertified--20d9c69447be6993c9da6854.md) | 44 | `declaration-track:20d9c69447be6993c9da68549ea6ee4698914ab255d4bf2867ba1b8c9ee2e7d7` |
| 3 | `theorem` | [actionMatrix_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/actionmatrix-eq-iff--f04c4ac58a7fdc86aed3152c.md) | 57 | `result-track:f04c4ac58a7fdc86aed3152c6ff845b325d39a85f113f9045769541f26c38170` |
| 4 | `theorem` | [existsUnique_true_in_column](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/existsunique-true-in-column--7bcd18411e4b919229baca17.md) | 63 | `result-track:7bcd18411e4b919229baca17a9336595fef2d859c260de357f2b1034feb347c7` |
| 5 | `theorem` | [existsUnique_true_in_row](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/existsunique-true-in-row--59b8c9ee98c404a21356d466.md) | 71 | `result-track:59b8c9ee98c404a21356d466468bd868458f15cb79906a595fd29ea62f165340` |
| 6 | `theorem` | [actionMatrix_column](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/actionmatrix-column--631df3680a53b2930bf2bc6a.md) | 88 | `result-track:631df3680a53b2930bf2bc6ac1e1034b7991931c14a09ad5b7d145a3c78f5bfc` |
| 7 | `theorem` | [f2Matrix_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/f2matrix-eq-ite--c0f9c508dc01df0fdcc24526.md) | 95 | `result-track:c0f9c508dc01df0fdcc2452690b46d3c628d0b5ec9f0306087823048dc1b2e61` |
| 8 | `def` | [stateVector](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/statevector--1a385652833fbc7e7a8d84aa.md) | 109 | `declaration-track:1a385652833fbc7e7a8d84aad89be85828df36aec35a26cf2011a44d5ab741ab` |
| 9 | `theorem` | [stateVector_apply](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/statevector-apply--57edc59185a682ebf3814384.md) | 113 | `result-track:57edc59185a682ebf3814384c514967b17a72cce6f68be770d677c8d5fbd585f` |
| 10 | `theorem` | [mulVec_stateVector](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/mulvec-statevector--04ccaa168268e42904a76c6c.md) | 118 | `result-track:04ccaa168268e42904a76c6ccfb15ec53594f71999586a1b23869adfca7f002a` |
| 11 | `theorem` | [f2Matrix_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/f2matrix-mul-self--2bcd8a5335bff941e2125f52.md) | 133 | `result-track:2bcd8a5335bff941e2125f52ac4201d5846e11ead6e6fcf13bc92aa7c7ef680b` |
| 12 | `def` | [f2LinearMap](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/f2linearmap--a0890558c5ef86db6b206c9a.md) | 147 | `declaration-track:a0890558c5ef86db6b206c9a506ca3323c76a3859996357fbaf93bda20970cdf` |
| 13 | `theorem` | [f2LinearMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/f2linearmap-apply--3272f9cd9c88333b652d05b0.md) | 152 | `result-track:3272f9cd9c88333b652d05b04c4500d57b38e5f2964bef58879867034b93c95e` |
| 14 | `theorem` | [f2LinearMap_involutive](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/f2linearmap-involutive--a6e8431dcde3ad8cb71430d3.md) | 157 | `result-track:a6e8431dcde3ad8cb71430d364531c4eab3e325f971c3c468fbc5c5d6850ecff` |
| 15 | `def` | [f2LinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/f2linearequiv--3e7c23c0e77343b891dedd04.md) | 164 | `declaration-track:3e7c23c0e77343b891dedd04995fc1ca6906311ebd3a97903abf6ce93de580f1` |
| 16 | `theorem` | [f2LinearMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/f2linearmap-injective--e0752e4ead15640687002a75.md) | 173 | `result-track:e0752e4ead15640687002a754c1b964ba10a6212bfc6cf5f6e78501a1523d921` |
| 17 | `theorem` | [f2LinearMap_ker](../../../../../mathematics/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/declarations/f2linearmap-ker--f23ab65c8287c77f59fe14d4.md) | 181 | `result-track:f23ab65c8287c77f59fe14d45eaf40f407838dba8aee4c2e098528c9baaaccac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
