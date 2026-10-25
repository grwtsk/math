# repr_opow_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 885,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24c5c3a3-77f6-510d-3c17-9c19797f9f83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd6ad067-b918-c124-e71d-91f810e9c79b",
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
  "slug": "repr-opow-aux--6cfef5e95988cf356fa55b5b",
  "source": {
    "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 961,
    "line": 885,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cfef5e95988cf356fa55b5b85d625d1c585d3f346ac26d07a96dc31a9a70106",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd6ad067-b918-c124-e71d-91f810e9c79b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 885–961.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem repr_opow_aux₂ {a0 a'} [N0 : NF a0] [Na' : NF a'] (m : ℕ) (d : ω ∣ repr a')
    (e0 : repr a0 ≠ 0) (h : repr a' + m < (ω ^ repr a0)) (n : ℕ+) (k : ℕ) :
    let R := repr (opowAux 0 a0 (oadd a0 n a' * ofNat m) k m)
    (k ≠ 0 → R < ((ω ^ repr a0) ^ succ ↑k)) ∧
      ((ω ^ repr a0) ^ k) * ((ω ^ repr a0) * (n : ℕ) + repr a') + R =
        ((ω ^ repr a0) * (n : ℕ) + repr a' + m) ^ succ ↑k := by
  intro R'
  haveI No : NF (oadd a0 n a') :=
    N0.oadd n (Na'.below_of_lt' <| lt_of_le_of_lt (le_add_right _ _) h)
  induction' k with k IH
  · cases m <;> simp [opowAux]
  -- rename R => R'
  let R := repr (opowAux 0 a0 (oadd a0 n a' * ofNat m) k m)
  let ω0 := ω ^ repr a0
  let α' := ω0 * n + repr a'
  change (k ≠ 0 → R < (ω0 ^ succ ↑k)) ∧ (ω0 ^ k) * α' + R = (α' + m) ^ succ ↑k at IH
  have RR : R' = (ω0 ^ k) * (α' * m) + R := by
    by_cases h : m = 0
    · simp only [h, ONote.ofNat, Nat.cast_zero, zero_add, ONote.repr, mul_zero, ONote.opowAux,
        add_zero]
    · simp only [ONote.repr_scale, ONote.repr, ONote.mulNat_eq_mul, ONote.opowAux, ONote.repr_ofNat,
        ONote.repr_mul, ONote.repr_add, Ordinal.opow_mul, ONote.zero_add]
  have α0 : 0 < α' := by simpa [lt_def, repr] using oadd_pos a0 n a'
  have ω00 : 0 < (ω0 ^ k) := opow_pos _ (opow_pos _ omega_pos)
  have Rl : R < ω ^ (repr a0 * succ ↑k) := by
    by_cases k0 : k = 0
    · simp [k0]
      refine' lt_of_lt_of_le _ (opow_le_opow_right omega_pos (one_le_iff_ne_zero.2 e0))
      cases' m with m <;> simp [opowAux, omega_pos]
      rw [← add_one_eq_succ, ← Nat.cast_succ]
      apply nat_lt_omega
    · rw [opow_mul]
      exact IH.1 k0
  refine' ⟨fun _ => _, _⟩
  · rw [RR, ← opow_mul _ _ (succ k.succ)]
    have e0 := Ordinal.pos_iff_ne_zero.2 e0
    have rr0 : 0 < repr a0 + repr a0 := lt_of_lt_of_le e0 (le_add_left _ _)
    apply principal_add_omega_opow
    · simp [opow_mul, opow_add, mul_assoc]
      rw [Ordinal.mul_lt_mul_iff_left ω00, ← Ordinal.opow_add]
      have : _ < ω ^ (repr a0 + repr a0) := (No.below_of_lt ?_).repr_lt
      refine' mul_lt_omega_opow rr0 this (nat_lt_omega _)
      simpa using (add_lt_add_iff_left (repr a0)).2 e0
    · refine'
        lt_of_lt_of_le Rl
          (opow_le_opow_right omega_pos <|
            mul_le_mul_left' (succ_le_succ_iff.2 (nat_cast_le.2 (le_of_lt k.lt_succ_self))) _)
  calc
    (ω0 ^ k.succ) * α' + R'
    _ = (ω0 ^ succ ↑k) * α' + ((ω0 ^ k) * α' * m + R) := by rw [nat_cast_succ, RR, ← mul_assoc]
    _ = ((ω0 ^ k) * α' + R) * α' + ((ω0 ^ k) * α' + R) * m := ?_
    _ = (α' + m) ^ succ ↑k.succ := by rw [← mul_add, nat_cast_succ, opow_succ, IH.2]
  congr 1
  · have αd : ω ∣ α' :=
      dvd_add (dvd_mul_of_dvd_left (by simpa using opow_dvd_opow ω (one_le_iff_ne_zero.2 e0)) _) d
    rw [mul_add (ω0^k), add_assoc, ← mul_assoc, ← opow_succ,
      add_mul_limit _ (isLimit_iff_omega_dvd.2 ⟨ne_of_gt α0, αd⟩), mul_assoc,
      @mul_omega_dvd n (nat_cast_pos.2 n.pos) (nat_lt_omega _) _ αd]
    apply @add_absorp _ (repr a0 * succ ↑k)
    · refine' principal_add_omega_opow _ _ Rl
      rw [opow_mul, opow_succ, Ordinal.mul_lt_mul_iff_left ω00]
      exact No.snd'.repr_lt
    · have := mul_le_mul_left' (one_le_iff_pos.2 <| nat_cast_pos.2 n.pos) (ω0^succ k)
      rw [opow_mul]
      simpa [-opow_succ]
  · cases m
    · have : R = 0 := by cases k <;> simp [opowAux]
      simp [this]
    · rw [nat_cast_succ, add_mul_succ]
      apply add_absorp Rl
      rw [opow_mul, opow_succ]
      apply mul_le_mul_left'
      simpa [repr] using omega_le_oadd a0 n a'
#align onote.repr_opow_aux₂ ONote.repr_opow_aux₂

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean#L885).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662748c0fa51663685efded4a2e2a9ee5ad80563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
