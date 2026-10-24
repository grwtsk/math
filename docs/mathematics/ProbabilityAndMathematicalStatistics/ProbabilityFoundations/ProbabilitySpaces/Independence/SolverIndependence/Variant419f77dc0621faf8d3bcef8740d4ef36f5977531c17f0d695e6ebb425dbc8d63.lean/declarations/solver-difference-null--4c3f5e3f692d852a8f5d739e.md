# solver_difference_null

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3be33324-d6b9-a626-0237-f6a1fe920cdb",
  "kind": "theorem",
  "lexical_name": "solver_difference_null",
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
  "slug": "solver-difference-null--4c3f5e3f692d852a8f5d739e",
  "source": {
    "blob": "26fd144f04322765cf36548c38cef9510390cd49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 59,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant419f77dc0621faf8d3bcef8740d4ef36f5977531c17f0d695e6ebb425dbc8d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c3f5e3f692d852a8f5d739eb4a5b8f6c47334d0e37486daeff6e59923ca38d2",
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

Occurrence: `result:3be33324-d6b9-a626-0237-f6a1fe920cdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem solver_difference_null
    (S T : BlockSchurSolver G) (u : U) :
    G.form
        (provenanceInclusion (S.solve u - T.solve u))
        (provenanceInclusion (S.solve u - T.solve u)) = 0 := by
  let d : P := S.solve u - T.solve u
  have hS := S.provenance_pairing_eq_cross d u
  have hT := T.provenance_pairing_eq_cross d u
  have hpair :
      G.form (provenanceInclusion d) (provenanceInclusion (S.solve u)) =
        G.form (provenanceInclusion d) (provenanceInclusion (T.solve u)) := by
    exact hS.trans hT.symm
  have hzero :
      G.form (provenanceInclusion d)
        (provenanceInclusion (S.solve u) -
          provenanceInclusion (T.solve u)) = 0 := by
    rw [form_sub_right]
    linarith
  simpa [d] using hzero

/-- The difference between two solver corrections is orthogonal to every
ambient direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant419f77dc0621faf8d3bcef8740d4ef36f5977531c17f0d695e6ebb425dbc8d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant419f77dc0621faf8d3bcef8740d4ef36f5977531c17f0d695e6ebb425dbc8d63.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26fd144f04322765cf36548c38cef9510390cd49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
