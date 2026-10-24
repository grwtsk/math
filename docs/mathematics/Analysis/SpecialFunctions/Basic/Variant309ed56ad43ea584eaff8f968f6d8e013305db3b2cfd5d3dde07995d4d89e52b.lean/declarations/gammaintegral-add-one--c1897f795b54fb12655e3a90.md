# GammaIntegral_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f1a3f77dd9f70a1716cdd40600573cde925ca09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91d5edec-4bc2-6ec1-359a-298667950871",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3018bfc-51a7-bc54-bd08-67330b0776c6",
  "kind": "theorem",
  "lexical_name": "GammaIntegral_add_one",
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
  "slug": "gammaintegral-add-one--c1897f795b54fb12655e3a90",
  "source": {
    "blob": "1f1a3f77dd9f70a1716cdd40600573cde925ca09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 219,
    "path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1897f795b54fb12655e3a902a9f3015b4e591a412d8af949a9b39a3a21523b4",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3018bfc-51a7-bc54-bd08-67330b0776c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GammaIntegral_add_one {s : ℂ} (hs : 0 < s.re) :
    GammaIntegral (s + 1) = s * GammaIntegral s := by
  suffices Tendsto (s + 1).partialGamma atTop (𝓝 <| s * GammaIntegral s) by
    refine tendsto_nhds_unique ?_ this
    apply tendsto_partialGamma; rw [add_re, one_re]; linarith
  have : (fun X : ℝ => s * partialGamma s X - X ^ s * (-X).exp) =ᶠ[atTop]
      (s + 1).partialGamma := by
    apply eventuallyEq_of_mem (Ici_mem_atTop (0 : ℝ))
    intro X hX
    rw [partialGamma_add_one hs (mem_Ici.mp hX)]
    ring_nf
  refine Tendsto.congr' this ?_
  suffices Tendsto (fun X => -X ^ s * (-X).exp : ℝ → ℂ) atTop (𝓝 0) by
    simpa using Tendsto.add (Tendsto.const_mul s (tendsto_partialGamma hs)) this
  rw [tendsto_zero_iff_norm_tendsto_zero]
  have :
      (fun e : ℝ => ‖-(e : ℂ) ^ s * (-e).exp‖) =ᶠ[atTop] fun e : ℝ => e ^ s.re * (-1 * e).exp := by
    refine eventuallyEq_of_mem (Ioi_mem_atTop 0) ?_
    intro x hx; dsimp only
    rw [norm_mul, norm_neg, norm_cpow_eq_rpow_re_of_pos hx,
      Complex.norm_of_nonneg (exp_pos (-x)).le, neg_mul, one_mul]
  exact (tendsto_congr' this).mpr (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero _ _ zero_lt_one)

end GammaRecurrence

/-! Now we define `Γ(s)` on the whole complex plane, by recursion. -/


section GammaDef

/-- The `n`th function in this family is `Γ(s)` if `-n < s.re`, and junk otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Basic/Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f1a3f77dd9f70a1716cdd40600573cde925ca09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
