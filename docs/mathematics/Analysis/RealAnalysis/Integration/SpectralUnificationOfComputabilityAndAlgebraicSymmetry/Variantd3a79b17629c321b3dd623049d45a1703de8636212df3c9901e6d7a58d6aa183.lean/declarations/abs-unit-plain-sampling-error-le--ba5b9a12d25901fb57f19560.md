# abs_unit_plain_sampling_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dda3a426fe8ba6517e513ba7e06a9a06e7dacc0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:907f1641-e093-bff8-2912-54657c8897c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ee45604-c807-73cd-e473-83c269595d4c",
  "kind": "theorem",
  "lexical_name": "abs_unit_plain_sampling_error_le",
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
  "slug": "abs-unit-plain-sampling-error-le--ba5b9a12d25901fb57f19560",
  "source": {
    "blob": "dda3a426fe8ba6517e513ba7e06a9a06e7dacc0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba5b9a12d25901fb57f195608359630f8a1d85b04be675aeba1ed43f277c406b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ee45604-c807-73cd-e473-83c269595d4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_unit_plain_sampling_error_le
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (k : ℕ) (hk : 1 ≤ k) :
    |plainTerm F x k -
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          plainTerm F x u| ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ),
        |plainDeriv F x u| := by
  rw [unit_plain_sampling_error_identity hF hx k hk,
    abs_neg]
  have hkle : (k : ℝ) ≤ k + 1 := by norm_num
  have hInt :
      IntervalIntegrable
        (fun u => |plainDeriv F x u|)
        volume (k : ℝ) (k + 1 : ℝ) := by
    exact ContinuousOn.intervalIntegrable_of_Icc hkle
      ((plainDeriv_continuousOn_pos hF hx).abs.mono
        (fun u hu => by
          have hkR : (1 : ℝ) ≤ k := by exact_mod_cast hk
          exact (zero_lt_one.trans_le hkR).trans_le hu.1))
  have h :=
    intervalIntegral.norm_integral_le_of_norm_le
      hkle
      (f := fun u : ℝ =>
        ((k + 1 : ℝ) - u) *
          plainDeriv F x u)
      (g := fun u : ℝ =>
        |plainDeriv F x u|)
      ?_ hInt
  · simpa only [IntegrableOn, Real.norm_eq_abs] using h
  · filter_upwards with u hu
    have hw0 : 0 ≤ (k + 1 : ℝ) - u := by linarith [hu.1, hu.2]
    have hw1 : (k + 1 : ℝ) - u ≤ 1 := by linarith [hu.1, hu.2]
    rw [Real.norm_eq_abs, abs_mul,
      abs_of_nonneg hw0]
    nlinarith [abs_nonneg
      (plainDeriv F x u)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd3a79b17629c321b3dd623049d45a1703de8636212df3c9901e6d7a58d6aa183.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dda3a426fe8ba6517e513ba7e06a9a06e7dacc0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
