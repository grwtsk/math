# Real.integrable_of_summable_norm_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1779f92122ed732e721980373134efd1399ff5b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5164fd1c-bcbc-6563-03b6-45b84ebccf23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40f73d7e-df74-5238-a66c-0805e0a05f10",
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
  "slug": "real-integrable-of-summable-norm-icc--777d7e65a414b40b338c561e",
  "source": {
    "blob": "1779f92122ed732e721980373134efd1399ff5b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:777d7e65a414b40b338c561e021acfd27d923a78255ecc6bf97dbbdfc48104cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40f73d7e-df74-5238-a66c-0805e0a05f10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.integrable_of_summable_norm_Icc {E : Type*} [NormedAddCommGroup E] {f : C(ℝ, E)}
    (hf : Summable fun n : ℤ => ‖(f.comp <| ContinuousMap.addRight n).restrict (Icc 0 1)‖) :
    Integrable f := by
  refine'
    @integrable_of_summable_norm_restrict ℝ ℤ E _ volume _ _ _ _ _ _ _ _
      (summable_of_nonneg_of_le
        (fun n : ℤ => mul_nonneg (norm_nonneg
            (f.restrict (⟨Icc (n : ℝ) ((n : ℝ) + 1), isCompact_Icc⟩ : Compacts ℝ)))
            ENNReal.toReal_nonneg)
        (fun n => _) hf) _
  -- porting note: `refine` was able to find that on its own before
  · intro n
    exact ⟨Icc (n : ℝ) ((n : ℝ) + 1), isCompact_Icc⟩
  · simp only [Compacts.coe_mk, Real.volume_Icc, add_sub_cancel', ENNReal.toReal_ofReal zero_le_one,
      mul_one, norm_le _ (norm_nonneg _)]
    intro x
    have := ((f.comp <| ContinuousMap.addRight n).restrict (Icc 0 1)).norm_coe_le_norm
        ⟨x - n, ⟨sub_nonneg.mpr x.2.1, sub_le_iff_le_add'.mpr x.2.2⟩⟩
    simpa only [ContinuousMap.restrict_apply, comp_apply, coe_addRight, Subtype.coe_mk,
      sub_add_cancel] using this
  · exact iUnion_Icc_int_cast ℝ
#align real.integrable_of_summable_norm_Icc Real.integrable_of_summable_norm_Icc

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant5b51fc7262b838205b98f0136ab63943f3e9579dec436d67f8b6a41d23f5fbf3.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1779f92122ed732e721980373134efd1399ff5b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
