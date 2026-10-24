# isLocalAtTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2aaf055-0469-e4db-b504-813bb925a347",
  "kind": "lemma",
  "lexical_name": "isLocalAtTarget",
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
  "slug": "islocalattarget--b748b0f6915312720cfd3cbc",
  "source": {
    "blob": "ef34b06cff60c634df9ec888bdb06ad41b241450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 299,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b748b0f6915312720cfd3cbc41c9bac8740c7bff05b751e58c06527bcd59815d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2aaf055-0469-e4db-b504-813bb925a347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalAtTarget [P.IsMultiplicative]
    (hP : ∀ {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z) [IsOpenImmersion g], P (f ≫ g) → P f) :
    IsLocalAtTarget P where
  iff_of_openCover' {X Y} f 𝒰 := by
    refine (iff_of_openCover (𝒰.pullbackCover f)).trans (forall_congr' fun i ↦ ?_)
    rw [← Scheme.Cover.pullbackHom_map]
    constructor
    · exact hP _ _
    · exact fun H ↦ P.comp_mem _ _ H (of_isOpenImmersion _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantbc854254538fcb68630819afcf5b305eb7c4ea6d346e0c37dfe6c0783f57a535.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef34b06cff60c634df9ec888bdb06ad41b241450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
