# lemma_20_b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2764,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05916321-e300-33f9-0d09-e3d994eb96a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:953b3953-f6d1-224e-21f3-50090678766f",
  "kind": "theorem",
  "lexical_name": "lemma_20_b",
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
  "slug": "lemma-20-b--4913b15b4fa6daa4bcd3b179",
  "source": {
    "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2809,
    "line": 2764,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4913b15b4fa6daa4bcd3b179182887197fc703cde71ed13012bb9e151f528859",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:953b3953-f6d1-224e-21f3-50090678766f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2764–2809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_20_b {x : ℝ} (hx : x > 6.58) :
    Li x - x / log x > (x - 6.58) / (log x) ^ 2 ∧ (x - 6.58) / (log x) ^ 2 > 0 :=
by
  let f : ℝ → ℝ := fun t ↦ Li t - t / log t
  obtain ⟨c, hc, h_slope⟩ : ∃ c ∈ Set.Ioo (6.58 : ℝ) x,
      deriv f c = (f x - f 6.58) / (x - 6.58) := by
    refine exists_deriv_eq_slope f hx ?_ ?_
    · intro y hy
      exact (hasDerivAt_Li_sub_div_log
        (by rcases Set.mem_Icc.mp hy with ⟨hy₁, hy₂⟩; linarith)).continuousAt.continuousWithinAt
    · intro y hy
      exact (hasDerivAt_Li_sub_div_log
        (by rcases Set.mem_Ioo.mp hy with ⟨hy₁, hy₂⟩; linarith)).differentiableAt.differentiableWithinAt
  have hc_gt_one : 1 < c := by linarith [hc.1]
  have h_deriv_c : deriv f c = 1 / (log c) ^ 2 :=
    (hasDerivAt_Li_sub_div_log hc_gt_one).deriv
  have hx_sub_pos : 0 < x - 6.58 := by linarith
  have hf_diff : f x - f 6.58 = (x - 6.58) / (log c) ^ 2 := by
    have hq : (f x - f 6.58) / (x - 6.58) = 1 / (log c) ^ 2 := by
      linarith
    rw [div_eq_iff hx_sub_pos.ne'] at hq
    rw [hq]
    ring
  have hlogc_pos : 0 < log c := Real.log_pos hc_gt_one
  have hlogx_pos : 0 < log x := Real.log_pos (by linarith)
  have hlog_lt : log c < log x := Real.log_lt_log (by positivity) hc.2
  have hsq_lt : (log c) ^ 2 < (log x) ^ 2 := by
    nlinarith
  have hinv_lt : 1 / (log x) ^ 2 < 1 / (log c) ^ 2 := by
    exact one_div_lt_one_div_of_lt (sq_pos_of_pos hlogc_pos) hsq_lt
  have hmain : (x - 6.58) / (log x) ^ 2 < f x := by
    rw [← sub_pos]
    have hbase : 0 < f 6.58 := by
      simpa [f] using Li_diff_pos_at_6_58
    have hmul : (x - 6.58) / (log x) ^ 2 <
        (x - 6.58) / (log c) ^ 2 := by
      gcongr
    have hfx : f x = f 6.58 + (x - 6.58) / (log c) ^ 2 := by
      linarith
    rw [hfx]
    linarith
  have hpos : 0 < (x - 6.58) / (log x) ^ 2 := by
    positivity
  exact ⟨by simpa [f] using hmain, by simpa using hpos⟩

-- Integrability of Eθ t / log t ^ 2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean#L2764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdccd0a48781b270841d4381607ac6c992b7e0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
