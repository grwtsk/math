# FormalNeighborhoodCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a34db2d3aba50f8610eb51397b879e47f4d0157415afa3fd22b76109cd212e2e",
  "kind": "structure",
  "lexical_name": "FormalNeighborhoodCover",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "formalneighborhoodcover--7db356f46b6fe99acce09ef2",
  "source": {
    "blob": "9c764e606cbcd0007fbd4373caf67dd77fc9fae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FormalNeighborhood/Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7db356f46b6fe99acce09ef22391d1764e84adc6277b9ea1e99210863860f511",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FormalNeighborhood/Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a34db2d3aba50f8610eb51397b879e47f4d0157415afa3fd22b76109cd212e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FormalNeighborhoodCover
    (Element : Type u) (Neighborhood : Type v)
    [Fintype Element] [DecidableEq Element]
    [Fintype Neighborhood] [DecidableEq Neighborhood] where
  extent : Neighborhood → Finset Element
  children : Neighborhood → Finset Neighborhood
  localCarrier : Neighborhood → Finset Element
  roots : Finset Neighborhood
  childStrict :
    ∀ parent child,
      child ∈ children parent →
        extent child ⊂ extent parent
  exactDecomposition :
    ∀ neighborhood,
      extent neighborhood =
        localCarrier neighborhood ∪
          (children neighborhood).biUnion extent
  rootCoverage :
    roots.biUnion extent = Finset.univ

namespace FormalNeighborhoodCover

variable
    {Element : Type u} {Neighborhood : Type v}
    [Fintype Element] [DecidableEq Element]
    [Fintype Neighborhood] [DecidableEq Neighborhood]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FormalNeighborhood/Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FormalNeighborhood/Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c764e606cbcd0007fbd4373caf67dd77fc9fae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
