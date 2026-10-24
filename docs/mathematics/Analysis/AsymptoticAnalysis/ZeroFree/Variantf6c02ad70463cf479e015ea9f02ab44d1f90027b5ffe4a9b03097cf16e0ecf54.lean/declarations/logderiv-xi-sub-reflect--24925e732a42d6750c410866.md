# logDeriv_xi_sub_reflect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8fd253d-8539-65c8-e716-3abfd6b8068b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f93b81ab-95cb-16cc-53a9-e6fe53255e50",
  "kind": "theorem",
  "lexical_name": "logDeriv_xi_sub_reflect",
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
  "slug": "logderiv-xi-sub-reflect--24925e732a42d6750c410866",
  "source": {
    "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1257,
    "line": 1211,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24925e732a42d6750c41086644fc1e2dcdd87137fef6a08b06f65ae3e2daace4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f93b81ab-95cb-16cc-53a9-e6fe53255e50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1211–1257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_xi_sub_reflect {s : ℂ} (hxi : xi s ≠ 0) :
    logDeriv xi s - logDeriv xi (reflect s)
      = ∑' ρ : zetaZeroConfig.carrier, (zeroMult ρ : ℂ) * wt s ρ := by
  by_cases hs : s.re = 1 / 2
  · -- s = reflect s and the weight vanishes identically
    have hsr : reflect s = s := by
      apply Complex.ext <;> norm_num [reflect, hs]
    have hwt : ∀ w, wt s w = 0 := fun w => by simp [wt, hsr]
    simp [hsr, hwt]
  obtain ⟨Cg, hCg, R, hR⟩ := Zeta23.WeilEF.good_heights
  have hRb : ∀ j : ℕ, (j : ℝ) + 7 ≤ R j ∧ R j ≤ (j : ℝ) + 8 := fun j => ⟨(hR j).1, (hR j).2.1⟩
  have hgood : ∀ j : ℕ, ∀ p : ℂ, (p.im = R j ∨ p.im = -R j) → 1 / 2 ≤ p.re → p.re ≤ 2 →
      riemannZeta p ≠ 0 ∧ ‖logDeriv riemannZeta p‖ ≤ Cg * (Real.log ((j : ℝ) + 10)) ^ 2 :=
    fun j => (hR j).2.2
  have hZex : ∀ j : ℕ, ∃ Z : Finset ℂ,
      ((Z : Set ℂ) = {ρ : ℂ | IsNontrivialZero ρ ∧ -R j < ρ.im ∧ ρ.im < R j}) := by
    intro j
    have hfin : {ρ : ℂ | IsNontrivialZero ρ ∧ -R j < ρ.im ∧ ρ.im < R j}.Finite :=
      (zetaSeam.finite_window (-R j) (R j)).subset (fun ρ ⟨h1, h2, h3⟩ => ⟨h1, h2, h3.le⟩)
    exact ⟨hfin.toFinset, hfin.coe_toFinset⟩
  choose Z hZ using hZex
  have hlim := zero_sum_limit_gen (summable_wt hxi) hRb hZ
  have hI := tendsto_rectangleIntegral s hCg hRb hgood
  have hev : ∀ᶠ j : ℕ in atTop,
      RectangleIntegral' (fun p => wt s p * logDeriv xi p) (zc (R j)) (wc (R j))
        = (∑ ρ ∈ Z j, (zeroMult ρ : ℂ) * wt s ρ) - logDeriv xi s + logDeriv xi (reflect s) := by
    filter_upwards [eventually_ge_atTop (Nat.ceil ‖s‖)] with j hj
    have hRj : ‖s‖ + 2 ≤ R j := by
      have h1 := (hRb j).1
      have h2 : (⌈‖s‖⌉₊ : ℝ) ≤ j := by exact_mod_cast hj
      linarith [Nat.le_ceil ‖s‖]
    obtain ⟨Z', hZ', hid⟩ := square_identity hxi hs hRj (fun p hp h1 h2 => (hgood j p hp h1 h2).1)
    have : Z' = Z j := Finset.coe_injective (hZ'.trans (hZ j).symm)
    rw [← this]
    exact hid
  have h2 : Tendsto (fun j => (∑ ρ ∈ Z j, (zeroMult ρ : ℂ) * wt s ρ) - logDeriv xi s
      + logDeriv xi (reflect s)) atTop (𝓝 0) := hI.congr' hev
  have h3 : Tendsto (fun j => (∑ ρ ∈ Z j, (zeroMult ρ : ℂ) * wt s ρ) - logDeriv xi s
      + logDeriv xi (reflect s)) atTop
      (𝓝 ((∑' ρ : zetaZeroConfig.carrier, (zeroMult ρ : ℂ) * wt s ρ) - logDeriv xi s
        + logDeriv xi (reflect s))) :=
    (hlim.sub_const _).add_const _
  have := tendsto_nhds_unique h2 h3
  linear_combination this

/-! ## §F. Real parts: the partial-fraction formula for Re ξ′/ξ, and positivity -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean#L1211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
