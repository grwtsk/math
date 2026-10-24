# zero_sum_limit_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1e38680-3ab5-4189-b093-314cbe370de0",
  "kind": "theorem",
  "lexical_name": "zero_sum_limit_of",
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
  "slug": "zero-sum-limit-of--27359ae563d5cd58e6bb88fb",
  "source": {
    "blob": "133d738d698b7cf16c2b9024a42b278b900a3a64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 272,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27359ae563d5cd58e6bb88fb1d0fdde707f906ec8b32d326e60a1199f87a2474",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1e38680-3ab5-4189-b093-314cbe370de0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_sum_limit_of {Zset : Set ℂ} (g : ℂ → ℂ) (hsum : Summable (fun ρ : Zset => g ρ))
    {R : ℕ → ℝ} (hRmono : Monotone R) (hRge : ∀ j : ℕ, (j : ℝ) ≤ R j)
    {Z : ℕ → Finset ℂ}
    (hZ : ∀ j : ℕ, ((Z j : Set ℂ) = {ρ : ℂ | ρ ∈ Zset ∧ -R j < ρ.im ∧ ρ.im < R j})) :
    Tendsto (fun j : ℕ => ∑ ρ ∈ Z j, g ρ) atTop (𝓝 (∑' ρ : Zset, g ρ)) := by
  classical
  set G : Zset → ℂ := fun ρ => g ρ with hG
  have hmemZ : ∀ j ρ, ρ ∈ Z j ↔ ρ ∈ Zset ∧ -R j < ρ.im ∧ ρ.im < R j := by
    intro j ρ
    rw [← Finset.mem_coe, hZ j]
    rfl
  set s : ℕ → Finset Zset := fun j => (Z j).subtype (· ∈ Zset) with hsdef
  have hsum_eq : ∀ j, ∑ x ∈ s j, G x = ∑ ρ ∈ Z j, g ρ := by
    intro j
    have h1 := Finset.sum_subtype_eq_sum_filter (s := Z j) (p := (· ∈ Zset)) g
    have h2 : (Z j).filter (· ∈ Zset) = Z j := by
      apply Finset.filter_true_of_mem
      intro ρ hρ
      exact ((hmemZ j ρ).mp hρ).1
    rw [h2] at h1
    rw [← h1]
  have hmono : Monotone s := by
    intro i j hij x hx
    rw [Finset.mem_subtype, hmemZ] at hx ⊢
    obtain ⟨h1, h2, h3⟩ := hx
    have := hRmono hij
    exact ⟨h1, by linarith, by linarith⟩
  have hexh : ∀ B : Finset Zset, ∃ j, B ≤ s j := by
    intro B
    set M : ℝ := ∑ x ∈ B, |((x : ℂ)).im| with hM
    have hMle : ∀ x ∈ B, |((x : ℂ)).im| ≤ M := fun x hx =>
      Finset.single_le_sum (f := fun x : Zset => |((x : ℂ)).im|) (fun _ _ => abs_nonneg _) hx
    obtain ⟨j, hj⟩ := exists_nat_gt M
    refine ⟨j, fun x hx => ?_⟩
    rw [Finset.mem_subtype, hmemZ]
    have habs := abs_le.mp (hMle x hx)
    have hRj := hRge j
    exact ⟨x.2, by linarith [habs.1], by linarith [habs.2]⟩
  have hs_tend : Tendsto s atTop atTop := tendsto_atTop_atTop_of_monotone hmono hexh
  have hT : Tendsto (fun S : Finset Zset => ∑ x ∈ S, G x) atTop (𝓝 (∑' x, G x)) := by
    have hHas := hsum.hasSum
    simpa [HasSum] using hHas
  have := hT.comp hs_tend
  refine this.congr (fun j => ?_)
  simp only [Function.comp_apply, hsum_eq]

/-! ## Assembly -/

/-- **Generic full-line identity.**  f entire, logDeriv f (1−s) = −logDeriv f s, all zeros of f
(the set Zset) in the open strip 1−c < Re < c (1/2 < c ≤ 2), good heights with a log² bound for f′/f on
the horizontal segments, a log bound for f′/f on Re s = c, and absolute convergence of the zero sum.
Then  (1/2π) ∫ [H(c+it) + H(1−c−it)]·f′/f(c+it) dt = Σ'_{ρ ∈ Zset} ord_ρ(f)·H(ρ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant37625d6239dc98355a86e402731fe67cbc3db12e915759d484d9c907f731f989.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `133d738d698b7cf16c2b9024a42b278b900a3a64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
