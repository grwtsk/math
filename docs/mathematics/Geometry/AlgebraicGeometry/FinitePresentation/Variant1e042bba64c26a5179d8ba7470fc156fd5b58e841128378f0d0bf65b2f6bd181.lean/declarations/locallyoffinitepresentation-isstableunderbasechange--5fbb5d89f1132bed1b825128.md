# locallyOfFinitePresentation_isStableUnderBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:798b36a92c1cfa7d7443a800ca08b19fc59ceffcc4b2db5cc77976ad047143c4",
  "kind": "instance",
  "lexical_name": "locallyOfFinitePresentation_isStableUnderBaseChange",
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
  "slug": "locallyoffinitepresentation-isstableunderbasechange--5fbb5d89f1132bed1b825128",
  "source": {
    "blob": "9a53a8ad788c8fec3aacc9c8a0d8a8dae353cf0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 66,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fbb5d89f1132bed1b825128b219a199eac72046958061d7f3455a63ed11fedf",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:798b36a92c1cfa7d7443a800ca08b19fc59ceffcc4b2db5cc77976ad047143c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance locallyOfFinitePresentation_isStableUnderBaseChange :
    MorphismProperty.IsStableUnderBaseChange @LocallyOfFinitePresentation :=
  HasRingHomProperty.isStableUnderBaseChange RingHom.finitePresentation_isStableUnderBaseChange

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Variant1e042bba64c26a5179d8ba7470fc156fd5b58e841128378f0d0bf65b2f6bd181.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a53a8ad788c8fec3aacc9c8a0d8a8dae353cf0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
