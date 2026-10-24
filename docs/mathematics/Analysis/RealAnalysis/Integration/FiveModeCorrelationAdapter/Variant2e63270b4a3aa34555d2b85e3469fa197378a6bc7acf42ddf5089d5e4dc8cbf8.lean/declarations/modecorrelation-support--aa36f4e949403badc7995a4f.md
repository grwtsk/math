# modeCorrelation_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e14b607-b2f0-04b5-4d2a-823800bd8458",
  "kind": "theorem",
  "lexical_name": "modeCorrelation_support",
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
  "slug": "modecorrelation-support--aa36f4e949403badc7995a4f",
  "source": {
    "blob": "0d9a071e72df9dc3982087218e596d7c9c6d74da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa36f4e949403badc7995a4fee0961f7787d13f162d2052aefbeff1816d5dcce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e14b607-b2f0-04b5-4d2a-823800bd8458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modeCorrelation_support (A t : ℝ) (i j : Fin 5) (hA : 0 < A)
    (ht : 2*A ≤ |t|) : modeCorrelation A i j t = 0 := by
  by_cases hs : 2*A < |t|
  · unfold modeCorrelation
    apply integral_eq_zero_of_ae
    filter_upwards [] with x
    change normalizedMode A i x * normalizedMode A j (x-t) = 0
    by_cases hx : A < |x|
    · rw [normalizedMode_zero_of_abs_gt A x i hx, zero_mul]
    · have hy : A < |x-t| := by
        have hbound : |t| ≤ |x| + |x-t| := by
          calc
            |t| = |x-(x-t)| := by congr 1; ring
            _ ≤ |x| + |x-t| := abs_sub _ _
        linarith [le_of_not_gt hx]
      rw [normalizedMode_zero_of_abs_gt A (x-t) j hy, mul_zero]
  · have he : |t| = 2*A := le_antisymm (le_of_not_gt hs) ht
    rcases le_total t 0 with hn | hp
    · have ht' : t = -(2*A) := by rw [abs_of_nonpos hn] at he; linarith
      rw [ht', modeCorrelation_lower_endpoint A i j hA]
    · have ht' : t = 2*A := by rw [abs_of_nonneg hp] at he; linarith
      rw [ht', modeCorrelation_upper_endpoint A i j hA]

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeCorrelationAdapter/Variant2e63270b4a3aa34555d2b85e3469fa197378a6bc7acf42ddf5089d5e4dc8cbf8.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d9a071e72df9dc3982087218e596d7c9c6d74da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
