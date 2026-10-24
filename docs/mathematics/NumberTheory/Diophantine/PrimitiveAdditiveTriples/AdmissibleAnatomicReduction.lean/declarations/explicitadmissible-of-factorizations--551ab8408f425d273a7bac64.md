# explicitAdmissible_of_factorizations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84dab1c8-fda3-3ae7-8d51-c0692c8b89b3",
  "kind": "theorem",
  "lexical_name": "explicitAdmissible_of_factorizations",
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
  "slug": "explicitadmissible-of-factorizations--551ab8408f425d273a7bac64",
  "source": {
    "blob": "b03bc40563f4fbc0d88dfabc9a0d7d09411e881a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 163,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:551ab8408f425d273a7bac641985a36d73cc581be589575f1ad77c4f1a63bf9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84dab1c8-fda3-3ae7-8d51-c0692c8b89b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem explicitAdmissible_of_factorizations
    {lam ε : ℝ} (hlam : 0 ≤ lam) {X d : ℕ}
    {t : PrimitiveAdditiveTriple} (ht : t ∈ nStarTriples lam X)
    (p : Parameters d) (xa xb xc : Fin d → ℕ)
    (hda : ∀ i, ClosedDyadic (xa i) (p.A i))
    (hdb : ∀ i, ClosedDyadic (xb i) (p.B i))
    (hdc : ∀ i, ClosedDyadic (xc i) (p.C i))
    (ha : p.totalA xa = t.a) (hb : p.totalB xb = t.b)
    (hc : p.totalC xc = t.c)
    (ha₀_pos : 0 < p.residual 0) (hb₀_pos : 0 < p.residual 1)
    (hc₀_pos : 0 < p.residual 2)
    (_ha₀ : (p.residual 0 : ℝ) ≤ (X : ℝ) ^ ε)
    (_hb₀ : (p.residual 1 : ℝ) ≤ (X : ℝ) ^ ε)
    (hc₀ : (p.residual 2 : ℝ) ≤ (X : ℝ) ^ ε)
    (ha_low : (X : ℝ) ^ (-ε) * supportProduct xa ≤ (radical t.a : ℕ))
    (hb_low : (X : ℝ) ^ (-ε) * supportProduct xb ≤ (radical t.b : ℕ))
    (hc_low : (X : ℝ) ^ (-ε) * supportProduct xc ≤ (radical t.c : ℕ))
    (ha_up : (radical t.a : ℕ) ≤ (X : ℝ) ^ ε * supportProduct xa)
    (hb_up : (radical t.b : ℕ) ≤ (X : ℝ) ^ ε * supportProduct xb)
    (hc_up : (radical t.c : ℕ) ≤ (X : ℝ) ^ ε * supportProduct xc) :
    ExplicitAdmissible lam ε X p := by
  have hmem := mem_nStarTriples.mp ht
  have htcX : t.c ≤ X := hmem.1
  have hXc : X ≤ 2 * t.c := hmem.2.1
  have hrad_lt : (t.radical : ℝ) < (t.c : ℝ) ^ lam := hmem.2.2.1
  have hpow_le_rad : (t.c : ℝ) ^ lam ≤ 2 * (t.radical : ℝ) := hmem.2.2.2
  have hX_pos : 0 < X := lt_of_lt_of_le t.c_pos htcX
  have hscale_support :
      scaleProduct p ≤
        supportProduct xa * supportProduct xb * supportProduct xc := by
    unfold scaleProduct
    gcongr
    · exact scale_support_le hda
    · exact scale_support_le hdb
    · exact scale_support_le hdc
  have hsupport_scale :
      supportProduct xa * supportProduct xb * supportProduct xc ≤
        (2 ^ d) ^ 3 * scaleProduct p := by
    have hA := support_le_two_pow_mul_scale hda
    have hB := support_le_two_pow_mul_scale hdb
    have hC := support_le_two_pow_mul_scale hdc
    unfold scaleProduct
    calc
      supportProduct xa * supportProduct xb * supportProduct xc ≤
          (2 ^ d * supportProduct p.A) *
            (2 ^ d * supportProduct p.B) *
              (2 ^ d * supportProduct p.C) := by gcongr
      _ = (2 ^ d) ^ 3 *
          (supportProduct p.A * supportProduct p.B * supportProduct p.C) := by ring
  have hsa := support_le_rpow_mul_radical hX_pos ha_low
  have hsb := support_le_rpow_mul_radical hX_pos hb_low
  have hsc := support_le_rpow_mul_radical hX_pos hc_low
  have hsupport_upper :
      (supportProduct xa * supportProduct xb * supportProduct xc : ℕ) ≤
        (((X : ℝ) ^ ε) ^ 3) * (t.radical : ℝ) := by
    calc
      (supportProduct xa * supportProduct xb * supportProduct xc : ℕ) =
          (supportProduct xa : ℝ) * (supportProduct xb : ℝ) *
            (supportProduct xc : ℝ) := by norm_num
      _ ≤ ((X : ℝ) ^ ε * (radical t.a : ℕ)) *
          ((X : ℝ) ^ ε * (radical t.b : ℕ)) *
          ((X : ℝ) ^ ε * (radical t.c : ℕ)) := by gcongr
      _ = (((X : ℝ) ^ ε) ^ 3) * (t.radical : ℝ) := by
        rw [t.radical_eq_product]
        push_cast
        ring
  have hrad_support :
      (t.radical : ℝ) ≤ (((X : ℝ) ^ ε) ^ 3) *
        (supportProduct xa * supportProduct xb * supportProduct xc : ℕ) := by
    calc
      (t.radical : ℝ) =
          ((radical t.a : ℕ) : ℝ) * ((radical t.b : ℕ) : ℝ) * ((radical t.c : ℕ) : ℝ) := by
        rw [t.radical_eq_product]
        push_cast
        ring
      _ ≤ (((X : ℝ) ^ ε) * supportProduct xa) *
          (((X : ℝ) ^ ε) * supportProduct xb) *
          (((X : ℝ) ^ ε) * supportProduct xc) := by gcongr
      _ = (((X : ℝ) ^ ε) ^ 3) *
          (supportProduct xa * supportProduct xb * supportProduct xc : ℕ) := by
        push_cast
        ring
  have hhalf_c : (X : ℝ) / 2 ≤ t.c := by
    have hXc_real : (X : ℝ) ≤ 2 * (t.c : ℝ) := by
      exact_mod_cast hXc
    linarith
  have hpow_half : ((X : ℝ) / 2) ^ lam ≤ (t.c : ℝ) ^ lam := by
    exact Real.rpow_le_rpow (by positivity) hhalf_c hlam
  have hc_pow_X : (t.c : ℝ) ^ lam ≤ (X : ℝ) ^ lam := by
    exact Real.rpow_le_rpow (by positivity) (by exact_mod_cast htcX) hlam
  have hmonA : monomial p.A ≤ X := by
    exact (scale_monomial_le hda).trans <|
      (show monomial xa ≤ t.a by
        rw [← ha, Parameters.totalA]
        exact Nat.le_mul_of_pos_left _ ha₀_pos).trans
          ((Nat.le_of_lt t.a_lt_c).trans htcX)
  have hmonB : monomial p.B ≤ X := by
    exact (scale_monomial_le hdb).trans <|
      (show monomial xb ≤ t.b by
        rw [← hb, Parameters.totalB]
        exact Nat.le_mul_of_pos_left _ hb₀_pos).trans
          ((Nat.le_of_lt t.b_lt_c).trans htcX)
  have hmonC : monomial p.C ≤ X := by
    exact (scale_monomial_le hdc).trans <|
      (show monomial xc ≤ t.c by
        rw [← hc, Parameters.totalC]
        exact Nat.le_mul_of_pos_left _ hc₀_pos).trans htcX
  have hc_weight :
      (X : ℝ) ≤ 2 * (X : ℝ) ^ ε * (2 : ℝ) ^ weightSum d * monomial p.C := by
    have hmono := monomial_le_two_pow_weight_mul_scale hdc
    calc
      (X : ℝ) ≤ 2 * t.c := by exact_mod_cast hXc
      _ = 2 * (p.residual 2 * monomial xc : ℕ) := by rw [← hc]; rfl
      _ ≤ 2 * (X : ℝ) ^ ε * monomial xc := by
        push_cast
        nlinarith [mul_le_mul_of_nonneg_right hc₀ (Nat.cast_nonneg (monomial xc))]
      _ ≤ 2 * (X : ℝ) ^ ε *
          ((2 : ℝ) ^ weightSum d * monomial p.C) := by
        gcongr
        exact_mod_cast hmono
      _ = 2 * (X : ℝ) ^ ε * (2 : ℝ) ^ weightSum d * monomial p.C := by ring
  refine ⟨residualPrimitive_of_reconstructions t p xa xb xc ha hb hc, ?_, ?_,
    hmonA, hmonB, hmonC, hc_weight⟩
  · calc
      ((X : ℝ) / 2) ^ lam ≤ (t.c : ℝ) ^ lam := hpow_half
      _ ≤ 2 * (t.radical : ℝ) := hpow_le_rad
      _ ≤ 2 * ((((X : ℝ) ^ ε) ^ 3) *
          (supportProduct xa * supportProduct xb * supportProduct xc : ℕ)) := by gcongr
      _ ≤ 2 * ((((X : ℝ) ^ ε) ^ 3) *
          (((2 : ℝ) ^ d) ^ 3 * scaleProduct p)) := by
        gcongr
        exact_mod_cast hsupport_scale
      _ = 2 * (((X : ℝ) ^ ε) ^ 3) * (((2 : ℝ) ^ d) ^ 3) *
          scaleProduct p := by ring
  · calc
      (scaleProduct p : ℝ) ≤
          (supportProduct xa * supportProduct xb * supportProduct xc : ℕ) := by
        exact_mod_cast hscale_support
      _ ≤ (((X : ℝ) ^ ε) ^ 3) * (t.radical : ℝ) := hsupport_upper
      _ ≤ (((X : ℝ) ^ ε) ^ 3) * (t.c : ℝ) ^ lam := by
        exact mul_le_mul_of_nonneg_left hrad_lt.le (by positivity)
      _ ≤ (((X : ℝ) ^ ε) ^ 3) * (X : ℝ) ^ lam := by gcongr

/-- The exact admissible finite cover of `N*ₗ(X)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AdmissibleAnatomicReduction.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03bc40563f4fbc0d88dfabc9a0d7d09411e881a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
