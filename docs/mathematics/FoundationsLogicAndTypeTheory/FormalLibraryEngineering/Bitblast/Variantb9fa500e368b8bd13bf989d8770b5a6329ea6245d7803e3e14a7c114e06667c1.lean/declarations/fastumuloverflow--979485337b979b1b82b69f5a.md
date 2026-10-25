# fastUmulOverflow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49e0cd1a-78bb-7158-4ba9-7ef6d23b4652",
  "kind": "theorem",
  "lexical_name": "fastUmulOverflow",
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
  "slug": "fastumuloverflow--979485337b979b1b82b69f5a",
  "source": {
    "blob": "77050a46ff99d345da672844caf68022db57852a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2402,
    "line": 2332,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:979485337b979b1b82b69f5aa4252ac425e1141311ceb1ce586f0bfd9d155d72",
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

Occurrence: `result:49e0cd1a-78bb-7158-4ba9-7ef6d23b4652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2332–2402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fastUmulOverflow (x y : BitVec w) :
    umulOverflow x y = if hw : w ≤ 1 then false
      else (setWidth (w + 1) x * setWidth (w + 1) y)[w] || x.resRec y (w - 1) (by omega) (by omega) := by
  rcases w with _|_|w
  · simp [of_length_zero, umulOverflow]
  · have hx : x.toNat ≤ 1 := by omega
    have hy : y.toNat ≤ 1 := by omega
    have := Nat.mul_le_mul (n₁ := x.toNat) (m₁ := y.toNat) (n₂ := 1) (m₂ := 1) hx hy
    simp [umulOverflow]
    omega
  · by_cases h : umulOverflow x y
    · simp only [h, Nat.reduceLeDiff, reduceDIte, Nat.add_one_sub_one, true_eq, or_eq_true]
      simp only [umulOverflow, ge_iff_le, decide_eq_true_eq] at h
      by_cases h' : x.toNat * y.toNat < 2 ^ (w + 1 + 1 + 1)
      · have hlt := BitVec.getElem_eq_true_of_lt_of_le
          (x := (setWidth (w + 1 + 1 + 1) x * setWidth (w + 1 + 1 + 1) y))
          (k := w + 1 + 1)  (by omega)
        simp only [toNat_mul, toNat_setWidth, Nat.lt_add_one, toNat_mod_cancel_of_lt,
          Nat.mod_eq_of_lt (a := x.toNat * y.toNat) (b := 2 ^ (w + 1 + 1 + 1)) (by omega), h', h,
          forall_const] at hlt
        simp [hlt]
      · by_cases hsw : (setWidth (w + 1 + 1 + 1) x * setWidth (w + 1 + 1 + 1) y)[w + 1 + 1] = true
        · simp [hsw]
        · simp only [hsw, false_eq_true, _root_.false_or]
          have := Nat.two_pow_pos (w := w + 1 + 1)
          have hltx := BitVec.toNat_lt_two_pow_sub_clz (x := x)
          have hlty := BitVec.toNat_lt_two_pow_sub_clz (x := y)
          have := Nat.mul_ne_zero_iff (m := y.toNat) (n := x.toNat)
          simp only [ne_eq, show ¬x.toNat * y.toNat = 0 by omega, not_false_eq_true,
            true_iff] at this
          obtain ⟨hxz,hyz⟩ := this
          apply resRec_of_clz_le (x := x) (y := y) (by omega) (by simp [toNat_eq]; exact hxz) (by simp [toNat_eq]; exact hyz)
          by_cases hzxy : x.clz.toNat + y.clz.toNat ≤ w
          · omega
          · by_cases heq : w + 1 - y.clz.toNat = 0
            · by_cases heq' : w + 1 + 1 - y.clz.toNat = 0
              · simp [heq', hyz] at hlty
              · simp only [show y.clz.toNat = w + 1 by omega, Nat.add_sub_cancel_left,
                  Nat.pow_one] at hlty
                simp only [show y.toNat = 1 by omega, Nat.mul_one, Nat.not_lt] at h'
                omega
            · by_cases w + 1 < y.clz.toNat
              · omega
              · simp only [Nat.not_lt] at h'
                have := Nat.mul_lt_mul'' (a := x.toNat) (b := y.toNat) (c := 2 ^ (w + 1 + 1 - x.clz.toNat)) (d := 2 ^ (w + 1 + 1 - y.clz.toNat)) hltx hlty
                simp only [← Nat.pow_add] at this
                have := Nat.pow_le_pow_of_le (a := 2) (n := w + 1 + 1 - x.clz.toNat + (w + 1 + 1 - y.clz.toNat)) (m := w + 1 + 1 + 1)
                 (by omega) (by omega)
                omega
    · simp only [h, Nat.reduceLeDiff, reduceDIte, Nat.add_one_sub_one, false_eq, or_eq_false_iff]
      simp only [umulOverflow, ge_iff_le, decide_eq_true_eq, Nat.not_le] at h
      and_intros
      · simp only [← getLsbD_eq_getElem, getLsbD_eq_getMsbD, Nat.lt_add_one, decide_true,
          Nat.add_one_sub_one, Nat.sub_self, ← msb_eq_getMsbD_zero, Bool.true_and,
          msb_eq_false_iff_two_mul_lt, toNat_mul, toNat_setWidth, toNat_mod_cancel_of_lt]
        rw [Nat.mod_eq_of_lt (by omega),Nat.pow_add (m := w + 1 + 1) (n := 1)]
        simp [Nat.mul_comm 2 (x.toNat * y.toNat), h]
      · apply Classical.byContradiction
        intro hcontra
        simp only [not_eq_false, resRec_true_iff, exists_prop, exists_and_left] at hcontra
        obtain ⟨k,hk,hk',hk''⟩ := hcontra
        simp only [aandRec, and_eq_true, uppcRec_true_iff, Nat.add_one_sub_one] at hk''
        obtain ⟨hky, hkx⟩ := hk''
        have hyle := two_pow_le_toNat_of_getElem_eq_true (x := y) (i := k) (by omega) hky
        have := Nat.mul_le_mul (n₁ := 2 ^ (w + 1 - (k - 1))) (m₁ := 2 ^ k) (n₂ := x.toNat) (m₂ := y.toNat) hkx hyle
        simp [← Nat.pow_add, show w + 1 - (k - 1) + k = w + 1 + 1 by omega] at this
        omega

/-! ### Population Count -/

/-- Extract the `k`-th bit from `x` and extend it to have length `len`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean#L2332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77050a46ff99d345da672844caf68022db57852a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
