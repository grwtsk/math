# isStarProjection_iff_mem_extremePoints_setOfPred_nonneg_inter_unitClosedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a6bdbf7d2fd31855d20d81b0f4b58700aaa5ffc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9cd9ee4297485158d4f395a10c4eb80daf400d77c3afec53e43ced248e4bdcd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84a33feb-d392-4315-5740-3f4418a53113",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95f78052-b7b5-cef0-2440-1c09d5e33053",
  "kind": "theorem",
  "lexical_name": "isStarProjection_iff_mem_extremePoints_setOfPred_nonneg_inter_unitClosedBall",
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
  "slug": "isstarprojection-iff-mem-extremepoints-setofpred-nonneg-inter-unitclosed--543a7be1c97aabd773cb44c2",
  "source": {
    "blob": "0a6bdbf7d2fd31855d20d81b0f4b58700aaa5ffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 27,
    "path": "GRWTSK/Analysis/Extreme/Varianta9cd9ee4297485158d4f395a10c4eb80daf400d77c3afec53e43ced248e4bdcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:543a7be1c97aabd773cb44c2f560d573b4b8a77009a6340aff92ebb858c377eb",
  "verification": {
    "reference": "docs/verification/Analysis/Extreme/Varianta9cd9ee4297485158d4f395a10c4eb80daf400d77c3afec53e43ced248e4bdcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95f78052-b7b5-cef0-2440-1c09d5e33053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isStarProjection_iff_mem_extremePoints_setOfPred_nonneg_inter_unitClosedBall
    [PartialOrder A] [StarOrderedRing A] {e : A} :
    IsStarProjection e ↔ e ∈ extremePoints ℝ ({x : A | 0 ≤ x} ∩ closedBall 0 1) := by
  simp only [mem_closedBall_zero_iff, mem_extremePoints_iff_left, mem_inter_iff,
    mem_ofPred_eq, and_imp]
  refine ⟨fun he ↦ ⟨⟨he.nonneg, he.norm_le⟩,
    fun a ha ha1 b hb hb1 ⟨t, s, h0t, h0s, hts, hlin⟩ ↦ ?_⟩, fun ⟨⟨h1, h2⟩, h3⟩ ↦ ?_⟩
  · /- Suppose `e` is a star projection, and `a` and `b` are in the nonnegative closed unit ball
    such that `t • a + s • b = e` where `t` and `s` are positive.
    Then we want to show `a = e`.
    As `t • a + s • b = e`, we have that in the unitization
    `t • (e * (1 - a) * e)) + s • (e * (1 - b) * e) = 0`.
    And as `a` and `b` are in the nonnegative closed unit ball, we get `1 - a` and
    `1 - b` are nonnegative (and so are `e * (1 - a) * e` and `e * (1 - b) * e`).
    Then `t • (e * (1 - a) * e)) ≤ t • (e * (1 - a) * e)) + s • (e * (1 - b) * e) = 0`,
    and so `t • (e * (1 - a) * e)) = 0`.
    Note that we also get `0 ≤ t • a ≤ t • a + s • b = e` and so `t • e * a * e = t • a` using
    `IsStarProjection.conjugate_of_nonneg_of_le`.
    And so the result then follows. -/
    have ⟨ha01, hb01⟩ : (a : A⁺¹) ∈ Icc 0 1 ∧ (b : A⁺¹) ∈ Icc 0 1 := by
      grind [inr_mem_Icc_iff_norm_le]
    suffices t • (e * (1 - a : A⁺¹) * e) = 0 by
      rw [← h0t.ne'.isUnit.smul_left_cancel, ← he.conjugate_of_nonneg_of_le
          (smul_nonneg h0t.le ha) ?hae]
      case hae => simpa [hlin] using le_add_of_nonneg_right (a := t • a) (by positivity : 0 ≤ s • b)
      apply inr_injective (R := ℂ) <| Eq.symm ?_
      simpa only [mul_one_sub_mul, he.inr.isIdempotentElem.eq, smul_sub, sub_eq_zero,
        smul_mul_assoc, mul_smul_comm, smul_sub, inr_mul, inr_smul]
    apply le_antisymm ?_ <| smul_nonneg h0t.le <| he.inr.isSelfAdjoint.conjugate_nonneg <| by
      simpa using ha01.2
    calc
      _ ≤ t • (e * (1 - a : A⁺¹) * e) + s • (e * (1 - b) * e) := by
        refine le_add_of_nonneg_right <| smul_nonneg h0s.le ?_
        simpa [mul_one_sub_mul] using he.inr.isSelfAdjoint.conjugate_le_conjugate <|
          norm_le_one_iff_of_nonneg (b : A⁺¹) (by simpa) |>.mp (by simpa [norm_inr])
      _ = e - e * (t • a + s • b) * e := by
        simp only [mul_one_sub_mul, he.inr.isIdempotentElem.eq, smul_sub, mul_add,
          Algebra.mul_smul_comm, add_mul, Algebra.smul_mul_assoc]
        match_scalars <;> grind
      _ = 0 := by simp [← inr_smul, ← inr_add, hlin, ← inr_mul, he.isIdempotentElem.eq]
  · /- Now suppose `e` is an extreme point of the nonnegative closed unit ball.
    So then it is self-adjoint, and so we only need to show `e * e = e`.
    Note that since `0 ≤ e ≤ 1` in the unitization, we also get `0 ≤ e * (2 - e) = 2 • e - e * e`,
    and `0 ≤ star (1 - e) * (1 - e) = 1 - 2 • e - e * e` which means `2 • e - e * e` is in the
    closed unit ball. So `2 • e - e * e` is in the nonnegative closed unit ball.
    Then using the extremity of `e`, we get `e * e = e` since `e * e` is obviously in the
    nonnegative closed unit ball, and `e = 2⁻¹ • e * e + 2⁻¹ • (2 • e - e * e)`. -/
    have : 0 ≤ (2 : ℝ) • e - e * e := by
      have : e * e ≤ e := le_of_inr <| by
        simpa using mul_self_le_of_nonneg_of_norm_le_one h1.inr (by simpa [norm_inr])
      simpa [two_smul] using le_add_of_nonneg_of_le h1 this
    refine ⟨h3 _ (Commute.mul_nonneg h1 h1 rfl) ?_ ((2 : ℝ) • e - e * e) this ?_
      ⟨2⁻¹, 2⁻¹, by simp [smul_sub, ← one_div, smul_smul]⟩, h1.isSelfAdjoint⟩
    · grw [norm_mul_le, h2, h2, one_mul]
    · rw [← norm_inr (𝕜 := ℂ), norm_le_one_iff_of_nonneg _ this.inr, ← sub_nonneg]
      calc 0 ≤ star (1 - e : A⁺¹) * (1 - e) := star_mul_self_nonneg _
        _ = _ := by simp [LE.le.star_eq, h1, mul_sub, sub_mul, two_smul, sub_sub, add_sub]

@[deprecated (since := "2026-07-09")]
alias isStarProjection_iff_mem_extremePoints_setOf_nonneg_inter_unitClosedBall :=
  isStarProjection_iff_mem_extremePoints_setOfPred_nonneg_inter_unitClosedBall
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Extreme/Varianta9cd9ee4297485158d4f395a10c4eb80daf400d77c3afec53e43ced248e4bdcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Extreme/Varianta9cd9ee4297485158d4f395a10c4eb80daf400d77c3afec53e43ced248e4bdcd.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a6bdbf7d2fd31855d20d81b0f4b58700aaa5ffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
