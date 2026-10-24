# integral_mem_bound_dyadic_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "503299e995e73d1768f22a63316db017b5f817b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40eb0ea2-1dab-ac72-e369-f324faa88d9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:217c35aa-64d5-cfe7-e339-eaf1a36722c5",
  "kind": "theorem",
  "lexical_name": "integral_mem_bound_dyadic_list",
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
  "slug": "integral-mem-bound-dyadic-list--0934eb24cf67cbc8d242528f",
  "source": {
    "blob": "503299e995e73d1768f22a63316db017b5f817b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 348,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0934eb24cf67cbc8d242528fea9e3fa100716e97c65be9ef5a01f02e57229df5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:217c35aa-64d5-cfe7-e339-eaf1a36722c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem integral_mem_bound_dyadic_list (e : Expr) (hsupp : ExprSupportedWithInv e)
    (parts : List IntervalRat) (I : IntervalRat)
    (hcover : ListPartitionCovers parts I)
    (cfg : DyadicConfig) (hprec : cfg.precision ≤ 0)
    (hdomall : listPartitionDomainValid e parts cfg)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) MeasureTheory.volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈
      integratePartitionDyadicList e parts cfg := by
  have hne := hcover.nonempty
  set n := parts.length with hn_def
  have hn : 0 < n := by rw [hn_def]; exact List.length_pos_of_ne_nil hne
  -- Step 1: Split the integral using sum_integral_adjacent_intervals
  set f : ℕ → ℝ := fun k =>
    if hk : k < n then (parts[k]'hk).lo
    else (parts.getLast hne).hi with hf_def
  have hfk : ∀ k (hk : k < n), f k = (parts[k]'hk).lo := by
    intro k hk; simp [hf_def, hk]
  have hfk1 : ∀ k (hk : k < n), f (k + 1) = ((parts[k]'hk).hi : ℝ) := by
    intro k hk
    simp only [hf_def]
    split
    · next hk1 =>
      have := hcover.adjacent k hk1
      exact_mod_cast this.symm
    · next hk1 =>
      have hkn : k + 1 = n := by omega
      -- Goal: ↑(parts.getLast hne).hi = ↑(parts[k]'hk).hi
      congr 1
      have : parts.getLast hne = parts[k]'hk := by
        simp only [List.getLast_eq_getElem]; congr 1; omega
      exact congrArg IntervalRat.hi this
  have hf0 : f 0 = (I.lo : ℝ) := by
    have h := hcover.head_lo
    simp only [List.head_eq_getElem] at h
    simp only [hf_def, hn, ↓reduceDIte]
    exact_mod_cast h
  have hfn : f n = (I.hi : ℝ) := by
    simp only [hf_def, lt_irrefl, ↓reduceDIte]
    exact_mod_cast hcover.last_hi
  have hint_sub : ∀ k (hk : k < n),
      IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume (f k) (f (k + 1)) := by
    intro k hk; rw [hfk k hk, hfk1 k hk]
    apply hInt.mono_set
    simp only [Set.uIcc_of_le (by exact_mod_cast (parts[k]'hk).le :
      ((parts[k]'hk).lo : ℝ) ≤ (parts[k]'hk).hi)]
    simp only [Set.uIcc_of_le (by exact_mod_cast I.le : (I.lo : ℝ) ≤ I.hi)]
    intro x ⟨hxlo, hxhi⟩
    exact ⟨le_trans (by exact_mod_cast lo_le_part_lo parts I hcover k hk) hxlo,
           le_trans hxhi (by exact_mod_cast part_hi_le_hi parts I hcover k hk)⟩
  -- The integral splits as a Finset sum
  have hsplit : ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e =
      ∑ k ∈ Finset.range n,
        ∫ x in (f k)..(f (k + 1)), Expr.eval (fun _ => x) e := by
    conv_lhs => rw [← hf0, ← hfn]
    exact (intervalIntegral.sum_integral_adjacent_intervals (fun k hk => hint_sub k hk)).symm
  rw [hsplit]
  -- Step 2: Convert Finset.sum to List operations for sum_mem_foldl_add
  set integrals := List.ofFn (fun k : Fin n =>
    ∫ x in ((parts[k.1]'k.2).lo : ℝ)..((parts[k.1]'k.2).hi : ℝ),
      Expr.eval (fun _ => x) e) with hintegrals_def
  set bounds := collectBoundsDyadic e parts cfg with hbounds_def
  -- Rewrite the Finset.sum as a List.sum
  have hsum_eq : ∑ k ∈ Finset.range n,
      ∫ x in (f k)..(f (k + 1)), Expr.eval (fun _ => x) e = integrals.sum := by
    rw [hintegrals_def, List.sum_ofFn, Finset.sum_range]
    congr 1; ext ⟨k, hk⟩
    congr 1 <;> [exact hfk k hk; exact hfk1 k hk]
  rw [hsum_eq]
  have hlen : integrals.length = bounds.length := by
    simp only [hintegrals_def, List.length_ofFn, hbounds_def, collectBoundsDyadic, List.length_map]
    exact hn_def
  have hmem_each : ∀ i (hi : i < integrals.length),
      integrals[i] ∈ bounds[i]'(hlen ▸ hi) := by
    intro i hi
    have hi' : i < n := by simpa [hintegrals_def, List.length_ofFn] using hi
    simp only [hintegrals_def, List.getElem_ofFn]
    simp only [hbounds_def, collectBoundsDyadic, List.getElem_map]
    apply integrateInterval1Dyadic_correct e hsupp _ cfg hprec
    · exact hdomall _ (List.getElem_mem hi')
    · apply hInt.mono_set
      simp only [Set.uIcc_of_le (by exact_mod_cast (parts[i]'hi').le :
        ((parts[i]'hi').lo : ℝ) ≤ (parts[i]'hi').hi)]
      simp only [Set.uIcc_of_le (by exact_mod_cast I.le : (I.lo : ℝ) ≤ I.hi)]
      intro x ⟨hxlo, hxhi⟩
      exact ⟨le_trans (by exact_mod_cast lo_le_part_lo parts I hcover i hi') hxlo,
             le_trans hxhi (by exact_mod_cast part_hi_le_hi parts I hcover i hi')⟩
  exact sum_mem_foldl_add hlen hmem_each

/-! ### Bridge lemmas for list-based partition -/

/-- Bridge theorem (lower bound) for arbitrary partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant4bce2fd71f252243967886b67354ae665dc47acf72fbedf0411f640a8d7e16f2.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `503299e995e73d1768f22a63316db017b5f817b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
