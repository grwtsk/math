# norm_integral_inv_smul_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d535d3cf-fe36-c726-a546-7b17f24ba9ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cff4ba2-9e81-c6ac-6449-e834424d6183",
  "kind": "lemma",
  "lexical_name": "norm_integral_inv_smul_sub_le",
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
  "slug": "norm-integral-inv-smul-sub-le--dd833eccd486c37751aaa01e",
  "source": {
    "blob": "4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd833eccd486c37751aaa01e36c51118c9f10b280d6d4e987b05cfb34aa5cb75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cff4ba2-9e81-c6ac-6449-e834424d6183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_integral_inv_smul_sub_le (hf : LocallyIntegrableOn f (Ioi 0)) (ha : 0 < a)
    (hb : 0 < b) {V : E} {δ : ℝ} (hδ : 0 ≤ δ) (h : ∀ x ∈ uIoc a b, ‖f x - V‖ ≤ δ) :
    ‖(∫ x in a..b, x⁻¹ • f x) - log (b / a) • V‖ ≤ δ * |log (b / a)| := by
  have hsub : uIcc a b ⊆ Ioi 0 := by simp [uIcc, Icc_subset_Ioi_iff, ha, hb]
  have hint_f : IntervalIntegrable (fun x ↦ x⁻¹ • f x) volume a b :=
    intervalIntegrable_inv_smul hf ha hb
  have hint_V : IntervalIntegrable (fun x ↦ x⁻¹ • V) volume a b := by
    apply ContinuousOn.intervalIntegrable
    exact (continuousOn_inv₀.mono (fun x hx ↦ ne_of_gt (hsub hx))).smul continuousOn_const
  have hint_inv : IntervalIntegrable (fun x : ℝ ↦ x⁻¹ * δ) volume a b := by
    apply ContinuousOn.intervalIntegrable
    exact (continuousOn_inv₀.mono (fun x hx ↦ ne_of_gt (hsub hx))).mul continuousOn_const
  calc ‖(∫ x in a..b, x⁻¹ • f x) - log (b / a) • V‖
    _ = ‖∫ x in a..b, x⁻¹ • (f x - V)‖ := by
        congr 1
        have : log (b / a) • V = ∫ x in a..b, x⁻¹ • V := by
          rw [intervalIntegral.integral_smul_const (f := fun x ↦ (x⁻¹ : ℝ)) (c := V),
              integral_inv_of_pos ha hb]
        rw [this, ← integral_sub hint_f hint_V]
        congr 1
        funext x
        exact (smul_sub _ _ _).symm
    _ ≤ |∫ x in a..b, x⁻¹ * δ| := by
        apply norm_integral_le_abs_of_norm_le
        · exact (ae_restrict_mem measurableSet_uIoc).mono fun x hx ↦ by
            have hx_pos : 0 < x :=
              lt_of_lt_of_le (lt_min ha hb) (uIoc_subset_uIcc hx).1
            rw [norm_smul, Real.norm_eq_abs, abs_of_pos (inv_pos.2 hx_pos)]
            exact mul_le_mul_of_nonneg_left (h x hx) (inv_nonneg.2 hx_pos.le)
        · exact hint_inv
    _ = δ * |log (b / a)| := by
        simp_rw [mul_comm, intervalIntegral.integral_const_mul, integral_inv_of_pos ha hb]
        exact (abs_mul δ (log (b / a))).trans (by rw [abs_of_nonneg hδ])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FrullaniIntegral/Variantd516c54bf3f72b5111483188f285fffa9aef47855a39f72cd73f0112bd5915fd.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4468427c6f5cfe1029c51f5f9f7b111ae5b5c4c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
