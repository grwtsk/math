# mod_four_eq_three_of_nat_prime_of_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "636d7ac2ac0dee6f5bb5a1a970aca0ce0f6dd56f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f4fce28e44ca4f4471863536cbc4f0c55c2d4f21511f9bc5ffd5326aff6f8c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3beb9284-9f1a-1f98-6a11-8b47d4a87f97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05e92e7a-ccef-9738-3d1a-5ddab68e40f9",
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
  "slug": "mod-four-eq-three-of-nat-prime-of-prime--499b3e8cc9885353fbaf3a87",
  "source": {
    "blob": "636d7ac2ac0dee6f5bb5a1a970aca0ce0f6dd56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 31,
    "path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant2f4fce28e44ca4f4471863536cbc4f0c55c2d4f21511f9bc5ffd5326aff6f8c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:499b3e8cc9885353fbaf3a8770432b8ff893d08d4d11a56cd769ebb87c668d9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant2f4fce28e44ca4f4471863536cbc4f0c55c2d4f21511f9bc5ffd5326aff6f8c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05e92e7a-ccef-9738-3d1a-5ddab68e40f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_four_eq_three_of_nat_prime_of_prime (p : ℕ) [hp : Fact p.Prime]
    (hpi : Prime (p : ℤ[i])) : p % 4 = 3 :=
  hp.1.eq_two_or_odd.elim
    (fun hp2 => by
      have := hpi.irreducible.isUnit_or_isUnit (a := ⟨1, 1⟩) (b := ⟨1, -1⟩)
      simp [hp2, Zsqrtd.ext_iff, ← norm_eq_one_iff, norm_def] at this)
    fun hp1 =>
    by_contradiction fun hp3 : p % 4 ≠ 3 => by
      have hp41 : p % 4 = 1 := by omega
      let ⟨k, hk⟩ := (ZMod.exists_sq_eq_neg_one_iff (p := p)).2 <| by rw [hp41]; decide
      obtain ⟨k, k_lt_p, rfl⟩ : ∃ (k' : ℕ) (_ : k' < p), (k' : ZMod p) = k := by
        exact ⟨k.val, k.val_lt, ZMod.natCast_zmod_val k⟩
      have hpk : p ∣ k ^ 2 + 1 := by
        rw [pow_two, ← CharP.cast_eq_zero_iff (ZMod p) p, Nat.cast_add, Nat.cast_mul, Nat.cast_one,
          ← hk, neg_add_cancel]
      have hkmul : (k ^ 2 + 1 : ℤ[i]) = ⟨k, 1⟩ * ⟨k, -1⟩ := by ext <;> simp [sq]
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant2f4fce28e44ca4f4471863536cbc4f0c55c2d4f21511f9bc5ffd5326aff6f8c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/QuadraticReciprocity/Variant2f4fce28e44ca4f4471863536cbc4f0c55c2d4f21511f9bc5ffd5326aff6f8c0.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `636d7ac2ac0dee6f5bb5a1a970aca0ce0f6dd56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
