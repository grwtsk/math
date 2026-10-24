# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b7a4be321775aaf35ffdd3a6ee0951b806fa452",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b7a4be321775aaf35ffdd3a6ee0951b806fa452`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.GroupCohomology.Resolution` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [linearYonedaObjResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/linearyonedaobjresolution--3116dcab58285a8c75ac6ea8.md) | 85 | `declaration-track:3116dcab58285a8c75ac6ea8fa6b35fa1184fb27cc9b061a017741a014871b37` |
| 2 | `theorem` | [linearYonedaObjResolution_d_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/linearyonedaobjresolution-d-apply--d9685c9385831530c5138db3.md) | 88 | `result-track:d9685c9385831530c5138db3fd8c23a91c35f3c10e789bd4aa2f9964803959ee` |
| 3 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/d--314047d643466a33f539fae9.md) | 101 | `declaration-track:314047d643466a33f539fae9aec96a99fc5145dc353b6f8a1a12fe9813a31b5a` |
| 4 | `theorem` | [d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/d-eq--6cce8b748fd74b980cb654ab.md) | 121 | `result-track:6cce8b748fd74b980cb654abaa308211fd58cd2f9df25a76dd9269b9dfc6bee7` |
| 5 | `abbrev` | [inhomogeneousCochains](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/inhomogeneouscochains--dc2f5564d278bb164b8f01d0.md) | 174 | `declaration-track:dc2f5564d278bb164b8f01d0be2f8ebe8553b681ddd37c6aa46930d679b84a95` |
| 6 | `theorem` | [inhomogeneousCochains.d_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/inhomogeneouscochains-d-def--79ee0a904a6f428fbabb6723.md) | 201 | `result-track:79ee0a904a6f428fbabb672348ba948f0aa6cb05b4ab0d40c0a1b92f82d378c2` |
| 7 | `def` | [inhomogeneousCochainsIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/inhomogeneouscochainsiso--04508ce7633bd8035bef8e8c.md) | 207 | `declaration-track:04508ce7633bd8035bef8e8c189fcf4ff11b88a104c5c29a725ee4f8a7a7d647` |
| 8 | `abbrev` | [cocycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/cocycles--a4932f86e8b70d9f4abebe09.md) | 224 | `declaration-track:a4932f86e8b70d9f4abebe09698e436fe9d5e285acb8e2814eea0a6ac67c8ff0` |
| 9 | `abbrev` | [iCocycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/icocycles--e9a0412b7f39473deef55b3c.md) | 227 | `declaration-track:e9a0412b7f39473deef55b3c6b3ac6972772d67f9482b6e941783ef02817ab7f` |
| 10 | `abbrev` | [toCocycles](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/tococycles--1f10039bdc1b3234b7f187a6.md) | 232 | `declaration-track:1f10039bdc1b3234b7f187a6516367a48b2ec2728b9d1dfe0826f83c1627f0c9` |
| 11 | `def` | [groupCohomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/groupcohomology--2db7787c19d062608f61b2ff.md) | 241 | `declaration-track:2db7787c19d062608f61b2ff2cf0afe00d3decf6449f9b3706d35ea9bf6de20e` |
| 12 | `abbrev` | [groupCohomologyπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/groupcohomology--04a88c016ea8922ac7e83e3c.md) | 246 | `declaration-track:04a88c016ea8922ac7e83e3c0535dbe5bea152ed21e022a38bb96c005637ccb3` |
| 13 | `def` | [groupCohomologyIsoExt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/declarations/groupcohomologyisoext--7159f36474f0162254b8eb79.md) | 252 | `declaration-track:7159f36474f0162254b8eb794a1b5c68dd3dfd6603781c416474d0a393159662` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
