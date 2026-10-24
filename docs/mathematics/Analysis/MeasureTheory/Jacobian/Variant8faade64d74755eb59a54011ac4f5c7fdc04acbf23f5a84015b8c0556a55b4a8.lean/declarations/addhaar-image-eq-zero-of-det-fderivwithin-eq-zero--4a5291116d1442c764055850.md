# addHaar_image_eq_zero_of_det_fderivWithin_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ed315e3-385c-440d-5ac1-c5f60bc9b126",
  "kind": "theorem",
  "lexical_name": "addHaar_image_eq_zero_of_det_fderivWithin_eq_zero",
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
  "slug": "addhaar-image-eq-zero-of-det-fderivwithin-eq-zero--4a5291116d1442c764055850",
  "source": {
    "blob": "f39c34da90f57127c1bfa0b8c7576e29e66d2677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 667,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a5291116d1442c764055850c00ecb88e57f00baa21aa5886957ad0a38c8a676",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed315e3-385c-440d-5ac1-c5f60bc9b126`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_image_eq_zero_of_det_fderivWithin_eq_zero
    (hf' : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x) (h'f' : ∀ x ∈ s, (f' x).det = 0) :
    μ (f '' s) = 0 := by
  suffices H : ∀ R, μ (f '' (s ∩ closedBall 0 R)) = 0
  · apply le_antisymm _ (zero_le _)
    rw [← iUnion_inter_closedBall_nat s 0]
    calc
      μ (f '' ⋃ n : ℕ, s ∩ closedBall 0 n) ≤ ∑' n : ℕ, μ (f '' (s ∩ closedBall 0 n)) := by
        rw [image_iUnion]; exact measure_iUnion_le _
      _ ≤ 0 := by simp only [H, tsum_zero, nonpos_iff_eq_zero]
  intro R
  have A : ∀ (ε : ℝ≥0), 0 < ε → μ (f '' (s ∩ closedBall 0 R)) ≤ ε * μ (closedBall 0 R) :=
    fun ε εpos =>
    addHaar_image_eq_zero_of_det_fderivWithin_eq_zero_aux μ
      (fun x hx => (hf' x hx.1).mono (inter_subset_left _ _)) R (inter_subset_right _ _) ε εpos
      fun x hx => h'f' x hx.1
  have B : Tendsto (fun ε : ℝ≥0 => (ε : ℝ≥0∞) * μ (closedBall 0 R)) (𝓝[>] 0) (𝓝 0) := by
    have :
      Tendsto (fun ε : ℝ≥0 => (ε : ℝ≥0∞) * μ (closedBall 0 R)) (𝓝 0)
        (𝓝 (((0 : ℝ≥0) : ℝ≥0∞) * μ (closedBall 0 R))) :=
      ENNReal.Tendsto.mul_const (ENNReal.tendsto_coe.2 tendsto_id)
        (Or.inr measure_closedBall_lt_top.ne)
    simp only [zero_mul, ENNReal.coe_zero] at this
    exact Tendsto.mono_left this nhdsWithin_le_nhds
  apply le_antisymm _ (zero_le _)
  apply ge_of_tendsto B
  filter_upwards [self_mem_nhdsWithin]
  exact A
#align measure_theory.add_haar_image_eq_zero_of_det_fderiv_within_eq_zero MeasureTheory.addHaar_image_eq_zero_of_det_fderivWithin_eq_zero

/-!
### Weak measurability statements

We show that the derivative of a function on a set is almost everywhere measurable, and that the
image `f '' s` is measurable if `f` is injective on `s`. The latter statement follows from the
Lusin-Souslin theorem.
-/


/-- The derivative of a function on a measurable set is almost everywhere measurable on this set
with respect to Lebesgue measure. Note that, in general, it is not genuinely measurable there,
as `f'` is not unique (but only on a set of measure `0`, as the argument shows). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Variant8faade64d74755eb59a54011ac4f5c7fdc04acbf23f5a84015b8c0556a55b4a8.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f39c34da90f57127c1bfa0b8c7576e29e66d2677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
