# BoundarylessManifold.open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f0656621c171e990f331d81db874c5fc0dba832ec18faf8507e74a683bc79e6",
  "kind": "instance",
  "lexical_name": "BoundarylessManifold.open",
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
  "slug": "boundarylessmanifold-open--b6f77032a9f1f206170e5ebe",
  "source": {
    "blob": "e1f61359042c76f263993d92092e202eafef5e23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 484,
    "path": "GRWTSK/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6f77032a9f1f206170e5ebe102bf31bee3b50de433903f7ed6d8c946e3bf205",
  "verification": {
    "reference": "docs/verification/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f0656621c171e990f331d81db874c5fc0dba832ec18faf8507e74a683bc79e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance BoundarylessManifold.open [BoundarylessManifold I M] (u : Opens M) :
    BoundarylessManifold I u :=
  ⟨fun _ ↦ I.isInteriorPoint_iff_isInteriorPoint_val.2 BoundarylessManifold.isInteriorPoint⟩

end opens

/-! Interior and boundary of the product of two manifolds. -/
section prod

variable
  {E' : Type*} [NormedAddCommGroup E'] [NormedSpace 𝕜 E']
  {H' : Type*} [TopologicalSpace H']
  {N : Type*} [TopologicalSpace N] [ChartedSpace H' N]
  {J : ModelWithCorners 𝕜 E' H'}

/-- The interior of `M × N` is the product of the interiors of `M` and `N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1f61359042c76f263993d92092e202eafef5e23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
