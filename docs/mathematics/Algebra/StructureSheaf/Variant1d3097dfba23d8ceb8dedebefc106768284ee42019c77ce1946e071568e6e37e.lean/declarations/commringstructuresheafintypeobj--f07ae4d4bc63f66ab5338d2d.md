# commRingStructureSheafInTypeObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1bea8efad31b67f5ee7ee8ea8df40d88cd11cb407426982475e1a2da42ee30c",
  "kind": "instance",
  "lexical_name": "commRingStructureSheafInTypeObj",
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
  "slug": "commringstructuresheafintypeobj--f07ae4d4bc63f66ab5338d2d",
  "source": {
    "blob": "77c38c8ba20bb8be112e47215887715d2f05b8a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 236,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f07ae4d4bc63f66ab5338d2dedcec5dcc77ec0db48dccc4fb9977de35ced6928",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1bea8efad31b67f5ee7ee8ea8df40d88cd11cb407426982475e1a2da42ee30c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commRingStructureSheafInTypeObj (U : (Opens (PrimeSpectrum.Top R))ᵒᵖ) :
    CommRing ((structureSheafInType R).1.obj U) :=
  (sectionsSubring R U).toCommRing
#align algebraic_geometry.comm_ring_structure_sheaf_in_Type_obj AlgebraicGeometry.commRingStructureSheafInTypeObj

open PrimeSpectrum

/-- The structure presheaf, valued in `CommRingCat`, constructed by dressing up the `Type` valued
structure presheaf.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c38c8ba20bb8be112e47215887715d2f05b8a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
