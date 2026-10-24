# normalized_test_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5328be8c-05ca-ee0c-24d3-d4fe79c27711",
  "kind": "theorem",
  "lexical_name": "normalized_test_laplace",
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
  "slug": "normalized-test-laplace--3d5ccf9e07cb77fdbc48dd18",
  "source": {
    "blob": "43e4cce6f7294a97eadda769c9b02626c9ed1954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variant2a81d8e4abf23150a6e7f6820200e729b590d1f17497214025cd3129fb3a7c6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d5ccf9e07cb77fdbc48dd18a03807bf9341c756d38875a4bbd33d9d3089d2d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variant2a81d8e4abf23150a6e7f6820200e729b590d1f17497214025cd3129fb3a7c6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5328be8c-05ca-ee0c-24d3-d4fe79c27711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_test_laplace (A : ℝ) (hA : 0 < A) (z : ℂ) :
    bilateralLaplace (normalizedTest explicitSecondDerivative A) z =
      (Real.sqrt A : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ) *
        (z ^ 2 - 1 / 4) * bumpLaplace ((A : ℂ) * z) := by
  rw [normalized_test_laplace_factor A hA z, scaled_bump_laplace A hA z]
  ring

/-- Genuine complex Fubini gives the actual source's two reflected test transforms for `A > 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variant2a81d8e4abf23150a6e7f6820200e729b590d1f17497214025cd3129fb3a7c6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleSourceDetectionOriginal/Variant2a81d8e4abf23150a6e7f6820200e729b590d1f17497214025cd3129fb3a7c6f.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43e4cce6f7294a97eadda769c9b02626c9ed1954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
