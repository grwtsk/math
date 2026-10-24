# sum_mul_div_add_sum_mul_div_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb6ec206-a7e2-2cad-071e-1da537894e11",
  "kind": "theorem",
  "lexical_name": "sum_mul_div_add_sum_mul_div_eq_mul",
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
  "slug": "sum-mul-div-add-sum-mul-div-eq-mul--a1ed3fc785679f0eaf32eedb",
  "source": {
    "blob": "f4c6859663b5b9fb454c7f509fed5ad6dcf4c297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 209,
    "path": "GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1ed3fc785679f0eaf32eedb27461138cac7c3d5270ed998ef5ed256d4026c52",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb6ec206-a7e2-2cad-071e-1da537894e11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mul_div_add_sum_mul_div_eq_mul (p q : ℕ) [hp : Fact p.Prime] (hq0 : (q : ZMod p) ≠ 0) :
    ∑ a in Ico 1 (p / 2).succ, a * q / p + ∑ a in Ico 1 (q / 2).succ, a * p / q =
    p / 2 * (q / 2) := by
  have hswap :
    ((Ico 1 (q / 2).succ ×ˢ Ico 1 (p / 2).succ).filter fun x : ℕ × ℕ => x.2 * q ≤ x.1 * p).card =
      ((Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ).filter fun x : ℕ × ℕ =>
        x.1 * q ≤ x.2 * p).card :=
    card_congr (fun x _ => Prod.swap x)
      (fun ⟨_, _⟩ => by
        simp (config := { contextual := true }) only [mem_filter, and_self_iff, Prod.swap_prod_mk,
          forall_true_iff, mem_product])
      (fun ⟨_, _⟩ ⟨_, _⟩ => by
        simp (config := { contextual := true }) only [Prod.mk.inj_iff, eq_self_iff_true,
          and_self_iff, Prod.swap_prod_mk, forall_true_iff])
      fun ⟨x₁, x₂⟩ h => ⟨⟨x₂, x₁⟩, by
        revert h
        simp (config := { contextual := true }) only [mem_filter, eq_self_iff_true, and_self_iff,
          exists_prop_of_true, Prod.swap_prod_mk, forall_true_iff, mem_product]⟩
  have hdisj :
    Disjoint ((Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ).filter fun x : ℕ × ℕ => x.2 * p ≤ x.1 * q)
      ((Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ).filter fun x : ℕ × ℕ => x.1 * q ≤ x.2 * p) := by
    apply disjoint_filter.2 fun x hx hpq hqp => ?_
    have hxp : x.1 < p := lt_of_le_of_lt
      (show x.1 ≤ p / 2 by simp_all only [lt_succ_iff, mem_Ico, mem_product])
      (Nat.div_lt_self hp.1.pos (by decide))
    have : (x.1 : ZMod p) = 0 := by
      simpa [hq0] using congr_arg ((↑) : ℕ → ZMod p) (le_antisymm hpq hqp)
    apply_fun ZMod.val at this
    rw [val_cast_of_lt hxp, val_zero] at this
    simp only [this, nonpos_iff_eq_zero, mem_Ico, one_ne_zero, false_and_iff, mem_product] at hx
  have hunion :
      (((Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ).filter fun x : ℕ × ℕ => x.2 * p ≤ x.1 * q) ∪
        (Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ).filter fun x : ℕ × ℕ => x.1 * q ≤ x.2 * p) =
      Ico 1 (p / 2).succ ×ˢ Ico 1 (q / 2).succ :=
    Finset.ext fun x => by
      have := le_total (x.2 * p) (x.1 * q)
      simp only [mem_union, mem_filter, mem_Ico, mem_product]
      tauto
  rw [sum_Ico_eq_card_lt, sum_Ico_eq_card_lt, hswap, ← card_disjoint_union hdisj, hunion,
    card_product]
  simp only [card_Ico, tsub_zero, succ_sub_succ_eq_sub]
#align zmod.sum_mul_div_add_sum_mul_div_eq_mul ZMod.sum_mul_div_add_sum_mul_div_eq_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussEisensteinLemmas/Variantaa816ac433040feb48e63bddbfec69b947f87d2e852667e37f472350d0361631.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4c6859663b5b9fb454c7f509fed5ad6dcf4c297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
