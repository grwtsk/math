# repr_opow_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 798,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c302c9e0-1e68-1908-da0c-2d2570f8798f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63de3a47-f3d0-809e-eb67-181f81b0816c",
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
  "slug": "repr-opow-aux--835bb1d0b788d25c003e4f07",
  "source": {
    "blob": "3d332225fdc11aed6ef487342848c15bedf4c12e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 879,
    "line": 798,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:835bb1d0b788d25c003e4f074c0b55f179561c3e2e36503828ae21794b526e37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63de3a47-f3d0-809e-eb67-181f81b0816c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–879.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_opow_aux₂ {a0 a'} [N0 : NF a0] [Na' : NF a'] (m : ℕ) (d : ω ∣ repr a')
    (e0 : repr a0 ≠ 0) (h : repr a' + m < (ω ^ repr a0)) (n : ℕ+) (k : ℕ) :
    let R := repr (opowAux 0 a0 (oadd a0 n a' * ofNat m) k m)
    (k ≠ 0 → R < ((ω ^ repr a0) ^ succ (k : Ordinal))) ∧
      ((ω ^ repr a0) ^ (k : Ordinal)) * ((ω ^ repr a0) * (n : ℕ) + repr a') + R =
        ((ω ^ repr a0) * (n : ℕ) + repr a' + m) ^ succ (k : Ordinal) := by
  intro R'
  have No : NF (oadd a0 n a') :=
    N0.oadd n (Na'.below_of_lt' <| lt_of_le_of_lt le_self_add h)
  induction k with
  | zero => cases m <;> simp [R', opowAux]
  | succ k IH =>
  let R := repr (opowAux 0 a0 (oadd a0 n a' * ofNat m) k m)
  let ω0 := ω ^ repr a0
  let α' := ω0 * n + repr a'
  change (k ≠ 0 → R < (ω0 ^ succ (k : Ordinal))) ∧ (ω0 ^ (k : Ordinal)) * α' + R
    = (α' + m) ^ (succ ↑k : Ordinal) at IH
  have RR : R' = ω0 ^ (k : Ordinal) * (α' * m) + R := by
    by_cases h : m = 0
    · simp only [R, R', h, ONote.ofNat, Nat.cast_zero, ONote.repr_zero,
        mul_zero, ONote.opowAux, add_zero]
    · simp only [α', ω0, R, R', ONote.repr_scale, ONote.repr,
        ONote.mulNat_eq_mul, ONote.opowAux, ONote.repr_ofNat, ONote.repr_mul, ONote.repr_add,
        Ordinal.opow_mul, ONote.zero_add]
  have α0 : 0 < α' := by simpa [lt_def, repr] using oadd_pos a0 n a'
  have ω00 : 0 < ω0 ^ (k : Ordinal) := opow_pos _ (opow_pos _ omega0_pos)
  have Rl : R < ω ^ (repr a0 * succ ↑k) := by
    cases k with
    | zero =>
      simp only [Nat.cast_zero, succ_eq_add_one, _root_.zero_add, mul_one, R]
      refine lt_of_lt_of_le ?_ (opow_le_opow_right omega0_pos (one_le_iff_ne_zero.2 e0))
      cases m with
      | zero => simp [opowAux, omega0_pos]
      | succ m => simpa [opowAux] using natCast_lt_omega0 (m + 1)
    | succ k =>
      rw [opow_mul]
      exact IH.1 (Nat.succ_ne_zero _)
  refine ⟨fun _ => ?_, ?_⟩
  · rw [RR, ← opow_mul _ _ (succ k.succ)]
    have e0 := pos_iff_ne_zero.2 e0
    apply isPrincipal_add_omega0_opow
    · simp only [Nat.cast_add_one, succ_eq_add_one, opow_add_one, opow_mul, mul_assoc]
      gcongr ?_ * ?_
      rw [← Ordinal.opow_add]
      have : _ < ω ^ (repr a0 + repr a0) := (No.below_of_lt ?_).repr_lt
      · exact mul_lt_omega0_opow (lt_of_lt_of_le e0 le_add_self) this (natCast_lt_omega0 _)
      · simpa using (add_lt_add_iff_left (repr a0)).2 e0
    · exact Rl.trans_le <| opow_le_opow_right omega0_pos <|
        mul_le_mul_right (succ_le_succ_iff.2 (Nat.cast_le.2 (Nat.le_succ k))) _
  calc
    (ω0 ^ (k.succ : Ordinal)) * α' + R'
    _ = (ω0 ^ succ (k : Ordinal)) * α' + ((ω0 ^ (k : Ordinal)) * α' * m + R) := by
        rw [Nat.cast_add_one, RR, ← mul_assoc, succ_eq_add_one]
    _ = ((ω0 ^ (k : Ordinal)) * α' + R) * α' + ((ω0 ^ (k : Ordinal)) * α' + R) * m := ?_
    _ = (α' + m) ^ succ (k.succ : Ordinal) := by
        rw [← mul_add, succ_eq_add_one, opow_add_one, Nat.cast_add_one, IH.2, succ_eq_add_one]
  congr 1
  · have αd : ω ∣ α' :=
      dvd_add (dvd_mul_of_dvd_left (by simpa using opow_dvd_opow ω (one_le_iff_ne_zero.2 e0)) _) d
    have α0 : ¬IsMin α' := by simpa [isMin_iff_eq_bot] using α0.ne'
    rw [mul_add (ω0 ^ (k : Ordinal)), add_assoc, ← mul_assoc, ← opow_add_one,
      ← succ_eq_add_one (k : Ordinal),
      add_mul_of_isSuccLimit _ ⟨α0, isSuccPrelimit_iff_omega0_dvd.2 αd⟩, mul_assoc,
      @mul_omega0_dvd n (Nat.cast_pos'.2 n.pos) (natCast_lt_omega0 _) _ αd]
    apply @add_of_omega0_opow_le _ (repr a0 * succ ↑k)
    · refine isPrincipal_add_omega0_opow _ ?_ Rl
      rw [opow_mul, succ_eq_add_one, opow_add_one]
      gcongr
      exact No.snd'.repr_lt
    · rw [opow_mul]
      simpa using
        mul_le_mul_right (one_le_iff_pos.2 <| Nat.cast_pos'.2 n.pos) (ω0 ^ succ (k : Ordinal))
  · cases m
    · cases k <;> simp [R, opowAux]
    · rw [Nat.cast_add_one, add_mul_add_one]
      apply add_of_omega0_opow_le Rl
      rw [opow_mul, succ_eq_add_one, opow_add_one]
      gcongr
      simpa [repr] using omega0_le_oadd a0 n a'

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variantb8bc52145b1cd4016f96fcd75dce2009ffc3e33850d13d2d10f540a467ea92dd.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d332225fdc11aed6ef487342848c15bedf4c12e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
