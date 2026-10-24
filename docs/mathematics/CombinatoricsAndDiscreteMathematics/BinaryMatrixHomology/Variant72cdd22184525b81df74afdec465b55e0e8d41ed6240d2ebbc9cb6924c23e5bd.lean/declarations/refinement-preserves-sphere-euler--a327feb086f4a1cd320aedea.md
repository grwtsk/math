# refinement_preserves_sphere_euler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4b720f6-7707-e61a-4624-91a81335f0cf",
  "kind": "theorem",
  "lexical_name": "refinement_preserves_sphere_euler",
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
  "slug": "refinement-preserves-sphere-euler--a327feb086f4a1cd320aedea",
  "source": {
    "blob": "cd30f5817ecf77000f4beb83322433840ed75a49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant72cdd22184525b81df74afdec465b55e0e8d41ed6240d2ebbc9cb6924c23e5bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a327feb086f4a1cd320aedea0f0163a5c5d6559a16829ffe92ef81577b8c9102",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant72cdd22184525b81df74afdec465b55e0e8d41ed6240d2ebbc9cb6924c23e5bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4b720f6-7707-e61a-4624-91a81335f0cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem refinement_preserves_sphere_euler
    {coarse fine : BinaryCellComplex}
    (R : HomologyPreservingRefinement coarse fine)
    (S : SphereLikeClosure coarse) :
    fine.euler = 2 := by
  calc
    fine.euler = coarse.euler := R.euler_preserved
    _ = 2 := sphereLike_euler_eq_two S

/--
A directional splitting field.

This represents the choice of local splitting direction/spin-direction on the
closed `BinaryMatrix` complex. Scalar/isotropic refinement does not need this.
Directional refinement does.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant72cdd22184525b81df74afdec465b55e0e8d41ed6240d2ebbc9cb6924c23e5bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHomology/Variant72cdd22184525b81df74afdec465b55e0e8d41ed6240d2ebbc9cb6924c23e5bd.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd30f5817ecf77000f4beb83322433840ed75a49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
