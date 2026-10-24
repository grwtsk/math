# characterProjector_eq_regularAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c951e68-d4a8-c199-3423-6d5049c95ccb",
  "kind": "theorem",
  "lexical_name": "characterProjector_eq_regularAverage",
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
  "slug": "characterprojector-eq-regularaverage--040d5996b6b310864171df6a",
  "source": {
    "blob": "3c04ef31dd5a0f1df53a9b5dd9264f936db3c2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 202,
    "path": "GRWTSK/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:040d5996b6b310864171df6ad86d629c7d9a9f1f86d00c5d54b10c25f4a39fe2",
  "verification": {
    "reference": "docs/verification/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c951e68-d4a8-c199-3423-6d5049c95ccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characterProjector_eq_regularAverage
    (chi : PrimitiveDirichletCharacter) :
    chi.characterProjector =
      (Matrix.toEuclideanCLM
        (n := CharacterIndex chi) (𝕜 := ℂ))
        (characterRegularAverageMatrix chi) := by
  have matrixIdentity :
      Matrix.toEuclideanLin.symm chi.characterProjector.toLinearMap =
        Matrix.vecMulVec chi.characterVector (star chi.characterVector) := by
    exact InnerProductSpace.symm_toEuclideanLin_rankOne
      chi.characterVector chi.characterVector
  have linearIdentity := congrArg Matrix.toEuclideanLin matrixIdentity
  rw [LinearEquiv.apply_symm_apply] at linearIdentity
  rw [characterRegularAverageMatrix_eq_outer]
  exact ContinuousLinearMap.coe_injective linearIdentity

/-- The character projector is idempotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c04ef31dd5a0f1df53a9b5dd9264f936db3c2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
