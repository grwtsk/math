# delayedPickup_of_supplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0443d01b-efea-4251-a577-e771692ec979",
  "kind": "theorem",
  "lexical_name": "delayedPickup_of_supplier",
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
  "slug": "delayedpickup-of-supplier--5ebfeb7e658ed8322d881a64",
  "source": {
    "blob": "3c05c1608b14b0e522cd92f3ec160857acaf0264",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 136,
    "path": "GRWTSK/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ebfeb7e658ed8322d881a647da7f1b2d6f1e7ca4cc6625fa1151fe00dcbe893",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0443d01b-efea-4251-a577-e771692ec979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem delayedPickup_of_supplier {K D p R : ℝ} (hK : 0 ≤ K) (hD : 0 ≤ D)
    (hp : 0 ≤ p) (hR : max 1 (4 * K) ≤ R)
    (hsupplier : ∀ A : ℝ, R ≤ A → signedMeter A ≤ (supplierAllowance K D p A : EReal))
    {T : ℝ} (hT : 2 * R ≤ T) :
    pickup T ≤ supplierCoefficient K (T + Real.log 2) * positiveEnvelope (T + Real.log 2) +
      (D + 1) * (1 + T) ^ max p 1 := by
  have hl0 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hl1 : Real.log 2 ≤ 1 := by
    have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
    norm_num at h
    exact h
  have hR1 : 1 ≤ R := (le_max_left _ _).trans hR
  have ht0 : 0 ≤ T := by linarith
  let A : ℝ := (T + Real.log 2) / 2
  have hra : R ≤ A := by dsimp [A]; linarith
  have ha : 1 ≤ A := hR1.trans hra
  have hapos : 0 < A := by linarith
  have hx : 0 < T + Real.log 2 := by linarith
  have hbudget := terminal_reading_le_of_signedMeter ha
    (supplierAllowance_nonneg hK hD ha) (hsupplier A hra)
  have he : 2 * A = T + Real.log 2 := by dsimp [A]; ring
  have he' : 2 * A - Real.log 2 = T := by rw [he]; ring
  rw [he'] at hbudget
  have hc : (1 + K / A) / Real.sqrt 2 = supplierCoefficient K (T + Real.log 2) := by
    unfold supplierCoefficient A
    congr 1
    field_simp
  have hb1 : 1 ≤ 1 + T := by linarith
  have hale : A ≤ 1 + T := by dsimp [A]; linarith
  have hpa : A ^ p ≤ (1 + T) ^ max p 1 :=
    (Real.rpow_le_rpow hapos.le hale hp).trans
      (Real.rpow_le_rpow_of_exponent_le hb1 (le_max_left _ _))
  have hlin : 1 + T ≤ (1 + T) ^ max p 1 := by
    simpa only [Real.rpow_one] using
      Real.rpow_le_rpow_of_exponent_le hb1 (le_max_right p 1)
  have hreset : pickup (2 * Real.log A) ≤ 2 * (A - 1) :=
    (le_abs_self _).trans (reset_abs_le ha)
  have hreset' : 2 * (A - 1) ≤ (1 + T) ^ max p 1 := by
    apply le_trans _ hlin
    dsimp [A]
    linarith
  have hallow := mul_le_mul_of_nonneg_left hpa hD
  unfold supplierAllowance at hbudget
  rw [he, hc] at hbudget
  nlinarith

/-- The continuous original pickup makes the original two-sector meter finite,
before any supplier estimate is assumed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SupplierOriginalAdapters/Variantc6d5475abf24dafcc0bff140ef23a798b70c1a366b83c028f05fa82eb5d9cd97.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c05c1608b14b0e522cd92f3ec160857acaf0264` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
