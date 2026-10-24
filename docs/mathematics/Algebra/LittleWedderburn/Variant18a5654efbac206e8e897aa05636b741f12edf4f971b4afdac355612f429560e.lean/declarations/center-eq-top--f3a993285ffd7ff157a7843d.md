# center_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f08adb7eb45251c7e6e2c19efe4a0c716f818da6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bd9a470-74ec-bc26-1937-071945d03bf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e615b05-81cb-8403-728c-00dfa5f8237c",
  "kind": "theorem",
  "lexical_name": "center_eq_top",
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
  "slug": "center-eq-top--f3a993285ffd7ff157a7843d",
  "source": {
    "blob": "f08adb7eb45251c7e6e2c19efe4a0c716f818da6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 68,
    "path": "GRWTSK/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3a993285ffd7ff157a7843ddf965c05c09d0596686aa8d87716280b022fde5d",
  "verification": {
    "reference": "docs/verification/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e615b05-81cb-8403-728c-00dfa5f8237c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem center_eq_top [Finite D] (hD : InductionHyp D) : Subring.center D = ⊤ := by
  classical
  cases nonempty_fintype D
  set Z := Subring.center D
  -- We proceed by contradiction; that is, we assume the center is strictly smaller than `D`.
  by_contra! hZ
  let : Field Z := hD.field hZ.lt_top
  set q := card Z with card_Z
  have hq : 1 < q := by rw [card_Z]; exact one_lt_card
  let n := finrank Z D
  have card_D : card D = q ^ n := Module.card_eq_pow_finrank
  have h1qn : 1 ≤ q ^ n := by rw [← card_D]; exact card_pos
  -- We go about this by looking at the class equation for `Dˣ`:
  -- `q ^ n - 1 = q - 1 + ∑ x : conjugacy classes (D ∖ Dˣ), |x|`.
  -- The next few lines gets the equation into basically this form over `ℤ`.
  have key := Group.card_center_add_sum_card_noncenter_eq_card (Dˣ)
  rw [card_congr (show _ ≃* Zˣ from Subgroup.centerUnitsEquivUnitsCenter D).toEquiv,
      card_units, ← card_Z, card_units, card_D] at key
  -- By properties of the cyclotomic function, we have that `Φₙ(q) ∣ q ^ n - 1`; however, when
  -- `n ≠ 1`, then `¬Φₙ(q) | q - 1`; so if the sum over the conjugacy classes is divisible by
  -- `Φₙ(q)`, then `n = 1`, and therefore the vector space is trivial, as desired.
  let Φₙ := cyclotomic n ℤ
  apply_fun (Nat.cast : ℕ → ℤ) at key
  rw [Nat.cast_add, Nat.cast_sub h1qn, Nat.cast_sub hq.le, Nat.cast_one, Nat.cast_pow] at key
  suffices Φₙ.eval ↑q ∣ ↑(∑ x ∈ (ConjClasses.noncenter Dˣ).toFinset, x.carrier.toFinset.card) by
    have contra : Φₙ.eval _ ∣ _ := eval_dvd (cyclotomic.dvd_X_pow_sub_one n ℤ) (x := (q : ℤ))
    rw [eval_sub, eval_X_pow, eval_one, ← key, Int.dvd_add_left this] at contra
    refine (Nat.le_of_dvd ?_ ?_).not_gt (sub_one_lt_natAbs_cyclotomic_eval (n := n) ?_ hq.ne')
    · exact tsub_pos_of_lt hq
    · convert! Int.natAbs_dvd_natAbs.mpr contra
      clear_value q
      simp only [eq_comm, Int.natAbs_eq_iff, Nat.cast_sub hq.le, Nat.cast_one, neg_sub, true_or]
    · by_contra! h
      obtain ⟨x, hx⟩ := finrank_le_one_iff.mp h
      refine not_le_of_gt hZ.lt_top (fun y _ ↦ Subring.mem_center_iff.mpr fun z ↦ ?_)
      obtain ⟨r, rfl⟩ := hx y
      obtain ⟨s, rfl⟩ := hx z
      rw [smul_mul_smul_comm, smul_mul_smul_comm, mul_comm]
  rw [Nat.cast_sum]
  apply Finset.dvd_sum
  rintro ⟨x⟩ hx
  simp -zeta only [ConjClasses.quot_mk_eq_mk, Set.mem_toFinset] at hx ⊢
  set Zx := Subring.centralizer ({↑x} : Set D)
  -- The key thing is then to note that for all conjugacy classes `x`, `|x|` is given by
  -- `|Dˣ| / |Zxˣ|`, where `Zx` is the centralizer of `x`; but `Zx` is an algebra over `Z`, and
  -- therefore `|Zxˣ| = q ^ d - 1`, where `d` is the dimension of `D` as a vector space over `Z`.
  -- We therefore get that `|x| = (q ^ n - 1) / (q ^ d - 1)`, and as `d` is a strict divisor of `n`,
  -- we do have that `Φₙ(q) | (q ^ n - 1) / (q ^ d - 1)`; extending this over the whole sum
  -- gives us the desired contradiction..
  rw [Set.toFinset_card, ConjClasses.card_carrier, ← card_congr
        (show Zxˣ ≃* _ from unitsCentralizerEquiv _ x).toEquiv, card_units, card_D]
  have hZx : Zx ≠ ⊤ := by
    by_contra! hZx
    refine (ConjClasses.mk_bijOn (Dˣ)).mapsTo (Set.subset_center_units ?_) hx
    exact Subring.centralizer_eq_top_iff_subset.mp hZx <| Set.mem_singleton _
  let : Field Zx := hD.field hZx.lt_top
  let : Algebra Z Zx := (Subring.inclusion <| Subring.center_le_centralizer {(x : D)}).toAlgebra
  let d := finrank Z Zx
  have card_Zx : card Zx = q ^ d := Module.card_eq_pow_finrank
  have h1qd : 1 ≤ q ^ d := by rw [← card_Zx]; exact card_pos
  have : IsScalarTower Z Zx D := ⟨fun x y z ↦ mul_assoc _ _ _⟩
  rw [card_units, card_Zx]
  push_cast [h1qd, h1qn]
  apply Int.dvd_div_of_mul_dvd
  have aux : ∀ {k : ℕ}, ((X : ℤ[X]) ^ k - 1).eval ↑q = (q : ℤ) ^ k - 1 := by
    simp only [eval_X, eval_one, eval_pow, eval_sub, forall_const]
  rw [← aux, ← aux, ← eval_mul]
  refine map_dvd (evalRingHom ↑q) (X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd ℤ ?_)
  refine Nat.mem_properDivisors.mpr ⟨⟨_, (finrank_mul_finrank Z Zx D).symm⟩, ?_⟩
  rw [← Nat.pow_lt_pow_iff_right hq, ← card_D, ← card_Zx]
  obtain ⟨b, -, hb⟩ := SetLike.exists_of_lt hZx.lt_top
  refine card_lt_of_injective_of_notMem _ Subtype.val_injective (?_ : b ∉ _)
  rintro ⟨b, rfl⟩
  exact hb b.2

end InductionHyp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LittleWedderburn/Variant18a5654efbac206e8e897aa05636b741f12edf4f971b4afdac355612f429560e.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f08adb7eb45251c7e6e2c19efe4a0c716f818da6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
