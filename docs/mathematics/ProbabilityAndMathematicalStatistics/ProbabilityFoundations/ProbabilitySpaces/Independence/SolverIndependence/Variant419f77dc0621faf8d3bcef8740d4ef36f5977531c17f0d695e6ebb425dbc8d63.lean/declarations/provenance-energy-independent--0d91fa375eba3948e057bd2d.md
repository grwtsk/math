# provenance_energy_independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:892f1c62-59be-c852-87a5-d039bf34f524",
  "kind": "theorem",
  "lexical_name": "provenance_energy_independent",
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
  "slug": "provenance-energy-independent--0d91fa375eba3948e057bd2d",
  "source": {
    "blob": "26fd144f04322765cf36548c38cef9510390cd49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 88,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant419f77dc0621faf8d3bcef8740d4ef36f5977531c17f0d695e6ebb425dbc8d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d91fa375eba3948e057bd2d645a63bdf2aa8a418552893b64413138e0f8b6af",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant419f77dc0621faf8d3bcef8740d4ef36f5977531c17f0d695e6ebb425dbc8d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:892f1c62-59be-c852-87a5-d039bf34f524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem provenance_energy_independent
    (S T : BlockSchurSolver G) (u v : U) :
    G.form (provenanceInclusion (S.solve u))
        (provenanceInclusion (S.solve v)) =
      G.form (provenanceInclusion (T.solve u))
        (provenanceInclusion (T.solve v)) := by
  calc
    G.form (provenanceInclusion (S.solve u))
        (provenanceInclusion (S.solve v)) =
        G.form (provenanceInclusion (S.solve u))
          (autonomousInclusion v) :=
      S.provenance_pairing_eq_cross (S.solve u) v
    _ =
        G.form (provenanceInclusion (S.solve u))
          (provenanceInclusion (T.solve v)) :=
      (T.provenance_pairing_eq_cross (S.solve u) v).symm
    _ =
        G.form (provenanceInclusion (T.solve v))
          (provenanceInclusion (S.solve u)) :=
      G.symmetric _ _
    _ =
        G.form (provenanceInclusion (T.solve v))
          (autonomousInclusion u) :=
      S.provenance_pairing_eq_cross (T.solve v) u
    _ =
        G.form (provenanceInclusion (T.solve v))
          (provenanceInclusion (T.solve u)) :=
      (T.provenance_pairing_eq_cross (T.solve v) u).symm
    _ =
        G.form (provenanceInclusion (T.solve u))
          (provenanceInclusion (T.solve v)) :=
      G.symmetric _ _

/-- The Schur residual pairing is independent of the chosen solver. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant419f77dc0621faf8d3bcef8740d4ef36f5977531c17f0d695e6ebb425dbc8d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant419f77dc0621faf8d3bcef8740d4ef36f5977531c17f0d695e6ebb425dbc8d63.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26fd144f04322765cf36548c38cef9510390cd49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
