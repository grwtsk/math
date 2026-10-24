# seed_valid_of_windows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7113328c-1f0a-000b-a1ed-4ba0bf3ee852",
  "kind": "theorem",
  "lexical_name": "seed_valid_of_windows",
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
  "slug": "seed-valid-of-windows--717074467d85bc4b0b0777f0",
  "source": {
    "blob": "d050e9e8b474c2e589b725ed79ecc1fdc00f6753",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 105,
    "path": "GRWTSK/Analysis/Complex/RationalTaylorSeedNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:717074467d85bc4b0b0777f0a3873bf6d040fa45ef77197caed425dcc36c2f24",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7113328c-1f0a-000b-a1ed-4ba0bf3ee852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seed_valid_of_windows (bits : ℕ) (a : QComplex) (R δ : ℚ) (j : ℕ)
    (s : GridState) (hR : 0 ≤ R) (hδ : 0 ≤ δ) (h : Windows bits a R δ j s) :
    SeedValid bits (QComplex.polynomial a (j + 1)) (fullError a R δ j) s := by
  have hr := floor_window_scaled _ _ _ _ (seedDen_pos a j) h.2.1
  have hi := floor_window_scaled _ _ _ _ (seedDen_pos a j) h.2.2.1
  have he := error_window_scaled _ _ _ _ (errorDen_pos a R δ j) h.2.2.2
  simp only [cast_scaleZ] at hr hi he
  have hgrid : scaleQ bits ≠ 0 := ne_of_gt (IntegerDyadicTrace.scaleQ_pos bits)
  have herr : scaleQ bits * (fullError a R δ j + roundoffQ bits) =
      scaleQ bits * fullError a R δ j + 2 := by
    unfold roundoffQ
    field_simp [hgrid] <;> ring
  refine ⟨fullError_nonneg a R δ j hR hδ, h.1, ?_, ?_, ?_⟩
  · simpa only [polynomial_identity, decodeQ] using hr
  · simpa only [polynomial_identity, decodeQ] using hi
  · rw [herr, full_error_identity]
    exact he

/-- Literal binding to the original base, exponent, schedule and COMPLETE error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RationalTaylorSeedNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RationalTaylorSeedNormalization.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d050e9e8b474c2e589b725ed79ecc1fdc00f6753` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
