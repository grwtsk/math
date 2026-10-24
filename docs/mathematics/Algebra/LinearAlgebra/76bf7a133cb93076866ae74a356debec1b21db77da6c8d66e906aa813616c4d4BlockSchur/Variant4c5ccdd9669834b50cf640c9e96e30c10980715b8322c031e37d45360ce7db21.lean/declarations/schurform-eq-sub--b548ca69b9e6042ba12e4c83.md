# schurForm_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:808feca8-529a-6af3-6dea-b3eb850113ea",
  "kind": "theorem",
  "lexical_name": "schurForm_eq_sub",
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
  "slug": "schurform-eq-sub--b548ca69b9e6042ba12e4c83",
  "source": {
    "blob": "0d1d5da278eac4a996d4607575b339671733aa8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/76bf7a133cb93076866ae74a356debec1b21db77da6c8d66e906aa813616c4d4BlockSchur/Variant4c5ccdd9669834b50cf640c9e96e30c10980715b8322c031e37d45360ce7db21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b548ca69b9e6042ba12e4c83fae500ec25d0310a0438bcc26f599982e374357d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/76bf7a133cb93076866ae74a356debec1b21db77da6c8d66e906aa813616c4d4BlockSchur/Variant4c5ccdd9669834b50cf640c9e96e30c10980715b8322c031e37d45360ce7db21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:808feca8-529a-6af3-6dea-b3eb850113ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schurForm_eq_sub (S : BlockSchurSolver G) (u v : U) :
    S.schurForm.form u v =
      G.form (autonomousInclusion u) (autonomousInclusion v) -
        G.form (provenanceInclusion (S.solve u))
          (provenanceInclusion (S.solve v)) := by
  change
    G.form (S.projector.residualMap (autonomousInclusion u))
      (S.projector.residualMap (autonomousInclusion v)) = _
  rw [S.projector.residual_eq_sub_projected]
  simp [projector, project]

/-- The diagonal Schur subtraction is nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/76bf7a133cb93076866ae74a356debec1b21db77da6c8d66e906aa813616c4d4BlockSchur/Variant4c5ccdd9669834b50cf640c9e96e30c10980715b8322c031e37d45360ce7db21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/76bf7a133cb93076866ae74a356debec1b21db77da6c8d66e906aa813616c4d4BlockSchur/Variant4c5ccdd9669834b50cf640c9e96e30c10980715b8322c031e37d45360ce7db21.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d1d5da278eac4a996d4607575b339671733aa8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
