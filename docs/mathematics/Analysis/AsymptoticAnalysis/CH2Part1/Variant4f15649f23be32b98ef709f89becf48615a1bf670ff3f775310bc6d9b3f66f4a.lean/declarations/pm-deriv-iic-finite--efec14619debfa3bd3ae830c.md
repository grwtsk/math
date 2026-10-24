# ϕ_pm_deriv_Iic_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:056c4503-9013-401e-c69f-3360fc6ee17a",
  "kind": "lemma",
  "lexical_name": "ϕ_pm_deriv_Iic_finite",
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
  "slug": "pm-deriv-iic-finite--efec14619debfa3bd3ae830c",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5074,
    "line": 5019,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efec14619debfa3bd3ae830c3846ebe9f1476adfab049d67a6cd781770f60a62",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:056c4503-9013-401e-c69f-3360fc6ee17a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5019–5074.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ϕ_pm_deriv_Iic_finite (ν ε : ℝ) :
    eVariationOn (deriv (ϕ_pm ν ε)) (Set.Iic (-1 : ℝ)) ≠ ⊤ := by
  set g := deriv (ϕ_pm ν ε)
  have hg_zero : ∀ t < -1, g t = 0 := fun t ht ↦ ϕ_pm_deriv_zero_outside ν ε (Or.inl ht)
  apply ne_top_of_le_ne_top (edist_lt_top (g (-1)) 0).ne
  apply iSup_le; rintro ⟨n, u, hu, hu_mem⟩
  by_cases h_any : ∃ i ∈ Finset.range (n + 1), u i = -1
  · let S := (Finset.range (n + 1)).filter (fun i ↦ u i = -1)
    have hS : S.Nonempty :=
      h_any.elim fun i ⟨hi, eq⟩ => ⟨i, Finset.mem_filter.mpr ⟨hi, eq⟩⟩
    let k := S.min' hS
    have hk_mem : k ∈ S := Finset.min'_mem S hS
    have hu_k : u k = -1 := (Finset.mem_filter.mp hk_mem).2
    have hu_lt : ∀ i < k, u i < -1 := by
      intro i hi
      apply lt_of_le_of_ne (hu_mem i)
      intro h_eq
      have hi_S : i ∈ S := Finset.mem_filter.mpr
        ⟨Finset.mem_range.mpr (lt_trans hi (Finset.mem_range.mp (Finset.mem_filter.mp hk_mem).1)), h_eq⟩
      linarith [S.min'_le i hi_S]
    have hk_n : k ≤ n := Nat.le_of_lt_succ (Finset.mem_range.mp (Finset.mem_filter.mp hk_mem).1)
    have hu_eq : ∀ i ≥ k, i ≤ n → u i = -1 := fun i hi h_in ↦
      le_antisymm (hu_mem i) (hu_k ▸ hu hi)
    calc ∑ i ∈ Finset.range n, edist (g (u (i + 1))) (g (u i))
      _ = ∑ i ∈ Finset.range n, if i + 1 = k then edist (g (-1)) 0 else 0 := by
        apply Finset.sum_congr rfl; intro i hi
        have hi_n : i < n := Finset.mem_range.mp hi
        split_ifs with h_eq_k
        · rw [show u (i + 1) = -1 from by rw [h_eq_k, hu_k], hg_zero _ (hu_lt _ (by omega))]
        · by_cases h_lt_k : i + 1 < k
          · rw [hg_zero _ (hu_lt _ h_lt_k), hg_zero _ (hu_lt _ (by omega)), edist_self]
          · rw [show u (i + 1) = -1 from hu_eq _ (by omega) (by omega),
                show u i = -1 from hu_eq _ (by omega) (by omega), edist_self]
      _ ≤ edist (g (-1)) 0 := by
        rw [Finset.sum_ite]; simp only [Finset.sum_const_zero, add_zero]
        let fS := (Finset.range n).filter (fun i ↦ i + 1 = k)
        have h_card : fS.card ≤ 1 :=
          Finset.card_le_one_iff.mpr fun hx hy => by
            have hx := (Finset.mem_filter.mp hx).2
            have hy := (Finset.mem_filter.mp hy).2
            omega
        calc (fS.sum (fun _ ↦ edist (g (-1)) 0))
          _ = fS.card • edist (g (-1)) 0 := Finset.sum_const _
          _ ≤ 1 • edist (g (-1)) 0 := by gcongr
          _ = edist (g (-1)) 0 := by simp
  · have h_lt : ∀ i ≤ n, u i < -1 := fun i hi =>
      lt_of_le_of_ne (hu_mem i) fun h_eq =>
        absurd (⟨i, Finset.mem_range.mpr (Nat.lt_succ_of_le hi), h_eq⟩ : ∃ i ∈ Finset.range (n + 1), u i = -1) h_any
    calc ∑ i ∈ Finset.range n, edist (g (u (i + 1))) (g (u i))
      _ = ∑ i ∈ Finset.range n, 0 := by
        apply Finset.sum_congr rfl; intro i hi
        have hi_n : i < n := Finset.mem_range.mp hi
        rw [hg_zero _ (h_lt (i + 1) hi_n), hg_zero _ (h_lt i hi_n.le), edist_self]
      _ = 0 := by simp
      _ ≤ edist (g (-1)) 0 := zero_le _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L5019).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
