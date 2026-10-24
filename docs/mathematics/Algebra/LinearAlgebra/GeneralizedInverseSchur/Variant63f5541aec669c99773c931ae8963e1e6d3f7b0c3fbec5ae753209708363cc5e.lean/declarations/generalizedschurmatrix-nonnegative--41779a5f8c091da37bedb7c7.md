# generalizedSchurMatrix_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b626c857-4571-2341-9924-04c1b58134b8",
  "kind": "theorem",
  "lexical_name": "generalizedSchurMatrix_nonnegative",
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
  "slug": "generalizedschurmatrix-nonnegative--41779a5f8c091da37bedb7c7",
  "source": {
    "blob": "ae0eeadd6c649d703a660584930b6f6a6e83ab7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 160,
    "path": "GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41779a5f8c091da37bedb7c7064a7ae325445afd65f7cf30639b9d42ee978f1c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b626c857-4571-2341-9924-04c1b58134b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generalizedSchurMatrix_nonnegative
    (D : GeneralizedInverseBlockRealization G) (u : κ → ℝ) :
    0 ≤ u ⬝ᵥ D.generalizedSchurMatrix.mulVec u := by
  rw [← D.schurForm_eq_generalizedSchurMatrix u u]
  exact D.blockSchurSolver.schurForm_nonnegative u

/-- Pure autonomous energy decomposes into explained generalized-inverse
provenance energy and the positive generalized Schur residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GeneralizedInverseSchur/Variant63f5541aec669c99773c931ae8963e1e6d3f7b0c3fbec5ae753209708363cc5e.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae0eeadd6c649d703a660584930b6f6a6e83ab7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
