# charP_zero_or_prime_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b4137755a246c79f7fa1783619f9ea028ed6b84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e7613bb150de8d4ec30d57473c0b52649633a73647cb047cc751c368c8291cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:570ecc79-8a8b-8645-5f98-4c661b56275a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e48e9280-d7e6-fa2e-f80d-9667b9fe7ba7",
  "kind": "theorem",
  "lexical_name": "charP_zero_or_prime_power",
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
  "slug": "charp-zero-or-prime-power--a958ee6b7b4eb9cc51e0c8d2",
  "source": {
    "blob": "2b4137755a246c79f7fa1783619f9ea028ed6b84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 25,
    "path": "GRWTSK/Algebra/UniversalAlgebra/LocalRing/Variant6e7613bb150de8d4ec30d57473c0b52649633a73647cb047cc751c368c8291cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a958ee6b7b4eb9cc51e0c8d2fa412d6daf83be17f7cc6916b2a05f86532f23d1",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/LocalRing/Variant6e7613bb150de8d4ec30d57473c0b52649633a73647cb047cc751c368c8291cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e48e9280-d7e6-fa2e-f80d-9667b9fe7ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem charP_zero_or_prime_power (R : Type*) [CommRing R] [LocalRing R] (q : ℕ)
    [char_R_q : CharP R q] : q = 0 ∨ IsPrimePow q := by
  -- Assume `q := char(R)` is not zero.
  apply or_iff_not_imp_left.2
  intro q_pos
  let K := LocalRing.ResidueField R
  haveI RM_char := ringChar.charP K
  let r := ringChar K
  let n := q.factorization r
  -- `r := char(R/m)` is either prime or zero:
  cases' CharP.char_is_prime_or_zero K r with r_prime r_zero
  · let a := q / r ^ n
    -- If `r` is prime, we can write it as `r = a * q^n` ...
    have q_eq_a_mul_rn : q = r ^ n * a := by rw [Nat.mul_div_cancel' (Nat.ord_proj_dvd q r)]
    have r_ne_dvd_a := Nat.not_dvd_ord_compl r_prime q_pos
    have rn_dvd_q : r ^ n ∣ q := ⟨a, q_eq_a_mul_rn⟩
    rw [mul_comm] at q_eq_a_mul_rn
    -- ... where `a` is a unit.
    have a_unit : IsUnit (a : R) := by
      by_contra g
      rw [← mem_nonunits_iff] at g
      rw [← LocalRing.mem_maximalIdeal] at g
      have a_cast_zero := Ideal.Quotient.eq_zero_iff_mem.2 g
      rw [map_natCast] at a_cast_zero
      have r_dvd_a := (ringChar.spec K a).1 a_cast_zero
      exact absurd r_dvd_a r_ne_dvd_a
    -- Let `b` be the inverse of `a`.
    cases' a_unit.exists_left_inv with a_inv h_inv_mul_a
    have rn_cast_zero : ↑(r ^ n) = (0 : R) := by
      rw [← @mul_one R _ (r ^ n), mul_comm, ←Classical.choose_spec a_unit.exists_left_inv,
        mul_assoc, ← Nat.cast_mul, ←q_eq_a_mul_rn, CharP.cast_eq_zero R q]
      simp
    have q_eq_rn := Nat.dvd_antisymm ((CharP.cast_eq_zero_iff R q (r ^ n)).mp rn_cast_zero) rn_dvd_q
    have n_pos : n ≠ 0 := fun n_zero =>
      absurd (by simpa [n_zero] using q_eq_rn) (CharP.char_ne_one R q)
    -- Definition of prime power: `∃ r n, Prime r ∧ 0 < n ∧ r ^ n = q`.
    exact ⟨r, ⟨n, ⟨r_prime.prime, ⟨pos_iff_ne_zero.mpr n_pos, q_eq_rn.symm⟩⟩⟩⟩
  · haveI K_char_p_0 := ringChar.of_eq r_zero
    haveI K_char_zero : CharZero K := CharP.charP_to_charZero K
    haveI R_char_zero := RingHom.charZero (LocalRing.residue R)
    -- Finally, `r = 0` would lead to a contradiction:
    have q_zero := CharP.eq R char_R_q (CharP.ofCharZero R)
    exact absurd q_zero q_pos
#align char_p_zero_or_prime_power charP_zero_or_prime_power
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/LocalRing/Variant6e7613bb150de8d4ec30d57473c0b52649633a73647cb047cc751c368c8291cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/LocalRing/Variant6e7613bb150de8d4ec30d57473c0b52649633a73647cb047cc751c368c8291cb.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b4137755a246c79f7fa1783619f9ea028ed6b84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
