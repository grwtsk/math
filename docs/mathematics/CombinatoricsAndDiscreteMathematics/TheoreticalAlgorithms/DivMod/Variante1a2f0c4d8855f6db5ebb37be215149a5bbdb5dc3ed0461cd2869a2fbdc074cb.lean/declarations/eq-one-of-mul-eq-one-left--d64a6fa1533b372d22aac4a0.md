# eq_one_of_mul_eq_one_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63e6196e-46d8-2730-2688-dc5bcffc5357",
  "kind": "theorem",
  "lexical_name": "eq_one_of_mul_eq_one_left",
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
  "slug": "eq-one-of-mul-eq-one-left--d64a6fa1533b372d22aac4a0",
  "source": {
    "blob": "10ec419a70918f09b6e3e377aa10ad43f0bd4406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 997,
    "line": 872,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d64a6fa1533b372d22aac4a0ce3320b90c7f502fa379f0adfc2f4f12ad509b63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63e6196e-46d8-2730-2688-dc5bcffc5357`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 872–997.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_one_of_mul_eq_one_left {a b : Int} (H : 0 ≤ b) (H' : a * b = 1) : b = 1 :=
  eq_one_of_mul_eq_one_right H <| by rw [Int.mul_comm, H']

/- TODO

This section will need to be updated to reflect that `/` is now `Int.ediv`, rather than `Int.div`.

/-! ### `/` and ordering -/

protected theorem ediv_mul_le (a : Int) {b : Int} (H : b ≠ 0) : a.ediv b * b ≤ a :=
  Int.le_of_sub_nonneg <| by rw [Int.mul_comm, ← emod_def]; apply emod_nonneg _ H

protected theorem ediv_le_of_le_mul {a b c : Int} (H : 0 < c) (H' : a ≤ b * c) : a / c ≤ b :=
  le_of_mul_le_mul_right (le_trans (Int.div_mul_le _ (ne_of_gt H)) H') H

protected theorem mul_lt_of_lt_div {a b c : Int} (H : 0 < c) (H3 : a < b / c) : a * c < b :=
  lt_of_not_ge <| mt (Int.div_le_of_le_mul H) (not_le_of_gt H3)

protected theorem mul_le_of_le_div {a b c : Int} (H1 : 0 < c) (H2 : a ≤ b / c) : a * c ≤ b :=
  le_trans (Decidable.mul_le_mul_of_nonneg_right H2 (le_of_lt H1)) (Int.div_mul_le _ (ne_of_gt H1))

protected theorem le_div_of_mul_le {a b c : Int} (H1 : 0 < c) (H2 : a * c ≤ b) : a ≤ b / c :=
  le_of_lt_add_one <|
    lt_of_mul_lt_mul_right (lt_of_le_of_lt H2 (lt_div_add_one_mul_self _ H1)) (le_of_lt H1)

protected theorem le_div_iff_mul_le {a b c : Int} (H : 0 < c) : a ≤ b / c ↔ a * c ≤ b :=
  ⟨Int.mul_le_of_le_div H, Int.le_div_of_mul_le H⟩

protected theorem div_le_div {a b c : Int} (H : 0 < c) (H' : a ≤ b) : a / c ≤ b / c :=
  Int.le_div_of_mul_le H (le_trans (Int.div_mul_le _ (ne_of_gt H)) H')

protected theorem div_lt_of_lt_mul {a b c : Int} (H : 0 < c) (H' : a < b * c) : a / c < b :=
  lt_of_not_ge <| mt (Int.mul_le_of_le_div H) (not_le_of_gt H')

protected theorem lt_mul_of_div_lt {a b c : Int} (H1 : 0 < c) (H2 : a / c < b) : a < b * c :=
  lt_of_not_ge <| mt (Int.le_div_of_mul_le H1) (not_le_of_gt H2)

protected theorem div_lt_iff_lt_mul {a b c : Int} (H : 0 < c) : a / c < b ↔ a < b * c :=
  ⟨Int.lt_mul_of_div_lt H, Int.div_lt_of_lt_mul H⟩

protected theorem le_mul_of_div_le {a b c : Int} (H1 : 0 ≤ b) (H2 : b ∣ a) (H3 : a / b ≤ c) :
    a ≤ c * b := by
  rw [← Int.div_mul_cancel H2] <;> exact Decidable.mul_le_mul_of_nonneg_right H3 H1

protected theorem lt_div_of_mul_lt {a b c : Int} (H1 : 0 ≤ b) (H2 : b ∣ c) (H3 : a * b < c) :
    a < c / b :=
  lt_of_not_ge <| mt (Int.le_mul_of_div_le H1 H2) (not_le_of_gt H3)

protected theorem lt_div_iff_mul_lt {a b : Int} (c : Int) (H : 0 < c) (H' : c ∣ b) :
    a < b / c ↔ a * c < b :=
  ⟨Int.mul_lt_of_lt_div H, Int.lt_div_of_mul_lt (le_of_lt H) H'⟩

theorem div_pos_of_pos_of_dvd {a b : Int} (H1 : 0 < a) (H2 : 0 ≤ b) (H3 : b ∣ a) : 0 < a / b :=
  Int.lt_div_of_mul_lt H2 H3
    (by
      rwa [zero_mul])

theorem div_eq_div_of_mul_eq_mul {a b c d : Int}
    (H2 : d ∣ c) (H3 : b ≠ 0) (H4 : d ≠ 0) (H5 : a * d = b * c) : a / b = c / d :=
  Int.div_eq_of_eq_mul_right H3 <| by
    rw [← Int.mul_div_assoc _ H2] <;> exact (Int.div_eq_of_eq_mul_left H4 H5.symm).symm

theorem eq_mul_div_of_mul_eq_mul_of_dvd_left {a b c d : Int}
    (hb : b ≠ 0) (hbc : b ∣ c) (h : b * a = c * d) : a = c / b * d := by
  cases' hbc with k hk
  subst hk
  rw [Int.mul_div_cancel_left _ hb]
  rw [mul_assoc] at h
  apply mul_left_cancel₀ hb h

/-- If an integer with larger absolute value divides an integer, it is
zero. -/
theorem eq_zero_of_dvd_ofNatAbs_lt_natAbs {a b : Int} (w : a ∣ b) (h : natAbs b < natAbs a) :
    b = 0 := by
  rw [← natAbs_dvd, ← dvd_natAbs, ofNat_dvd] at w
  rw [← natAbs_eq_zero]
  exact eq_zero_of_dvd_of_lt w h

theorem eq_zero_of_dvd_of_nonneg_of_lt {a b : Int} (w₁ : 0 ≤ a) (w₂ : a < b) (h : b ∣ a) : a = 0 :=
  eq_zero_of_dvd_ofNatAbs_lt_natAbs h (natAbs_lt_natAbs_of_nonneg_of_lt w₁ w₂)

/-- If two integers are congruent to a sufficiently large modulus,
they are equal. -/
theorem eq_of_mod_eq_ofNatAbs_sub_lt_natAbs {a b c : Int}
    (h1 : a % b = c) (h2 : natAbs (a - c) < natAbs b) : a = c :=
  eq_of_sub_eq_zero (eq_zero_of_dvd_ofNatAbs_lt_natAbs (dvd_sub_of_mod_eq h1) h2)

theorem ofNat_add_negSucc_of_lt {m n : Nat} (h : m < n.succ) : ofNat m + -[n+1] = -[n+1 - m] := by
  change subNatNat _ _ = _
  have h' : n.succ - m = (n - m).succ
  apply succ_sub
  apply le_of_lt_succ h
  simp [*, subNatNat]

theorem ofNat_add_negSucc_of_ge {m n : Nat} (h : n.succ ≤ m) :
    ofNat m + -[n+1] = ofNat (m - n.succ) := by
  change subNatNat _ _ = _
  have h' : n.succ - m = 0
  apply tsub_eq_zero_iff_le.mpr h
  simp [*, subNatNat]

@[simp]
theorem neg_add_neg (m n : Nat) : -[m+1] + -[n+1] = -[Nat+1.succ (m + n)] :=
  rfl

theorem natAbs_le_of_dvd_ne_zero {s t : Int} (hst : s ∣ t) (ht : t ≠ 0) : natAbs s ≤ natAbs t :=
  not_lt.mp (mt (eq_zero_of_dvd_ofNatAbs_lt_natAbs hst) ht)

theorem natAbs_eq_of_dvd_dvd {s t : Int} (hst : s ∣ t) (hts : t ∣ s) : natAbs s = natAbs t :=
  Nat.dvd_antisymm (natAbs_dvd_iff_dvd.mpr hst) (natAbs_dvd_iff_dvd.mpr hts)

theorem div_dvd_of_dvd {s t : Int} (hst : s ∣ t) : t / s ∣ t := by
  rcases eq_or_ne s 0 with (rfl | hs)
  · simpa using hst

  rcases hst with ⟨c, hc⟩
  simp [hc, Int.mul_div_cancel_left _ hs]

theorem dvd_div_of_mul_dvd {a b c : Int} (h : a * b ∣ c) : b ∣ c / a := by
  rcases eq_or_ne a 0 with (rfl | ha)
  · simp only [Int.div_zero, dvd_zero]

  rcases h with ⟨d, rfl⟩
  refine' ⟨d, _⟩
  rw [mul_assoc, Int.mul_div_cancel_left _ ha]
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean#L872).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ec419a70918f09b6e3e377aa10ad43f0bd4406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
