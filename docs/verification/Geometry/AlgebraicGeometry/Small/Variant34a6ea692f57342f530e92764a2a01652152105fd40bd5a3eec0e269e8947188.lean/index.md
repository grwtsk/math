# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Small.Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e399368a2fab93fb2df9b4edff2583ab76dcbd06",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e399368a2fab93fb2df9b4edff2583ab76dcbd06`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Cover.Over` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Sites.MorphismProperty` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite.InducedTopology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Over` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cover.toPresieveOver](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/cover-topresieveover--0bba59a18213c5f4e630da0b.md) | 49 | `declaration-track:0bba59a18213c5f4e630da0bd6971810882c6a839c33be7606c78676d84c5f6f` |
| 2 | `def` | [Cover.toPresieveOverProp](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/cover-topresieveoverprop--6c0426db0eb321c9c32e84e3.md) | 53 | `declaration-track:6c0426db0eb321c9c32e84e34e9bd0da75bdc9c09fdab09f40ba7b50026f148f` |
| 3 | `lemma` | [Cover.overEquiv_generate_toPresieveOver_eq_ofArrows](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/cover-overequiv-generate-topresieveover-eq-ofarrows--2ea667546862c25f9c077120.md) | 57 | `result-track:2ea667546862c25f9c077120659855b60453ff6c93b704bbdad5dc05bc34d416` |
| 4 | `lemma` | [Cover.toPresieveOver_le_arrows_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/cover-topresieveover-le-arrows-iff--2bf092a2448c57a6b04fd9fb.md) | 71 | `result-track:2bf092a2448c57a6b04fd9fbd260ce4a562a9b266c81213e46ad8367b6bdfd10` |
| 5 | `def` | [overPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/overpretopology--8276040f050526348cd5d1fc.md) | 85 | `declaration-track:8276040f050526348cd5d1fc23f6247ac433ae857ef687ac5980ea74f4867001` |
| 6 | `abbrev` | [overGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/overgrothendiecktopology--32f334b76ca4bc4eb1fc572f.md) | 104 | `declaration-track:32f334b76ca4bc4eb1fc572f1637e583077c7ad5b8694089a3f151f200f29b57` |
| 7 | `lemma` | [overGrothendieckTopology_eq_toGrothendieck_overPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/overgrothendiecktopology-eq-togrothendieck-overpretopology--34391c3bf93f8f7559f2c0aa.md) | 107 | `result-track:34391c3bf93f8f7559f2c0aa6f56811dbf8aff737c387728c1dda611d65fd09d` |
| 8 | `lemma` | [mem_overGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/mem-overgrothendiecktopology--803fa0811a5cd53fd8ed78b9.md) | 125 | `result-track:803fa0811a5cd53fd8ed78b9b4eae91b4b58228b176cf94a8f84e7e46b235c37` |
| 9 | `lemma` | [locallyCoverDense_of_le](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/locallycoverdense-of-le--5e398c841d8faf93cfb77f65.md) | 138 | `result-track:5e398c841d8faf93cfb77f65825648fca2c59428688aa0f40a77dd1afc89a91c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/instance--42afb7e787a4d1a2b3464385.md) | 152 | `declaration-track:42afb7e787a4d1a2b34643856b22756b3508bae5f217948e118562b52a91fc84` |
| 11 | `abbrev` | [smallGrothendieckTopologyOfLE](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/smallgrothendiecktopologyofle--fcedaabf76e7038f3ff3f043.md) | 158 | `declaration-track:fcedaabf76e7038f3ff3f0433863c464071490249393339dc57e3c5922465aeb` |
| 12 | `abbrev` | [smallGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/smallgrothendiecktopology--c2942d328d40587db58ddf47.md) | 168 | `declaration-track:c2942d328d40587db58ddf472572b200b216a2bf660607ab6c6ee655fafd5b93` |
| 13 | `def` | [smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/smallpretopology--4b1b0ce0d56f6a43ec80c325.md) | 177 | `declaration-track:4b1b0ce0d56f6a43ec80c325f32ca984c07dc5e9cc117e0d07e6d32aafb34e45` |
| 14 | `lemma` | [smallGrothendieckTopologyOfLE_eq_toGrothendieck_smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/smallgrothendiecktopologyofle-eq-togrothendieck-smallpretopology--d1c73cdf450cce28abf13f2c.md) | 201 | `result-track:d1c73cdf450cce28abf13f2ca718097a65cf8122128ce66114ba74fe632531dd` |
| 15 | `lemma` | [smallGrothendieckTopology_eq_toGrothendieck_smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/smallgrothendiecktopology-eq-togrothendieck-smallpretopology--5bf98055a1dd2335d4d7e31b.md) | 223 | `result-track:5bf98055a1dd2335d4d7e31b78e66c89f62c959d11f6c586c332e2448980d245` |
| 16 | `lemma` | [mem_toGrothendieck_smallPretopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/mem-togrothendieck-smallpretopology--4264cd79037b0d9cd419c853.md) | 229 | `result-track:4264cd79037b0d9cd419c85390d0393ab9fbe16645a829d8db1783ce9b82c208` |
| 17 | `lemma` | [mem_smallGrothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Small/Variant34a6ea692f57342f530e92764a2a01652152105fd40bd5a3eec0e269e8947188.lean/declarations/mem-smallgrothendiecktopology--abe7de10941531e767b74f68.md) | 257 | `result-track:abe7de10941531e767b74f687957a27b1c50ec8c6936237aa8f976d1121fb5f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
