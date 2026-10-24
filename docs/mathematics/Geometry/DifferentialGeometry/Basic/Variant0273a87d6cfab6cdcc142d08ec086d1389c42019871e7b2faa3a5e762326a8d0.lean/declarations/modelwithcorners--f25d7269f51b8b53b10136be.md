# ModelWithCorners

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba322ecb067d6f03869fb37df2525ee81d5d1d5783662ca39287a77cf1f30b0a",
  "kind": "structure",
  "lexical_name": "ModelWithCorners",
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
  "slug": "modelwithcorners--f25d7269f51b8b53b10136be",
  "source": {
    "blob": "5d24b8bc50a4f542e6d883e04f5e7191abc7b8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 159,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f25d7269f51b8b53b10136be8add4637b97369ca69b67e09a9aa5a6c799ec6fa",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba322ecb067d6f03869fb37df2525ee81d5d1d5783662ca39287a77cf1f30b0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ModelWithCorners (𝕜 : Type*) [NontriviallyNormedField 𝕜] (E : Type*)
    [NormedAddCommGroup E] [NormedSpace 𝕜 E] (H : Type*) [TopologicalSpace H] extends
    PartialEquiv H E where
  source_eq : source = univ
  uniqueDiffOn' : UniqueDiffOn 𝕜 toPartialEquiv.target
  target_subset_closure_interior : toPartialEquiv.target ⊆ closure (interior toPartialEquiv.target)
  continuous_toFun : Continuous toFun := by continuity
  continuous_invFun : Continuous invFun := by continuity

attribute [simp, mfld_simps] ModelWithCorners.source_eq

/-- A vector space is a model with corners, denoted as `𝓘(𝕜, E)` within the `Manifold` namespace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d24b8bc50a4f542e6d883e04f5e7191abc7b8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
