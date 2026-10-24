# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Map.Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f264d0ed5179d3a4f585cde81587b58afc8af20",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f264d0ed5179d3a4f585cde81587b58afc8af20`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean.json)

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
| 1 | `lemma` | [map_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/map-aux--7929332f5cee0d31a19995c4.md) | 47 | `result-track:7929332f5cee0d31a19995c49d20057c482ed935f8f2c8d3a6c373d1eeb3c838` |
| 2 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/map--fd59d46a8fca127ecb5c31ed.md) | 60 | `declaration-track:fd59d46a8fca127ecb5c31edc096b9c8e87732f584a61a3305827d9e2e8b3d7a` |
| 3 | `def` | [toPresheafFiberMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/topresheaffibermap--ce37a33c8d95bb65a1ee272a.md) | 69 | `declaration-track:ce37a33c8d95bb65a1ee272a878f23643c4e08a293e07956617a175d7ad75a0a` |
| 4 | `lemma` | [toPresheafFiberMap_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/topresheaffibermap-w--6531bc40d8d1b44479f1fc3f.md) | 74 | `result-track:6531bc40d8d1b44479f1fc3f23103564894b5d3949eaefd61f707d6c32847ed4` |
| 5 | `lemma` | [toPresheafFiberMap_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/topresheaffibermap-naturality--80a10d8aff6807877a72f84f.md) | 82 | `result-track:80a10d8aff6807877a72f84fdbb961a3cfc4d0a74acc5786ddce097a97a25c9d` |
| 6 | `def` | [presheafFiberMapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/presheaffibermapcocone--2a2caaa23e634c690ea826e2.md) | 92 | `declaration-track:2a2caaa23e634c690ea826e281d062ddb3a0722f65bc74c2eee4097828aa3ed9` |
| 7 | `def` | [isColimitPresheafFiberMapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/iscolimitpresheaffibermapcocone--5f9203e1e86f67202421f5a1.md) | 100 | `declaration-track:5f9203e1e86f67202421f5a155bde11410373997685df0baa4a49c5fcebcc245` |
| 8 | `lemma` | [presheafFiberMap_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/presheaffibermap-hom-ext--b08c41948923d3423ca49d6b.md) | 105 | `result-track:b08c41948923d3423ca49d6b893a56fc53169bad30a6f21028deaac415832cf1` |
| 9 | `def` | [presheafFiberMapObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/presheaffibermapobjiso--8476a6a8f15c8929a8a9df8a.md) | 114 | `declaration-track:8476a6a8f15c8929a8a9df8ae0c76e89dfc6b17ac3f89b9bb008a4e79b2f619a` |
| 10 | `lemma` | [toPresheafFiberMap_presheafFiberMapObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/topresheaffibermap-presheaffibermapobjiso-hom--a06a5e9d0b2d0a9cadbcaeec.md) | 120 | `result-track:a06a5e9d0b2d0a9cadbcaeec956ff0922951df1917d505b7ae16be1986a01582` |
| 11 | `lemma` | [toPresheafFiber_presheafFiberMapObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/topresheaffiber-presheaffibermapobjiso-inv--6fc6f8f2b03b02730e138cc6.md) | 128 | `result-track:6fc6f8f2b03b02730e138cc69365c02eebb4ef8c35c798a04253ab41c22169fe` |
| 12 | `def` | [presheafFiberMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/presheaffibermapiso--e3f651611019607af63c3885.md) | 139 | `declaration-track:e3f651611019607af63c3885276779cd8908ce93c79917f8369cfed999124e05` |
| 13 | `def` | [sheafFiberMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Variant0a4d49c983d7b3db99663291a07182bdfcbd6f471b0d0210d7268ca903b0df93.lean/declarations/sheaffibermapiso--592d4470a60aa4af00854ecc.md) | 148 | `declaration-track:592d4470a60aa4af00854ecceadb86343cf5c6756bae3d50a305f4e239570a71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
