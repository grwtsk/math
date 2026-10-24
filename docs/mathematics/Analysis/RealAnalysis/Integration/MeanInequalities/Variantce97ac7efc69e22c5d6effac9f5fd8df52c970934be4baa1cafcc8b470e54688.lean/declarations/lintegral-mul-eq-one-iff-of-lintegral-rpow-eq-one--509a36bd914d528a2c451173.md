# lintegral_mul_eq_one_iff_of_lintegral_rpow_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9aa7601-a03e-7d01-94fd-b19e71e1d59b",
  "kind": "theorem",
  "lexical_name": "lintegral_mul_eq_one_iff_of_lintegral_rpow_eq_one",
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
  "slug": "lintegral-mul-eq-one-iff-of-lintegral-rpow-eq-one--509a36bd914d528a2c451173",
  "source": {
    "blob": "53befccea1c4cfd74d007141885038d43eb57766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantce97ac7efc69e22c5d6effac9f5fd8df52c970934be4baa1cafcc8b470e54688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:509a36bd914d528a2c45117395ea7518b3d3237ce23e255203989bbc35aa740c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantce97ac7efc69e22c5d6effac9f5fd8df52c970934be4baa1cafcc8b470e54688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9aa7601-a03e-7d01-94fd-b19e71e1d59b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_mul_eq_one_iff_of_lintegral_rpow_eq_one {p q : ℝ} (hpq : p.HolderConjugate q)
    {f g : α → ℝ≥0∞} (hf : AEMeasurable f μ) (hg : AEMeasurable g μ)
    (hf_norm : ∫⁻ a, f a ^ p ∂μ = 1) (hg_norm : ∫⁻ a, g a ^ q ∂μ = 1) :
    ∫⁻ a, (f * g) a ∂μ = 1 ↔ f ^ p =ᵐ[μ] g ^ q := by
  rw [← lintegral_rpow_div_add_rpow_div_eq_one_of_lintegral_rpow_eq_one hpq hf hf_norm hg_norm]
  have hle := lintegral_mul_le_one_of_lintegral_rpow_eq_one hpq hf hf_norm hg_norm
  have heqiff := lintegral_eq_iff_ae_eq_of_ae_le (hle.trans_lt one_lt_top |>.ne_top) (by fun_prop)
    (ae_of_all μ fun _ ↦ young_inequality _ _ hpq)
  rw [heqiff]
  have := ae_lt_top' (.mul hf hg) (hle.trans_lt one_lt_top).ne |>.ne_of_lt
  refine Filter.eventually_congr <| this.mono fun a ha ↦ ?_
  simp_rw [Pi.mul_apply, Pi.pow_apply, young_inequality_eq_iff (f a) (g a) hpq]
  refine ⟨fun h ↦ h.resolve_left ?_ |>.resolve_left <| ?_, fun h ↦ .inr <| .inr h⟩
  · exact fun ⟨hf, hg⟩ ↦ lt_top_of_mul_ne_top_left ha hg |>.trans_eq' hf |>.false
  · exact fun ⟨hf, hg⟩ ↦ lt_top_of_mul_ne_top_right ha hf |>.trans_eq' hg |>.false

/-- Function multiplied by the inverse of its p-seminorm `(∫⁻ f^p ∂μ) ^ 1/p` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeanInequalities/Variantce97ac7efc69e22c5d6effac9f5fd8df52c970934be4baa1cafcc8b470e54688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variantce97ac7efc69e22c5d6effac9f5fd8df52c970934be4baa1cafcc8b470e54688.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53befccea1c4cfd74d007141885038d43eb57766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
