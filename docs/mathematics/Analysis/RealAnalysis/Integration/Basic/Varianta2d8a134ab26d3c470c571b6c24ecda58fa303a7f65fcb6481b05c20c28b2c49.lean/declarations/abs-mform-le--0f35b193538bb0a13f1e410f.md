# abs_Mform_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d4dd53c-3642-cc71-4aca-728cae031d4f",
  "kind": "lemma",
  "lexical_name": "abs_Mform_le",
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
  "slug": "abs-mform-le--0f35b193538bb0a13f1e410f",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 247,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f35b193538bb0a13f1e410ff7657b716de2a0c99bd216f1b2ec97225105750b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d4dd53c-3642-cc71-4aca-728cae031d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_Mform_le (hT : 0 ≤ T) (hΦ : Continuous Φ) {u v : ℝ → ℝ} (hu : Continuous u)
    (hv : Continuous v) (hΦint : Integrable (fun x => Φ x ^ 2)) {Bu Bv : ℝ}
    (hBu : ∀ τ ∈ Set.Icc T (2 * T), |u τ| ≤ Bu) (hBv : ∀ τ ∈ Set.Icc T (2 * T), |v τ| ≤ Bv) :
    |Mform Φ T u v| ≤ Bu * Bv * (T * ∫ x, Φ x ^ 2) := by
  unfold Mform
  set S := Set.Icc T (2 * T) with hS
  have hSm : MeasurableSet S := measurableSet_Icc
  have hTS : T ∈ S := ⟨le_rfl, by linarith⟩
  have hBu0 : 0 ≤ Bu := (abs_nonneg _).trans (hBu T hTS)
  have hBv0 : 0 ≤ Bv := (abs_nonneg _).trans (hBv T hTS)
  have hint := Mform_integrableOn (T := T) hΦ hu hv
  have hint3 : IntegrableOn (fun q : ℝ × ℝ => Φ (q.1 - q.2) ^ 2) (S ×ˢ S) := by
    have := Mform_integrableOn (T := T) hΦ (continuous_const (y := (1:ℝ)))
      (continuous_const (y := (1:ℝ)))
    simpa only [mul_one] using this
  have hint2 : IntegrableOn (fun q : ℝ × ℝ => Φ (q.1 - q.2) ^ 2 * (Bu * Bv)) (S ×ˢ S) :=
    hint3.mul_const _
  calc |∫ q in S ×ˢ S, Φ (q.1 - q.2) ^ 2 * u q.1 * v q.2|
      ≤ ∫ q in S ×ˢ S, |Φ (q.1 - q.2) ^ 2 * u q.1 * v q.2| := abs_integral_le_integral_abs
    _ ≤ ∫ q in S ×ˢ S, Φ (q.1 - q.2) ^ 2 * (Bu * Bv) := by
        apply setIntegral_mono_on hint.abs hint2 (hSm.prod hSm)
        rintro ⟨x, y⟩ ⟨hx, hy⟩
        rw [abs_mul, abs_mul, abs_of_nonneg (sq_nonneg _), mul_assoc]
        exact mul_le_mul_of_nonneg_left
          (mul_le_mul (hBu x hx) (hBv y hy) (abs_nonneg _) hBu0) (sq_nonneg _)
    _ = (∫ q in S ×ˢ S, Φ (q.1 - q.2) ^ 2) * (Bu * Bv) := integral_mul_const _ _
    _ ≤ (T * ∫ x, Φ x ^ 2) * (Bu * Bv) := by
        apply mul_le_mul_of_nonneg_right _ (mul_nonneg hBu0 hBv0)
        rw [Measure.volume_eq_prod, setIntegral_prod _ hint3]
        calc ∫ x in S, ∫ y in S, Φ (x - y) ^ 2
            ≤ ∫ x in S, (∫ y, Φ y ^ 2 : ℝ) := by
              apply integral_mono_of_nonneg
              · exact Filter.Eventually.of_forall fun x =>
                  integral_nonneg fun y => sq_nonneg _
              · rw [hS]; exact integrable_const _
              · exact Filter.Eventually.of_forall fun x => setIntegral_sq_shift_le hΦint S x
          _ = T * ∫ y, Φ y ^ 2 := by
              rw [setIntegral_const, smul_eq_mul, hS, Real.volume_real_Icc,
                max_eq_left (by linarith)]
              ring
    _ = Bu * Bv * (T * ∫ x, Φ x ^ 2) := by ring

end SupBound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
