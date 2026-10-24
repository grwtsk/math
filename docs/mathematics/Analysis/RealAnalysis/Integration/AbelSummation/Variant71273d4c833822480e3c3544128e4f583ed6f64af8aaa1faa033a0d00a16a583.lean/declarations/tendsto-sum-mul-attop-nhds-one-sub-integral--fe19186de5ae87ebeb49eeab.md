# tendsto_sum_mul_atTop_nhds_one_sub_integral₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9cf9750-aec2-38d9-3c4a-a0fda6aedea1",
  "kind": "theorem",
  "lexical_name": "tendsto_sum_mul_atTop_nhds_one_sub_integral₀",
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
  "slug": "tendsto-sum-mul-attop-nhds-one-sub-integral--fe19186de5ae87ebeb49eeab",
  "source": {
    "blob": "cec01fe997c5e206a52de1c5096b54955e018d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 280,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe19186de5ae87ebeb49eeab3b9808971593516afe1cbff60dcd83d1c6fc1376",
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

Occurrence: `result:e9cf9750-aec2-38d9-3c4a-a0fda6aedea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_sum_mul_atTop_nhds_one_sub_integral₀ (hc : c 0 = 0)
    (hf_diff : ∀ t ∈ Set.Ici 1, DifferentiableAt ℝ f t)
    (hf_int : LocallyIntegrableOn (deriv f) (Set.Ici 1)) {l : 𝕜}
    (h_lim : Tendsto (fun n : ℕ ↦ f n * ∑ k ∈ Icc 0 n, c k) atTop (𝓝 l))
    {g : ℝ → ℝ} (hg_dom : (fun t ↦ deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k) =O[atTop] g)
    (hg_int : IntegrableAtFilter g atTop) :
    Tendsto (fun n : ℕ ↦ ∑ k ∈ Icc 0 n, f k * c k) atTop
      (𝓝 (l - ∫ t in Set.Ioi 1, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k)) := by
  have h : (fun n : ℕ ↦ ∫ (x : ℝ) in (1 : ℝ)..n, deriv f x * ∑ k ∈ Icc 0 ⌊x⌋₊, c k) =ᶠ[atTop]
      (fun n : ℕ ↦ ∫ (t : ℝ) in Set.Ioc 1 ↑n, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k) := by
    filter_upwards [eventually_ge_atTop 1] with _ h
    rw [← integral_of_le (Nat.one_le_cast.mpr h)]
  have h_lim' : Tendsto (fun n : ℕ ↦ ∫ t in Set.Ioc (1 : ℝ) n, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k)
      atTop (𝓝 (∫ t in Set.Ioi 1, deriv f t * ∑ k ∈ Icc 0 ⌊t⌋₊, c k)) := by
    refine Tendsto.congr' h (intervalIntegral_tendsto_integral_Ioi _ ?_ tendsto_natCast_atTop_atTop)
    exact integrableOn_Ici_iff_integrableOn_Ioi.mp
      <| (locallyIntegrableOn_mul_sum_Icc c zero_le_one hf_int).integrableOn_of_isBigO_atTop
        hg_dom hg_int
  refine (h_lim.sub h_lim').congr (fun _ ↦ ?_)
  rw [sum_mul_eq_sub_integral_mul₀' _ hc _ (fun t ht ↦ hf_diff _ ht.1)]
  exact hf_int.integrableOn_compact_subset Set.Icc_subset_Ici_self isCompact_Icc

end limit

section summable

open Filter abelSummationProof

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant71273d4c833822480e3c3544128e4f583ed6f64af8aaa1faa033a0d00a16a583.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cec01fe997c5e206a52de1c5096b54955e018d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
