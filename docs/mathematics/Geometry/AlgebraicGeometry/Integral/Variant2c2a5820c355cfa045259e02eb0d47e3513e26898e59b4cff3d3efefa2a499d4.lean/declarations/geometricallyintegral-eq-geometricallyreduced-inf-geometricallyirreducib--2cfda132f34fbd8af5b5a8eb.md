# GeometricallyIntegral.eq_geometricallyReduced_inf_geometricallyIrreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5dc3526560070f090b639bb1151d6e0b9138ee46",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aecdc0f7-d0cb-a873-3adf-b4c708256f94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42a00c02-8be4-d201-3ca8-3b5caf27bad4",
  "kind": "lemma",
  "lexical_name": "GeometricallyIntegral.eq_geometricallyReduced_inf_geometricallyIrreducible",
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
  "slug": "geometricallyintegral-eq-geometricallyreduced-inf-geometricallyirreducib--2cfda132f34fbd8af5b5a8eb",
  "source": {
    "blob": "5dc3526560070f090b639bb1151d6e0b9138ee46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 47,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Integral/Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cfda132f34fbd8af5b5a8ebf1a8a58d9cef5d5333903db4083a04b1f0fd010f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Integral/Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42a00c02-8be4-d201-3ca8-3b5caf27bad4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GeometricallyIntegral.eq_geometricallyReduced_inf_geometricallyIrreducible :
    @GeometricallyIntegral =
      (@GeometricallyReduced ⊓ @GeometricallyIrreducible : MorphismProperty Scheme) := by
  rw [eq_geometrically, GeometricallyReduced.eq_geometrically,
    GeometricallyIrreducible.eq_geometrically, ← geometrically_inf]
  eta_expand
  simp [isIntegral_iff_irreducibleSpace_and_isReduced, and_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Integral/Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Integral/Variant2c2a5820c355cfa045259e02eb0d47e3513e26898e59b4cff3d3efefa2a499d4.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dc3526560070f090b639bb1151d6e0b9138ee46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
