# house_le_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89706497-653d-1b85-baa6-3098909f47ab",
  "kind": "theorem",
  "lexical_name": "house_le_bound",
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
  "slug": "house-le-bound--68f9e963cfdfc53b75e7bcc5",
  "source": {
    "blob": "c8ed24826fa9449efbaea34b87659bb52a1583a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 258,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68f9e963cfdfc53b75e7bcc5fa464ee72106558f6dd2e00957c4821fe0f6afae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89706497-653d-1b85-baa6-3098909f47ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem house_le_bound : ∀ l, house (ξ K x l).1 ≤ (c₁ K) *
    ((c₁ K * q * A)^((p : ℝ) / (q - p))) := by
  let h := finrank ℚ K
  intros l
  calc _ = house (algebraMap (𝓞 K) K (∑ r, (x (l, r)) * ((newBasis K) r))) := rfl
       _ ≤ ∑ r, house (((algebraMap (𝓞 K) K) (x (l, r))) *
        ((algebraMap (𝓞 K) K) ((newBasis K) r))) := ?_
       _ ≤ ∑ r, ‖x (l,r)‖ * house ((algebraMap (𝓞 K) K) ((newBasis K) r)) := ?_
       _ ≤ ∑ r, ‖x (l, r)‖ * (supOfBasis K) := ?_
       _ ≤ ∑ _r : K →+* ℂ, ((↑q * h * ‖asiegel K a‖) ^ ((p : ℝ) / (q - p))) * supOfBasis K := ?_
       _ ≤ h * (c₂ K) * ((q * c₁ K * A) ^ ((p : ℝ) / (q - p))) := ?_
       _ ≤ c₁ K * ((c₁ K * ↑q * A) ^ ((p : ℝ) / (q - p))) := ?_
  · simp_rw [← map_mul, map_sum]; apply house_sum_le_sum_house
  · apply sum_le_sum; intros r _; convert house_mul_le ..
    simp only [map_intCast, house_intCast, Int.cast_abs, Int.norm_eq_abs]
  · apply sum_le_sum; intros r _; unfold supOfBasis
    apply mul_le_mul_of_nonneg_left ?_ (norm_nonneg (x (l,r)))
    · simp only [le_sup'_iff, mem_univ, true_and]; use r
  · apply sum_le_sum; intros r _
    apply mul_le_mul_of_nonneg_right ?_ (supOfBasis_nonneg K)
    exact le_trans (norm_le_pi_norm x ⟨l, r⟩) hxbound
  · simp only [Nat.cast_mul, sum_const, card_univ, nsmul_eq_mul]
    rw [Embeddings.card, mul_comm _ (supOfBasis K), c₂, c₁, ← mul_assoc]
    apply mul_le_mul
    · apply mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg' _)
      · exact le_mul_of_one_le_left (supOfBasis_nonneg K) (le_max_left ..)
    · apply Real.rpow_le_rpow (mul_nonneg (mul_nonneg (Nat.cast_nonneg' _) (Nat.cast_nonneg' _))
        (norm_nonneg _))
      · rw [← mul_assoc, mul_assoc (_*_)]
        apply mul_le_mul_of_nonneg_left (asiegel_remark K a habs Apos)
          (mul_nonneg (Nat.cast_nonneg' _) (Nat.cast_nonneg _))
      · exact div_nonneg (Nat.cast_nonneg' _) (sub_nonneg.2 (mod_cast hpq.le))
    · apply Real.rpow_nonneg
      exact mul_nonneg (mul_nonneg (Nat.cast_nonneg' _) (Nat.cast_nonneg' _))
        (norm_nonneg _)
    · exact mul_nonneg (Nat.cast_nonneg' _) (mul_nonneg (le_trans zero_le_one (le_max_left ..))
        (supOfBasis_nonneg _))
  · rw [mul_comm (q : ℝ) (c₁ K)]; rfl

include hpq h0p cardα cardβ ha habs in
/-- There exists a "small" non-zero algebraic integral solution of an
non-trivial underdetermined system of linear equations with algebraic integer coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant090ed54c3058657865f7830aac1bcf1c209e003a1bd8ef9b93b2fad02a0423df.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8ed24826fa9449efbaea34b87659bb52a1583a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
