# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Extend.Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af7efaa203f34b35cafef9abe76dbb0bf142ad4c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af7efaa203f34b35cafef9abe76dbb0bf142ad4c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.AsLimit` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.CofilteredLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Final` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/exists-hom--0d53715d66020c3db4da665e.md) | 39 | `result-track:0d53715d66020c3db4da665e83a230dc6a9d743de8649de0d668a9acb0d0a19d` |
| 2 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/functor--db68b48a5c63c46bd7a2c220.md) | 57 | `declaration-track:db68b48a5c63c46bd7a2c220cde27c7d78eef6eeb1563646bb9d6dda8292b729` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/example--e82b4501ad422ad85f90b0c1.md) | 62 | `declaration-track:e82b4501ad422ad85f90b0c16483a562973e022b32673f3b7ae45acd6c8b4f4d` |
| 4 | `def` | [functorOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/functorop--64deaec85a3cf244ad0a2cfe.md) | 70 | `declaration-track:64deaec85a3cf244ad0a2cfe308077669079a16d6485caf488dc83793ddc1544` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/example--bfb4ea161be29b8380e5eef9.md) | 74 | `declaration-track:bfb4ea161be29b8380e5eef9a515a4c095423bc58fbe86a32bc0d4444bd3ab64` |
| 6 | `lemma` | [functor_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/functor-initial--2c304acfcce51c116fcfdf20.md) | 83 | `result-track:2c304acfcce51c116fcfdf20c85e98c35209946da2a1de9224da51d8f7a70a60` |
| 7 | `lemma` | [functorOp_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/functorop-final--b78e3a96e3aa276f8a7560f4.md) | 104 | `result-track:b78e3a96e3aa276f8a7560f4148811fc1e52f527d04f725a7f7790d1b025f412` |
| 8 | `def` | [cone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/cone--5e8ff15a2b5d210acfb28256.md) | 122 | `declaration-track:5e8ff15a2b5d210acfb28256a1c992a592018414399a464cae74abafab2642c4` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/example--db8c558765eaf1fef718e86a.md) | 129 | `declaration-track:db8c558765eaf1fef718e86a167667451e6710bca41d6e498e44069abe27b8fe` |
| 10 | `def` | [isLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/islimitcone--e72b72624ce3110e1cffb13f.md) | 136 | `declaration-track:e72b72624ce3110e1cffb13f43b3a156a5090ebeee24c155d80fd0c7a6c676b7` |
| 11 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/cocone--f9c748b451020b37a634748c.md) | 153 | `declaration-track:f9c748b451020b37a634748cafbf6f8237ec2cf4810acd80a9af29fe8a8a394b` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/example--52caf7d1bc608369d2f1c204.md) | 164 | `declaration-track:52caf7d1bc608369d2f1c204120e141028a2beb58609336c71df188613fe8710` |
| 13 | `def` | [isColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/iscolimitcocone--9cb1a0117d5f12f82b9cc9de.md) | 171 | `declaration-track:9cb1a0117d5f12f82b9cc9ded89847b9d8d6f27963fd5567b706cd983a52cf34` |
| 14 | `abbrev` | [fintypeDiagram'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/fintypediagram--22a7dfb3639f76c559a8f2dc.md) | 188 | `declaration-track:22a7dfb3639f76c559a8f2dc8277e3e2946b0fe2cf05cdfa611e4ded3cff3881` |
| 15 | `abbrev` | [diagram'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/diagram--298efecc630fdad68bfd12c1.md) | 192 | `declaration-track:298efecc630fdad68bfd12c1bbfffc524e34d8316e46b7a4233925eaae433ce6` |
| 16 | `abbrev` | [asLimitCone'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/aslimitcone--91325fea822dc667e4fdf41e.md) | 196 | `declaration-track:91325fea822dc667e4fdf41eda5590f06b53b82a1923d2f13808d6bcfba00d5e` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/instance--990a8fed86b32a72e1117e33.md) | 198 | `declaration-track:990a8fed86b32a72e1117e33c21ef4ae22ef86698a9c587ca2a6d5e3caee2c98` |
| 18 | `def` | [asLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/aslimit--cb42c791dc74aea324377797.md) | 202 | `declaration-track:cb42c791dc74aea324377797cd0f6a8c18d10b2980bae09028af9d355a1f10c0` |
| 19 | `def` | [lim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Extend/Variant04c18e3686bce55a6b76f2185573f01e8c86db8b5f4685153f2ea1de9da08b0e.lean/declarations/lim--9d78ff7b72433050c298bbdd.md) | 205 | `declaration-track:9d78ff7b72433050c298bbdddad7738f759c6fbc5f9748e84ad5abab4830ff3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
