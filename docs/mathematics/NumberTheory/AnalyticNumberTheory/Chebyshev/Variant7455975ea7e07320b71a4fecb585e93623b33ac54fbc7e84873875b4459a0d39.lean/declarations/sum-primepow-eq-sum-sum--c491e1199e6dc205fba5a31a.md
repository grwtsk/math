# sum_PrimePow_eq_sum_sum'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3e47f50-3057-4717-1efb-bc3d22db2c37",
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
  "slug": "sum-primepow-eq-sum-sum--c491e1199e6dc205fba5a31a",
  "source": {
    "blob": "6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 344,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c491e1199e6dc205fba5a31ab12686102e0794561a24195db96edc7312a96160",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3e47f50-3057-4717-1efb-bc3d22db2c37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–382.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
