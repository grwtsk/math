# mem_evalTaylorSeries_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 600,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4110663a-4b33-d433-60cb-2b55af0746aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b13d1d8-8e23-2623-63c6-f93aa7934228",
  "kind": "theorem",
  "lexical_name": "mem_evalTaylorSeries_exp",
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
  "slug": "mem-evaltaylorseries-exp--f4de3a8fb1aeea721c9148e9",
  "source": {
    "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 600,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4de3a8fb1aeea721c9148e9a57b7e096bda67c14942bdafb714f36f47096282",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b13d1d8-8e23-2623-63c6-f93aa7934228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 600–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_evalTaylorSeries_exp {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (n : ℕ) :
    ∑ i ∈ Finset.range (n + 1), (1 / i.factorial : ℝ) * x ^ i ∈
      evalTaylorSeries (expTaylorCoeffs n) I := by
  have hmem := mem_evalTaylorSeries hx (expTaylorCoeffs n)
  have hmem' :
      (((List.range (n + 1)).map (fun i => 1 / ratFactorial i)).zipIdx.map
          (fun p => (p.1 : ℝ) * x ^ p.2)).sum ∈
        evalTaylorSeries (expTaylorCoeffs n) I := by
    simpa [expTaylorCoeffs_eq_range_map] using hmem
  convert hmem' using 1
  rw [List.zipIdx_map]
  simp only [List.map_map]
  rw [← list_map_sum_eq_finset_sum (fun i => (1 / i.factorial : ℝ) * x ^ i) (n + 1)]
  -- The two list maps are equal: both compute [1/0! * x^0, 1/1! * x^1, ...]
  -- LHS: (List.range (n+1)).map (fun i => 1/i! * x^i)
  -- RHS: zipIdx.map with Prod.map composition
  -- For List.range, zipIdx gives [(0,0), (1,1), ...], so they match
  congr 1
  symm
  -- The RHS has type (ℚ × ℕ) from Prod.map applied to zipIdx pairs
  -- Step 1: Simplify the composition
  have h1 : (List.range (n + 1)).zipIdx.map
        ((fun p : ℚ × ℕ => (p.1 : ℝ) * x ^ p.2) ∘ Prod.map (fun i => (1 : ℚ) / ratFactorial i) id) =
      (List.range (n + 1)).zipIdx.map (fun p : ℕ × ℕ => ((1 : ℚ) / ratFactorial p.1 : ℝ) * x ^ p.2) := by
    apply List.map_congr_left
    intro ⟨a, b⟩ _
    simp only [Function.comp_apply, Prod.map_apply, id_eq, Rat.cast_div, Rat.cast_one]
  -- Step 2: Use zipIdx_range_map to eliminate zipIdx
  have h2 : (List.range (n + 1)).zipIdx.map (fun p : ℕ × ℕ => ((1 : ℚ) / ratFactorial p.1 : ℝ) * x ^ p.2) =
      (List.range (n + 1)).map (fun i => ((1 : ℚ) / ratFactorial i : ℝ) * x ^ i) := by
    convert zipIdx_range_map (fun a b => ((1 : ℚ) / ratFactorial a : ℝ) * x ^ b) (n + 1) using 2
  -- Step 3: Simplify the casts
  have h3 : (List.range (n + 1)).map (fun i => ((1 : ℚ) / ratFactorial i : ℝ) * x ^ i) =
      (List.range (n + 1)).map (fun i => (1 / i.factorial : ℝ) * x ^ i) := by
    apply List.map_congr_left
    intro i _
    simp [ratFactorial]
  rw [h1, h2, h3]

/-- The iterated derivative of sin is sin, cos, -sin, -cos in a cycle of 4. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean#L600).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c6829e8730fc564ee9c4c8215bb55539bae25a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
