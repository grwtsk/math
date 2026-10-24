# matrix_autonomous_energy_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5223d611-61bc-cfad-9c42-417b8cd43b19",
  "kind": "theorem",
  "lexical_name": "matrix_autonomous_energy_decomposition",
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
  "slug": "matrix-autonomous-energy-decomposition--0605948dcda17e47b9f03c85",
  "source": {
    "blob": "31378b5dd910e5615d5bc7432b7f233b17f4f680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 138,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0605948dcda17e47b9f03c8594b3c67d836baba1af3a754a877566dbecdbcd9e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5223d611-61bc-cfad-9c42-417b8cd43b19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrix_autonomous_energy_decomposition
    (D : MatrixBlockRealization G) (u : κ → ℝ) :
    u ⬝ᵥ D.autonomousMatrix.mulVec u =
      (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec u +
        D.blockSchurSolver.schurForm.form u u := by
  linarith [D.schur_eq_matrix_coordinates u u]

end MatrixBlockRealization

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variant3c196dc0d533b0ec8d86d84ac2a02dccdc5e5dd29bc422592faa76f35f0ebbaf.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31378b5dd910e5615d5bc7432b7f233b17f4f680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
