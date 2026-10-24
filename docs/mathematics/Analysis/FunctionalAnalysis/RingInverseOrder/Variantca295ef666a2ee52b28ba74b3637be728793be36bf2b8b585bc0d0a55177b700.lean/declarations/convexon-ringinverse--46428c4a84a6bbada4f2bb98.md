# convexOn_ringInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bf159bb-812b-bca5-5aa0-71f17480aeba",
  "kind": "lemma",
  "lexical_name": "convexOn_ringInverse",
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
  "slug": "convexon-ringinverse--46428c4a84a6bbada4f2bb98",
  "source": {
    "blob": "cfe50f27a155a70e52fd1d65cbbf0d8a6c24f7a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 43,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46428c4a84a6bbada4f2bb985b35b33d81e330a2f0ff4fcce43603f5e28fb1b7",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bf159bb-812b-bca5-5aa0-71f17480aeba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public lemma convexOn_ringInverse :
    ConvexOn ℝ {a : A | IsStrictlyPositive a} Ring.inverse := by
  /- We need to prove that `(a • x + b • y)⁻¹ ≤ a • x⁻¹ + b • y⁻¹`. To do this, we define
  `z := x^(-1/2) y x^(-1/2)`. This turns the statement to prove into
  `(a • 1 + b • z)⁻¹ ≤ a • 1⁻¹ + b • z⁻¹`, and this can be proven since everything now commutes. -/
  refine ⟨by grind [convex_iff_forall_pos], ?_⟩
  intro x (xpos : IsStrictlyPositive x) y (ypos : IsStrictlyPositive y) a b ha hb hab
  let z := conjSqrt x⁻¹ʳ y
  have zpos : IsStrictlyPositive z := by grind
  have xinvpos : IsStrictlyPositive x⁻¹ʳ := by grind
  have hsp : IsStrictlyPositive (a • 1 + b • z) := by
    by_cases ha' : 0 < a <;> grind [smul_nonneg]
  have h₁ : (a • 1 + b • z) ^ (-1 : ℝ) = cfc (fun r => (a + b * r) ^ (-1 : ℝ)) z := by
    rw [← cfc_smul_id (R := ℝ) (S := ℝ) b z, ← Algebra.algebraMap_eq_smul_one,
        ← cfc_const_add a (fun r => b • r) z]
    simp only [smul_eq_mul]
    refine cfc_rpow fun r hr => ?_
    by_cases ha' : a = 0
    · have hb' : b = 1 := by grind
      simp only [ha', hb', one_mul, zero_add, gt_iff_lt]
      #adaptation_note /-- Before nightly-2026-06-04, this was just `grind.
      `spectrum_pos` is not activating in `grind` despite the
      ```
      grind_pattern IsStrictlyPositive.spectrum_pos => x ∈ spectrum 𝕜 a, IsStrictlyPositive a
      ```
      rule, because `grind` will not fill in the `𝕜 := ℝ`. -/
      exact zpos.spectrum_pos hr
    · grind [add_pos_of_pos_of_nonneg, mul_nonneg]
  have h₂ : (a • 1 + b • z ^ (-1 : ℝ)) = cfc (fun r => (a + b * r ^ (-1 : ℝ))) z := by
    rw [CFC.rpow_eq_cfc_real zpos.nonneg]
    have hcont : ContinuousOn (fun r : ℝ => (r ^ (-1 : ℝ))) (spectrum ℝ z) :=
      ContinuousOn.rpow_const (f := id) (by fun_prop) (by
        #adaptation_note /-- Before nightly-2026-06-04, this was just `grind. -/
        intro x h
        have := IsStrictlyPositive.spectrum_pos (𝕜 := ℝ) zpos h
        grind)
    rw [← cfc_smul b _ z hcont, ← Algebra.algebraMap_eq_smul_one, ← cfc_const_add a _ z]
    congr! 1
  calc _ = (a • conjSqrt x 1 + b • conjSqrt x z)⁻¹ʳ := by
        rw [conjSqrt_conjSqrt_ringInverse _ _ xpos, conjSqrt_one x xpos.nonneg]
      _ = (conjSqrt x (a • 1 + b • z))⁻¹ʳ := by simp
      _ = conjSqrt x⁻¹ʳ ((a • 1 + b • z) ^ (-1 : ℝ)) := by
        rw [ringInverse_conjSqrt _ _ xpos, ← inverse_eq_rpow_neg_one]
      _ ≤ conjSqrt x⁻¹ʳ (a • 1 + b • z ^ (-1 : ℝ)) := by
        gcongr
        rw [h₁, h₂]
        refine (cfc_le_iff _ _ _ ?_ ?_).mpr ?_
        · apply ContinuousOn.rpow_const (by fun_prop)
          intro r hr
          have := zpos.spectrum_pos hr
          have : 0 ≤ b * r := by positivity
          cases lt_or_eq_of_le ha <;> grind
        · refine ContinuousOn.const_add (ContinuousOn.const_mul ?_ _) _
          exact ContinuousOn.rpow_const (by fun_prop) (by
            #adaptation_note /-- Before nightly-2026-06-04, this was just `grind. -/
            intro x h
            have := IsStrictlyPositive.spectrum_pos (𝕜 := ℝ) zpos h
            grind)
        · intro r hr
          suffices (a • 1 + b • r) ^ (-1 : ℤ) ≤ a • 1 ^ (-1 : ℤ) + b • r ^ (-1 : ℤ) by
            simp_rw [← Real.rpow_intCast] at this
            simpa using this
          have : ConvexOn ℝ (Set.Ioi 0) (fun z : ℝ => z ^ (-1 : ℤ)) := convexOn_zpow (-1)
          grind [ConvexOn, IsStrictlyPositive.spectrum_pos]
      _ = conjSqrt x⁻¹ʳ (a • 1 + b • z⁻¹ʳ) := by rw [← inverse_eq_rpow_neg_one]
      _ = a • inverse x + b • conjSqrt x⁻¹ʳ z⁻¹ʳ := by
        simp [conjSqrt_one x⁻¹ʳ (by grind)]
      _ = _ := by
        rw [← ringInverse_conjSqrt _ _ xpos, conjSqrt_conjSqrt_ringInverse _ _ xpos]

set_option backward.isDefEq.respectTransparency.types false in
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/RingInverseOrder/Variantca295ef666a2ee52b28ba74b3637be728793be36bf2b8b585bc0d0a55177b700.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfe50f27a155a70e52fd1d65cbbf0d8a6c24f7a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
