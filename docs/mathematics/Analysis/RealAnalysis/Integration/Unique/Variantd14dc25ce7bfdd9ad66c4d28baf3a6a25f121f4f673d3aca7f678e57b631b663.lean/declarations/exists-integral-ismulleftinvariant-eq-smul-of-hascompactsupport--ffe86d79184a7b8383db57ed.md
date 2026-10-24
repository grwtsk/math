# exists_integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8f27cee36e757273dbc80d255aaf98ed21bc354",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1360b0c9-0fc8-4f27-1aba-3e45708504ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b99422f1-c68f-efec-e442-ba937b8cd03d",
  "kind": "lemma",
  "lexical_name": "exists_integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport",
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
  "slug": "exists-integral-ismulleftinvariant-eq-smul-of-hascompactsupport--ffe86d79184a7b8383db57ed",
  "source": {
    "blob": "d8f27cee36e757273dbc80d255aaf98ed21bc354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 227,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffe86d79184a7b8383db57ed14164906bc4496619519c8d25fbe8248ddeeb9b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b99422f1-c68f-efec-e442-ba937b8cd03d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport (μ' μ : Measure G)
    [IsHaarMeasure μ] [IsFiniteMeasureOnCompacts μ'] [IsMulLeftInvariant μ'] :
    ∃ (c : ℝ≥0), ∀ (f : G → ℝ), Continuous f → HasCompactSupport f →
      ∫ x, f x ∂μ' = ∫ x, f x ∂(c • μ) := by
  -- The group has to be locally compact, otherwise all integrals vanish and the result is trivial.
  by_cases H : LocallyCompactSpace G; swap
  · refine ⟨0, fun f f_cont f_comp ↦ ?_⟩
    rcases f_comp.eq_zero_or_locallyCompactSpace_of_group f_cont with hf | hf
    · simp [hf]
    · exact (H hf).elim
  -- Fix some nonzero continuous function with compact support `g`.
  obtain ⟨⟨g, g_cont⟩, g_comp, g_nonneg, g_one⟩ :
    ∃ (g : C(G, ℝ)), HasCompactSupport g ∧ 0 ≤ g ∧ g 1 ≠ 0 := exists_continuous_nonneg_pos 1
  have int_g_pos : 0 < ∫ x, g x ∂μ :=
    g_cont.integral_pos_of_hasCompactSupport_nonneg_nonzero g_comp g_nonneg g_one
  -- The proportionality constant we are looking for will be the ratio of the integrals of `g`
  -- with respect to `μ'` and `μ`.
  let c : ℝ := (∫ x, g x ∂μ)⁻¹ * (∫ x, g x ∂μ')
  have c_nonneg : 0 ≤ c :=
    mul_nonneg (inv_nonneg.2 (integral_nonneg g_nonneg)) (integral_nonneg g_nonneg)
  refine ⟨.mk c c_nonneg, fun f f_cont f_comp ↦ ?_⟩
  /- use the lemma `integral_mulLeftInvariant_mulRightInvariant_combo` for `μ` and then `μ'`
  to reexpress the integral of `f` as the integral of `g` times a factor which only depends
  on a right-invariant measure `ν`. We use `ν = μ.inv` for convenience. -/
  let ν := μ.inv
  have A : ∫ x, f x ∂μ = (∫ y, f y * (∫ z, g (z⁻¹ * y) ∂ν)⁻¹ ∂ν) * ∫ x, g x ∂μ :=
    integral_isMulLeftInvariant_isMulRightInvariant_combo f_cont f_comp g_cont g_comp g_nonneg g_one
  rw [← mul_inv_eq_iff_eq_mul₀ int_g_pos.ne'] at A
  have B : ∫ x, f x ∂μ' = (∫ y, f y * (∫ z, g (z⁻¹ * y) ∂ν)⁻¹ ∂ν) * ∫ x, g x ∂μ' :=
    integral_isMulLeftInvariant_isMulRightInvariant_combo f_cont f_comp g_cont g_comp g_nonneg g_one
  /- Since the `ν`-factor is the same for `μ` and `μ'`, this gives the result. -/
  rw [← A, mul_assoc, mul_comm] at B
  simp [B, integral_smul_nnreal_measure, c, NNReal.smul_def]

open scoped Classical in
/-- Given two left-invariant measures which are finite on compacts, `haarScalarFactor μ' μ` is a
scalar such that `∫ f dμ' = (haarScalarFactor μ' μ) ∫ f dμ` for any compactly supported continuous
function `f`.

Note that there is a dissymmetry in the assumptions between `μ'` and `μ`: the measure `μ'` needs
only be finite on compact sets, while `μ` has to be finite on compact sets and positive on open
sets, i.e., a Haar measure, to exclude for instance the case where `μ = 0`, where the definition
doesn't make sense. -/
@[to_additive /-- Given two left-invariant measures which are finite on compacts,
`addHaarScalarFactor μ' μ` is a scalar such that `∫ f dμ' = (addHaarScalarFactor μ' μ) ∫ f dμ` for
any compactly supported continuous function `f`.

Note that there is a dissymmetry in the assumptions between `μ'` and `μ`: the measure `μ'` needs
only be finite on compact sets, while `μ` has to be finite on compact sets and positive on open
sets, i.e., an additive Haar measure, to exclude for instance the case where `μ = 0`, where the
definition doesn't make sense. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Unique/Variantd14dc25ce7bfdd9ad66c4d28baf3a6a25f121f4f673d3aca7f678e57b631b663.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f27cee36e757273dbc80d255aaf98ed21bc354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
