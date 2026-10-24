# autonomous_energy_eq_explained_add_schurMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9a95ac5-053d-d81d-e4dd-291731fa1134",
  "kind": "theorem",
  "lexical_name": "autonomous_energy_eq_explained_add_schurMatrix",
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
  "slug": "autonomous-energy-eq-explained-add-schurmatrix--3b233ca476b5dedb8d413a61",
  "source": {
    "blob": "b8d2914c01d7a43f132b444858fa2115bace3520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b233ca476b5dedb8d413a617feb6d35c845cdd958e1c7129737c5003937020c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9a95ac5-053d-d81d-e4dd-291731fa1134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem autonomous_energy_eq_explained_add_schurMatrix
    (D : MatrixBlockRealization G) (u : κ → ℝ) :
    u ⬝ᵥ D.autonomousMatrix.mulVec u =
      (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec u +
        u ⬝ᵥ D.schurMatrix.mulVec u := by
  rw [← D.schurForm_eq_schurMatrix u u]
  exact D.matrix_autonomous_energy_decomposition u

end MatrixBlockRealization

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8d2914c01d7a43f132b444858fa2115bace3520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
