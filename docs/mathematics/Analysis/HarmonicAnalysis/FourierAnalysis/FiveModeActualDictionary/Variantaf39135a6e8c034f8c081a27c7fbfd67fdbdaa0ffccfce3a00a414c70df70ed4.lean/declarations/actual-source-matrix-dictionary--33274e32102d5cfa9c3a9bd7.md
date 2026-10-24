# actual_source_matrix_dictionary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0109c6c-b404-0efd-ea4e-12c8dc63fe56",
  "kind": "theorem",
  "lexical_name": "actual_source_matrix_dictionary",
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
  "slug": "actual-source-matrix-dictionary--33274e32102d5cfa9c3a9bd7",
  "source": {
    "blob": "1b0b406d0ba465563c608b8e6a049434a2865259",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeActualDictionary/Variantaf39135a6e8c034f8c081a27c7fbfd67fdbdaa0ffccfce3a00a414c70df70ed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33274e32102d5cfa9c3a9bd7a013adc5d662eadcf4a6ba9cbc2aaae7bbd81fd0",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeActualDictionary/Variantaf39135a6e8c034f8c081a27c7fbfd67fdbdaa0ffccfce3a00a414c70df70ed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0109c6c-b404-0efd-ea4e-12c8dc63fe56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_matrix_dictionary (A : ℝ) (hA : 1 ≤ A) :
    dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) =
      sourceQuadraticValue explicitSecondDerivative A := by
  rw [matrix_dot_eq_contraction]
  exact geometric_matrix_dictionary A hA (gamma_entry_integrability A (by linarith))

/-- Exact S_A=alpha^T H alpha, with the actual normalized ordinary-square sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeActualDictionary/Variantaf39135a6e8c034f8c081a27c7fbfd67fdbdaa0ffccfce3a00a414c70df70ed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeActualDictionary/Variantaf39135a6e8c034f8c081a27c7fbfd67fdbdaa0ffccfce3a00a414c70df70ed4.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b0b406d0ba465563c608b8e6a049434a2865259` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
