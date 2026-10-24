# Real.integrable_of_summable_norm_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b443386-550d-2f47-0495-2a7c9c62555a",
  "kind": "theorem",
  "lexical_name": "Real.integrable_of_summable_norm_Icc",
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
  "slug": "real-integrable-of-summable-norm-icc--e78d431f09580a2db8c6e183",
  "source": {
    "blob": "e8a96a15d2dbf54e3853a6ed98e74f2c268a42fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e78d431f09580a2db8c6e18340f9d673ad020036d3e3b195968c7f8ee5d71ac1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b443386-550d-2f47-0495-2a7c9c62555a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.integrable_of_summable_norm_Icc {E : Type*} [NormedAddCommGroup E] {f : C(ℝ, E)}
    (hf : Summable fun n : ℤ => ‖(f.comp <| ContinuousMap.addRight n).restrict (Icc 0 1)‖) :
    Integrable f := by
  refine integrable_of_summable_norm_restrict (.of_nonneg_of_le
    (fun n : ℤ => mul_nonneg (norm_nonneg
      (f.restrict (⟨Icc (n : ℝ) ((n : ℝ) + 1), isCompact_Icc⟩ : Compacts ℝ)))
        ENNReal.toReal_nonneg) (fun n => ?_) hf) ?_
  · simp only [Compacts.coe_mk, le_add_iff_nonneg_right, zero_le_one, volume_real_Icc_of_le,
      add_sub_cancel_left, mul_one, norm_le _ (norm_nonneg _), ContinuousMap.restrict_apply,
      mem_Icc, and_imp]
    intro x
    have := ((f.comp <| ContinuousMap.addRight n).restrict (Icc 0 1)).norm_coe_le_norm
        ⟨x - n, ⟨sub_nonneg.mpr x.2.1, sub_le_iff_le_add'.mpr x.2.2⟩⟩
    simpa only [ContinuousMap.restrict_apply, comp_apply, coe_addRight, Subtype.coe_mk,
      sub_add_cancel] using this
  · exact iUnion_Icc_intCast ℝ

end SummableNormIcc

/-!
### Substituting `-x` for `x`

These lemmas are stated in terms of either `Iic` or `Ioi` (neglecting `Iio` and `Ici`) to match
mathlib's conventions for integrals over finite intervals (see `intervalIntegral`). For the case
of finite integrals, see `intervalIntegral.integral_comp_neg`.
-/


/- @[simp] Porting note: Linter complains it does not apply to itself. Although it does apply to
itself, it does not apply when `f` is more complicated -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variantbbeccf2b80c350194b0bb8c6c2c05f4a812b8005b8c37bbb5ff0408ad0549da9.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8a96a15d2dbf54e3853a6ed98e74f2c268a42fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
