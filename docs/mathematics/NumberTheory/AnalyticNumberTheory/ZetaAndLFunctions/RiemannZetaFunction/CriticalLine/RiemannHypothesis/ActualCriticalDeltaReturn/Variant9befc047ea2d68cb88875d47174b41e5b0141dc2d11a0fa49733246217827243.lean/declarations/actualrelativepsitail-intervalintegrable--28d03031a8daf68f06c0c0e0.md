# actualRelativePsiTail_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e799aa89-0fab-1aae-c6e9-0db08545a054",
  "kind": "theorem",
  "lexical_name": "actualRelativePsiTail_intervalIntegrable",
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
  "slug": "actualrelativepsitail-intervalintegrable--28d03031a8daf68f06c0c0e0",
  "source": {
    "blob": "32be60e2dcdafba35751d758ea673f83966e7864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant9befc047ea2d68cb88875d47174b41e5b0141dc2d11a0fa49733246217827243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28d03031a8daf68f06c0c0e0cfec70dcbdcd19b654e8b700ca295edf9838a67a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant9befc047ea2d68cb88875d47174b41e5b0141dc2d11a0fa49733246217827243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e799aa89-0fab-1aae-c6e9-0db08545a054`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRelativePsiTail_intervalIntegrable {l b : ℝ}
    (hl : 0 ≤ l) (hlb : l ≤ b) :
    IntervalIntegrable actualRelativePsiTail volume l b := by
  have hs : uIcc l b ⊆ uIcc (0 : ℝ) b := by
    rw [uIcc_of_le hlb, uIcc_of_le (show 0 ≤ b by linarith)]
    exact Icc_subset_Icc hl le_rfl
  have hc := (tail_representation_ac (show 0 ≤ b by linarith)).mono hs
  have hcc : ContinuousOn
      (fun t => actualRelativePsiTail 0 - ∫ r in 0..t, actualRelativePsiTimeError r)
      (Icc l b) := by simpa only [uIcc_of_le hlb] using hc.continuousOn
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hlb]
  apply hcc.integrableOn_Icc.congr_fun
  · intro t ht
    exact (actualRelativePsiTail_eq_total_sub_primitive (hl.trans ht.1)).symm
  · exact measurableSet_Icc

/-- The actual relative error is L1 before multiplication by either original source jet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant9befc047ea2d68cb88875d47174b41e5b0141dc2d11a0fa49733246217827243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant9befc047ea2d68cb88875d47174b41e5b0141dc2d11a0fa49733246217827243.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32be60e2dcdafba35751d758ea673f83966e7864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
