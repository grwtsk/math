# eq_pow_of_pell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc4135462a62ee33f2f225f440265f0bcc9f261b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 942,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a746f296-6320-9913-afc1-8f391b2a49b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cdc45f1d-39f0-369e-8bce-6d5891adcb69",
  "kind": "theorem",
  "lexical_name": "eq_pow_of_pell",
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
  "slug": "eq-pow-of-pell--f716e34df88609db8bff0830",
  "source": {
    "blob": "fc4135462a62ee33f2f225f440265f0bcc9f261b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1014,
    "line": 942,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f716e34df88609db8bff083067d9403506ba943c679533187ab398fc26400180",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdc45f1d-39f0-369e-8bce-6d5891adcb69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 942–1014.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_pow_of_pell {m n k} :
    n ^ k = m ↔ k = 0 ∧ m = 1 ∨0 < k ∧ (n = 0 ∧ m = 0 ∨
      0 < n ∧ ∃ (w a t z : ℕ) (a1 : 1 < a), xn a1 k ≡ yn a1 k * (a - n) + m [MOD t] ∧
      2 * a * n = t + (n * n + 1) ∧ m < t ∧
      n ≤ w ∧ k ≤ w ∧ a * a - ((w + 1) * (w + 1) - 1) * (w * z) * (w * z) = 1) := by
  constructor
  · rintro rfl
    refine' k.eq_zero_or_pos.imp (fun k0 : k = 0 => k0.symm ▸ ⟨rfl, rfl⟩) fun hk => ⟨hk, _⟩
    refine' n.eq_zero_or_pos.imp (fun n0 : n = 0 => n0.symm ▸ ⟨rfl, zero_pow hk⟩) fun hn => ⟨hn, _⟩
    set w := max n k
    have nw : n ≤ w := le_max_left _ _
    have kw : k ≤ w := le_max_right _ _
    have wpos : 0 < w := hn.trans_le nw
    have w1 : 1 < w + 1 := Nat.succ_lt_succ wpos
    set a := xn w1 w
    have a1 : 1 < a := strictMono_x w1 wpos
    have na : n ≤ a := nw.trans (n_lt_xn w1 w).le
    set x := xn a1 k
    set y := yn a1 k
    obtain ⟨z, ze⟩ : w ∣ yn w1 w
    exact modEq_zero_iff_dvd.1 ((yn_modEq_a_sub_one w1 w).trans dvd_rfl.modEq_zero_nat)
    have nt : (↑(n ^ k) : ℤ) < 2 * a * n - n * n - 1 := by
      refine' eq_pow_of_pell_lem hn.ne' hk.ne' _
      calc
        n ^ k ≤ n ^ w := Nat.pow_le_pow_of_le_right hn kw
        _ < (w + 1) ^ w := (Nat.pow_lt_pow_of_lt_left (Nat.lt_succ_of_le nw) wpos)
        _ ≤ a := xn_ge_a_pow w1 w
    lift (2 * a * n - n * n - 1 : ℤ) to ℕ using (Nat.cast_nonneg _).trans nt.le with t te
    have tm : x ≡ y * (a - n) + n ^ k [MOD t] := by
      apply modEq_of_dvd
      rw [Int.ofNat_add, Int.ofNat_mul, Int.ofNat_sub na, te]
      exact x_sub_y_dvd_pow a1 n k
    have ta : 2 * a * n = t + (n * n + 1) := by
      zify
      rw [te]
      ring_nf
    have zp : a * a - ((w + 1) * (w + 1) - 1) * (w * z) * (w * z) = 1 := ze ▸ pell_eq w1 w
    exact ⟨w, a, t, z, a1, tm, ta, Nat.cast_lt.1 nt, nw, kw, zp⟩
  · rintro (⟨rfl, rfl⟩ | ⟨hk0, ⟨rfl, rfl⟩ | ⟨hn0, w, a, t, z, a1, tm, ta, mt, nw, kw, zp⟩⟩)
    · exact _root_.pow_zero n
    · exact zero_pow hk0
    have hw0 : 0 < w := hn0.trans_le nw
    have hw1 : 1 < w + 1 := Nat.succ_lt_succ hw0
    rcases eq_pell hw1 zp with ⟨j, rfl, yj⟩
    have hj0 : 0 < j := by
      apply Nat.pos_of_ne_zero
      rintro rfl
      exact lt_irrefl 1 a1
    have wj : w ≤ j :=
      Nat.le_of_dvd hj0
        (modEq_zero_iff_dvd.1 <|
          (yn_modEq_a_sub_one hw1 j).symm.trans <| modEq_zero_iff_dvd.2 ⟨z, yj.symm⟩)
    have hnka : n ^ k < xn hw1 j
    calc
      n ^ k ≤ n ^ j := Nat.pow_le_pow_of_le_right hn0 (le_trans kw wj)
      _ < (w + 1) ^ j := (Nat.pow_lt_pow_of_lt_left (Nat.lt_succ_of_le nw) hj0)
      _ ≤ xn hw1 j := xn_ge_a_pow hw1 j
    have nt : (↑(n ^ k) : ℤ) < 2 * xn hw1 j * n - n * n - 1 :=
      eq_pow_of_pell_lem hn0.ne' hk0.ne' hnka
    have na : n ≤ xn hw1 j := (Nat.le_self_pow hk0.ne' _).trans hnka.le
    have te : (t : ℤ) = 2 * xn hw1 j * n - n * n - 1 := by
      rw [sub_sub, eq_sub_iff_add_eq]
      exact_mod_cast ta.symm
    have : xn a1 k ≡ yn a1 k * (xn hw1 j - n) + n ^ k [MOD t] := by
      apply modEq_of_dvd
      rw [te, Nat.cast_add, Nat.cast_mul, Int.ofNat_sub na]
      exact x_sub_y_dvd_pow a1 n k
    have : n ^ k % t = m % t := (this.symm.trans tm).add_left_cancel' _
    rw [← te] at nt
    rwa [Nat.mod_eq_of_lt (Nat.cast_lt.1 nt), Nat.mod_eq_of_lt mt] at this
#align pell.eq_pow_of_pell Pell.eq_pow_of_pell

end Pell
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/PellMatiyasevic/Variant854306b325a9bb15d4cc1495f6fb657d8a8c5835ce1b710a00cd06af57c8c6c4.lean#L942).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc4135462a62ee33f2f225f440265f0bcc9f261b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
