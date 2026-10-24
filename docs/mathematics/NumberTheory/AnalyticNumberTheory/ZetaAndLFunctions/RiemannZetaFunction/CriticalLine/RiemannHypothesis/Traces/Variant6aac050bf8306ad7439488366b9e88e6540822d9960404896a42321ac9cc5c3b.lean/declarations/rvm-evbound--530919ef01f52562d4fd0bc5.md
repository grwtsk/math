# rvm_evBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69edbb47e546d3d15e15be67cc1cce5684e873d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6aac050bf8306ad7439488366b9e88e6540822d9960404896a42321ac9cc5c3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a861c2de-04ab-f269-1d5a-3c925037e3bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:429b3234-78a8-8cee-d2ef-7aa3e943f960",
  "kind": "lemma",
  "lexical_name": "rvm_evBound",
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
  "slug": "rvm-evbound--530919ef01f52562d4fd0bc5",
  "source": {
    "blob": "69edbb47e546d3d15e15be67cc1cce5684e873d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant6aac050bf8306ad7439488366b9e88e6540822d9960404896a42321ac9cc5c3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530919ef01f52562d4fd0bc5adb495241901e4652eb7f3ec646057b6affb90b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant6aac050bf8306ad7439488366b9e88e6540822d9960404896a42321ac9cc5c3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:429b3234-78a8-8cee-d2ef-7aa3e943f960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rvm_evBound {Z : ZeroConfig} (hR : RiemannVonMangoldt Z) :
    EvBound (fun T => (Z.N T (2 * T) : ℝ) - T * ell1 T / (2 * π)) l := by
  obtain ⟨C, T₀, hC⟩ := hR.main
  refine ⟨2 * max C 1, by positivity, max T₀ (4 * π ^ 2), fun T hT => ?_⟩
  have hT₀ : T₀ ≤ T := (le_max_left _ _).trans hT
  have hT4 : 4 * π ^ 2 ≤ T := (le_max_right _ _).trans hT
  have hπ := Real.pi_pos
  have hT0 : 0 < T := lt_of_lt_of_le (by positivity) hT4
  have h1 := hC T hT₀
  have h2 : T / (2 * π) * ell1 T = T * ell1 T / (2 * π) := by ring
  rw [h2] at h1
  -- log T ≤ 2 l T  ⟺  log T ≤ 2 log T − 2 log(2π)  ⟺  2 log (2π) ≤ log T ⟺ (2π)² ≤ T
  have hl : Real.log T ≤ 2 * l T := by
    unfold l
    rw [Real.log_div hT0.ne' (by positivity)]
    have : Real.log ((2 * π) ^ 2) ≤ Real.log T :=
      Real.log_le_log (by positivity) (by nlinarith only [hT4])
    rw [Real.log_pow] at this
    push_cast at this
    linarith only [this]
  have hlog0 : 0 ≤ Real.log T := Real.log_nonneg (by nlinarith only [hT4, hπ, Real.pi_gt_three])
  calc |(Z.N T (2 * T) : ℝ) - T * ell1 T / (2 * π)| ≤ C * Real.log T := h1
    _ ≤ max C 1 * Real.log T := mul_le_mul_of_nonneg_right (le_max_left _ _) hlog0
    _ ≤ max C 1 * (2 * l T) := mul_le_mul_of_nonneg_left hl (by positivity)
    _ = 2 * max C 1 * l T := by ring

/-- **`Facts` for the concrete data.**  Inputs: `P.Valid`; `PaperInputs Z` (only H-RvM, H-Γ,
H-cheb, H-MV are used); the taper facts eventually (`LocalHypsEventually`).  The §5 sub-results are
proved elsewhere in the repository. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant6aac050bf8306ad7439488366b9e88e6540822d9960404896a42321ac9cc5c3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Traces/Variant6aac050bf8306ad7439488366b9e88e6540822d9960404896a42321ac9cc5c3b.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69edbb47e546d3d15e15be67cc1cce5684e873d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
