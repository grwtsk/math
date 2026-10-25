# repr_opow_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "692e1f0dfcfdf482c864ba74037ea03ae863bf1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 801,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4db3b48-99c9-b815-3fd4-34a7b18c214f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3808e89-3ee8-346e-c248-843a63286b95",
  "kind": "theorem",
  "lexical_name": "repr_opow_aux₂",
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
  "slug": "repr-opow-aux--39c5893cba5d8eb16dc60f5f",
  "source": {
    "blob": "692e1f0dfcfdf482c864ba74037ea03ae863bf1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 801,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39c5893cba5d8eb16dc60f5f03ab5b4981679db080274f57b22eed5150b92794",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3808e89-3ee8-346e-c248-843a63286b95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 801–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_opow_aux₂ {a0 a'} [N0 : NF a0] [Na' : NF a'] (m : ℕ) (d : ω ∣ repr a')
    (e0 : repr a0 ≠ 0) (h : repr a' + m < (ω ^ repr a0)) (n : ℕ+) (k : ℕ) :
    let R := repr (opowAux 0 a0 (oadd a0 n a' * ofNat m) k m)
    (k ≠ 0 → R < ((ω ^ repr a0) ^ succ (k : Ordinal))) ∧
      ((ω ^ repr a0) ^ (k : Ordinal)) * ((ω ^ repr a0) * (n : ℕ) + repr a') + R =
        ((ω ^ repr a0) * (n : ℕ) + repr a' + m) ^ succ (k : Ordinal) := by
  intro R'
  haveI No : NF (oadd a0 n a') :=
    N0.oadd n (Na'.below_of_lt' <| lt_of_le_of_lt (le_add_right _ _) h)
  induction' k with k IH
  · cases m <;> simp [R', opowAux]
  -- rename R => R'
  let R := repr (opowAux 0 a0 (oadd a0 n a' * ofNat m) k m)
  let ω0 := ω ^ repr a0
  let α' := ω0 * n + repr a'
  change (k ≠ 0 → R < (ω0 ^ succ (k : Ordinal))) ∧ (ω0 ^ (k : Ordinal)) * α' + R
    = (α' + m) ^ (succ ↑k : Ordinal) at IH
  have RR : R' = ω0 ^ (k : Ordinal) * (α' * m) + R := by
    by_cases h : m = 0
    · simp only [R, R', h, ONote.ofNat, Nat.cast_zero, zero_add, ONote.repr, mul_zero,
        ONote.opowAux, add_zero]
    · simp only [α', ω0, R, R', ONote.repr_scale, ONote.repr, ONote.mulNat_eq_mul, ONote.opowAux,
        ONote.repr_ofNat, ONote.repr_mul, ONote.repr_add, Ordinal.opow_mul, ONote.zero_add]
  have α0 : 0 < α' := by simpa [lt_def, repr] using oadd_pos a0 n a'
  have ω00 : 0 < ω0 ^ (k : Ordinal) := opow_pos _ (opow_pos _ omega0_pos)
  have Rl : R < ω ^ (repr a0 * succ ↑k) := by
    by_cases k0 : k = 0
    · simp only [k0, Nat.cast_zero, succ_zero, mul_one, R]
      refine lt_of_lt_of_le ?_ (opow_le_opow_right omega0_pos (one_le_iff_ne_zero.2 e0))
      rcases m with - | m <;> simp [opowAux, omega0_pos]
      rw [← add_one_eq_succ, ← Nat.cast_succ]
      apply nat_lt_omega0
    · rw [opow_mul]
      exact IH.1 k0
  refine ⟨fun _ => ?_, ?_⟩
  · rw [RR, ← opow_mul _ _ (succ k.succ)]
    have e0 := Ordinal.pos_iff_ne_zero.2 e0
    have rr0 : 0 < repr a0 + repr a0 := lt_of_lt_of_le e0 (le_add_left _ _)
    apply principal_add_omega0_opow
    · simp only [Nat.succ_eq_add_one, Nat.cast_add, Nat.cast_one, add_one_eq_succ,
        opow_mul, opow_succ, mul_assoc]
      rw [Ordinal.mul_lt_mul_iff_left ω00, ← Ordinal.opow_add]
      have : _ < ω ^ (repr a0 + repr a0) := (No.below_of_lt ?_).repr_lt
      · exact mul_lt_omega0_opow rr0 this (nat_lt_omega0 _)
      · simpa using (add_lt_add_iff_left (repr a0)).2 e0
    · exact
        lt_of_lt_of_le Rl
          (opow_le_opow_right omega0_pos <|
            mul_le_mul_left' (succ_le_succ_iff.2 (Nat.cast_le.2 (le_of_lt k.lt_succ_self))) _)
  calc
    (ω0 ^ (k.succ : Ordinal)) * α' + R'
    _ = (ω0 ^ succ (k : Ordinal)) * α' + ((ω0 ^ (k : Ordinal)) * α' * m + R) := by
        rw [natCast_succ, RR, ← mul_assoc]
    _ = ((ω0 ^ (k : Ordinal)) * α' + R) * α' + ((ω0 ^ (k : Ordinal)) * α' + R) * m := ?_
    _ = (α' + m) ^ succ (k.succ : Ordinal) := by rw [← mul_add, natCast_succ, opow_succ, IH.2]
  congr 1
  · have αd : ω ∣ α' :=
      dvd_add (dvd_mul_of_dvd_left (by simpa using opow_dvd_opow ω (one_le_iff_ne_zero.2 e0)) _) d
    rw [mul_add (ω0 ^ (k : Ordinal)), add_assoc, ← mul_assoc, ← opow_succ,
      add_mul_limit _ (isLimit_iff_omega0_dvd.2 ⟨ne_of_gt α0, αd⟩), mul_assoc,
      @mul_omega0_dvd n (Nat.cast_pos'.2 n.pos) (nat_lt_omega0 _) _ αd]
    apply @add_absorp _ (repr a0 * succ ↑k)
    · refine principal_add_omega0_opow _ ?_ Rl
      rw [opow_mul, opow_succ, Ordinal.mul_lt_mul_iff_left ω00]
      exact No.snd'.repr_lt
    · have := mul_le_mul_left' (one_le_iff_pos.2 <| Nat.cast_pos'.2 n.pos) (ω0 ^ succ (k : Ordinal))
      rw [opow_mul]
      simpa [-opow_succ]
  · cases m
    · have : R = 0 := by cases k <;> simp [R, opowAux]
      simp [this]
    · rw [natCast_succ, add_mul_succ]
      apply add_absorp Rl
      rw [opow_mul, opow_succ]
      apply mul_le_mul_left'
      simpa [repr] using omega0_le_oadd a0 n a'

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant69b775f51cc65bb0296b00f8b025185422a1f1d65774e8f12c72129fe9bbd854.lean#L801).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `692e1f0dfcfdf482c864ba74037ea03ae863bf1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
