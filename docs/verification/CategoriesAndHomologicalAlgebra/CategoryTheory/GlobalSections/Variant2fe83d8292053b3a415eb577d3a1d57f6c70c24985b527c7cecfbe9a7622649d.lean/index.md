# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GlobalSections.Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1087644bba67d500371bf11e5e2edeb3f39b96a2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1087644bba67d500371bf11e5e2edeb3f39b96a2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.ConstantSheaf` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasGlobalSectionsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/hasglobalsectionsfunctor--3f85f94cbd17dc97044d1e6a.md) | 64 | `declaration-track:3f85f94cbd17dc97044d1e6ac0db6a4097ce311a1189691794d708a3565fa6f8` |
| 2 | `def` | [Sheaf.Γ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf--09a250e02d8c04e5dab3dadc.md) | 68 | `declaration-track:09a250e02d8c04e5dab3dadc833dc1bb5f1a07203a7bd8a02fe975ae5ac2a5d3` |
| 3 | `def` | [constantSheafΓAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/constantsheaf-adj--064c818ff37ea305fa942d76.md) | 72 | `declaration-track:064c818ff37ea305fa942d76539dec50b64ec40679db0b7cf73a5826c98fd810` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/instance--e0538f9b2a7c77e6ed2bd7bd.md) | 76 | `declaration-track:e0538f9b2a7c77e6ed2bd7bd5d71fedf6e8ecdd812ed663a2df9cf430c37fe76` |
| 5 | `instance` | [hasGlobalSectionsFunctor_of_hasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/hasglobalsectionsfunctor-of-hasterminal--405c76da4119ff8fa0dd9e93.md) | 80 | `declaration-track:405c76da4119ff8fa0dd9e932a0b9ca336311b3881368a1a85cecf1bc4673aec` |
| 6 | `def` | [Sheaf.ΓNatIsoSheafSections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-natisosheafsections--c16499221dd8b921e9ebf580.md) | 86 | `declaration-track:c16499221dd8b921e9ebf5802ff5af39d1973cec8d995135d9bb6103e2611c0c` |
| 7 | `instance` | [hasGlobalSectionsFunctor_of_hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/hasglobalsectionsfunctor-of-haslimitsofshape--f1c73f4e7852950cfc3b211d.md) | 92 | `declaration-track:f1c73f4e7852950cfc3b211d4ae0a3ab6253e301d13c6105f70289b2675f0c77` |
| 8 | `def` | [Sheaf.ΓNatIsoLim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-natisolim--b88de71f3b24b9bb572f8e52.md) | 99 | `declaration-track:b88de71f3b24b9bb572f8e52374e1663a99f68144aa37889639941d4b4b72130` |
| 9 | `def` | [Sheaf.ΓHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-homequiv--20bdf806111023b975d593ed.md) | 107 | `declaration-track:20bdf806111023b975d593edbb7a8016968e354a69d0862e62166d38428ca8e2` |
| 10 | `lemma` | [Sheaf.ΓHomEquiv_naturality_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-homequiv-naturality-left--b6c942ff8563773d49522c7c.md) | 113 | `result-track:b6c942ff8563773d49522c7c0a9d8bfa58168e65ec75fd0bb9e00644af0737ca` |
| 11 | `lemma` | [Sheaf.ΓHomEquiv_naturality_left_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-homequiv-naturality-left-symm--f27f5238ad7d6f325cf6fae6.md) | 120 | `result-track:f27f5238ad7d6f325cf6fae6779b6075f2b09e20633febadf058d75df4f23f4a` |
| 12 | `lemma` | [Sheaf.ΓHomEquiv_naturality_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-homequiv-naturality-right--bf3a55bc13021214613f30c1.md) | 127 | `result-track:bf3a55bc13021214613f30c12fdedea9ef96f795099ca990bfe81979e4ba8a62` |
| 13 | `lemma` | [Sheaf.ΓHomEquiv_naturality_right_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-homequiv-naturality-right-symm--3aac2893ecb58f95183f6730.md) | 134 | `result-track:3aac2893ecb58f95183f67305493a12303a3ad721b561310502cf267c1dd9dfc` |
| 14 | `def` | [Sheaf.coneΓ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-cone--3c29f21c1f4047e495562078.md) | 143 | `declaration-track:3c29f21c1f4047e4955620784d7d7904eba36c781f8a2a4cc4e1620a61ce7870` |
| 15 | `def` | [Sheaf.isLimitConeΓ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-islimitcone--5673c8073ea91b97e7011183.md) | 149 | `declaration-track:5673c8073ea91b97e7011183f692081fecf4cf67e6004460418ed7a000fbadf4` |
| 16 | `def` | [Sheaf.ΓRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-res--55f222fbc7c66d6c0e628406.md) | 160 | `declaration-track:55f222fbc7c66d6c0e628406ae803339416a08f38356b788ef65021398734365` |
| 17 | `lemma` | [Sheaf.ΓRes_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-res-map--e0f3f11810fbfa35732f9475.md) | 165 | `result-track:e0f3f11810fbfa35732f94756f4af2f48f97d51fffb87cb06c8b802d78f407c8` |
| 18 | `lemma` | [Sheaf.coneΓ_π_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-cone-app--28317808cdc92e19499bd87a.md) | 170 | `result-track:28317808cdc92e19499bd87a8ddcb27ee766aeaf7379fbe360a515e049e8aa31` |
| 19 | `lemma` | [Sheaf.ΓRes_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-res-naturality--d2b599ded8e44aa5177b3503.md) | 173 | `result-track:d2b599ded8e44aa5177b3503f178b177c75e73b3953c237d7b530d583e740fa3` |
| 20 | `def` | [Sheaf.natTransΓRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-nattrans-res--1de79436c5b26386936144fa.md) | 183 | `declaration-track:1de79436c5b26386936144fa85d68f99d2cadfcaea4aa9589ac81bf9df0b815b` |
| 21 | `def` | [Sheaf.ΓObjEquivSections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-objequivsections--f92a76c6560db5c878af8ffa.md) | 193 | `declaration-track:f92a76c6560db5c878af8ffa796c8877d04a78fa60b0fe52c1f56af2a38519bb` |
| 22 | `lemma` | [Sheaf.ΓObjEquivSections_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-objequivsections-naturality--c4b1f0f18202d8a63c346bc7.md) | 199 | `result-track:c4b1f0f18202d8a63c346bc79745911977ed59d9376536627a697870f35c454c` |
| 23 | `lemma` | [Sheaf.ΓObjEquivSections_naturality_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-objequivsections-naturality-symm--57d2a14652c8a697670e235f.md) | 207 | `result-track:57d2a14652c8a697670e235f70cbb9b1497f538c62998b1db7d7a0b492a30cf2` |
| 24 | `def` | [Sheaf.ΓNatIsoSectionsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-natisosectionsfunctor--3944dcb5f5a29f19ffb5df88.md) | 215 | `declaration-track:3944dcb5f5a29f19ffb5df8809c90d8452b96a11f5d6dd72c30b49f8eff0aa21` |
| 25 | `def` | [Sheaf.ΓObjEquivHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-objequivhom--57e008171ddfb1baccb269e3.md) | 223 | `declaration-track:57e008171ddfb1baccb269e35ba8221628417f742067f85b350057f11a5eac36` |
| 26 | `lemma` | [Sheaf.ΓObjEquivHom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-objequivhom-naturality--87076c5d6e4e37ec994de878.md) | 228 | `result-track:87076c5d6e4e37ec994de878390a4da91e5fce1ee6bda83927a6fd26a208d35a` |
| 27 | `lemma` | [Sheaf.ΓObjEquivHom_naturality_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-objequivhom-naturality-symm--f7d1a06dbbfdca40c4b50398.md) | 234 | `result-track:f7d1a06dbbfdca40c4b50398cfcb8d9bd1219226d50d30fb24b7edd80c8bc1f4` |
| 28 | `def` | [Sheaf.ΓNatIsoCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GlobalSections/Variant2fe83d8292053b3a415eb577d3a1d57f6c70c24985b527c7cecfbe9a7622649d.lean/declarations/sheaf-natisocoyoneda--d2d26420bcf4e30cc596342c.md) | 242 | `declaration-track:d2d26420bcf4e30cc596342c4b1e1c2b04c93dd7858a46e306b963347777e8b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
