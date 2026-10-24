# snorm_inner_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e26485b9-5936-1681-bf69-a5e58ff340c1",
  "kind": "theorem",
  "lexical_name": "snorm_inner_lt_top",
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
  "slug": "snorm-inner-lt-top--5f798f1c6d22ccb383df8495",
  "source": {
    "blob": "6c4254bdfe7144b78b550edc99bbe7d3cff7382d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f798f1c6d22ccb383df8495335942f9edc8c46a7fcb73e9902724f0484cbb32",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e26485b9-5936-1681-bf69-a5e58ff340c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snorm_inner_lt_top (f g : α →₂[μ] E) : snorm (fun x : α => ⟪f x, g x⟫) 1 μ < ∞ := by
  have h : ∀ x, ‖⟪f x, g x⟫‖ ≤ ‖‖f x‖ ^ (2 : ℝ) + ‖g x‖ ^ (2 : ℝ)‖ := by
    intro x
    rw [← @Nat.cast_two ℝ, Real.rpow_nat_cast, Real.rpow_nat_cast]
    calc
      ‖⟪f x, g x⟫‖ ≤ ‖f x‖ * ‖g x‖ := norm_inner_le_norm _ _
      _ ≤ 2 * ‖f x‖ * ‖g x‖ :=
        (mul_le_mul_of_nonneg_right (le_mul_of_one_le_left (norm_nonneg _) one_le_two)
          (norm_nonneg _))
      _ ≤ ‖‖f x‖ ^ 2 + ‖g x‖ ^ 2‖ := (two_mul_le_add_sq _ _).trans (le_abs_self _)

  refine' (snorm_mono_ae (ae_of_all _ h)).trans_lt ((snorm_add_le _ _ le_rfl).trans_lt _)
  · exact ((Lp.aestronglyMeasurable f).norm.aemeasurable.pow_const _).aestronglyMeasurable
  · exact ((Lp.aestronglyMeasurable g).norm.aemeasurable.pow_const _).aestronglyMeasurable
  rw [ENNReal.add_lt_top]
  exact ⟨snorm_rpow_two_norm_lt_top f, snorm_rpow_two_norm_lt_top g⟩
#align measure_theory.L2.snorm_inner_lt_top MeasureTheory.L2.snorm_inner_lt_top

section InnerProductSpace

open scoped ComplexConjugate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L2Space/Variantdd9f90fc43f3326e5b924d0fe78098f045d9f43bed14fcadf354427d4971eb3b.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c4254bdfe7144b78b550edc99bbe7d3cff7382d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
