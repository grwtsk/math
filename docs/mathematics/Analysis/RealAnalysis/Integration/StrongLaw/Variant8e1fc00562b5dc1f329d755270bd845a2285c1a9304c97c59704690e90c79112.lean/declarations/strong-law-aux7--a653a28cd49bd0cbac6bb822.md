# strong_law_aux7

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a4dc490-ddaa-2d94-028e-26550d404eb1",
  "kind": "theorem",
  "lexical_name": "strong_law_aux7",
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
  "slug": "strong-law-aux7--a653a28cd49bd0cbac6bb822",
  "source": {
    "blob": "b0ea320986432c55f30165eda9bd1413c532769e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 584,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant8e1fc00562b5dc1f329d755270bd845a2285c1a9304c97c59704690e90c79112.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a653a28cd49bd0cbac6bb82281e64a05cba878f04b4415eb18f66e5cf30a7b10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant8e1fc00562b5dc1f329d755270bd845a2285c1a9304c97c59704690e90c79112.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a4dc490-ddaa-2d94-028e-26550d404eb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strong_law_aux7 :
    ∀ᵐ ω, Tendsto (fun n : ℕ => (∑ i ∈ range n, X i ω) / n) atTop (𝓝 𝔼[X 0]) := by
  obtain ⟨c, -, cone, clim⟩ :
      ∃ c : ℕ → ℝ, StrictAnti c ∧ (∀ n : ℕ, 1 < c n) ∧ Tendsto c atTop (𝓝 1) :=
    exists_seq_strictAnti_tendsto (1 : ℝ)
  have : ∀ k, ∀ᵐ ω,
      Tendsto (fun n : ℕ => (∑ i ∈ range ⌊c k ^ n⌋₊, X i ω) / ⌊c k ^ n⌋₊) atTop (𝓝 𝔼[X 0]) :=
    fun k => strong_law_aux6 X hint hindep hident hnonneg (cone k)
  filter_upwards [ae_all_iff.2 this] with ω hω
  apply tendsto_div_of_monotone_of_tendsto_div_floor_pow _ _ _ c cone clim _
  · intro m n hmn
    exact sum_le_sum_of_subset_of_nonneg (range_mono hmn) fun i _ _ => hnonneg i ω
  · exact hω

end StrongLawNonneg

/-- **Strong law of large numbers**, almost sure version: if `X n` is a sequence of independent
identically distributed integrable real-valued random variables, then `∑ i ∈ range n, X i / n`
converges almost surely to `𝔼[X 0]`. We give here the strong version, due to Etemadi, that only
requires pairwise independence. Superseded by `strong_law_ae`, which works for random variables
taking values in any Banach space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant8e1fc00562b5dc1f329d755270bd845a2285c1a9304c97c59704690e90c79112.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant8e1fc00562b5dc1f329d755270bd845a2285c1a9304c97c59704690e90c79112.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0ea320986432c55f30165eda9bd1413c532769e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
