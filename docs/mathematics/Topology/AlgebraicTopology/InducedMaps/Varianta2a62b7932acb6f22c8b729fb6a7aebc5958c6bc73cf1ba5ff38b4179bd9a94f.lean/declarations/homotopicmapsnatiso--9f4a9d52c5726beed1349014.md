# homotopicMapsNatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:133c6657497b08730489f49f1757f4fd4eff38d11615794c315e194d961fb149",
  "kind": "def",
  "lexical_name": "homotopicMapsNatIso",
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
  "slug": "homotopicmapsnatiso--9f4a9d52c5726beed1349014",
  "source": {
    "blob": "5257616193dec9069c0c8d98098348978df1a6dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 224,
    "path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f4a9d52c5726beed1349014ef40a8190bc6fded171c4dd9d246304c4c8b69fa",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:133c6657497b08730489f49f1757f4fd4eff38d11615794c315e194d961fb149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homotopicMapsNatIso : @Quiver.Hom _ Functor.category.toQuiver (πₘ f) (πₘ g) where
  app x := ⟦H.evalAt x⟧
  -- Porting note: Turned `rw` into `erw` in the line below
  naturality x y p := by erw [(H.eq_diag_path p).1, (H.eq_diag_path p).2]
#align fundamental_groupoid_functor.homotopic_maps_nat_iso FundamentalGroupoidFunctor.homotopicMapsNatIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/InducedMaps/Varianta2a62b7932acb6f22c8b729fb6a7aebc5958c6bc73cf1ba5ff38b4179bd9a94f.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5257616193dec9069c0c8d98098348978df1a6dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
