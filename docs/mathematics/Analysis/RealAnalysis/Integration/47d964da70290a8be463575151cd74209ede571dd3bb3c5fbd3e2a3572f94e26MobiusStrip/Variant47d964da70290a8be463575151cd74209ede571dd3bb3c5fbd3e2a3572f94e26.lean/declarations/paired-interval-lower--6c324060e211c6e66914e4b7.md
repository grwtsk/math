# paired_interval_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc4de0a458dddc50707e33b265f51619135e3023",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b59265d-2629-6401-3655-592742cc1ad1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41c0cf65-a9da-5edf-e8bb-128f00c4ea26",
  "kind": "theorem",
  "lexical_name": "paired_interval_lower",
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
  "slug": "paired-interval-lower--6c324060e211c6e66914e4b7",
  "source": {
    "blob": "cc4de0a458dddc50707e33b265f51619135e3023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 278,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c324060e211c6e66914e4b73e56dcffd5d900c264ed25d93d6a2c9dd571ea2b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41c0cf65-a9da-5edf-e8bb-128f00c4ea26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paired_interval_lower (T : ℝ) (m d : ℕ) (hT : 20 ≤ T)
    (hmlo : Real.exp (T-1/4) ≤ (m:ℝ)) (hmhi : (m:ℝ) ≤ Real.exp (T-1/8))
    (hdlo : Real.exp (T-1/4) ≤ (d:ℝ)) (hdhi : (d:ℝ) ≤ Real.exp (T-1/8)) :
    T^8/(23592960 * Real.sqrt ((m*d : ℕ) : ℝ)) ≤
      integratedKernel T m d - integratedKernel T m (2*d) := by
  have hm0 : 0 < (m:ℝ) := (Real.exp_pos _).trans_le hmlo
  have hd0 : 0 < (d:ℝ) := (Real.exp_pos _).trans_le hdlo
  have hml := (Real.le_log_iff_exp_le hm0).2 hmlo
  have hmh := (Real.log_le_iff_le_exp hm0).2 hmhi
  have hdl := (Real.le_log_iff_exp_le hd0).2 hdlo
  have hdh := (Real.log_le_iff_le_exp hd0).2 hdhi
  have hprod : Real.log ((m*d : ℕ) : ℝ) = Real.log m + Real.log d := by
    rw [Nat.cast_mul, Real.log_mul hm0.ne' hd0.ne']
  apply paired_strip_lower T (2*T-Real.log ((m*d : ℕ) : ℝ)) m d (by linarith)
  · rw [hprod]; linarith
  · rw [hprod]; linarith
  · exact (sq_le_exp_lower T hT).trans hmlo
  · exact (sq_le_exp_lower T hT).trans hdlo
  · ring

/-- The kernel is exactly the remaining outer pairing of the original signed average. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc4de0a458dddc50707e33b265f51619135e3023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
