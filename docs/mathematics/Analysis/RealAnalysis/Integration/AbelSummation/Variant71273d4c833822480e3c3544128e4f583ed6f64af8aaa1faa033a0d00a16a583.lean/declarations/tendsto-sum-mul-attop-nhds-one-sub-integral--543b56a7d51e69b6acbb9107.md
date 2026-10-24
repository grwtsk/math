# tendsto_sum_mul_atTop_nhds_one_sub_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e95e2d3-f333-804e-e6e8-51702b5660ea",
  "kind": "theorem",
  "lexical_name": "tendsto_sum_mul_atTop_nhds_one_sub_integral",
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
  "slug": "tendsto-sum-mul-attop-nhds-one-sub-integral--543b56a7d51e69b6acbb9107",
  "source": {
    "blob": "cec01fe997c5e206a52de1c5096b54955e018d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 261,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:543b56a7d51e69b6acbb9107e4fbabdfc5a6169baee8978d223c908431b6ed4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e95e2d3-f333-804e-e6e8-51702b5660ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_sum_mul_atTop_nhds_one_sub_integral
    (hf_diff : ∀ t ∈ Set.Ici 0, DifferentiableAt ℝ f t)
    (hf_int : LocallyIntegrableOn (deriv f) (Set.Ici 0)) {l : 𝕜}
    (h_lim : Tendsto (fun n : ℕ ↦ f n * ∑ k ∈ Icc 0 n, c k) atTop (𝓝 l))
    {g : ℝ → 𝕜} (hg_dom : (fun t ↦ deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k) =O[atTop] g)
    (hg_int : IntegrableAtFilter g atTop) :
    Tendsto (fun n : ℕ ↦ ∑ k ∈ Icc 0 n, f k * c k) atTop
      (𝓝 (l - ∫ t in Set.Ioi 0, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k)) := by
  have h_lim' : Tendsto (fun n : ℕ ↦ ∫ t in Set.Ioc (0 : ℝ) n, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k)
      atTop (𝓝 (∫ t in Set.Ioi 0, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k)) := by
    refine Tendsto.congr (fun _ ↦ by rw [← integral_of_le (Nat.cast_nonneg _)]) ?_
    refine intervalIntegral_tendsto_integral_Ioi _ ?_ tendsto_natCast_atTop_atTop
    exact integrableOn_Ici_iff_integrableOn_Ioi.mp
      <| (locallyIntegrableOn_mul_sum_Icc c le_rfl hf_int).integrableOn_of_isBigO_atTop
        hg_dom hg_int
  refine (h_lim.sub h_lim').congr (fun _ ↦ ?_)
  rw [sum_mul_eq_sub_integral_mul' _ _ (fun t ht ↦ hf_diff _ ht.1)]
  exact hf_int.integrableOn_compact_subset Set.Icc_subset_Ici_self isCompact_Icc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cec01fe997c5e206a52de1c5096b54955e018d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
