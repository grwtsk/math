# sum_PrimePow_eq_sum_sum'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c70e9d4de7e8d454df1a5840334ef3e0dcbf777",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 336,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f30d984-3b98-8690-6e16-c1f60c44db63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:caf1fd66-8b1b-e748-b798-f202fe7cad0c",
  "kind": "theorem",
  "lexical_name": "sum_PrimePow_eq_sum_sum'",
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
  "slug": "sum-primepow-eq-sum-sum--c271eef9be5aaf9253f7d899",
  "source": {
    "blob": "0c70e9d4de7e8d454df1a5840334ef3e0dcbf777",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 336,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c271eef9be5aaf9253f7d899879ba1fb5648db56068f9e1b6a81d99919530d34",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:caf1fd66-8b1b-e748-b798-f202fe7cad0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_PrimePow_eq_sum_sum' {R : Type*} [AddCommMonoid R] (f : ℕ → R) {x : ℝ} (hx : 0 ≤ x)
  {N : ℕ} (hN : ⌊log x / log 2⌋₊ ≤ N) :
    ∑ n ∈ Ioc 0 ⌊x⌋₊ with IsPrimePow n, f n
      = ∑ k ∈ Icc 1 N, ∑ p ∈ Ioc 0 ⌊x ^ ((1 : ℝ) / k)⌋₊ with p.Prime, f (p ^ k) := by
  trans ∑ ⟨k, p⟩ ∈ Icc 1 N ×ˢ (Ioc 0 ⌊x⌋₊).filter Nat.Prime
    with p ≤ ⌊x ^ (k : ℝ)⁻¹⌋₊, f (p ^ k)
  · refine (sum_bij (i := fun ⟨k, p⟩ _ ↦ p ^ k) ?_ ?_ ?_ ?_).symm
    · simp +contextual [hx, rpow_nonneg, le_floor_iff, ← pos_iff_ne_zero, Prime.isPrimePow,
        one_le_iff_ne_zero, le_rpow_inv_iff_of_pos, isPrimePow_pow_iff, prime_iff]
    · simp +contextual only [hx, rpow_nonneg, le_floor_iff, mem_filter, mem_product, mem_Icc,
        one_le_iff_ne_zero, pos_iff_ne_zero, mem_Ioc, and_imp, Prod.forall, Prod.mk.injEq]
      intro k₁ p₁ hk₁ _ _ _ hp₁ _ k₂ p₂ hk₂ _ _ _ hp₂ _ H
      exact (hp₁.pow_inj' hp₂ hk₁ hk₂ H).symm
    · simp +contextual only [mem_filter, mem_Ioc, hx, le_floor_iff, and_assoc, rpow_nonneg,
        mem_product, mem_Icc, succ_le_iff, exists_prop, Prod.exists, exists_and_left, and_imp]
      rintro b _ hbx ⟨p, k, hp, hk₀, rfl⟩
      rw [cast_pow] at hbx
      refine ⟨k, hk₀, (le_floor ?_).trans hN, p, hp.nat_prime.pos, ?_, hp.nat_prime, ?_, rfl⟩
      · rw [le_div_iff₀ (log_pos (by norm_num)), ← Real.log_pow]
        gcongr
        apply (LE.le.trans ?_ hbx)
        exact pow_le_pow_left₀ (by norm_num) (mod_cast hp.nat_prime.two_le) _
      · exact (le_self_pow₀ (mod_cast hp.nat_prime.one_le) hk₀.ne').trans hbx
      · simp_all [le_rpow_inv_iff_of_pos]
    · simp
  · rw [sum_filter, sum_product]
    refine sum_congr rfl fun k _ ↦ ?_
    simp only [sum_ite, not_le, sum_const_zero, add_zero]
    congr 1
    ext p
    simp only [mem_filter, mem_Ioc]
    refine ⟨fun _ ↦ (by simp_all), fun h ↦ ?_⟩
    simp_all only [mem_Icc, one_div, true_and, and_true]
    grw [h.1.2, floor_le_floor]
    apply rpow_le_self_of_one_le _ (by bound)
    have := one_le_floor_iff _ |>.mp <| le_trans (one_le_cast.mp h.2.one_le) h.1.2
    contrapose! this
    apply rpow_lt_one hx this (by bound)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant074796f7737b6d08e00f07240e4436349e99a9e033cfc4128b96327bdcff8625.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c70e9d4de7e8d454df1a5840334ef3e0dcbf777` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
