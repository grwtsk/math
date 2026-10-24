# IndepFun.integral_mul_of_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3cee435-2d2d-adca-c5c6-a894e1d9d46b",
  "kind": "theorem",
  "lexical_name": "IndepFun.integral_mul_of_integrable",
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
  "slug": "indepfun-integral-mul-of-integrable--73e92e8f460bfa994c27c310",
  "source": {
    "blob": "adfee145593169e2b9b77f148993872723df788b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 233,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73e92e8f460bfa994c27c310c57f0a8e72c5dc1b02af3867fc7b6d166160c781",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3cee435-2d2d-adca-c5c6-a894e1d9d46b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.integral_mul_of_integrable (hXY : IndepFun X Y μ) (hX : Integrable X μ)
    (hY : Integrable Y μ) : integral μ (X * Y) = integral μ X * integral μ Y := by
  let pos : ℝ → ℝ := fun x => max x 0
  let neg : ℝ → ℝ := fun x => max (-x) 0
  have posm : Measurable pos := measurable_id'.max measurable_const
  have negm : Measurable neg := measurable_id'.neg.max measurable_const
  let Xp := pos ∘ X
  -- `X⁺` would look better but it makes `simp_rw` below fail
  let Xm := neg ∘ X
  let Yp := pos ∘ Y
  let Ym := neg ∘ Y
  have hXpm : X = Xp - Xm := funext fun ω => (max_zero_sub_max_neg_zero_eq_self (X ω)).symm
  have hYpm : Y = Yp - Ym := funext fun ω => (max_zero_sub_max_neg_zero_eq_self (Y ω)).symm
  have hp1 : 0 ≤ Xm := fun ω => le_max_right _ _
  have hp2 : 0 ≤ Xp := fun ω => le_max_right _ _
  have hp3 : 0 ≤ Ym := fun ω => le_max_right _ _
  have hp4 : 0 ≤ Yp := fun ω => le_max_right _ _
  have hm1 : AEMeasurable Xm μ := hX.1.aemeasurable.neg.max aemeasurable_const
  have hm2 : AEMeasurable Xp μ := hX.1.aemeasurable.max aemeasurable_const
  have hm3 : AEMeasurable Ym μ := hY.1.aemeasurable.neg.max aemeasurable_const
  have hm4 : AEMeasurable Yp μ := hY.1.aemeasurable.max aemeasurable_const
  have hv1 : Integrable Xm μ := hX.neg_part
  have hv2 : Integrable Xp μ := hX.pos_part
  have hv3 : Integrable Ym μ := hY.neg_part
  have hv4 : Integrable Yp μ := hY.pos_part
  have hi1 : IndepFun Xm Ym μ := hXY.comp negm negm
  have hi2 : IndepFun Xp Ym μ := hXY.comp posm negm
  have hi3 : IndepFun Xm Yp μ := hXY.comp negm posm
  have hi4 : IndepFun Xp Yp μ := hXY.comp posm posm
  have hl1 : Integrable (Xm * Ym) μ := hi1.integrable_mul hv1 hv3
  have hl2 : Integrable (Xp * Ym) μ := hi2.integrable_mul hv2 hv3
  have hl3 : Integrable (Xm * Yp) μ := hi3.integrable_mul hv1 hv4
  have hl4 : Integrable (Xp * Yp) μ := hi4.integrable_mul hv2 hv4
  have hl5 : Integrable (Xp * Yp - Xm * Yp) μ := hl4.sub hl3
  have hl6 : Integrable (Xp * Ym - Xm * Ym) μ := hl2.sub hl1
  rw [hXpm, hYpm, mul_sub, sub_mul, sub_mul]
  rw [integral_sub' hl5 hl6, integral_sub' hl4 hl3, integral_sub' hl2 hl1, integral_sub' hv2 hv1,
    integral_sub' hv4 hv3, hi1.integral_mul_of_nonneg hp1 hp3 hm1 hm3,
    hi2.integral_mul_of_nonneg hp2 hp3 hm2 hm3, hi3.integral_mul_of_nonneg hp1 hp4 hm1 hm4,
    hi4.integral_mul_of_nonneg hp2 hp4 hm2 hm4]
  ring

/-- The (Bochner) integral of the product of two independent random
  variables is the product of their integrals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variantf4d7e16750dc3debbe0a853d4b145bc363331d8f97e7ee708813964cea9c00c6.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adfee145593169e2b9b77f148993872723df788b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
