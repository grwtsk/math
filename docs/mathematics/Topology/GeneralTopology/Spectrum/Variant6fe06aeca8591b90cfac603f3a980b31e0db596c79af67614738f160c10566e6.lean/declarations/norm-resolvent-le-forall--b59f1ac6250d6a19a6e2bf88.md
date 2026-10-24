# norm_resolvent_le_forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8047e6528b21f30cbf65849dca0d5a7a836fc76e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bb60582-a62e-5110-b3f6-e3510f86970f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a4bb29d-dc69-aed1-94f0-135ec1fd60e6",
  "kind": "theorem",
  "lexical_name": "norm_resolvent_le_forall",
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
  "slug": "norm-resolvent-le-forall--b59f1ac6250d6a19a6e2bf88",
  "source": {
    "blob": "8047e6528b21f30cbf65849dca0d5a7a836fc76e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b59f1ac6250d6a19a6e2bf8802342aadf845128eff9289ec1ad43629923b58c6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a4bb29d-dc69-aed1-94f0-135ec1fd60e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_resolvent_le_forall (a : A) :
    ∀ ε > 0, ∃ R > 0, ∀ z : 𝕜, R ≤ ‖z‖ → ‖resolvent a z‖ ≤ ε := by
  obtain ⟨c, c_pos, hc⟩ := (@NormedRing.inverse_one_sub_norm A _ _).exists_pos
  rw [isBigOWith_iff, eventually_iff, Metric.mem_nhds_iff] at hc
  rcases hc with ⟨δ, δ_pos, hδ⟩
  simp only [CstarRing.norm_one, mul_one] at hδ
  intro ε hε
  have ha₁ : 0 < ‖a‖ + 1 := lt_of_le_of_lt (norm_nonneg a) (lt_add_one _)
  have min_pos : 0 < min (δ * (‖a‖ + 1)⁻¹) (ε * c⁻¹) :=
    lt_min (mul_pos δ_pos (inv_pos.mpr ha₁)) (mul_pos hε (inv_pos.mpr c_pos))
  refine' ⟨(min (δ * (‖a‖ + 1)⁻¹) (ε * c⁻¹))⁻¹, inv_pos.mpr min_pos, fun z hz => _⟩
  have hnz : z ≠ 0 := norm_pos_iff.mp (lt_of_lt_of_le (inv_pos.mpr min_pos) hz)
  replace hz := inv_le_of_inv_le min_pos hz
  rcases (⟨Units.mk0 z hnz, Units.val_mk0 hnz⟩ : IsUnit z) with ⟨z, rfl⟩
  have lt_δ : ‖z⁻¹ • a‖ < δ := by
    rw [Units.smul_def, norm_smul, Units.val_inv_eq_inv_val, norm_inv]
    calc
      ‖(z : 𝕜)‖⁻¹ * ‖a‖ ≤ δ * (‖a‖ + 1)⁻¹ * ‖a‖ :=
        mul_le_mul_of_nonneg_right (hz.trans (min_le_left _ _)) (norm_nonneg _)
      _ < δ := by
        conv => rw [mul_assoc]; rhs; rw [(mul_one δ).symm]
        exact mul_lt_mul_of_pos_left
          ((inv_mul_lt_iff ha₁).mpr ((mul_one (‖a‖ + 1)).symm ▸ lt_add_one _)) δ_pos
  rw [← inv_smul_smul z (resolvent a (z : 𝕜)), units_smul_resolvent_self, resolvent,
    Algebra.algebraMap_eq_smul_one, one_smul, Units.smul_def, norm_smul, Units.val_inv_eq_inv_val,
    norm_inv]
  calc
    _ ≤ ε * c⁻¹ * c :=
      mul_le_mul (hz.trans (min_le_right _ _)) (hδ (mem_ball_zero_iff.mpr lt_δ)) (norm_nonneg _)
        (mul_pos hε (inv_pos.mpr c_pos)).le
    _ = _ := inv_mul_cancel_right₀ c_pos.ne.symm ε
#align spectrum.norm_resolvent_le_forall spectrum.norm_resolvent_le_forall

end resolvent

section OneSubSmul

open ContinuousMultilinearMap ENNReal FormalMultilinearSeries

open scoped NNReal ENNReal

variable [NontriviallyNormedField 𝕜] [NormedRing A] [NormedAlgebra 𝕜 A]

variable (𝕜)

/-- In a Banach algebra `A` over a nontrivially normed field `𝕜`, for any `a : A` the
power series with coefficients `a ^ n` represents the function `(1 - z • a)⁻¹` in a disk of
radius `‖a‖₊⁻¹`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8047e6528b21f30cbf65849dca0d5a7a836fc76e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
