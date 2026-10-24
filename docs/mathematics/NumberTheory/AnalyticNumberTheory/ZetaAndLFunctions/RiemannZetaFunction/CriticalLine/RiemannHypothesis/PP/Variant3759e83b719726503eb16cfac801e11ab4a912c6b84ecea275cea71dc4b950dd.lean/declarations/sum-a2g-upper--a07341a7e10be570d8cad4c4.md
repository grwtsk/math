# sum_a2g_upper'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee8ffe11d7c3b3f45bcdd4ab1996dcb657ef18cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/3759e83b719726503eb16cfac801e11ab4a912c6b84ecea275cea71dc4b950dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad67a474-45aa-eb7c-d360-24abfe6bccb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffc8271b-9c2a-d0e5-1e76-7fc9b4a93e92",
  "kind": "theorem",
  "lexical_name": "sum_a2g_upper'",
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
  "slug": "sum-a2g-upper--a07341a7e10be570d8cad4c4",
  "source": {
    "blob": "ee8ffe11d7c3b3f45bcdd4ab1996dcb657ef18cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant3759e83b719726503eb16cfac801e11ab4a912c6b84ecea275cea71dc4b950dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a07341a7e10be570d8cad4c4439921b7fff0d047674118cde076877d2bbb02f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant3759e83b719726503eb16cfac801e11ab4a912c6b84ecea275cea71dc4b950dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffc8271b-9c2a-d0e5-1e76-7fc9b4a93e92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_a2g_upper' (hcheb : Zeta23.ChebyshevMertens) (_hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F =>
      sumA2g p.X F.g ≤ p.L ^ 3 / 6 + C * p.L ^ 2) := by
  obtain ⟨C, hC⟩ := hcheb.cheb2b
  refine ⟨C, 0, fun p F _ _ hF => ?_⟩
  have hX1 : (1:ℝ) ≤ p.X := by linarith [hF.two_le_X]
  -- Σ a_n² g(y_n) ≤ Σ a_n² (L − y_n)
  have h1 : sumA2g p.X F.g ≤ ∑ n ∈ primeRange p.X, (Λ n : ℝ) ^ 2 / n * (p.L - Real.log n) := by
    unfold sumA2g
    refine Finset.sum_le_sum fun n hn => ?_
    refine mul_le_mul_of_nonneg_left ?_ (a2_nonneg n)
    calc F.g (Real.log n) ≤ F.Aphi (Real.log n) := hF.g_le_Aphi _
      _ ≤ max (p.L - |Real.log n|) 0 := hF.Aphi_le _
      _ = p.L - Real.log n := by
          rw [abs_of_nonneg (log_nonneg_of_mem_primeRange hn), max_eq_left]
          have := log_le_of_mem_primeRange hX1 hn
          rw [p.log_X] at this; linarith
  -- = Σ a_n² (log X − log n) = L³/6 + O(L²)  [eq:cheb2]
  have h2 := hC p.X hF.two_le_X
  rw [p.log_X] at h2
  have h3 := (abs_le.mp h2).2
  unfold primeRange at h1
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant3759e83b719726503eb16cfac801e11ab4a912c6b84ecea275cea71dc4b950dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant3759e83b719726503eb16cfac801e11ab4a912c6b84ecea275cea71dc4b950dd.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8ffe11d7c3b3f45bcdd4ab1996dcb657ef18cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
