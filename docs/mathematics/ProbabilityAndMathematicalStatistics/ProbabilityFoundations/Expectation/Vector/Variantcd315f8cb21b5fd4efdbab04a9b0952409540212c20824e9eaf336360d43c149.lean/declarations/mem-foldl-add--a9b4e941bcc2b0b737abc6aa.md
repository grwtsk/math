# mem_foldl_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da5a10d50af788618bea7e02100745578c59327d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c265c021-5566-1f15-30ee-f707b94d2e8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5cfab39-3337-1d72-14ff-7b0732dd1b99",
  "kind": "theorem",
  "lexical_name": "mem_foldl_add",
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
  "slug": "mem-foldl-add--a9b4e941bcc2b0b737abc6aa",
  "source": {
    "blob": "da5a10d50af788618bea7e02100745578c59327d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 276,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9b4e941bcc2b0b737abc6aa0a1772104d7587cf588d357ec80b0d936a8a9df6",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5cfab39-3337-1d72-14ff-7b0732dd1b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mem_foldl_add {acc : AffineForm} {acc_r : ℝ}
    {v : AffineVector} {v_real : List ℝ}
    (eps : AffineForm.NoiseAssignment)
    (hacc : AffineForm.mem_affine acc eps acc_r)
    (hlen : v_real.length = v.length)
    (hmem : ∀ i (hi_v : i < v.length) (hi_r : i < v_real.length),
            AffineForm.mem_affine v[i] eps v_real[i]) :
    AffineForm.mem_affine (v.foldl AffineForm.add acc) eps (acc_r + v_real.sum) := by
  induction v generalizing acc acc_r v_real with
  | nil =>
    cases v_real with
    | nil =>
      simp only [List.foldl_nil, List.sum_nil, add_zero]
      exact hacc
    | cons h t => simp at hlen
  | cons h t ih =>
    cases v_real with
    | nil => simp at hlen
    | cons h_r t_r =>
      simp only [List.foldl_cons, List.sum_cons]
      simp only [List.length_cons, add_left_inj] at hlen
      -- Apply IH with acc' = add acc h, acc_r' = acc_r + h_r
      have hmem_h : AffineForm.mem_affine h eps h_r := by
        have := hmem 0 (by simp) (by simp)
        simp at this
        exact this
      have hacc' := AffineForm.mem_add hacc hmem_h
      have hmem' : ∀ i (hi_v : i < t.length) (hi_r : i < t_r.length),
                   AffineForm.mem_affine t[i] eps t_r[i] := by
        intro i hi_v hi_r
        have := hmem (i + 1) (by simp; omega) (by simp; omega)
        simp at this
        exact this
      have ih_result := ih hacc' hlen hmem'
      -- Need: (acc_r + h_r) + t_r.sum = acc_r + (h_r + t_r.sum)
      convert ih_result using 1
      ring

/-- Sum is sound -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5a10d50af788618bea7e02100745578c59327d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
