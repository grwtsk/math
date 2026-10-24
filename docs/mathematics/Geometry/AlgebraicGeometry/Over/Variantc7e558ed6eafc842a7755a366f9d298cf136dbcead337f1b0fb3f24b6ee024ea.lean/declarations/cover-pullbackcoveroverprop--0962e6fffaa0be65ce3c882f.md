# Cover.pullbackCoverOverProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23b76e91a18e5f518a49c720f9ed2d4e3e0a2f71f5d6eea2fc22f1bb201eb378",
  "kind": "def",
  "lexical_name": "Cover.pullbackCoverOverProp",
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
  "slug": "cover-pullbackcoveroverprop--0962e6fffaa0be65ce3c882f",
  "source": {
    "blob": "01e5c6f0183a39947bf2f761b428cc02455cab6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 122,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0962e6fffaa0be65ce3c882fa8d9c8518cf2f95ecf72e419c1930a6961e17ddc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23b76e91a18e5f518a49c720f9ed2d4e3e0a2f71f5d6eea2fc22f1bb201eb378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cover.pullbackCoverOverProp : W.Cover P where
  J := 𝒰.J
  obj x := (pullback (f.asOverProp (hX := hW) (hY := hX) S)
    ((𝒰.map x).asOverProp (hX := hQ x) (hY := hX) S)).left
  map x := (pullback.fst (f.asOverProp S) ((𝒰.map x).asOverProp S)).left
  f x := 𝒰.f (f.base x)
  covers x := (mem_range_iff_of_surjective ((𝒰.pullbackCover f).map (𝒰.f (f.base x))) _
    ((PreservesPullback.iso (MorphismProperty.Over.forget Q _ _ ⋙ Over.forget S)
      (f.asOverProp S) ((𝒰.map _).asOverProp S)).inv)
    (PreservesPullback.iso_inv_fst _ _ _) x).mp ((𝒰.pullbackCover f).covers x)
  map_prop j := by
    dsimp only
    rw [← Over.forget_map, MorphismProperty.Comma.toCommaMorphism_eq_hom,
      ← MorphismProperty.Comma.forget_map, ← Functor.comp_map]
    rw [← PreservesPullback.iso_hom_fst, P.cancel_left_of_respectsIso]
    exact P.pullback_fst _ _ (𝒰.map_prop j)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01e5c6f0183a39947bf2f761b428cc02455cab6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
