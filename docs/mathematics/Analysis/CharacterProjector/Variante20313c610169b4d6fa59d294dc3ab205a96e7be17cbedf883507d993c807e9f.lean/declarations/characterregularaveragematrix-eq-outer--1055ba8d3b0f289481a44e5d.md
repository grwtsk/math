# characterRegularAverageMatrix_eq_outer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3bfdf70-914b-b3fa-07d8-ed26e9f8bec1",
  "kind": "theorem",
  "lexical_name": "characterRegularAverageMatrix_eq_outer",
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
  "slug": "characterregularaveragematrix-eq-outer--1055ba8d3b0f289481a44e5d",
  "source": {
    "blob": "3c04ef31dd5a0f1df53a9b5dd9264f936db3c2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 173,
    "path": "GRWTSK/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1055ba8d3b0f289481a44e5dafdd5f17d8f1ab04d3daada7b0363ae600ef7744",
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

Occurrence: `result:e3bfdf70-914b-b3fa-07d8-ed26e9f8bec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characterRegularAverageMatrix_eq_outer
    (chi : PrimitiveDirichletCharacter) :
    characterRegularAverageMatrix chi =
      Matrix.vecMulVec chi.characterVector (star chi.characterVector) := by
  classical
  ext x y
  rw [characterRegularAverageMatrix_apply]
  simp only [Matrix.vecMulVec_apply, characterVector_apply, Pi.star_apply,
    map_mul, Complex.star_def]
  have normalizationReal :
      conj (chi.characterNormalization : ℂ) =
        (chi.characterNormalization : ℂ) := by simp
  rw [normalizationReal]
  have normalizationProduct :
      (chi.characterNormalization : ℂ) *
          (chi.characterNormalization : ℂ) =
        (((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) := by
    exact_mod_cast (by
      simpa [pow_two, one_div] using chi.characterNormalization_sq)
  rw [← normalizationProduct]
  ring

/-- The orthogonal rank-one projector onto the character channel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c04ef31dd5a0f1df53a9b5dd9264f936db3c2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
