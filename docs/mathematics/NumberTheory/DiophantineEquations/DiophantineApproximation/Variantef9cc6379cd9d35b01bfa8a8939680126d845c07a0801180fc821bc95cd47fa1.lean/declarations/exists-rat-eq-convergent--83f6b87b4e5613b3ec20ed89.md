# exists_rat_eq_convergent'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "905ff2830110628e736743f6804825b693e65939",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 536,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a961096-fc03-0dee-bdc0-b86586c645e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a2050dc-6e1e-6cb0-19b2-111961e55bff",
  "kind": "theorem",
  "lexical_name": "exists_rat_eq_convergent'",
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
  "slug": "exists-rat-eq-convergent--83f6b87b4e5613b3ec20ed89",
  "source": {
    "blob": "905ff2830110628e736743f6804825b693e65939",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 536,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83f6b87b4e5613b3ec20ed8997def73f4487bab8a352b719e987aad6feb9ebb8",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a2050dc-6e1e-6cb0-19b2-111961e55bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rat_eq_convergent' {v : ℕ} (h' : ContfracLegendre.Ass ξ u v) :
    ∃ n, (u / v : ℚ) = ξ.convergent n := by
  -- Porting note: `induction` got in trouble because of the irrelevant hypothesis `h`
  clear h; have h := h'; clear h'
  induction v using Nat.strong_induction_on generalizing ξ u with | h v ih => ?_
  rcases lt_trichotomy v 1 with (ht | rfl | ht)
  · replace h := h.2.2
    simp only [Nat.lt_one_iff.mp ht, Nat.cast_zero, div_zero, tsub_zero, zero_mul,
      cast_zero, inv_zero] at h
    exact False.elim (lt_irrefl _ <| (abs_nonneg ξ).trans_lt h)
  · rw [Nat.cast_one, div_one]
    obtain ⟨_, h₁, h₂⟩ := h
    cases' le_or_lt (u : ℝ) ξ with ht ht
    · use 0
      rw [convergent_zero, Rat.coe_int_inj, eq_comm, floor_eq_iff]
      convert And.intro ht (sub_lt_iff_lt_add'.mp (abs_lt.mp h₂).2) <;> norm_num
    · replace h₁ := lt_sub_iff_add_lt'.mp (h₁ rfl)
      have hξ₁ : ⌊ξ⌋ = u - 1 := by
        rw [floor_eq_iff, cast_sub, cast_one, sub_add_cancel]
        exact ⟨(((sub_lt_sub_iff_left _).mpr one_half_lt_one).trans h₁).le, ht⟩
      cases' eq_or_ne ξ ⌊ξ⌋ with Hξ Hξ
      · rw [Hξ, hξ₁, cast_sub, cast_one, ← sub_eq_add_neg, sub_lt_sub_iff_left] at h₁
        exact False.elim (lt_irrefl _ <| h₁.trans one_half_lt_one)
      · have hξ₂ : ⌊(fract ξ)⁻¹⌋ = 1 := by
          rw [floor_eq_iff, cast_one, le_inv zero_lt_one (fract_pos.mpr Hξ), inv_one,
            one_add_one_eq_two, inv_lt (fract_pos.mpr Hξ) zero_lt_two]
          refine' ⟨(fract_lt_one ξ).le, _⟩
          rw [fract, hξ₁, cast_sub, cast_one, lt_sub_iff_add_lt', sub_add]
          convert h₁ using 1
          -- Porting note: added (`convert` handled this in lean 3)
          rw [sub_eq_add_neg]
          norm_num
        use 1
        simp [convergent, hξ₁, hξ₂, cast_sub, cast_one]
  · obtain ⟨huv₀, huv₁⟩ := aux₂ (Nat.cast_le.mpr ht) h
    have Hv : (v : ℚ) ≠ 0 := (Nat.cast_pos.mpr (zero_lt_one.trans ht)).ne'
    have huv₁' : (u - ⌊ξ⌋ * v).toNat < v := by zify; rwa [toNat_of_nonneg huv₀.le]
    have inv : ContfracLegendre.Ass (fract ξ)⁻¹ v (u - ⌊ξ⌋ * ↑v).toNat :=
      (toNat_of_nonneg huv₀.le).symm ▸ invariant (Nat.cast_le.mpr ht) h
    obtain ⟨n, hn⟩ := ih (u - ⌊ξ⌋ * v).toNat huv₁' inv
    use n + 1
    rw [convergent_succ, ← hn,
      (by exact_mod_cast toNat_of_nonneg huv₀.le : ((u - ⌊ξ⌋ * v).toNat : ℚ) = u - ⌊ξ⌋ * v),
      cast_ofNat, inv_div, sub_div, mul_div_cancel _ Hv, add_sub_cancel'_right]
#align real.exists_rat_eq_convergent' Real.exists_rat_eq_convergent'

/-- The main result, *Legendre's Theorem* on rational approximation:
if `ξ` is a real number and `q` is a rational number such that `|ξ - q| < 1/(2*q.den^2)`,
then `q` is a convergent of the continued fraction expansion of `ξ`.
This version uses `Real.convergent`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/DiophantineApproximation/Variantef9cc6379cd9d35b01bfa8a8939680126d845c07a0801180fc821bc95cd47fa1.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `905ff2830110628e736743f6804825b693e65939` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
