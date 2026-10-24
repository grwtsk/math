# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Prismatic.Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9be4c3ce6ab8933990787836e6ced5b1ed67394e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9be4c3ce6ab8933990787836e6ced5b1ed67394e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.Evidence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.NeuralDiffusion.CertifiedLayer` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CochainComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/cochaincomplex--ffa530a5ac555159607e34a3.md) | 18 | `declaration-track:ffa530a5ac555159607e34a3d2b864989d5ad1fef0dd9b5025c5f444db7e4c63` |
| 2 | `def` | [IsCocycle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/iscocycle--cc919c338110597fd60aed38.md) | 26 | `declaration-track:cc919c338110597fd60aed386d9a96afe39c1b1fe9ab140f4c3b0336925e5c81` |
| 3 | `def` | [IsCoboundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/iscoboundary--348538ffb1600bc0e0ab4319.md) | 29 | `declaration-track:348538ffb1600bc0e0ab43193b161e0913f11661fa3565f3912d0768d762f46c` |
| 4 | `def` | [Cohomologous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/cohomologous--c60e18d8e603c47725e97de2.md) | 36 | `declaration-track:c60e18d8e603c47725e97de2e5cb0b9bdb5ba47f287db2bfb636a1a5dc4080bf` |
| 5 | `theorem` | [differential_is_cocycle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/differential-is-cocycle--63fae74aabb723760efe1835.md) | 41 | `result-track:63fae74aabb723760efe1835efce5f92a8cc12b67131a4d75a5fc9c811b028ee` |
| 6 | `structure` | [ChainMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/chainmap--4e28bb1279b25bce40d50106.md) | 48 | `declaration-track:4e28bb1279b25bce40d501060e353d6b90ede3edc6ca5029b786e508d0c4cf7e` |
| 7 | `theorem` | [maps_cocycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/maps-cocycles--ad50cbc9f77eefa73ae7553d.md) | 65 | `result-track:ad50cbc9f77eefa73ae7553dfb5a9bd36f1a7ab0a8b3445dd83a8e90821624c7` |
| 8 | `theorem` | [maps_coboundaries](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/maps-coboundaries--4ccb55a3275030a0a772b8e1.md) | 73 | `result-track:4ccb55a3275030a0a772b8e1c4c8a898745e445ea72863ad3bbe7f3df376aeb8` |
| 9 | `theorem` | [maps_cohomologous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/maps-cohomologous--5d572f243ee3243d3aaef309.md) | 82 | `result-track:5d572f243ee3243d3aaef309a4a299e4c360e2beb79ed9296986b05efaf5413e` |
| 10 | `structure` | [QuasiIsomorphismCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/quasiisomorphismcertificate--0a1bdfb8ca20b96942349b35.md) | 104 | `declaration-track:0a1bdfb8ca20b96942349b357d0633783ecb3d585f9fb95c056912b9c4d48e4b` |
| 11 | `structure` | [PrismaticAuthorityReference](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/prismaticauthorityreference--eb605e9126e8b7474c8795ee.md) | 129 | `declaration-track:eb605e9126e8b7474c8795ee564f07c5ad49ae5ca465c27a758feab3c2a5cfc3` |
| 12 | `theorem` | [cannot_create_theorem_authority](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/cannot-create-theorem-authority--285ed3f34bdd356f531278aa.md) | 142 | `result-track:285ed3f34bdd356f531278aa8eb06185970fa53076e21b762c4c4b75df38aa6e` |
| 13 | `structure` | [FiniteCochainModel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/finitecochainmodel--4dc5b52cdccedef594e29d98.md) | 154 | `declaration-track:4dc5b52cdccedef594e29d98b76c061ff455f46bbfacec7e27d6fe44c1c30e27` |
| 14 | `structure` | [ArithmeticOperator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/arithmeticoperator--df2b38a96147dc2e5da6a3fd.md) | 167 | `declaration-track:df2b38a96147dc2e5da6a3fd295386d657ffddfa0105fcfe335c9d435e4bb449` |
| 15 | `theorem` | [induces_on_cocycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/induces-on-cocycles--eca6ecc5de84a80e92357409.md) | 186 | `result-track:eca6ecc5de84a80e92357409ad0d2d8c3e0b41fd2fa64c952bd763bb98c86391` |
| 16 | `theorem` | [respects_cohomology_classes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Prismatic/Variant08b900929dfba37ecf78826f05c15f2a2a8b324ab6aa931da3488f60a5ff7c0b.lean/declarations/respects-cohomology-classes--8a39fc7ac3a9e9ea4830e765.md) | 192 | `result-track:8a39fc7ac3a9e9ea4830e7654ce07f4690142b4de7c4dd6c93f0f03bc96fdfb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
