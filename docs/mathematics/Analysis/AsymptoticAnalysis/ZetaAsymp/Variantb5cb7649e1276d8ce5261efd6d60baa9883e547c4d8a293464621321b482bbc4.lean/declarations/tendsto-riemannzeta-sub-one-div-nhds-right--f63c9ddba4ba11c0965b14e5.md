# tendsto_riemannZeta_sub_one_div_nhds_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e480af9f9916b5dec99f1a66725f221e6618d221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8eb05c32-3626-0f95-9d3b-eaab7700d4df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:999abfe1-baf4-212d-65b1-8d4d4251ab99",
  "kind": "lemma",
  "lexical_name": "tendsto_riemannZeta_sub_one_div_nhds_right",
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
  "slug": "tendsto-riemannzeta-sub-one-div-nhds-right--f63c9ddba4ba11c0965b14e5",
  "source": {
    "blob": "e480af9f9916b5dec99f1a66725f221e6618d221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 292,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f63c9ddba4ba11c0965b14e54cf98efe8f58be0a93cedec4522c9b6fb07a014c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:999abfe1-baf4-212d-65b1-8d4d4251ab99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_riemannZeta_sub_one_div_nhds_right :
    Tendsto (fun s : ℝ ↦ riemannZeta s - 1 / (s - 1)) (𝓝[>] 1) (𝓝 γ) := by
  suffices Tendsto (fun s : ℝ ↦ (∑' n : ℕ, 1 / (n + 1 : ℝ) ^ s) - 1 / (s - 1))
    (𝓝[>] 1) (𝓝 γ) by
    apply ((Complex.continuous_ofReal.tendsto _).comp this).congr'
    filter_upwards [self_mem_nhdsWithin] with s hs
    simp only [Function.comp_apply, Complex.ofReal_sub, Complex.ofReal_div,
      Complex.ofReal_one, sub_left_inj, Complex.ofReal_tsum]
    rw [zeta_eq_tsum_one_div_nat_add_one_cpow (by simpa using hs)]
    congr 1 with n
    rw [Complex.ofReal_cpow (by positivity)]
    norm_cast
  suffices aux2 : Tendsto (fun s : ℝ ↦ (∑' n : ℕ, 1 / (n + 1 : ℝ) ^ s) - 1 / (s - 1))
    (𝓝[>] 1) (𝓝 (1 - term_tsum 1)) by
    have := term_tsum_one.tsum_eq
    rw [← term_tsum, eq_sub_iff_add_eq, ← eq_sub_iff_add_eq'] at this
    simpa only [this] using aux2
  apply Tendsto.congr'
  · filter_upwards [self_mem_nhdsWithin] with s hs using (zeta_limit_aux1 hs).symm
  · apply tendsto_const_nhds.sub
    rw [← one_mul (term_tsum 1)]
    apply (tendsto_id.mono_left nhdsWithin_le_nhds).mul
    have := continuousOn_term_tsum.continuousWithinAt left_mem_Ici
    exact Tendsto.mono_left this (nhdsWithin_mono _ Ioi_subset_Ici_self)

/-- The function `ζ s - 1 / (s - 1)` tends to `γ` as `s → 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variantb5cb7649e1276d8ce5261efd6d60baa9883e547c4d8a293464621321b482bbc4.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e480af9f9916b5dec99f1a66725f221e6618d221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
