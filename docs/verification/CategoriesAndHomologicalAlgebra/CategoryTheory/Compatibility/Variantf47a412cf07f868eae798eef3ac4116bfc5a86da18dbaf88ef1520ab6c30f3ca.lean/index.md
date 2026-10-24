# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Compatibility.Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a33870472448f4f31ddc6dac70c5e600dbe1f3f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a33870472448f4f31ddc6dac70c5e600dbe1f3f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivalence₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence--c762e265781653c38985c389.md) | 56 | `declaration-track:c762e265781653c38985c3890df415a7fc22e593bc2169177da91b783673791f` |
| 2 | `def` | [equivalence₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence--0507c4c1af322d149b7ff1e2.md) | 64 | `declaration-track:0507c4c1af322d149b7ff1e23eca99900a3591095e435dfa7f8738714bfe130f` |
| 3 | `theorem` | [equivalence₁_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-inverse--202fa388ab332fd5a1711989.md) | 66 | `result-track:202fa388ab332fd5a1711989baff7e21ae36422a8f9a9fd6882670a786e247d0` |
| 4 | `def` | [equivalence₁CounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-counitiso--cc3328c69d8f25e57f4374de.md) | 71 | `declaration-track:cc3328c69d8f25e57f4374dea6920aad2e7f40f02625fbec37dbb4f9f6f59215` |
| 5 | `theorem` | [equivalence₁CounitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-counitiso-eq--c1adabe733023514bcfd16f1.md) | 80 | `result-track:c1adabe733023514bcfd16f1062cfbfcaf9b8caa660691a9c5a8a2bf1cf0c271` |
| 6 | `def` | [equivalence₁UnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-unitiso--7ae8370796630a9269a44e2c.md) | 86 | `declaration-track:7ae8370796630a9269a44e2c81559e93ecec3aedb9b77b8d0105f0dde55b2696` |
| 7 | `theorem` | [equivalence₁UnitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-unitiso-eq--9d8e770c65ce1d95657a3c7a.md) | 95 | `result-track:9d8e770c65ce1d95657a3c7aa34ec38354fedd2b417c7a01daa23cac5f4e8a43` |
| 8 | `def` | [equivalence₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence--1cdbd156824bb1174446e43a.md) | 102 | `declaration-track:1cdbd156824bb1174446e43a5bc1772fe4058186f407382eb1fb127f9e80eb21` |
| 9 | `theorem` | [equivalence₂_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-inverse--9ee6883c1c3918e5cd2eee11.md) | 105 | `result-track:9ee6883c1c3918e5cd2eee119ca16df75f070b2c100745bbe5b32f0259b17879` |
| 10 | `def` | [equivalence₂CounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-counitiso--e93ac8ad5f148042b670d05b.md) | 111 | `declaration-track:e93ac8ad5f148042b670d05b9abbf8434c0d625f24cb0960acc0fd2a8e964c2f` |
| 11 | `theorem` | [equivalence₂CounitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-counitiso-eq--d342576629646cc878714909.md) | 121 | `result-track:d342576629646cc87871490959266ada573ffafadb2a84c24ecbf7bea53d817a` |
| 12 | `def` | [equivalence₂UnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-unitiso--381a700a220482b45b62aef1.md) | 130 | `declaration-track:381a700a220482b45b62aef1498cc37b4c5ab7093be679e66c13286a6dd0fc06` |
| 13 | `theorem` | [equivalence₂UnitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-unitiso-eq--75176a11a0f02268f96e75b4.md) | 138 | `result-track:75176a11a0f02268f96e75b4b0d70f94dda9fa8a20061d8f96e32c94c59e4d94` |
| 14 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence--1481d4236c2b6f125a930128.md) | 150 | `declaration-track:1481d4236c2b6f125a930128f723c71b3212164290b1ebac3b62f4b8b6e697f1` |
| 15 | `theorem` | [equivalence_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalence-functor--225b55768b9bb034a28bc9c6.md) | 158 | `result-track:225b55768b9bb034a28bc9c668a1ccb3ae0d9a5ba8005e9bbcff3ec8384b3aa3` |
| 16 | `def` | [τ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/anonymous--40be9bebeb8e5c96f0570a62.md) | 164 | `declaration-track:40be9bebeb8e5c96f0570a629768a9e83bd958c370f2caa79db6957c6cb779d7` |
| 17 | `def` | [τ₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/anonymous--ef671b3b7403e8c71e0535a9.md) | 174 | `declaration-track:ef671b3b7403e8c71e0535a9880d6dccf9ab8e2fc2a2193c4ef44ec7c41f0926` |
| 18 | `def` | [equivalenceCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalencecounitiso--9a339aeb81a77de2d9a62ad7.md) | 187 | `declaration-track:9a339aeb81a77de2d9a62ad7248d626199f47a1192bfc62bc825d786383fa129` |
| 19 | `theorem` | [equivalenceCounitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalencecounitiso-eq--35e6b290281cf4c41f3aaa07.md) | 195 | `result-track:35e6b290281cf4c41f3aaa07347bd034d2e639021dfb248897402c92d15cbb89` |
| 20 | `def` | [υ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/anonymous--7367247bfe8061ed65968e8d.md) | 216 | `declaration-track:7367247bfe8061ed65968e8d4fba32760e858273835be2c6236c726dfe5496ec` |
| 21 | `def` | [equivalenceUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalenceunitiso--6ff80b8cb83ad4b4d2af65f4.md) | 227 | `declaration-track:6ff80b8cb83ad4b4d2af65f46da5c5227ac3d8c3107fe4f45f3d171e02bae111` |
| 22 | `theorem` | [equivalenceUnitIso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/declarations/equivalenceunitiso-eq--6da9b93a7c1187f0f2b7a782.md) | 243 | `result-track:6da9b93a7c1187f0f2b7a782dc18a20da655f2e92ff93e10d56b61ff159fc6f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
