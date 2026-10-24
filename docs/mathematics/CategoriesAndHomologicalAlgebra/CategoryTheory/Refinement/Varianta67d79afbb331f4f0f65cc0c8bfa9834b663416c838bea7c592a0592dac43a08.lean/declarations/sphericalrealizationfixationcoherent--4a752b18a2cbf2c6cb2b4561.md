# SphericalRealizationFixationCoherent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be275cc3f03394e62aeb910e6380d1ebc9ef28a1ec51cae929af26670dd50265",
  "kind": "def",
  "lexical_name": "SphericalRealizationFixationCoherent",
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
  "slug": "sphericalrealizationfixationcoherent--4a752b18a2cbf2c6cb2b4561",
  "source": {
    "blob": "683a9e4f1f336e449751b5fe41be529cd4524108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinement/Varianta67d79afbb331f4f0f65cc0c8bfa9834b663416c838bea7c592a0592dac43a08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a752b18a2cbf2c6cb2b4561f535cff19fe08bbf790478389a9c93332d31c2fa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinement/Varianta67d79afbb331f4f0f65cc0c8bfa9834b663416c838bea7c592a0592dac43a08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be275cc3f03394e62aeb910e6380d1ebc9ef28a1ec51cae929af26670dd50265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SphericalRealizationFixationCoherent
    {Global : CategoryLike.{uObj, uHom}}
    {Fixed : CategoryLike.{vObj, vHom}}
    {Coord : Type uCoord}
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}}
    (L : CoordinateFixationLayer Global Fixed Coord)
    (choice : SphericalRealizationChoice R S2 S3)
    (source :
      RealizationFixationSourceData Global Fixed Coord Vertex R.Point)
    (target2 : SphereFixationData Coord S2.Point)
    (target3 : SphereFixationData Coord S3.Point) : Prop :=
  match choice with
  | .sphere2 E => RealizationFixationCoherent L E.injection source target2
  | .sphere3 E => RealizationFixationCoherent L E.injection source target3

/-- Branch-indexed signature-level realization refinement coherence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinement/Varianta67d79afbb331f4f0f65cc0c8bfa9834b663416c838bea7c592a0592dac43a08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinement/Varianta67d79afbb331f4f0f65cc0c8bfa9834b663416c838bea7c592a0592dac43a08.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `683a9e4f1f336e449751b5fe41be529cd4524108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
