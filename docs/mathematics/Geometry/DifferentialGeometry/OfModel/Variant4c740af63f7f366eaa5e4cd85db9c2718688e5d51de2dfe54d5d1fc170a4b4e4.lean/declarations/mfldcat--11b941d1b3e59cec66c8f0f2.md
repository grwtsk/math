# MfldCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31700a05feef4a5f3c78019ba9ff77f88488d99665bfddb7dee95f2130d43df7",
  "kind": "structure",
  "lexical_name": "MfldCat",
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
  "slug": "mfldcat--11b941d1b3e59cec66c8f0f2",
  "source": {
    "blob": "b029d50062680971f7e63668ae595eb01599e5fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 35,
    "path": "GRWTSK/Geometry/DifferentialGeometry/OfModel/Variant4c740af63f7f366eaa5e4cd85db9c2718688e5d51de2dfe54d5d1fc170a4b4e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11b941d1b3e59cec66c8f0f2be3fb47e88c130c048b8537b5a05bf69c16a2b91",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/OfModel/Variant4c740af63f7f366eaa5e4cd85db9c2718688e5d51de2dfe54d5d1fc170a4b4e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31700a05feef4a5f3c78019ba9ff77f88488d99665bfddb7dee95f2130d43df7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MfldCat (I : ModelWithCorners 𝕜 E H) (n : ℕ∞ω) where
  _mkInternal ::
  /-- The underlying type. -/
  carrier : Type u
  [topologicalSpace : TopologicalSpace carrier]
  [chartedSpace : ChartedSpace H carrier]
  [isManifold : IsManifold I n carrier]

attribute [instance] MfldCat.topologicalSpace MfldCat.chartedSpace MfldCat.isManifold

initialize_simps_projections MfldCat (-topologicalSpace, -chartedSpace, -isManifold)

namespace MfldCat
variable {I : ModelWithCorners 𝕜 E H} {n : ℕ∞ω} {M N P : MfldCat I n} {X Y Z : Type u}
  [TopologicalSpace X] [ChartedSpace H X] [IsManifold I n X]
  [TopologicalSpace Y] [ChartedSpace H Y] [IsManifold I n Y]
  [TopologicalSpace Z] [ChartedSpace H Z] [IsManifold I n Z]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/OfModel/Variant4c740af63f7f366eaa5e4cd85db9c2718688e5d51de2dfe54d5d1fc170a4b4e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/OfModel/Variant4c740af63f7f366eaa5e4cd85db9c2718688e5d51de2dfe54d5d1fc170a4b4e4.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b029d50062680971f7e63668ae595eb01599e5fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
