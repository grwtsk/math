# Verification target: GRWTSK.Algebra.LinearAlgebra.Discriminant.Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af4a8c40634ac4c32a63c6f8aea15d92877b2208",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af4a8c40634ac4c32a63c6f8aea15d92877b2208`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr--e2ac007666bdca1202cd2d73.md) | 69 | `declaration-track:e2ac007666bdca1202cd2d73c0680e6deef6f17190f7eb3b50b8de1ce19743b0` |
| 2 | `theorem` | [discr_def](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-def--b59c7ffa9c34fefec4c45e28.md) | 73 | `result-track:b59c7ffa9c34fefec4c45e2808b1c5e329b2d1b4653178c30a8799955d1fc62b` |
| 3 | `theorem` | [discr_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-reindex--b638132c8f216b690140b44b.md) | 86 | `result-track:b638132c8f216b690140b44bce9d8b4287f208f1c0a8c1e5c710c05ea3ee5276` |
| 4 | `theorem` | [discr_zero_of_not_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-zero-of-not-linearindependent--9802dfad0aaf1f61199736ba.md) | 91 | `result-track:9802dfad0aaf1f61199736ba362ff73948262b8847524943470a25ae01ac0ffc` |
| 5 | `theorem` | [discr_of_matrix_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-of-matrix-vecmul--cbe771efe4ed9f8f61ca10d4.md) | 111 | `result-track:cbe771efe4ed9f8f61ca10d4a3acb376b1a27c7a23d2a92c540167d8475cf9ac` |
| 6 | `theorem` | [discr_of_matrix_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-of-matrix-mulvec--e6f7480d6477a65a342839c6.md) | 119 | `result-track:e6f7480d6477a65a342839c6c54e95c870c0fb319f1f7ba432573dc5dfaf1ae6` |
| 7 | `theorem` | [discr_not_zero_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-not-zero-of-basis--61e36e5172af0b8e07637792.md) | 136 | `result-track:61e36e5172af0b8e07637792b39973c4c3a79265643ed9e2a88e442944f22c84` |
| 8 | `theorem` | [discr_isUnit_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-isunit-of-basis--d379fab2260c556f1a4a219f.md) | 154 | `result-track:d379fab2260c556f1a4a219f080081a406da3e1ff6ed109b0e87eaa450f550ba` |
| 9 | `theorem` | [discr_eq_det_embeddingsMatrixReindex_pow_two](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-eq-det-embeddingsmatrixreindex-pow-two--713d6eb9b69e1d7947e24d36.md) | 164 | `result-track:713d6eb9b69e1d7947e24d366c87b13930dc29cb66c8f2da469448e0a9d11b71` |
| 10 | `theorem` | [discr_powerBasis_eq_prod](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-powerbasis-eq-prod--6d11db4bf6e25bd446e13274.md) | 171 | `result-track:6d11db4bf6e25bd446e13274071198382e4eebc30324a51927290580269fd583` |
| 11 | `theorem` | [discr_powerBasis_eq_prod'](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-powerbasis-eq-prod--af6db7281913c947a5dccf62.md) | 181 | `result-track:af6db7281913c947a5dccf62910552e8eac65cfd9bd4e1f0f9a1dcaffde8b6b2` |
| 12 | `theorem` | [discr_powerBasis_eq_prod''](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-powerbasis-eq-prod--b3ac4d18ceecff74db3b70f6.md) | 192 | `result-track:b3ac4d18ceecff74db3b70f641c675be4bd97cd6e4728acab35950c630ceb23b` |
| 13 | `theorem` | [discr_powerBasis_eq_norm](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-powerbasis-eq-norm--36310d0976af96ae5d5cf167.md) | 223 | `result-track:36310d0976af96ae5d5cf167cda2e1567dcdb2302e412d331b1144e4dd7c2aeb` |
| 14 | `theorem` | [discr_isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-isintegral--ddb34809d181dfcff36888eb.md) | 290 | `result-track:ddb34809d181dfcff36888ebb351751d6550431650b0f301f06ea48e22e93f03` |
| 15 | `theorem` | [discr_eq_discr_of_toMatrix_coeff_isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-eq-discr-of-tomatrix-coeff-isintegral--65bcafa2b87fb1bd63d984af.md) | 299 | `result-track:65bcafa2b87fb1bd63d984afb29aea23c02fbfcd2ff0a22d27f8ed2e1178c81a` |
| 16 | `theorem` | [discr_mul_isIntegral_mem_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-mul-isintegral-mem-adjoin--8548719057dfee6a60a076f0.md) | 333 | `result-track:8548719057dfee6a60a076f0b6f39ccd4349a6020ea541be70df5b5cbab0003f` |
| 17 | `theorem` | [discr_eq_discr](../../../../../mathematics/Algebra/LinearAlgebra/Discriminant/Variantac62f90c51c6b0f1d774ba14747a88949c17bc4d7ebd26e7538a7a3f58ba7aad.lean/declarations/discr-eq-discr--4be47c6a3bf752a52eb4dae8.md) | 382 | `result-track:4be47c6a3bf752a52eb4dae8fa43ac36a577ea958b9fbf2b3d1df9fb85464d94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
