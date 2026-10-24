# Ambient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5655f0ee7e5731af104bd4a9230f33047229da2c92952ad092c81baee57e706d",
  "kind": "abbrev",
  "lexical_name": "Ambient",
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
  "slug": "ambient--effb85c0d9f56090b4106c6f",
  "source": {
    "blob": "63764d7000b026218f8b0d028f51628a6fec13e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:effb85c0d9f56090b4106c6fbf0460516bf76b9f9c93a9e434e98632ffce3271",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5655f0ee7e5731af104bd4a9230f33047229da2c92952ad092c81baee57e706d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Ambient (ι : Type*) [Fintype ι] := EuclideanSpace ℝ ι × ℝ

/-- The equation of the spheroid with equatorial radius `a` and polar radius
`c`.  Positivity of the radii is imposed on the theorems that need it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63764d7000b026218f8b0d028f51628a6fec13e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
