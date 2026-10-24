# characterRegularAverageMatrix_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14b604a0-2155-63c2-363a-547788a7aa58",
  "kind": "theorem",
  "lexical_name": "characterRegularAverageMatrix_apply",
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
  "slug": "characterregularaveragematrix-apply--7bd7bfb5eb236722f7e7e3d5",
  "source": {
    "blob": "3c04ef31dd5a0f1df53a9b5dd9264f936db3c2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 144,
    "path": "GRWTSK/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bd7bfb5eb236722f7e7e3d5e2bbfff6298184683bc83dc55e8ea31dce00d844",
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

Occurrence: `result:14b604a0-2155-63c2-363a-547788a7aa58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem characterRegularAverageMatrix_apply
    (chi : PrimitiveDirichletCharacter)
    (x y : CharacterIndex chi) :
    characterRegularAverageMatrix chi x y =
      (((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) *
        (chi.character x * conj (chi.character y)) := by
  classical
  unfold characterRegularAverageMatrix
  simp only [Matrix.smul_apply, Matrix.sum_apply, rightRegularMatrix_apply,
    smul_eq_mul]
  rw [Finset.sum_eq_single (x⁻¹ * y)]
  · rw [if_pos]
    · simp only [mul_one]
      exact congrArg
        (((((Fintype.card (CharacterIndex chi) : ℝ)⁻¹ : ℝ) : ℂ) * ·))
        (chi.conj_character_inv_mul x y)
    · simp
  · intro g _ different
    rw [if_neg]
    · simp
    · intro equality
      apply different
      calc
        g = x⁻¹ * (x * g) := by simp
        _ = x⁻¹ * y := by rw [equality]
  · simp

/-- The regular average is exactly the outer-product matrix of the normalized
character vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CharacterProjector/Variante20313c610169b4d6fa59d294dc3ab205a96e7be17cbedf883507d993c807e9f.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c04ef31dd5a0f1df53a9b5dd9264f936db3c2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
