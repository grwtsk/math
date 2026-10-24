# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0332c67fec89fe3478ca6e14c574011556f6a0fb",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0332c67fec89fe3478ca6e14c574011556f6a0fb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/projective--03ab0be0c9f6e6f6be5536a9.md) | 44 | `declaration-track:03ab0be0c9f6e6f6be5536a92d800c42641e918e6dafc7e83cd9d1215428abb1` |
| 2 | `lemma` | [Limits.IsZero.projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/limits-iszero-projective--9a47c1bf8a688919f8511e79.md) | 47 | `result-track:9a47c1bf8a688919f8511e79df0f6e7d33e905b04e492a497c3a7a5e6d252334` |
| 3 | `structure` | [ProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/projectivepresentation--767072eeb80a9a5435421927.md) | 55 | `declaration-track:767072eeb80a9a543542192796e051f75bf47da33a261a0df535504e2ad05b3a` |
| 4 | `class` | [EnoughProjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/enoughprojectives--0a3da17320a7d44dcf02e5e9.md) | 69 | `declaration-track:0a3da17320a7d44dcf02e5e9ba2bc04d8f738b2ca988f6e60e2811e24e274a28` |
| 5 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/factorthru--64f809434e4d1ada6daeff4f.md) | 79 | `declaration-track:64f809434e4d1ada6daeff4fec46a741418c2fa66f5ea9c71cbc65e69e7f84f1` |
| 6 | `theorem` | [factorThru_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/factorthru-comp--891a6837f9e9b3118b511e0a.md) | 83 | `result-track:891a6837f9e9b3118b511e0ab282d6233ddda85e988d5d2ad85bb20df9cecdec` |
| 7 | `instance` | [zero_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/zero-projective--51dc5709458785f123d2eac7.md) | 91 | `declaration-track:51dc5709458785f123d2eac74a335af846564ab69005d3e4c7b07fdec7840384` |
| 8 | `theorem` | [of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/of-iso--cd3729bb0f6c764d10533e8b.md) | 96 | `result-track:cd3729bb0f6c764d10533e8b139dff27ba959a9eac4f7d7902677a7fc5dd4085` |
| 9 | `theorem` | [iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/iso-iff--b4f1098c6137419985f65b06.md) | 101 | `result-track:b4f1098c6137419985f65b06460f0df4a89f6a2e840d0f2205ce0f98a3129d58` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/instance--b7f6be934e41913168a222e7.md) | 105 | `declaration-track:b7f6be934e41913168a222e755b649201c5a7699405b65c1daa2daff0b4a3262` |
| 11 | `instance` | [Type.enoughProjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/type-enoughprojectives--b8f7a2861855467949cc9f62.md) | 110 | `declaration-track:b8f7a2861855467949cc9f62bc67f737331dedd8fb424ded9ff865768c5601f4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/instance--960acff7d716461d298bb494.md) | 113 | `declaration-track:960acff7d716461d298bb494d827f19c883089fae998c6cbd26d481e0acca355` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/instance--a758f2c1a6c1f27d62e194b6.md) | 117 | `declaration-track:a758f2c1a6c1f27d62e194b69e4fc69b8699ec5d7b2cd820c16048965d72515a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/instance--6bc00579c2723fa32e0755e1.md) | 120 | `declaration-track:6bc00579c2723fa32e0755e178cd4d0a2666a26ac1f1d41154444e9af5ec0907` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/instance--649878c27ce26944451d3e75.md) | 125 | `declaration-track:649878c27ce26944451d3e753ffba1d9c7de3846931aa8d53c49032f9f55f2d1` |
| 16 | `theorem` | [projective_iff_preservesEpimorphisms_coyoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/projective-iff-preservesepimorphisms-coyoneda-obj--ded9dc357e05769d5942518b.md) | 129 | `result-track:ded9dc357e05769d5942518be406a65b8c07a779358457ebabec48d11600ab72` |
| 17 | `def` | [over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/over--efec163ee8cad029882ad3d0.md) | 147 | `declaration-track:efec163ee8cad029882ad3d05e715f91e03ffe81fe723b8e6e5b2c2a01d2d23f` |
| 18 | `instance` | [projective_over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/projective-over--95e38ffbc914a64aad5bd876.md) | 150 | `declaration-track:95e38ffbc914a64aad5bd8764eb841c51d41f01c494fe833578cbfb2693ef331` |
| 19 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/anonymous--1a4f7d619092ad0079c710a6.md) | 156 | `declaration-track:1a4f7d619092ad0079c710a669c3f6defd8e320b2f9eeefa7eb0749a1bd5440b` |
| 20 | `instance` | [π_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/epi--db16575b64589d384b4c7d95.md) | 159 | `declaration-track:db16575b64589d384b4c7d95e0ac55890cceaeb703c4fe615a5549a97ab5a2a5` |
| 21 | `def` | [syzygies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/syzygies--5b5a3ffec9b7b79c668ffde0.md) | 169 | `declaration-track:5b5a3ffec9b7b79c668ffde020ba94ef92a04a611e7f766c9f39742cbf3fc4ed` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/instance--7d1a59746b87f827a8eb590f.md) | 171 | `declaration-track:7d1a59746b87f827a8eb590f7c458d3dadf8871abe514be25ebe971377e9a07d` |
| 23 | `abbrev` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/d--86339bbafee3270ea1eb6f78.md) | 179 | `declaration-track:86339bbafee3270ea1eb6f78bcb665cce0f90c9a10fd2016fffb1c232a5651ee` |
| 24 | `theorem` | [map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/map-projective--a60853d512805246f632408f.md) | 192 | `result-track:a60853d512805246f632408f26ef3e5f0c57719126dbc6168a6cbdc6d3783c65` |
| 25 | `theorem` | [projective_of_map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/projective-of-map-projective--02a969d38cc60216f4eadac5.md) | 200 | `result-track:02a969d38cc60216f4eadac58e43992b9958b867202c47670ac00df5472f4110` |
| 26 | `def` | [mapProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/mapprojectivepresentation--622ea6b3becbd9db3acbed64.md) | 210 | `declaration-track:622ea6b3becbd9db3acbed6485b9b49eae016c28af710eacbff632a11c13aea3` |
| 27 | `theorem` | [map_projective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/map-projective-iff--d64e0dde3602ad562b967d84.md) | 223 | `result-track:d64e0dde3602ad562b967d849c2b9b45ccfa58f0bbd6602435b82b55d36ced5e` |
| 28 | `def` | [projectivePresentationOfMapProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/projectivepresentationofmapprojectivepresentation--49c11bf6a3bee6266d29077b.md) | 228 | `declaration-track:49c11bf6a3bee6266d29077bd850bf9c9629a5947ed1de1a0b4eafd1cf8cb786` |
| 29 | `theorem` | [enoughProjectives_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant651bb321610dbc7756bd8bfe58097ec6c62d939618f6fa6002c999ea36edf316.lean/declarations/enoughprojectives-iff--c479da626d8d16def37c85e4.md) | 235 | `result-track:c479da626d8d16def37c85e48b25f23ba2c2685cd484af16d79b8d3b9f8c255a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
