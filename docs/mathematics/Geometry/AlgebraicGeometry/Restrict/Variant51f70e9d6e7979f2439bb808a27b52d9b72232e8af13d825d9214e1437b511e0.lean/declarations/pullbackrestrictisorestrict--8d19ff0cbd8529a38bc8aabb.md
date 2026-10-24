# pullbackRestrictIsoRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cea57a5ff0a6839ea6ebdc5b3743e713eb8b0fa5d8b99bd531766ff58ff3040b",
  "kind": "def",
  "lexical_name": "pullbackRestrictIsoRestrict",
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
  "slug": "pullbackrestrictisorestrict--8d19ff0cbd8529a38bc8aabb",
  "source": {
    "blob": "afb1d69f0544a201f67f5f0154920085573c869d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 420,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d19ff0cbd8529a38bc8aabbd2ede665e37320aaadf3798915fae310aa5b1b18",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cea57a5ff0a6839ea6ebdc5b3743e713eb8b0fa5d8b99bd531766ff58ff3040b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullbackRestrictIsoRestrict {X Y : Scheme.{u}} (f : X ⟶ Y) (U : Y.Opens) :
    pullback f (U.ι) ≅ f ⁻¹ᵁ U := by
  refine IsOpenImmersion.isoOfRangeEq (pullback.fst f _) (Scheme.Opens.ι _) ?_
  simp [IsOpenImmersion.range_pullback_fst_of_right]

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Restrict/Variant51f70e9d6e7979f2439bb808a27b52d9b72232e8af13d825d9214e1437b511e0.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afb1d69f0544a201f67f5f0154920085573c869d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
