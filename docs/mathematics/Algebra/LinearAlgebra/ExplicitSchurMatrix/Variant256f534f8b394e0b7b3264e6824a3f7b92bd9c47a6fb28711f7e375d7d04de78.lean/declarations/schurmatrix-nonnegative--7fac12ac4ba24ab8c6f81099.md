# schurMatrix_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb21b366-52ed-bc3e-f230-59ef8ec5b7a4",
  "kind": "theorem",
  "lexical_name": "schurMatrix_nonnegative",
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
  "slug": "schurmatrix-nonnegative--7fac12ac4ba24ab8c6f81099",
  "source": {
    "blob": "8aeab03b1fddb41dc33ccd7e8207dc53d0008ed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fac12ac4ba24ab8c6f8109907dee1e2547d369d7c60153ae2642ca5251d1021",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb21b366-52ed-bc3e-f230-59ef8ec5b7a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schurMatrix_nonnegative
    (D : MatrixBlockRealization G) (u : κ → ℝ) :
    0 ≤ u ⬝ᵥ D.schurMatrix.mulVec u := by
  rw [← D.schurForm_eq_schurMatrix u u]
  exact D.blockSchurSolver.schurForm_nonnegative u

/-- The autonomous block energy decomposes into the explained provenance energy
and the conventional Schur-matrix residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aeab03b1fddb41dc33ccd7e8207dc53d0008ed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
