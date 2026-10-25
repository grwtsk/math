# OrientedFillingPresentationCapability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5555ca3c82de2c8b817743f0f9a3a955b8baa42aab7832f925c1ccc8ae136f4d",
  "kind": "structure",
  "lexical_name": "OrientedFillingPresentationCapability",
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
  "slug": "orientedfillingpresentationcapability--dea9aa7cd4f14251156ea1c0",
  "source": {
    "blob": "4f019210e0bfe9a6abb6a1e89837e92e3a8d499a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variantee9636170e7e8204e9a5fb5ee81a8346388185fbea09d9009655f4d3175d90cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dea9aa7cd4f14251156ea1c0f858f9cdaee527d1fd49caf2cb0e9c3e5659bc7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variantee9636170e7e8204e9a5fb5ee81a8346388185fbea09d9009655f4d3175d90cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5555ca3c82de2c8b817743f0f9a3a955b8baa42aab7832f925c1ccc8ae136f4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrientedFillingPresentationCapability
    (T : OrientedKnotFillingTheory.{u}) where
  Gluing : (K : T.Knot) → T.Slope K → Type v
  OrientationReversing : {K : T.Knot} → {r : T.Slope K} →
    Gluing K r → Prop
  MeridianMapsToMarkedSlope : {K : T.Knot} → {r : T.Slope K} →
    Gluing K r → Prop
  valid_orientation : ∀ {K r} (g : Gluing K r), OrientationReversing g
  valid_meridian_image : ∀ {K r} (g : Gluing K r),
    MeridianMapsToMarkedSlope g

  /-- The closed manifold literally produced by a selected gluing presentation. -/
  presentedManifold : ∀ {K : T.Knot} {r : T.Slope K},
    Gluing K r → T.ClosedManifold
  /-- Each presented filling is identified with the canonical filling indexed by its slope. -/
  presentationIdentifiesFilling : ∀ {K : T.Knot} {r : T.Slope K}
      (g : Gluing K r),
    T.OrientedHomeomorphism (presentedManifold g) (T.Filling K r)

  /-- The selected comparison is required to be fixed on the common exterior. -/
  FixedOnExterior : ∀ {K : T.Knot} {r : T.Slope K}
      {left right : Gluing K r},
    T.OrientedHomeomorphism (presentedManifold left) (presentedManifold right) → Prop
  comparePresentations : ∀ {K r} (left right : Gluing K r),
    T.OrientedHomeomorphism (presentedManifold left) (presentedManifold right)
  compare_fixed_on_exterior : ∀ {K r} (left right : Gluing K r),
    FixedOnExterior (comparePresentations left right)

  /-- A distinguished closed manifold interpreted by the supplier as oriented `S^3`. -/
  sphereThree : T.ClosedManifold
  /-- A presentation using the knot's original tubular neighbourhood. -/
  OriginalNeighborhoodPresentation : T.Knot → Type v
  originalGluing : ∀ {K},
    OriginalNeighborhoodPresentation K → Gluing K (T.meridian K)
  originalNeighbourhoodReconstructsSphere : ∀ {K},
    (P : OriginalNeighborhoodPresentation K) →
      T.OrientedHomeomorphism (presentedManifold (originalGluing P)) sphereThree

namespace OrientedFillingPresentationCapability

variable {T : OrientedKnotFillingTheory.{u}}

/-- Every supplied gluing presentation is explicitly orientation reversing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variantee9636170e7e8204e9a5fb5ee81a8346388185fbea09d9009655f4d3175d90cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DehnFilling/Variantee9636170e7e8204e9a5fb5ee81a8346388185fbea09d9009655f4d3175d90cd.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f019210e0bfe9a6abb6a1e89837e92e3a8d499a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
