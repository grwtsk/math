# liftProjectionOrbit_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd27c54c-6315-2ec4-e0d1-7ac3c20f2cc2",
  "kind": "theorem",
  "lexical_name": "liftProjectionOrbit_minimal",
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
  "slug": "liftprojectionorbit-minimal--a3a7dc68c299d4e848835f6f",
  "source": {
    "blob": "b76f4d6feef4d001e51cc1922849c1035f96e68e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A9bb3efefcd105e3a/Variantc61eaefdd7b9039a2741c1efd007a20887e8cd250bdaab397e0c9da7f3dcdaab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3a7dc68c299d4e848835f6f3dd2d9e416dd0e33b3dbd63ae472a8bd54f8b2f5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A9bb3efefcd105e3a/Variantc61eaefdd7b9039a2741c1efd007a20887e8cd250bdaab397e0c9da7f3dcdaab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd27c54c-6315-2ec4-e0d1-7ac3c20f2cc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftProjectionOrbit_minimal
    (certificate : ExternalRigidifierCert hierarchy)
    (encoding : LabelNormalizedProjectionCode certificate)
    (orbit : Finset (MonoHierarchy hierarchy.Element))
    (nonempty : orbit.Nonempty)
    (candidate : MonoHierarchy hierarchy.Element)
    (member : candidate ∈ orbit) :
    labeledProjectionCode certificate encoding
        (liftProjectionOrbit certificate encoding orbit nonempty) ≤
      labeledProjectionCode certificate encoding candidate := by
  letI : LinearOrder (MonoHierarchy hierarchy.Element) :=
    LinearOrder.lift'
      (labeledProjectionCode certificate encoding)
      (labeledProjectionCode_injective certificate encoding)
  exact Finset.min'_le orbit candidate member

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A9bb3efefcd105e3a/Variantc61eaefdd7b9039a2741c1efd007a20887e8cd250bdaab397e0c9da7f3dcdaab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A9bb3efefcd105e3a/Variantc61eaefdd7b9039a2741c1efd007a20887e8cd250bdaab397e0c9da7f3dcdaab.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b76f4d6feef4d001e51cc1922849c1035f96e68e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
