# derivative_secondMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73cd7fc2-6549-d1ef-2f59-ce2cdaa12d5d",
  "kind": "theorem",
  "lexical_name": "derivative_secondMoment",
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
  "slug": "derivative-secondmoment--4ef4d39a74489a7d912cd484",
  "source": {
    "blob": "284769d36036617eb160abc852328382730410cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 152,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ef4d39a74489a7d912cd4849d0811fb5664b199a701eef4fb07211a44fc0e11",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73cd7fc2-6549-d1ef-2f59-ce2cdaa12d5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_secondMoment (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F)
    (hs : HasCompactSupport F) :
    (∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * deriv F t) =
      -(2 * (∫ t : ℝ, t * Real.exp (t / 2) * F t) +
        (1 / 2) * ∫ t : ℝ, t ^ 2 * Real.exp (t / 2) * F t) := by
  have hi1 : MeasureTheory.Integrable (fun t : ℝ ↦ t * Real.exp (t / 2) * F t) :=
    ((continuous_id.mul (continuous_id.div_const 2).rexp).mul hF.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hi2 : MeasureTheory.Integrable (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2) * F t) :=
    (((continuous_id.pow 2).mul (continuous_id.div_const 2).rexp).mul hF.continuous).integrable_of_hasCompactSupport hs.mul_left
  have hid : MeasureTheory.Integrable (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2) * deriv F t) :=
    ((continuous_id.pow 2).mul ((continuous_id.div_const 2).rexp)
      |>.mul hF.continuous_deriv_one).integrable_of_hasCompactSupport hs.deriv.mul_left
  have hup : MeasureTheory.Integrable (fun t : ℝ ↦
      (2 * t * Real.exp (t / 2) + (1 / 2) * (t ^ 2 * Real.exp (t / 2))) * F t) := by
    apply ((hi1.const_mul 2).add (hi2.const_mul (1 / 2))).congr
    filter_upwards [] with t
    dsimp only [Pi.add_apply]
    ring
  have hb := MeasureTheory.integral_mul_deriv_eq_deriv_mul_of_integrable
    (fun t _ ↦ show HasDerivAt (fun t : ℝ ↦ t ^ 2 * Real.exp (t / 2))
      (2 * t * Real.exp (t / 2) + (1 / 2) * (t ^ 2 * Real.exp (t / 2))) t from by
      apply (((hasDerivAt_id t).pow 2).mul (((hasDerivAt_id t).div_const 2).exp)).congr_deriv
      dsimp
      ring)
    (fun t _ ↦ (hF.differentiable (by norm_num) t).hasDerivAt) hid hup hi2
  have he (t : ℝ) :
      (2 * t * Real.exp (t / 2) + (1 / 2) * (t ^ 2 * Real.exp (t / 2))) * F t =
      2 * (t * Real.exp (t / 2) * F t) + (1 / 2) * (t ^ 2 * Real.exp (t / 2) * F t) := by ring
  simp_rw [he] at hb
  rw [MeasureTheory.integral_add (hi1.const_mul 2) (hi2.const_mul (1 / 2)),
    MeasureTheory.integral_const_mul, MeasureTheory.integral_const_mul] at hb
  exact hb

/-- The signed difference has second moment coefficient minus the actual source beta. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SamplingSecondDerivative/Variantf53118fdf6298b4d834fd86780a383fd9a8f12e72103274835f4646b3457fc40.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `284769d36036617eb160abc852328382730410cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
