# riemannZeta_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 668,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:985bb40f-e2be-55f8-b2a1-e59daed7c19f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:541f6687-a38e-5473-e005-15f1e01ff0ae",
  "kind": "theorem",
  "lexical_name": "riemannZeta_one_sub",
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
  "slug": "riemannzeta-one-sub--566bd856e44de7d70fce3ae6",
  "source": {
    "blob": "840977beb5e3eaf65ad76ec0ec0d4647db7d0964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 668,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:566bd856e44de7d70fce3ae65d37fb75d6c216e2c18e9a7d800d9d535190e7a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:541f6687-a38e-5473-e005-15f1e01ff0ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannZeta_one_sub {s : ℂ} (hs : ∀ n : ℕ, s ≠ -n) (hs' : s ≠ 1) :
    riemannZeta (1 - s) =
      (2 : ℂ) ^ (1 - s) * (π : ℂ) ^ (-s) * Gamma s * sin (π * (1 - s) / 2) * riemannZeta s := by
  -- Deducing this from the previous formulations is quite involved. The proof uses two
  -- nontrivial facts (the doubling formula and reflection formula for Gamma) and a lot of careful
  -- rearrangement, requiring several non-vanishing statements as input to `field_simp`.
  have hs_ne : s ≠ 0 := by contrapose! hs; rw [hs]; exact ⟨0, by rw [Nat.cast_zero, neg_zero]⟩
  have h_sqrt : (sqrt π : ℂ) ≠ 0 := ofReal_ne_zero.mpr (sqrt_ne_zero'.mpr pi_pos)
  have h_pow : (2 : ℂ) ^ (s - 1) ≠ 0 := by
    rw [Ne.def, cpow_eq_zero_iff, not_and_or]
    exact Or.inl two_ne_zero
  have h_Ga_ne1 : Gamma (s / 2) ≠ 0 := by
    rw [Ne.def, Complex.Gamma_eq_zero_iff]
    contrapose! hs
    obtain ⟨m, hm⟩ := hs
    rw [div_eq_iff (two_ne_zero' ℂ), ← Nat.cast_two, neg_mul, ← Nat.cast_mul] at hm
    exact ⟨m * 2, by rw [hm]⟩
  have h_Ga_eq : Gamma s = Gamma (s / 2) * Gamma ((s + 1) / 2) * (2 : ℂ) ^ (s - 1) / sqrt π := by
    rw [add_div, Complex.Gamma_mul_Gamma_add_half, mul_div_cancel' _ (two_ne_zero' ℂ),
      (by ring : 1 - s = -(s - 1)), cpow_neg, ← div_eq_mul_inv, eq_div_iff h_sqrt,
      div_mul_eq_mul_div₀, div_mul_cancel _ h_pow]
  have h_Ga_ne3 : Gamma ((s + 1) / 2) ≠ 0 := by
    have h_Ga_aux : Gamma s ≠ 0 := Complex.Gamma_ne_zero hs
    contrapose! h_Ga_aux
    rw [h_Ga_eq, h_Ga_aux, mul_zero, zero_mul, zero_div]
  rw [riemannZeta, Function.update_noteq (by rwa [sub_ne_zero, ne_comm] : 1 - s ≠ 0),
    Function.update_noteq hs_ne, riemannCompletedZeta_one_sub, mul_div, eq_div_iff h_Ga_ne1,
    mul_comm, ← mul_div_assoc]
  -- Now rule out case of s = positive odd integer & deduce further non-vanishing statements
  by_cases hs_pos_odd : ∃ n : ℕ, s = 1 + 2 * n
  · -- Note the case n = 0 (i.e. s = 1) works OK here, but only because we have used
    -- `Function.update_noteq` to change the goal; the original goal is genuinely false for s = 1.
    obtain ⟨n, rfl⟩ := hs_pos_odd
    have : (1 - (1 + 2 * (n : ℂ))) / 2 = -↑n := by
      rw [← sub_sub, sub_self, zero_sub, neg_div, mul_div_cancel_left _ (two_ne_zero' ℂ)]
    rw [this, Complex.Gamma_neg_nat_eq_zero, div_zero]
    have : (π : ℂ) * (1 - (1 + 2 * ↑n)) / 2 = ↑(-n : ℤ) * π := by push_cast; field_simp; ring
    rw [this, Complex.sin_int_mul_pi, mul_zero, zero_mul]
  have h_Ga_ne4 : Gamma ((1 - s) / 2) ≠ 0 := by
    rw [Ne.def, Complex.Gamma_eq_zero_iff]
    contrapose! hs_pos_odd
    obtain ⟨m, hm⟩ := hs_pos_odd
    rw [div_eq_iff (two_ne_zero' ℂ), sub_eq_iff_eq_add, neg_mul, ← sub_eq_neg_add,
      eq_sub_iff_add_eq] at hm
    exact ⟨m, by rw [← hm, mul_comm]⟩
  -- At last the main proof
  rw [show sin (↑π * (1 - s) / 2) = π * (Gamma ((1 - s) / 2) * Gamma (s / 2 + 1 / 2))⁻¹ by
      have := congr_arg Inv.inv (Complex.Gamma_mul_Gamma_one_sub ((1 - s) / 2)).symm
      rwa [(by ring : 1 - (1 - s) / 2 = s / 2 + 1 / 2), inv_div,
        div_eq_iff (ofReal_ne_zero.mpr pi_pos.ne'), mul_comm _ (π : ℂ), mul_div_assoc'] at this]
  rw [(by rw [← neg_sub] : (2 : ℂ) ^ (1 - s) = (2 : ℂ) ^ (-(s - 1))), cpow_neg, h_Ga_eq]
  suffices (π : ℂ) ^ ((1 - s) / 2) = (π : ℂ) ^ (-s) * sqrt π * (π : ℂ) ^ (s / 2) by
    rw [this]; field_simp;
    ring_nf; rw [← ofReal_pow, sq_sqrt pi_pos.le]; ring
  simp_rw [sqrt_eq_rpow, ofReal_cpow pi_pos.le, ← cpow_add _ _ (ofReal_ne_zero.mpr pi_pos.ne')]
  congr 1
  push_cast
  field_simp
  ring
#align riemann_zeta_one_sub riemannZeta_one_sub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaFunction/Variant81675cbfaa7b2813b8293f994ba7550da9594e446432975317058094ba06a476.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `840977beb5e3eaf65ad76ec0ec0d4647db7d0964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
