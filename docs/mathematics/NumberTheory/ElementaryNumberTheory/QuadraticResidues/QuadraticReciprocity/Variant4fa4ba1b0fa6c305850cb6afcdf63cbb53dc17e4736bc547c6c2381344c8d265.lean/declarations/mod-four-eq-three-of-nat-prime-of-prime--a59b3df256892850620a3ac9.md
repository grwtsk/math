# mod_four_eq_three_of_nat_prime_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93e1830904d1bbe68c5a4505ae1ab9aea5fb02ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 34,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfdbb47d-6eb7-abe1-ff2a-412a9adf3844",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fea29def-404f-1e5a-ccfd-f034bd3d8ff2",
  "kind": "theorem",
  "lexical_name": "mod_four_eq_three_of_nat_prime_of_prime",
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
  "slug": "mod-four-eq-three-of-nat-prime-of-prime--a59b3df256892850620a3ac9",
  "source": {
    "blob": "93e1830904d1bbe68c5a4505ae1ab9aea5fb02ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 34,
    "path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a59b3df256892850620a3ac92f47e3aa6230cffd6e1ace254f800dc2a6f95f04",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fea29def-404f-1e5a-ccfd-f034bd3d8ff2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_four_eq_three_of_nat_prime_of_prime (p : ℕ) [hp : Fact p.Prime]
    (hpi : Prime (p : ℤ[i])) : p % 4 = 3 :=
  hp.1.eq_two_or_odd.elim
    (fun hp2 =>
      absurd hpi
        (mt irreducible_iff_prime.2 fun ⟨_, h⟩ => by
          have := h ⟨1, 1⟩ ⟨1, -1⟩ (hp2.symm ▸ rfl)
          rw [← norm_eq_one_iff, ← norm_eq_one_iff] at this
          exact absurd this (by decide)))
    fun hp1 =>
    by_contradiction fun hp3 : p % 4 ≠ 3 => by
      have hp41 : p % 4 = 1 := by
        rw [← Nat.mod_mul_left_mod p 2 2, show 2 * 2 = 4 from rfl] at hp1
        have := Nat.mod_lt p (show 0 < 4 by decide)
        revert this hp3 hp1
        generalize p % 4 = m
        intros; interval_cases m <;> simp_all -- Porting note: was `decide!`
      let ⟨k, hk⟩ := (ZMod.exists_sq_eq_neg_one_iff (p := p)).2 <| by rw [hp41]; exact by decide
      obtain ⟨k, k_lt_p, rfl⟩ : ∃ (k' : ℕ) (_ : k' < p), (k' : ZMod p) = k := by
        refine' ⟨k.val, k.val_lt, ZMod.nat_cast_zmod_val k⟩
      have hpk : p ∣ k ^ 2 + 1 := by
        rw [pow_two, ← CharP.cast_eq_zero_iff (ZMod p) p, Nat.cast_add, Nat.cast_mul, Nat.cast_one,
          ← hk, add_left_neg]
      have hkmul : (k ^ 2 + 1 : ℤ[i]) = ⟨k, 1⟩ * ⟨k, -1⟩ := by simp [sq, Zsqrtd.ext]
      have hkltp : 1 + k * k < p * p :=
        calc
          1 + k * k ≤ k + k * k := by
            apply add_le_add_right
            exact (Nat.pos_of_ne_zero fun (hk0 : k = 0) => by clear_aux_decl; simp_all [pow_succ'])
          _ = k * (k + 1) := by simp [add_comm, mul_add]
          _ < p * p := mul_lt_mul k_lt_p k_lt_p (Nat.succ_pos _) (Nat.zero_le _)
      have hpk₁ : ¬(p : ℤ[i]) ∣ ⟨k, -1⟩ := fun ⟨x, hx⟩ =>
        lt_irrefl (p * x : ℤ[i]).norm.natAbs <|
          calc
            (norm (p * x : ℤ[i])).natAbs = (Zsqrtd.norm ⟨k, -1⟩).natAbs := by rw [hx]
            _ < (norm (p : ℤ[i])).natAbs := by simpa [add_comm, Zsqrtd.norm] using hkltp
            _ ≤ (norm (p * x : ℤ[i])).natAbs :=
              norm_le_norm_mul_left _ fun hx0 =>
                show (-1 : ℤ) ≠ 0 by decide <| by simpa [hx0] using congr_arg Zsqrtd.im hx
      have hpk₂ : ¬(p : ℤ[i]) ∣ ⟨k, 1⟩ := fun ⟨x, hx⟩ =>
        lt_irrefl (p * x : ℤ[i]).norm.natAbs <|
          calc
            (norm (p * x : ℤ[i])).natAbs = (Zsqrtd.norm ⟨k, 1⟩).natAbs := by rw [hx]
            _ < (norm (p : ℤ[i])).natAbs := by simpa [add_comm, Zsqrtd.norm] using hkltp
            _ ≤ (norm (p * x : ℤ[i])).natAbs :=
              norm_le_norm_mul_left _ fun hx0 =>
                show (1 : ℤ) ≠ 0 by decide <| by simpa [hx0] using congr_arg Zsqrtd.im hx
      obtain ⟨y, hy⟩ := hpk
      have := hpi.2.2 ⟨k, 1⟩ ⟨k, -1⟩ ⟨y, by rw [← hkmul, ← Nat.cast_mul p, ← hy]; simp⟩
      clear_aux_decl
      tauto
#align gaussian_int.mod_four_eq_three_of_nat_prime_of_prime GaussianInt.mod_four_eq_three_of_nat_prime_of_prime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/QuadraticReciprocity/Variant4fa4ba1b0fa6c305850cb6afcdf63cbb53dc17e4736bc547c6c2381344c8d265.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93e1830904d1bbe68c5a4505ae1ab9aea5fb02ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
