# dampedMertensSource_half_sq_integral_le_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78e11d07-cba9-31bd-df4b-8f5e175a5c37",
  "kind": "theorem",
  "lexical_name": "dampedMertensSource_half_sq_integral_le_four",
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
  "slug": "dampedmertenssource-half-sq-integral-le-four--f1d686f0e11dba821722d5cd",
  "source": {
    "blob": "4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 411,
    "path": "GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1d686f0e11dba821722d5cd828b3eae04ebb135b282ed79d07d37b47ed3f797",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78e11d07-cba9-31bd-df4b-8f5e175a5c37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedMertensSource_half_sq_integral_le_four
    (hM : MertensLogSquareBound) {T : ℝ} (hT : 0 ≤ T) :
    (∫ u in (0 : ℝ)..T, dampedMertensSource (1 / 2) u ^ 2) ≤ 4 := by
  by_cases hT1 : T ≤ 1
  · have hF2 := dampedMertensSource_half_sq_intervalIntegrable 0 T
    calc
      (∫ u in (0 : ℝ)..T, dampedMertensSource (1 / 2) u ^ 2) ≤
          ∫ _u in (0 : ℝ)..T, (1 : ℝ) := by
        apply intervalIntegral.integral_mono_on hT hF2 intervalIntegrable_const
        intro u hu
        have habs := dampedMertensSource_half_abs_le_one u
        have hsq := (sq_le_sq₀ (abs_nonneg _) zero_le_one).2 habs
        simpa only [sq_abs, one_pow] using hsq
      _ = T := by simp
      _ ≤ 4 := by linarith
  · have h1T : 1 ≤ T := le_of_not_ge hT1
    have hadd := intervalIntegral.integral_add_adjacent_intervals
      (dampedMertensSource_half_sq_intervalIntegrable 0 1)
      (dampedMertensSource_half_sq_intervalIntegrable 1 T)
    rw [← hadd]
    linarith [dampedMertensSource_half_sq_integral_zero_one_le,
      dampedMertensSource_half_sq_tail_le_three hM h1T]

/-- Conditional formal boundary payment.  The only non-native premise is the
displayed logarithmic Mertens estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LogarithmicMertensBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LogarithmicMertensBoundary.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b4a5f2f8bb5f822f55f3d75083c8da8ac214c22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
