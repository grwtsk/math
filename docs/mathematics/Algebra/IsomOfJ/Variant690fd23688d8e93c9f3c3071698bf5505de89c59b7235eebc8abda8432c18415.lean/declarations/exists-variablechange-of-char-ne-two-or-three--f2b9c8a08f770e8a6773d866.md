# exists_variableChange_of_char_ne_two_or_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ac9e589040b0978c8987d5ffa4ac6a8543bedd6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/690fd23688d8e93c9f3c3071698bf5505de89c59b7235eebc8abda8432c18415.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:44b593b1-fa66-b2be-56c0-2163c0e28db1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71ae1422-dfcc-cfa4-3553-b6ee2c2e5cb3",
  "kind": "lemma",
  "lexical_name": "exists_variableChange_of_char_ne_two_or_three",
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
  "slug": "exists-variablechange-of-char-ne-two-or-three--f2b9c8a08f770e8a6773d866",
  "source": {
    "blob": "6ac9e589040b0978c8987d5ffa4ac6a8543bedd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 207,
    "path": "GRWTSK/Algebra/IsomOfJ/Variant690fd23688d8e93c9f3c3071698bf5505de89c59b7235eebc8abda8432c18415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2b9c8a08f770e8a6773d866525ae69092d6e926bc7f612714866d907eaa41f3",
  "verification": {
    "reference": "docs/verification/Algebra/IsomOfJ/Variant690fd23688d8e93c9f3c3071698bf5505de89c59b7235eebc8abda8432c18415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71ae1422-dfcc-cfa4-3553-b6ee2c2e5cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_variableChange_of_char_ne_two_or_three
    {p : ℕ} [CharP F p] (hchar2 : p ≠ 2) (hchar3 : p ≠ 3) (heq : E.j = E'.j) :
    ∃ C : VariableChange F, C • E = E' := by
  replace hchar2 : (2 : F) ≠ 0 := CharP.cast_ne_zero_of_ne_of_prime F Nat.prime_two hchar2
  replace hchar3 : (3 : F) ≠ 0 := CharP.cast_ne_zero_of_ne_of_prime F Nat.prime_three hchar3
  haveI := NeZero.mk hchar2
  haveI : NeZero (4 : F) := NeZero.mk <| by
    have := pow_ne_zero 2 hchar2
    norm_num1 at this
    exact this
  haveI : NeZero (6 : F) := NeZero.mk <| by
    have := mul_ne_zero hchar2 hchar3
    norm_num1 at this
    exact this
  letI : Invertible (2 : F) := invertibleOfNonzero hchar2
  letI : Invertible (3 : F) := invertibleOfNonzero hchar3
  wlog _ : E.IsShortNF generalizing E
  · obtain ⟨C, hE⟩ := E.exists_variableChange_isShortNF
    rw [← variableChange_j E C] at heq
    obtain ⟨C', hC⟩ := this _ heq hE
    exact ⟨C' * C, by rwa [mul_smul]⟩
  wlog _ : E'.IsShortNF generalizing E'
  · obtain ⟨C, hE'⟩ := E'.exists_variableChange_isShortNF
    rw [← variableChange_j E' C] at heq
    obtain ⟨C', hC⟩ := this _ heq hE'
    exact ⟨C⁻¹ * C', by rw [mul_smul, hC, ← mul_smul, inv_mul_cancel, one_smul]⟩
  simp_rw [j, Units.val_inv_eq_inv_val, inv_mul_eq_div,
    div_eq_div_iff E.Δ'.ne_zero E'.Δ'.ne_zero, coe_Δ', Δ_of_isShortNF, c₄_of_isShortNF] at heq
  replace heq : E.a₄ ^ 3 * E'.a₆ ^ 2 = E'.a₄ ^ 3 * E.a₆ ^ 2 := by
    letI : Invertible (47775744 : F) := invertibleOfNonzero <| by
      have := mul_ne_zero (pow_ne_zero 16 hchar2) (pow_ne_zero 6 hchar3)
      norm_num1 at this
      exact this
    rw [← mul_right_inj_of_invertible (47775744 : F)]
    linear_combination heq
  by_cases ha₄ : E.a₄ = 0
  · have ha₆ := E.Δ'.ne_zero
    rw [coe_Δ', Δ_of_isShortNF, ha₄, zero_pow three_ne_zero, mul_zero, zero_add, ← mul_assoc,
      mul_ne_zero_iff, pow_ne_zero_iff two_ne_zero] at ha₆
    replace ha₆ := ha₆.2
    have ha₄' : E'.a₄ = 0 := by
      rw [ha₄, zero_pow three_ne_zero, zero_mul, zero_eq_mul] at heq
      exact (pow_eq_zero_iff three_ne_zero).1 <| heq.resolve_right <| pow_ne_zero 2 ha₆
    have ha₆' := E'.Δ'.ne_zero
    rw [coe_Δ', Δ_of_isShortNF, ha₄', zero_pow three_ne_zero, mul_zero, zero_add, ← mul_assoc,
      mul_ne_zero_iff, pow_ne_zero_iff two_ne_zero] at ha₆'
    replace ha₆' := ha₆'.2
    obtain ⟨u, hu⟩ := IsSepClosed.exists_pow_nat_eq (E.a₆ / E'.a₆) 6
    have hu0 : u ≠ 0 := by
      rw [← pow_ne_zero_iff (Nat.succ_ne_zero 5), hu, div_ne_zero_iff]
      exact ⟨ha₆, ha₆'⟩
    use ⟨Units.mk0 u hu0, 0, 0, 0⟩
    ext
    · simp
    · simp
    · simp
    · simp [ha₄, ha₄']
    · simp_rw [variableChange_a₆, a₁_of_isShortNF, a₂_of_isShortNF, a₃_of_isShortNF,
        ha₄, Units.val_inv_eq_inv_val, Units.val_mk0, inv_pow, inv_mul_eq_div, hu]
      field_simp
  by_cases ha₆ : E.a₆ = 0
  · have ha₄ := E.Δ'.ne_zero
    rw [coe_Δ', Δ_of_isShortNF, ha₆, zero_pow two_ne_zero, mul_zero, add_zero, ← mul_assoc,
      mul_ne_zero_iff, pow_ne_zero_iff three_ne_zero] at ha₄
    replace ha₄ := ha₄.2
    have ha₆' : E'.a₆ = 0 := by
      rw [ha₆, zero_pow two_ne_zero, mul_zero, mul_eq_zero] at heq
      exact (pow_eq_zero_iff two_ne_zero).1 <| heq.resolve_left <| pow_ne_zero 3 ha₄
    have ha₄' := E'.Δ'.ne_zero
    rw [coe_Δ', Δ_of_isShortNF, ha₆', zero_pow two_ne_zero, mul_zero, add_zero, ← mul_assoc,
      mul_ne_zero_iff, pow_ne_zero_iff three_ne_zero] at ha₄'
    replace ha₄' := ha₄'.2
    obtain ⟨u, hu⟩ := IsSepClosed.exists_pow_nat_eq (E.a₄ / E'.a₄) 4
    have hu0 : u ≠ 0 := by
      rw [← pow_ne_zero_iff four_ne_zero, hu, div_ne_zero_iff]
      exact ⟨ha₄, ha₄'⟩
    use ⟨Units.mk0 u hu0, 0, 0, 0⟩
    ext
    · simp
    · simp
    · simp
    · simp_rw [variableChange_a₄, a₁_of_isShortNF, a₂_of_isShortNF, a₃_of_isShortNF,
        Units.val_inv_eq_inv_val, Units.val_mk0, inv_pow, inv_mul_eq_div, hu]
      field_simp
    · simp [ha₆, ha₆']
  have ha₄' : E'.a₄ ≠ 0 := fun h ↦ by
    rw [h, zero_pow three_ne_zero, zero_mul, mul_eq_zero,
      pow_eq_zero_iff two_ne_zero, pow_eq_zero_iff three_ne_zero] at heq
    simpa [E'.coe_Δ', Δ_of_isShortNF, h, heq.resolve_left ha₄] using E'.Δ'.ne_zero
  have ha₆' : E'.a₆ ≠ 0 := fun h ↦ by
    rw [h, zero_pow two_ne_zero, mul_zero, zero_eq_mul,
      pow_eq_zero_iff two_ne_zero, pow_eq_zero_iff three_ne_zero] at heq
    tauto
  obtain ⟨u, hu⟩ := IsSepClosed.exists_pow_nat_eq (E.a₆ / E'.a₆ / (E.a₄ / E'.a₄)) 2
  have hu4 : u ^ 4 = E.a₄ / E'.a₄ := by
    rw [pow_mul u 2 2, hu]
    field_simp
    linear_combination -heq
  have hu6 : u ^ 6 = E.a₆ / E'.a₆ := by
    rw [pow_mul u 2 3, hu]
    field_simp
    linear_combination -E.a₆ * E'.a₆ * heq
  have hu0 : u ≠ 0 := by
    rw [← pow_ne_zero_iff four_ne_zero, hu4, div_ne_zero_iff]
    exact ⟨ha₄, ha₄'⟩
  use ⟨Units.mk0 u hu0, 0, 0, 0⟩
  ext
  · simp
  · simp
  · simp
  · simp_rw [variableChange_a₄, a₁_of_isShortNF, a₂_of_isShortNF, a₃_of_isShortNF,
      Units.val_inv_eq_inv_val, Units.val_mk0, inv_pow, inv_mul_eq_div, hu4]
    field_simp
  · simp_rw [variableChange_a₆, a₁_of_isShortNF, a₂_of_isShortNF, a₃_of_isShortNF,
      Units.val_inv_eq_inv_val, Units.val_mk0, inv_pow, inv_mul_eq_div, hu6]
    field_simp

end CharNeTwoOrThree

/-- If there are two elliptic curves with the same `j`-invariants defined over a
separably closed field, then there exists a change of variables over that field which change
one curve into another. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsomOfJ/Variant690fd23688d8e93c9f3c3071698bf5505de89c59b7235eebc8abda8432c18415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsomOfJ/Variant690fd23688d8e93c9f3c3071698bf5505de89c59b7235eebc8abda8432c18415.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ac9e589040b0978c8987d5ffa4ac6a8543bedd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
