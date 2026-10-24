# B.continuous_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5f3294b-c905-16b9-f1da-594bcef48f69",
  "kind": "theorem",
  "lexical_name": "B.continuous_zero",
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
  "slug": "b-continuous-zero--9fe9e565dd9389582b80b932",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1574,
    "line": 1552,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fe9e565dd9389582b80b932ed24975ce419faa72d671425e2f12232c273584e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5f3294b-c905-16b9-f1da-594bcef48f69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1552–1574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem B.continuous_zero (ε : ℝ) : ContinuousAt (B ε) 0 := by
  have h_lim : Filter.Tendsto (fun s : ℂ => s * (Complex.cosh (s / 2)) / (2 * Complex.sinh (s / 2)) + ε * s / 2) (nhdsWithin 0 {0}ᶜ) (nhds 1) := by
    have h_sinh : Filter.Tendsto (fun s : ℂ => Complex.sinh (s / 2) / s) (nhdsWithin 0 {0}ᶜ) (nhds (1 / 2)) := by
        simpa [div_eq_inv_mul] using HasDerivAt.tendsto_slope_zero
          (HasDerivAt.comp 0 (Complex.hasDerivAt_sinh _)
            (hasDerivAt_id 0 |> HasDerivAt.div_const <| 2))
    have h_lim : Filter.Tendsto (fun s : ℂ => s / (2 * Complex.sinh (s / 2))) (nhdsWithin 0 {0}ᶜ) (nhds 1) := by
      convert h_sinh.inv₀ (by norm_num : (1 / 2 : ℂ) ≠ 0) |>
        Filter.Tendsto.const_mul 2⁻¹ using 2 <;> norm_num; ring
    simpa [mul_div_right_comm] using Filter.Tendsto.add
      (h_lim.mul (Complex.continuous_cosh.continuousAt.tendsto.comp
        (continuousWithinAt_id.div_const 2)))
      (Filter.Tendsto.div_const (tendsto_const_nhds.mul continuousWithinAt_id) 2)
  rw [Metric.tendsto_nhdsWithin_nhds] at h_lim
  rw [Metric.continuousAt_iff]
  intro ε hε; rcases h_lim ε hε with ⟨δ, hδ, H⟩; use δ, hδ; intro x hx
  by_cases hx' : x = 0
  · simp_all [B]
  simp_all only [gt_iff_lt, Set.mem_compl_iff, Set.mem_singleton_iff, dist_zero_right, B,
    ↓reduceIte]
  convert H hx' hx using 1; norm_num [coth]
  norm_num [Complex.tanh_eq_sinh_div_cosh]; ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L1552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
