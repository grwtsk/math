# Verification target: GRWTSK.Algebra.LinearAlgebra.AlgebraTower.Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2402c90b7efb9ebcbf607eba67187fc1ac039d1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2402c90b7efb9ebcbf607eba67187fc1ac039d1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Invertible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Invertible.algebraTower](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/invertible-algebratower--9c804a7362ba5fbaa89fa163.md) | 50 | `declaration-track:9c804a7362ba5fbaa89fa16352b071811c4c795c5cd5818ce9a0748eb8869033` |
| 2 | `def` | [invertibleAlgebraCoeNat](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/invertiblealgebracoenat--d414f6e5f1578f8b0344a280.md) | 58 | `declaration-track:d414f6e5f1578f8b0344a2803295e8238138fd8f9567dec0d087e5f45eedd2a2` |
| 3 | `def` | [Basis.algebraMapCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/basis-algebramapcoeffs--3ee1ff7998b615934c7dd054.md) | 86 | `declaration-track:3ee1ff7998b615934c7dd054c29645ce0a1f1e38a15e8cc71e58818b0cd2a93f` |
| 4 | `theorem` | [Basis.algebraMapCoeffs_apply](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/basis-algebramapcoeffs-apply--1764f26b93ab961de4481366.md) | 91 | `result-track:1764f26b93ab961de44813660fe98bb00b188a65d5b1e43f7aa05ac5d87de14a` |
| 5 | `theorem` | [Basis.coe_algebraMapCoeffs](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/basis-coe-algebramapcoeffs--889ad9c1195fd2375c3a0395.md) | 96 | `result-track:889ad9c1195fd2375c3a0395367a14a58d72e8243f8e87a57540b9a24be5365e` |
| 6 | `theorem` | [linearIndependent_smul](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/linearindependent-smul--17edf3d3b6c19c7164e90ef2.md) | 116 | `result-track:17edf3d3b6c19c7164e90ef24c8f77a1839d2cfb86713d416dad9a56b3aef210` |
| 7 | `def` | [Basis.smul](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/basis-smul--9a80de83a4a4bd1dc58ecd59.md) | 134 | `declaration-track:9a80de83a4a4bd1dc58ecd59dfcf226a3febaad1c9dc225bbf4adaefb328ac68` |
| 8 | `theorem` | [Basis.smul_repr](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/basis-smul-repr--27d229586cd39c172083e1dc.md) | 144 | `result-track:27d229586cd39c172083e1dcff1b39dcb910f015a07a3f115b41e538bceed345` |
| 9 | `theorem` | [Basis.smul_repr_mk](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/basis-smul-repr-mk--effb3022e01abcd9c5919729.md) | 148 | `result-track:effb3022e01abcd9c5919729997a5dafa11595d7a0e108a4e007048d4242256b` |
| 10 | `theorem` | [Basis.smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/basis-smul-apply--ffa09319ac2bdce41029d66e.md) | 154 | `result-track:ffa09319ac2bdce41029d66e623e1ec2b7da683074f1ea02d764958c95ef9cb3` |
| 11 | `theorem` | [Basis.algebraMap_injective](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/basis-algebramap-injective--fc8045ba71a370d8be306a42.md) | 176 | `result-track:fc8045ba71a370d8be306a4287654bc2f258a2452be9009727449b126594f44d` |
| 12 | `def` | [AlgHom.restrictDomain](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/alghom-restrictdomain--27f168914a2466fad79f2ef3.md) | 193 | `declaration-track:27f168914a2466fad79f2ef3eb873fc146a09b197ed31068b4d3cd1061e89a03` |
| 13 | `def` | [AlgHom.extendScalars](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/alghom-extendscalars--1e51ec150f761ff0591e53ec.md) | 202 | `declaration-track:1e51ec150f761ff0591e53ecdba397c960d28ae0642ad86cceeeddbc6dbab1e5` |
| 14 | `def` | [algHomEquivSigma](../../../../../mathematics/Algebra/LinearAlgebra/AlgebraTower/Variant71d683f7d1bdfa510afc3fcd8e916e2fd03083f7a966cc5037f90117b7bcf67a.lean/declarations/alghomequivsigma--d6596d3b22c09fd9a1e62bb8.md) | 219 | `declaration-track:d6596d3b22c09fd9a1e62bb889c06b6a5e9f93a94a2f424e1164dfba06ef0e1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
