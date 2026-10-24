# B.continuous_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1541,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6aae0b0b-e876-935c-6e5a-b91d178dcafa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8261553-3a86-8c73-0c3a-88c48bc1fd8a",
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
  "slug": "b-continuous-zero--662fa02bd30f0b0df1c82f0f",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1563,
    "line": 1541,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:662fa02bd30f0b0df1c82f0f323d38c619640d80c516e4700fccd7fcd95434d9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8261553-3a86-8c73-0c3a-88c48bc1fd8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1541–1563.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L1541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
