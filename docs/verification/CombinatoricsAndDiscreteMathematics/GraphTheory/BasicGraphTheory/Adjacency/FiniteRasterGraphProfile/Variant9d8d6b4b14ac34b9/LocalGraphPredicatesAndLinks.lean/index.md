# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.LocalGraphPredicatesAndLinks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3678f07e0c60f1665b261d67ff34a92e4f7f3b42",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3678f07e0c60f1665b261d67ff34a92e4f7f3b42`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Surgery.Digital` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity.Finite` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.ConnectedComponents.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.ForegroundComponentsAndCycleRank`](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CanonicalAdjacencyPair](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/canonicaladjacencypair--59ea5f24dcc8ea6d53c0b976.md) | 49 | `declaration-track:59ea5f24dcc8ea6d53c0b97601940b0570d2da023b753e7d52bb130da313a4a4` |
| 2 | `instance` | [canonicalAdjacencyPairDecidable](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/canonicaladjacencypairdecidable--0a4958b059d3efa3b5542a67.md) | 52 | `declaration-track:0a4958b059d3efa3b5542a67e9d8ac1167dc20152b93ec5a572586ff221f1169` |
| 3 | `theorem` | [vertexAdjacent_iff_coordinate_bounds](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/vertexadjacent-iff-coordinate-bounds--e4441f8b0d0faa1bec585d15.md) | 60 | `result-track:e4441f8b0d0faa1bec585d15102d9f1f007b3747d05b95661a02697d82004394` |
| 4 | `def` | [foregroundDegree](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/foregrounddegree--f054420f158f4d41057329b2.md) | 80 | `declaration-track:f054420f158f4d41057329b2bb2cf1bdb1cc6d94720f34177aad4a066f364b24` |
| 5 | `def` | [NonbranchingCubicalGraph](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/nonbranchingcubicalgraph--a011e4e672e318164dc1252c.md) | 88 | `declaration-track:a011e4e672e318164dc1252cc933e9fcf8df23943a99304b9f9ada0ca7dad1c8` |
| 6 | `instance` | [nonbranchingCubicalGraphDecidable](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/nonbranchingcubicalgraphdecidable--0f01e0802f19d06677974bae.md) | 92 | `declaration-track:0f01e0802f19d06677974bae0e9d379c3bb457d598c11e91f513efc64bd5d33f` |
| 7 | `def` | [canonicalCubicalManifold](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/canonicalcubicalmanifold--d8823d8438722c26017edbd8.md) | 100 | `declaration-track:d8823d8438722c26017edbd84502b199fd718b80289c8423629070d081f039e7` |
| 8 | `def` | [canonicalExactCarrierCompatible](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/canonicalexactcarriercompatible--d0cb8d9e55cf50706f5c2883.md) | 108 | `declaration-track:d0cb8d9e55cf50706f5c2883d9b5fcdc36988e9b052ff848d58bf935985f26e0` |
| 9 | `def` | [foregroundLink](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/foregroundlink--0f44e302cf5ad6fc54e7a5c6.md) | 117 | `declaration-track:0f44e302cf5ad6fc54e7a5c6b0c4a71e56b65919958f8e6a998948050956001d` |
| 10 | `theorem` | [foregroundLink_subset_exterior](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/foregroundlink-subset-exterior--d971868e2bc08556bfbe62f5.md) | 125 | `result-track:d971868e2bc08556bfbe62f5c87dd14dff924f2927e30b49a41b6d46a9b8fce1` |
| 11 | `def` | [backgroundState](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/backgroundstate--7da5c252814ab2d51e397c86.md) | 133 | `declaration-track:7da5c252814ab2d51e397c86caac3a884e806172eb946a891bf89c1304f1557e` |
| 12 | `def` | [backgroundLink](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/backgroundlink--8b172621b12bfa0dc0a4758a.md) | 139 | `declaration-track:8b172621b12bfa0dc0a4758acc2f5ec58864ba0bc313a222b57badb75a54a6e8` |
| 13 | `def` | [backgroundBetaZero](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/backgroundbetazero--54680b4abc14489578fd47f1.md) | 145 | `declaration-track:54680b4abc14489578fd47f134f2f6d39e821f5d72bcd1e369217f2929b723d7` |
| 14 | `def` | [canonicalLinkCondition](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/canonicallinkcondition--93e884fe31d6fd094058723e.md) | 156 | `declaration-track:93e884fe31d6fd094058723e04f6fe5bca82d1f4845fb555b4d29063a50718b7` |
| 15 | `def` | [boundaryComponentCount](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/LocalGraphPredicatesAndLinks.lean/declarations/boundarycomponentcount--b16f7498eb54f6261db6b164.md) | 175 | `declaration-track:b16f7498eb54f6261db6b164af963bd6276c0b81251fa3b7b3e1c00f9d811015` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
