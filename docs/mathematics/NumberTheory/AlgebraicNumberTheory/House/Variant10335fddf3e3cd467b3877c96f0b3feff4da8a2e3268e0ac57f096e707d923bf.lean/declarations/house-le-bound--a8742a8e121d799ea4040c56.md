# house_le_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ffdf904-d59a-4b64-99de-e1ed38eea3a7",
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
  "slug": "house-le-bound--a8742a8e121d799ea4040c56",
  "source": {
    "blob": "f215b5b670e1726de5499c0e831b0cfce0acfdfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 323,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8742a8e121d799ea4040c562adb86b8f768fe3ef9dfdd94c94d50403c50db94",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ffdf904-d59a-4b64-99de-e1ed38eea3a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem house_le_bound : ∀ l, house (ξ K x l).1 ≤ (c₁ K) *
    ((c₁ K * q * A) ^ ((p : ℝ) / (q - p))) := by
  let h := finrank ℚ K
  intro l
  have H₀ : 0 ≤ NumberField.house.supOfBasis K := supOfBasis_nonneg _
  have H₁ : 0 < (q - p : ℝ) := sub_pos.mpr <| mod_cast hpq
  calc _ = house (algebraMap (𝓞 K) K (∑ r, (x (l, r)) * ((newBasis K) r))) := rfl
       _ ≤ ∑ r, house (((algebraMap (𝓞 K) K) (x (l, r))) *
        ((algebraMap (𝓞 K) K) ((newBasis K) r))) := ?_
       _ ≤ ∑ r, ‖x (l, r)‖ * house ((algebraMap (𝓞 K) K) ((newBasis K) r)) := ?_
       _ ≤ ∑ r, ‖x (l, r)‖ * (supOfBasis K) := ?_
       _ ≤ ∑ _r : K →+* ℂ, ((↑q * h * ‖asiegel K a‖) ^ ((p : ℝ) / (q - p))) * supOfBasis K := ?_
       _ ≤ h * (c₂ K) * ((q * c₁ K * A) ^ ((p : ℝ) / (q - p))) := ?_
       _ ≤ c₁ K * ((c₁ K * ↑q * A) ^ ((p : ℝ) / (q - p))) := ?_
  · simp_rw [← map_mul, map_sum]; apply house_sum_le_sum_house
  · gcongr with r _; convert! house_mul_le ..
    simp only [map_intCast, house_intCast, Int.cast_abs, Int.norm_eq_abs]
  · unfold supOfBasis
    gcongr with r _
    simp only [le_sup'_iff, mem_univ, true_and]; use r
  · gcongr with r _
    exact le_trans (norm_le_pi_norm x ⟨l, r⟩) hxbound
  · simp only [sum_const, card_univ, nsmul_eq_mul]
    rw [Embeddings.card, mul_comm _ (supOfBasis K), c₂, c₁, ← mul_assoc,
      ← mul_assoc (q : ℝ), mul_assoc (q * _ : ℝ)]
    gcongr
    · exact le_mul_of_one_le_left (supOfBasis_nonneg K) (le_max_left ..)
    · exact asiegel_remark K a habs Apos
  · rw [mul_comm (q : ℝ) (c₁ K)]; rfl

set_option backward.privateInPublic.warn false in
include hpq h0p cardα cardβ ha habs in
/-- There exists a "small" non-zero algebraic integral solution of an
non-trivial underdetermined system of linear equations with algebraic integer coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/House/Variant10335fddf3e3cd467b3877c96f0b3feff4da8a2e3268e0ac57f096e707d923bf.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f215b5b670e1726de5499c0e831b0cfce0acfdfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
