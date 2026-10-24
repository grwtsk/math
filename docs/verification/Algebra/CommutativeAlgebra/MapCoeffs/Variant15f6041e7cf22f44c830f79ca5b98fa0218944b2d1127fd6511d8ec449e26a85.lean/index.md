# Verification target: GRWTSK.Algebra.CommutativeAlgebra.MapCoeffs.Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e7d6e8325e01d14c586caa74108c64aaa12ec29",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e7d6e8325e01d14c586caa74108c64aaa12ec29`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/mapcoeffs--0124b1a083fd28bff80271d5.md) | 38 | `declaration-track:0124b1a083fd28bff80271d5c2c370d2385eea0fdd5e2318d6d97225a2081b65` |
| 2 | `lemma` | [mapCoeffs_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/mapcoeffs-apply--cd54211bcf69d70bcdc7fd27.md) | 52 | `result-track:cd54211bcf69d70bcdc7fd27025aca2fbbc17297132f7791a88129818b0189a4` |
| 3 | `lemma` | [mapCoeffs_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/mapcoeffs-monomial--a14777780250adf4f5c26b6e.md) | 55 | `result-track:a14777780250adf4f5c26b6e2b8dcacd6c1cdb11fffe80ff7738479679d9b293` |
| 4 | `lemma` | [mapCoeffs_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/mapcoeffs-x--4ef9d3fc65bf6419366dd016.md) | 60 | `result-track:4ef9d3fc65bf6419366dd0160fa8dc2f02547e2be627897ed2149fd611724303` |
| 5 | `lemma` | [mapCoeffs_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/mapcoeffs-c--9210380c9d7aa1b55a019ec3.md) | 64 | `result-track:9210380c9d7aa1b55a019ec37f403e6d84613f33638f067e40c1107ec1b8b89c` |
| 6 | `theorem` | [apply_aeval_eq'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/apply-aeval-eq--bcd272d776cdbf117e48a787.md) | 70 | `result-track:bcd272d776cdbf117e48a787d9b910dcae5c03f44318ac258797f77e2122e0a4` |
| 7 | `theorem` | [apply_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/apply-aeval-eq--992be37e4d2cb85e67a1dfc1.md) | 82 | `result-track:992be37e4d2cb85e67a1dfc1e512a46a572f5c67c5fa7c724e35569f00367165` |
| 8 | `theorem` | [apply_eval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/apply-eval-eq--421e5fb5b9d6241c4736cac2.md) | 88 | `result-track:421e5fb5b9d6241c4736cac2a31e7f27c0e22d8635d904000b827457cb229da6` |
| 9 | `def` | [mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/mapcoeffs--5e56c1dc21232e227681dd0d.md) | 103 | `declaration-track:5e56c1dc21232e227681dd0da139ff57c3853546d8d3420deb4c86c70a37e54d` |
| 10 | `lemma` | [coeff_mapCoeffs](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/coeff-mapcoeffs--3b093aee6ffcccbf0c938ac2.md) | 107 | `result-track:3b093aee6ffcccbf0c938ac23e7a2f39f9de7688b7f86e3dfdadb70701c2e223` |
| 11 | `lemma` | [mapCoeffs_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/mapcoeffs-monomial--5924670ed4b974aeb20a6ecd.md) | 111 | `result-track:5924670ed4b974aeb20a6ecdcf7d53d9aa84fc41d9d0fe6b9a6e8d099ec2e226` |
| 12 | `lemma` | [mapCoeffs_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/mapcoeffs-x--804b8380487e4fc735c63b82.md) | 116 | `result-track:804b8380487e4fc735c63b8260bc4a9a7e135d5eb3bb7eda3e8c15b595e02398` |
| 13 | `lemma` | [mapCoeffs_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/mapcoeffs-c--3b4476633740a04f1970f752.md) | 120 | `result-track:3b4476633740a04f1970f752ffef19814e92abfb25749821ddbe0ba9ef3ed3d9` |
| 14 | `theorem` | [deriv_aeval_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/deriv-aeval-eq--459e54aa091b2ff1229c6e4e.md) | 125 | `result-track:459e54aa091b2ff1229c6e4e0bb5de3ee4b6ead7525187a6b27b8e8af218ebfb` |
| 15 | `def` | [implicitDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/implicitderiv--921612b8696f408a2da5a6db.md) | 135 | `declaration-track:921612b8696f408a2da5a6db65aa07957118966dcdba8e2914270aacaf76fa1b` |
| 16 | `lemma` | [implicitDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/implicitderiv-c--2467a6cfd52b37c89f4973ed.md) | 140 | `result-track:2467a6cfd52b37c89f4973eddeb704edb15ae4eef3d6b464ea9eed8a583d6b61` |
| 17 | `lemma` | [implicitDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/implicitderiv-x--76a17ba575e6df10ec8ce0b5.md) | 145 | `result-track:76a17ba575e6df10ec8ce0b591ad6ef6916c2fadba45e23e966482f417fd93fa` |
| 18 | `lemma` | [deriv_aeval_eq_implicitDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/deriv-aeval-eq-implicitderiv--037b667f27ed78a3995efa06.md) | 149 | `result-track:037b667f27ed78a3995efa06ffdc47798d63c521b6105acac9c5c73a3a2a58c0` |
| 19 | `lemma` | [algHom_deriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/alghom-deriv--c1c6337f8eb4f84268c0d0c1.md) | 156 | `result-track:c1c6337f8eb4f84268c0d0c107eedf07a74d3035ceae332649685a72628f3424` |
| 20 | `lemma` | [algEquiv_deriv](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/algequiv-deriv--f094056b69633b92b5c68255.md) | 171 | `result-track:f094056b69633b92b5c68255ad46a9f8ddfcf48af5de054e131d55aa273ae2d5` |
| 21 | `lemma` | [algHom_deriv'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/alghom-deriv--aab8c599d8cd7b6c327a41c9.md) | 181 | `result-track:aab8c599d8cd7b6c327a41c99578b3b92f0436132b3af56a19021348257b9bbb` |
| 22 | `lemma` | [algEquiv_deriv'](../../../../../mathematics/Algebra/CommutativeAlgebra/MapCoeffs/Variant15f6041e7cf22f44c830f79ca5b98fa0218944b2d1127fd6511d8ec449e26a85.lean/declarations/algequiv-deriv--db65f0fca14984399d7653b0.md) | 188 | `result-track:db65f0fca14984399d7653b0f43adca0dd6352e656125cb5b78863f051683817` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
