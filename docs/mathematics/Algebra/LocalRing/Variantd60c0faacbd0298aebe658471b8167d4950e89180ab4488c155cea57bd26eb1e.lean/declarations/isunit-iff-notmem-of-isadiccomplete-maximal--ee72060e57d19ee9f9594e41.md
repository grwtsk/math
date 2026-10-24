# isUnit_iff_notMem_of_isAdicComplete_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5732e64b-598e-d500-093a-02b5b664988c",
  "kind": "lemma",
  "lexical_name": "isUnit_iff_notMem_of_isAdicComplete_maximal",
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
  "slug": "isunit-iff-notmem-of-isadiccomplete-maximal--ee72060e57d19ee9f9594e41",
  "source": {
    "blob": "da938ef4559060a87dec95720ca44e26747d55c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 30,
    "path": "GRWTSK/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee72060e57d19ee9f9594e41c66b75ba43c8a723d108ed385a97fd941e5e5ca8",
  "verification": {
    "reference": "docs/verification/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5732e64b-598e-d500-093a-02b5b664988c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isUnit_iff_notMem_of_isAdicComplete_maximal [IsAdicComplete m R] (r : R) :
    IsUnit r ↔ r ∉ m := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · by_contra mem
    rcases IsUnit.exists_left_inv h with ⟨s, hs⟩
    absurd m.ne_top_iff_one.mp (Ideal.IsMaximal.ne_top hmax)
    simp [← hs, Ideal.mul_mem_left m s mem]
  · have mapu {n : ℕ} (npos : 0 < n) : IsUnit (Ideal.Quotient.mk (m ^ n) r) := by
      induction' n with n ih
      · absurd npos
        exact Nat.not_lt_zero 0
      · by_cases neq0 : n = 0
        · let max' : (m ^ (n + 1)).IsMaximal := by simpa only [neq0, zero_add, pow_one] using hmax
          let hField : Field (R ⧸ m ^ (n + 1)) := Ideal.Quotient.field (m ^ (n + 1))
          simpa [isUnit_iff_ne_zero, ne_eq, Ideal.Quotient.eq_zero_iff_mem.not, neq0] using h
        · apply factorPowSucc.isUnit_of_isUnit_image (Nat.zero_lt_of_ne_zero neq0)
          simpa using (ih (Nat.zero_lt_of_ne_zero neq0))
    choose invSeries' invSeries_spec' using fun (n : {n : ℕ // 0 < n}) ↦
      (IsUnit.exists_left_inv (mapu n.2))
    let invSeries : ℕ → R := fun n ↦ if h : n = 0 then 0 else Classical.choose <|
      Ideal.Quotient.mk_surjective <| invSeries' ⟨n, (Nat.zero_lt_of_ne_zero h)⟩
    have invSeries_spec {n : ℕ} (npos : 0 < n): (Ideal.Quotient.mk (m ^ n)) (invSeries n) =
      invSeries' ⟨n, npos⟩ := by
      simpa only [Nat.ne_zero_of_lt npos, invSeries]
      using Classical.choose_spec (Ideal.Quotient.mk_surjective (invSeries' ⟨n, npos⟩))
    have mod {a b : ℕ} (le : a ≤ b) :
      invSeries a ≡ invSeries b [SMOD m ^ a • (⊤ : Submodule R R)] := by
      by_cases apos : 0 < a
      · simp only [smul_eq_mul, Ideal.mul_top]
        rw [SModEq.sub_mem, ← eq_zero_iff_mem, map_sub, ← (mapu apos).mul_right_inj,
          mul_zero, mul_sub]
        nth_rw 3 [← factor_mk (pow_le_pow_right le), ← factor_mk (pow_le_pow_right le)]
        simp only [invSeries_spec apos, invSeries_spec (Nat.lt_of_lt_of_le apos le)]
        rw [← map_mul, mul_comm, invSeries_spec', mul_comm, invSeries_spec',
          map_one, sub_self]
      · simp [Nat.eq_zero_of_not_pos apos]
    rcases IsAdicComplete.toIsPrecomplete.prec mod with ⟨inv, hinv⟩
    have eq (n : ℕ) : inv * r - 1 ≡ 0 [SMOD m ^ n • (⊤ : Submodule R R)] := by
      by_cases npos : 0 < n
      · apply SModEq.sub_mem.mpr
        simp only [smul_eq_mul, Ideal.mul_top, sub_zero, ← eq_zero_iff_mem]
        rw [map_sub, map_one, map_mul, ← sub_add_cancel inv (invSeries n), map_add]
        have := SModEq.sub_mem.mp (hinv n).symm
        simp only [smul_eq_mul, Ideal.mul_top] at this
        simp [Ideal.Quotient.eq_zero_iff_mem.mpr this, invSeries_spec npos, invSeries_spec']
      · simp [Nat.eq_zero_of_not_pos npos]
    apply isUnit_iff_exists_inv'.mpr
    use inv
    exact sub_eq_zero.mp <| IsHausdorff.haus IsAdicComplete.toIsHausdorff (inv * r - 1) eq

@[deprecated (since := "2025-05-24")]
alias isUnit_iff_nmem_of_isAdicComplete_maximal := isUnit_iff_notMem_of_isAdicComplete_maximal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalRing/Variantd60c0faacbd0298aebe658471b8167d4950e89180ab4488c155cea57bd26eb1e.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da938ef4559060a87dec95720ca44e26747d55c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
