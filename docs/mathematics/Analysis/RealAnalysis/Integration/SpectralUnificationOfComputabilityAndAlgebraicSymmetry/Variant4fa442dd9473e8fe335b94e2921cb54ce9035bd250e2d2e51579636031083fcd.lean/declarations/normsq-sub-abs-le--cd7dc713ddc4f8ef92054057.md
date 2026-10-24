# normSq_sub_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70cc7d17-e342-f951-5145-e726a2e0e6d6",
  "kind": "theorem",
  "lexical_name": "normSq_sub_abs_le",
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
  "slug": "normsq-sub-abs-le--cd7dc713ddc4f8ef92054057",
  "source": {
    "blob": "2b5a8de66c0ee85990d8e72c350fc43024183922",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4fa442dd9473e8fe335b94e2921cb54ce9035bd250e2d2e51579636031083fcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd7dc713ddc4f8ef920540574e545f6f068e21d8536237f56e74f8e16f7e4af8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4fa442dd9473e8fe335b94e2921cb54ce9035bd250e2d2e51579636031083fcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70cc7d17-e342-f951-5145-e726a2e0e6d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normSq_sub_abs_le (z w : ℂ) :
    |Complex.normSq z - Complex.normSq w| ≤ ‖z - w‖ * (‖z‖ + ‖w‖) := by
  have heq : Complex.normSq z - Complex.normSq w = (‖z‖ - ‖w‖) * (‖z‖ + ‖w‖) := by
    simp only [Complex.normSq_eq_norm_sq]
    ring
  rw [heq, abs_mul, abs_of_nonneg (add_nonneg (norm_nonneg z) (norm_nonneg w))]
  exact mul_le_mul_of_nonneg_right (abs_norm_sub_norm_le z w)
    (add_nonneg (norm_nonneg z) (norm_nonneg w))

/-- Two normalized weighted magnitudes reproduce the full weight without changing the error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4fa442dd9473e8fe335b94e2921cb54ce9035bd250e2d2e51579636031083fcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4fa442dd9473e8fe335b94e2921cb54ce9035bd250e2d2e51579636031083fcd.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b5a8de66c0ee85990d8e72c350fc43024183922` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
