# characterRegularAverageMatrix_eq_outer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:698c69e6-4fa0-bb5c-a785-75c15d27f734",
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
  "slug": "characterregularaveragematrix-eq-outer--c8f3d74bdedee5ed927c2ed4",
  "source": {
    "blob": "3db1c06485b240ba7f6cceadba441518726200e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 97,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8f3d74bdedee5ed927c2ed40e0c243803bd02d13c8b4e6e57f8d6ebe73c53b1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:698c69e6-4fa0-bb5c-a785-75c15d27f734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–119.

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

[Verification target and public status](../../../../../../../../../verification/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/HilbertSpaces/OrthogonalProjections/FiniteCharacterAndArithmeticInterfaces/Variant200984f72047f72f/OrthogonalCharacterProjector.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3db1c06485b240ba7f6cceadba441518726200e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
