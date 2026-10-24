# partial_cell_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbc35bc3-0102-6055-f27f-fa60c23bd7ef",
  "kind": "theorem",
  "lexical_name": "partial_cell_integral",
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
  "slug": "partial-cell-integral--8f1d50435571af51a8a22877",
  "source": {
    "blob": "6cdcc81d0b30e6acf16e0c497bbd9a26b27fdadb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualVariableColumnDivisor/Variant3698972039f1ae6d9b702cb0e52211ef801285cdd7ee8226abd75e42798803a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1d50435571af51a8a228772baeb041188cdef129b693192993ad96c989c6b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualVariableColumnDivisor/Variant3698972039f1ae6d9b702cb0e52211ef801285cdd7ee8226abd75e42798803a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbc35bc3-0102-6055-f27f-fa60c23bd7ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem partial_cell_integral (A : ℝ) (M : ℕ) (s : ℝ)
    (hM : 1 ≤ M) (hs0 : Real.log (M : ℝ) ≤ s)
    (hs1 : s < Real.log ((M : ℝ) + 1)) :
    (∫ v in Real.log (M : ℝ)..s,
      actualLogColumnPrefix A v * Real.exp (-v / 2)) =
      (∑ n ∈ Finset.Ioc (vaughanCutoff A) M, centeredBeta (vaughanCutoff A) n) *
        2 * (1 / Real.sqrt (M : ℝ) - Real.exp (-s / 2)) := by
  have hM0 : 0 < (M : ℝ) := by exact_mod_cast (by omega : 0 < M)
  have he : (∫ v in Real.log (M : ℝ)..s,
      actualLogColumnPrefix A v * Real.exp (-v / 2)) =
      ∫ v in Real.log (M : ℝ)..s,
        (∑ n ∈ Finset.Ioc (vaughanCutoff A) M, centeredBeta (vaughanCutoff A) n) *
          Real.exp (-v / 2) := by
    apply intervalIntegral.integral_congr_ae
    rw [uIoc_of_le hs0]
    filter_upwards [actualLogColumnPrefix_ae_log_cell A hM] with v hv hm
    rw [hv ⟨hm.1, hm.2.trans hs1.le⟩]
  rw [he, intervalIntegral.integral_const_mul, exp_neg_half_integral _ _ hs0,
    exp_neg_log_half _ hM0]
  ring

/-- The true closed floor inventory and prefix jointly cancel every moving integer jump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualVariableColumnDivisor/Variant3698972039f1ae6d9b702cb0e52211ef801285cdd7ee8226abd75e42798803a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualVariableColumnDivisor/Variant3698972039f1ae6d9b702cb0e52211ef801285cdd7ee8226abd75e42798803a5.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cdcc81d0b30e6acf16e0c497bbd9a26b27fdadb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
