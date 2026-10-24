# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Projective.Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b677e73402885cd8512eb3868175dacd85b3e4c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b677e73402885cd8512eb3868175dacd85b3e4c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Biproducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/projective--ab2c619e9c1433647ddd2a1b.md) | 53 | `declaration-track:ab2c619e9c1433647ddd2a1b355c8921923e423545e02b54557ae0ef77344452` |
| 2 | `structure` | [ProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/projectivepresentation--50e419e7ece3da573057ffb2.md) | 63 | `declaration-track:50e419e7ece3da573057ffb27cd28569a362b8fb92791fd0b5ae933b1f45fe74` |
| 3 | `class` | [EnoughProjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/enoughprojectives--76407b1bc4930ce476a919be.md) | 76 | `declaration-track:76407b1bc4930ce476a919be2cd6c19c974a76122c17c640b865d144113ca384` |
| 4 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/factorthru--5030348a74e24ac64867141b.md) | 87 | `declaration-track:5030348a74e24ac64867141bc54bd25f07843f92e8789fb39c89b0a28ed9e579` |
| 5 | `theorem` | [factorThru_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/factorthru-comp--be9faef5a7a0927b9d7cd548.md) | 92 | `result-track:be9faef5a7a0927b9d7cd54805f1234d1bf4559b368b3670ced8721415313364` |
| 6 | `instance` | [zero_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/zero-projective--f8ef5123970e7fd5a2e25ecf.md) | 101 | `declaration-track:f8ef5123970e7fd5a2e25ecfddd8725543318abce28bbb5cf743df7d10c360ff` |
| 7 | `theorem` | [of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/of-iso--bbf296f3b36a071b8b1aff37.md) | 107 | `result-track:bbf296f3b36a071b8b1aff3760a9582234042adf051ad20ee0170a131ae70cca` |
| 8 | `theorem` | [iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/iso-iff--8f9d8b2639c0d3d610484527.md) | 113 | `result-track:8f9d8b2639c0d3d610484527b0ffd9ebf87320a2fc983263583dcf447948ecf4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/instance--a29443dc5d9ff5be196e0233.md) | 118 | `declaration-track:a29443dc5d9ff5be196e0233c54453a65090fe5eda10d278081783b74a9f260f` |
| 10 | `instance` | [Type.enoughProjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/type-enoughprojectives--f7df0c0c16282aa25a00937e.md) | 123 | `declaration-track:f7df0c0c16282aa25a00937ebb7c1b82a0ed0f8c2c74da822eb7fa8240458e22` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/instance--18e936273df99b6f6e183529.md) | 127 | `declaration-track:18e936273df99b6f6e18352921ce1a64004eed0f56c7cd8689076e27c897a397` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/instance--cf1f5d8d45b6572570925697.md) | 131 | `declaration-track:cf1f5d8d45b6572570925697df9998fc2941d15e1fba34a40bd4aabc1e16d298` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/instance--e7a69997014e753083446966.md) | 134 | `declaration-track:e7a69997014e753083446966cb803f3183d7a7538d6aa7c33f29d032de5d864b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/instance--0b26a2e9750409312113f8f7.md) | 139 | `declaration-track:0b26a2e9750409312113f8f7b946ea7993dc219c52a94fb2228a3b8b37b5217c` |
| 15 | `theorem` | [projective_iff_preservesEpimorphisms_coyoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/projective-iff-preservesepimorphisms-coyoneda-obj--41756d3ec23f39fcb58a2365.md) | 143 | `result-track:41756d3ec23f39fcb58a2365e2786376f3f08654732568d973e5478dfb93d2e6` |
| 16 | `def` | [over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/over--0720fe746073bedc96ac05ec.md) | 162 | `declaration-track:0720fe746073bedc96ac05ec73d44f7a6dbed03e609cb187ed2f0a9143311b70` |
| 17 | `instance` | [projective_over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/projective-over--36db3aa37a0a51d531ad3c32.md) | 166 | `declaration-track:36db3aa37a0a51d531ad3c323cb438fab8c9f37cbed41a31c6c7d092781a0ea8` |
| 18 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/anonymous--af9bdcb9119e74893ffd60d8.md) | 173 | `declaration-track:af9bdcb9119e74893ffd60d8528ce32a657981b125f7bf5f2f0b174a054e4c6b` |
| 19 | `instance` | [π_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/epi--ed5fdc3dec8951434e0e2451.md) | 177 | `declaration-track:ed5fdc3dec8951434e0e2451d12cf3e836827c640a12ce4dad9acfd3d6c6e4c4` |
| 20 | `def` | [syzygies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/syzygies--97fcda9e63b1f5989e728500.md) | 188 | `declaration-track:97fcda9e63b1f5989e72850016311dbc3d47cf943e28e711616625bf8dc5360a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/instance--400e5f170bfddaf5a2b3620a.md) | 191 | `declaration-track:400e5f170bfddaf5a2b3620aa34c0758f67b057fa59a122ae7d308e74278897c` |
| 22 | `abbrev` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/d--176c5c5ac46dba2e1e3ba9f2.md) | 199 | `declaration-track:176c5c5ac46dba2e1e3ba9f230f83c0e8499a5b413973664c3a772603a03646a` |
| 23 | `theorem` | [map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/map-projective--73bf67e1a284902291bcec6a.md) | 213 | `result-track:73bf67e1a284902291bcec6a018073800f02bc02b011b60ea45bd0b95e9cc846` |
| 24 | `theorem` | [projective_of_map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/projective-of-map-projective--156603408974ef51ea0fb490.md) | 222 | `result-track:156603408974ef51ea0fb49086843d946922457f45643a215e4406d4d51e6817` |
| 25 | `def` | [mapProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/mapprojectivepresentation--9b1b08c86fa6003987a9f6b3.md) | 234 | `declaration-track:9b1b08c86fa6003987a9f6b39c4194f1b618cb6596fa3771862a847ed42e87af` |
| 26 | `def` | [projectivePresentationOfMapProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/projectivepresentationofmapprojectivepresentation--750c56c30becff80db6edddd.md) | 250 | `declaration-track:750c56c30becff80db6edddde80a117e9c1c14e78822d90b64a9fb4a3d118100` |
| 27 | `theorem` | [enoughProjectives_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/enoughprojectives-iff--60976d509ec21c5e71874e78.md) | 258 | `result-track:60976d509ec21c5e71874e78f0d79569a1c56d38dedbe6bcc2a3e4e58e728c3e` |
| 28 | `def` | [Exact.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/exact-lift--bf568ab8a90004fc5f0c9fa2.md) | 279 | `declaration-track:bf568ab8a90004fc5f0c9fa2ba3352499150f5ec629035e9a64de1b6b73cd5fc` |
| 29 | `theorem` | [Exact.lift_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant9971943ca4d7ad6e0f3912762a8e830c26bcf5e6ad427ae2bfaea1b9d32ea45f.lean/declarations/exact-lift-comp--895e3b35f368c668b1008a90.md) | 288 | `result-track:895e3b35f368c668b1008a90f2e90da8ccc70945032750b90ea385e99712e83c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
