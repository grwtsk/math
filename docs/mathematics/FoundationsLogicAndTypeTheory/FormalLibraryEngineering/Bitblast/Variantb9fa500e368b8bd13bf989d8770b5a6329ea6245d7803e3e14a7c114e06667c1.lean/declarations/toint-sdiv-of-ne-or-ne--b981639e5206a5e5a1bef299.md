# toInt_sdiv_of_ne_or_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fee7c1a7-a5d1-1108-0337-57740f90044d",
  "kind": "theorem",
  "lexical_name": "toInt_sdiv_of_ne_or_ne",
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
  "slug": "toint-sdiv-of-ne-or-ne--b981639e5206a5e5a1bef299",
  "source": {
    "blob": "77050a46ff99d345da672844caf68022db57852a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1655,
    "line": 1586,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b981639e5206a5e5a1bef299e0be7f8f3e3dc4974fd205fa9d652cf6616d4cfc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fee7c1a7-a5d1-1108-0337-57740f90044d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1586–1655.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInt_sdiv_of_ne_or_ne (a b : BitVec w) (h : a ≠ intMin w ∨ b ≠ -1#w) :
    (a.sdiv b).toInt = a.toInt.tdiv b.toInt := by
  by_cases hw0 : w = 0;   subst hw0; decide +revert
  by_cases hw1 : w = 1;   subst hw1; decide +revert
  by_cases ha0 : a = 0#w; subst ha0; simp
  by_cases hb0 : b = 0#w; subst hb0; simp
  by_cases hb1 : b = 1#w; subst hb1; simp [show 1 < w by omega]

  have wpos : 0 < w := by omega
  have := Nat.two_pow_pos (w - 1)

  by_cases hbintMin : b = intMin w
  · subst hbintMin
    have toIntA_lt := @BitVec.toInt_lt w a; norm_cast at toIntA_lt
    have le_toIntA := @BitVec.le_toInt w a; norm_cast at le_toIntA
    simp only [sdiv_intMin, toInt_intMin, wpos,
      Nat.two_pow_pred_mod_two_pow, Int.tdiv_neg]
    · by_cases ha_intMin : a = intMin w
      · simp only [ha_intMin, ↓reduceIte, show 1 < w by omega, toInt_one, toInt_intMin, wpos,
          Nat.two_pow_pred_mod_two_pow, Int.neg_tdiv, Int.neg_neg]
        rw [Int.tdiv_self (by omega)]
      · by_cases ha_nonneg : 0 ≤ a.toInt
        · simp [Int.tdiv_eq_zero_of_lt ha_nonneg (by norm_cast at *), ha_intMin, -Int.natCast_pow]
        · simp only [ne_eq, ← toInt_inj, toInt_intMin, wpos, Nat.two_pow_pred_mod_two_pow] at h
          rw [← Int.neg_tdiv, Int.tdiv_eq_zero_of_lt (by omega)]
          · simp [ha_intMin]
          · simp [wpos, ← toInt_ne, toInt_intMin, -Int.natCast_pow] at ha_intMin
            omega

  · by_cases ha : a.msb <;> by_cases hb : b.msb
    <;> (try simp only [not_eq_true] at ha hb)
    · simp only [sdiv_eq, ha, hb, udiv_eq]
      rw [toInt_eq_neg_toNat_neg_of_nonpos (x := a) (by simp [ha]),
        toInt_eq_neg_toNat_neg_of_nonpos (x := b) (by simp [hb]),
        Int.neg_tdiv_neg, Int.tdiv_eq_ediv_of_nonneg (by omega)]
      rw [toInt_eq_toNat_of_msb]
      · rfl
      · by_cases ha_intMin : a = intMin w
        · simp only [ha_intMin, ne_eq, not_true_eq_false, _root_.false_or] at h
          simp [msb_udiv, neg_eq_iff_eq_neg, h]
        · simp [msb_udiv, ha_intMin, ha]
    · have sdiv_toInt_of_msb_true_of_msb_false :
          (a.sdiv b).toInt = -((-a).toNat / b.toNat) := by
        simp only [sdiv_eq, ha, hb, udiv_eq]
        rw [toInt_eq_neg_toNat_neg_of_nonpos]
        · rw [neg_neg, toNat_udiv, toNat_neg, Int.natCast_emod, Int.neg_inj]
          norm_cast
        · rw [neg_eq_zero_iff]
          by_cases h' : -a / b = 0#w
          · simp [h']
          · by_cases ha_intMin : a = intMin w
            · have ry := (intMin_udiv_eq_intMin_iff b).mp
              simp only [hb1, imp_false] at ry
              simp [msb_udiv, ha_intMin, hb1, ry, intMin_udiv_ne_zero_of_ne_zero, hb, hb0]
            · have := @BitVec.ne_intMin_of_msb_eq_false w wpos ((-a) / b) (by simp [ha, ha0, ha_intMin])
              simp [msb_neg, h', this, ha, ha_intMin]
      rw [toInt_eq_toNat_of_msb hb, toInt_eq_neg_toNat_neg_of_msb_true ha, Int.neg_tdiv,
        Int.tdiv_eq_ediv_of_nonneg (by omega), sdiv_toInt_of_msb_true_of_msb_false]
    · rw [← @BitVec.neg_neg w (a.sdiv b), ← sdiv_neg hbintMin]
      have hmb : (-b).msb = false := by simp [hbintMin, hb]
      rw [toInt_neg_of_ne_intMin]
      · simp [sdiv, ha, hmb]
        rw [toInt_udiv_of_msb ha, toInt_eq_toNat_of_msb ha]
        rw [toInt_eq_neg_toNat_neg_of_msb_true hb, Int.tdiv_neg, Int.tdiv_eq_ediv_of_nonneg (by omega)]
      · apply sdiv_ne_intMin_of_ne_intMin
        apply ne_intMin_of_msb_eq_false (by omega) ha
    · rw [sdiv, Int.tdiv_cases, udiv_eq, neg_eq, if_pos (toInt_nonneg_of_msb_false ha),
        if_pos (toInt_nonneg_of_msb_false hb), ha, hb, toInt_udiv_of_msb ha,
        toInt_eq_toNat_of_msb ha, toInt_eq_toNat_of_msb hb]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean#L1586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77050a46ff99d345da672844caf68022db57852a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
