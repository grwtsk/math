# actualRelativePsiTail_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7f9e5eb-5159-ab3c-b96e-d097ae341e29",
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
  "slug": "actualrelativepsitail-intervalintegrable--3c1fe6ca033754f0fd1aaaf3",
  "source": {
    "blob": "eef436c20324a6d2f48ad9d77d3d747abf8ed27b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant9269e6b546e39f5a29091229c68ab2b2680df17a1e16062566d953af1f4495fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c1fe6ca033754f0fd1aaaf3277400754b914b339d1226b7a1854f0e45482f3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant9269e6b546e39f5a29091229c68ab2b2680df17a1e16062566d953af1f4495fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7f9e5eb-5159-ab3c-b96e-d097ae341e29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–82.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant9269e6b546e39f5a29091229c68ab2b2680df17a1e16062566d953af1f4495fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant9269e6b546e39f5a29091229c68ab2b2680df17a1e16062566d953af1f4495fb.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eef436c20324a6d2f48ad9d77d3d747abf8ed27b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
