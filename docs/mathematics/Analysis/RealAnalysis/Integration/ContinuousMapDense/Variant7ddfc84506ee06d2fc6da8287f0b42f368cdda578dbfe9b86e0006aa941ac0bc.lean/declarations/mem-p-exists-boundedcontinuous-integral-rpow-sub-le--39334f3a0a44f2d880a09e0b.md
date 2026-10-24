# Memℒp.exists_boundedContinuous_integral_rpow_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecc7b513-ee1d-1c4c-98f1-6e3411d2ab11",
  "kind": "theorem",
  "lexical_name": "Memℒp.exists_boundedContinuous_integral_rpow_sub_le",
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
  "slug": "mem-p-exists-boundedcontinuous-integral-rpow-sub-le--39334f3a0a44f2d880a09e0b",
  "source": {
    "blob": "42e34c708789a0e6253a72c3fe0cad5f477eeb70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 296,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39334f3a0a44f2d880a09e0bedc2753ecc8f100c5ee895e8ba2acd8813fd734c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc7b513-ee1d-1c4c-98f1-6e3411d2ab11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Memℒp.exists_boundedContinuous_integral_rpow_sub_le [μ.WeaklyRegular] {p : ℝ} (hp : 0 < p)
    {f : α → E} (hf : Memℒp f (ENNReal.ofReal p) μ) {ε : ℝ} (hε : 0 < ε) :
    ∃ g : α →ᵇ E, (∫ x, ‖f x - g x‖ ^ p ∂μ) ≤ ε ∧ Memℒp g (ENNReal.ofReal p) μ := by
  have I : 0 < ε ^ (1 / p) := Real.rpow_pos_of_pos hε _
  have A : ENNReal.ofReal (ε ^ (1 / p)) ≠ 0 := by
    simp only [Ne.def, ENNReal.ofReal_eq_zero, not_le, I]
  have B : ENNReal.ofReal p ≠ 0 := by simpa only [Ne.def, ENNReal.ofReal_eq_zero, not_le] using hp
  rcases hf.exists_boundedContinuous_snorm_sub_le ENNReal.coe_ne_top A with ⟨g, hg, g_mem⟩
  change snorm _ (ENNReal.ofReal p) _ ≤ _ at hg
  refine' ⟨g, _, g_mem⟩
  rwa [(hf.sub g_mem).snorm_eq_integral_rpow_norm B ENNReal.coe_ne_top,
    ENNReal.ofReal_le_ofReal_iff I.le, one_div, ENNReal.toReal_ofReal hp.le,
    Real.rpow_le_rpow_iff _ hε.le (inv_pos.2 hp)] at hg
  exact integral_nonneg fun x => Real.rpow_nonneg_of_nonneg (norm_nonneg _) _
#align measure_theory.mem_ℒp.exists_bounded_continuous_integral_rpow_sub_le MeasureTheory.Memℒp.exists_boundedContinuous_integral_rpow_sub_le

/-- Any integrable function can be approximated by bounded continuous functions,
version in terms of `∫⁻`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContinuousMapDense/Variant7ddfc84506ee06d2fc6da8287f0b42f368cdda578dbfe9b86e0006aa941ac0bc.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42e34c708789a0e6253a72c3fe0cad5f477eeb70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
