# exterior_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:249babf2-bb0b-1d56-8b4f-6156a2b4d932",
  "kind": "theorem",
  "lexical_name": "exterior_norm_le",
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
  "slug": "exterior-norm-le--c2e06c6e67e293710c267907",
  "source": {
    "blob": "5eef67adede891c7960520ebfeaf53c801e89eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 222,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2e06c6e67e293710c267907be0b8bc1284c189794a1f8fdfbb6a4a7c8630ad9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:249babf2-bb0b-1d56-8b4f-6156a2b4d932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exterior_norm_le (A c d t : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) (ht : 1 ≤ |t|) :
    ‖exteriorDensity A c t‖ ≤ exteriorTailNumerator A c d / |t|^6 := by
  have hs := actualExteriorPrimeSeries_norm_le A c d t hd hdc
  have hk := bumpMellinWeight_on_line_norm_le A c t hA (by linarith) ht
  rw [← actualInitialPrimeMellin_eq_bumpMellinWeight hA] at hk
  unfold exteriorDensity
  rw [norm_mul]
  calc
    _ ≤ ((204288:ℝ)^2/sourceNormalization A*(1+c^2)*(1+(c-1)^2)*
        Real.exp ((2*c-1)*A)/(A^9*|t|^6)) *
        (actualRightLineMass d * Real.exp (-2*(c-d)*A)) := by
      exact mul_le_mul hk hs (norm_nonneg _) (by
        have := actualRightLineMass_nonneg d
        positivity)
    _ = _ := by unfold exteriorTailNumerator; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variant8eeb75e7cf2f6c1d03d27b303c7ebeb95acaf5e4836c19b45c64a4c424c0bd31.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eef67adede891c7960520ebfeaf53c801e89eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
