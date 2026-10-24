# LowerHemicontinuousAt.of_sequences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5de2c67-832d-6f6c-7935-12689520fb40",
  "kind": "lemma",
  "lexical_name": "LowerHemicontinuousAt.of_sequences",
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
  "slug": "lowerhemicontinuousat-of-sequences--d1d60d637f1bc0b98d6b01f6",
  "source": {
    "blob": "ee84c9d5f5382fab06ddb8d836d53157701446cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 414,
    "path": "GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1d60d637f1bc0b98d6b01f664fa95a42fd9152e510fd627e2ca45478dc827e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5de2c67-832d-6f6c-7935-12689520fb40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LowerHemicontinuousAt.of_sequences {x₀ : α} [(𝓝 x₀).IsCountablyGenerated]
    (h : ∀ x : ℕ → α, Tendsto x atTop (𝓝 x₀) →
      ∀ y₀ ∈ f x₀, ∃ y : ℕ → β, (∀ n, y n ∈ f (x n)) ∧ Tendsto y atTop (𝓝 y₀)) :
    LowerHemicontinuousAt f x₀ := by
  rw [lowerHemicontinuousAt_iff]
  intro U hU ⟨y₀, hy₀f, hy₀U⟩
  by_contra hc
  rw [Filter.not_eventually] at hc
  obtain ⟨x, hx, hxU⟩ := exists_seq_forall_of_frequently hc
  obtain ⟨y, hy_mem, hy_lim⟩ := h x hx y₀ hy₀f
  obtain ⟨n, hn⟩ := (hy_lim.eventually (hU.mem_nhds hy₀U)).exists
  exact hxU n ⟨y n, hy_mem n, hn⟩

/-- **Sequential characterization of lower hemicontinuity**:
If `f : α → Set β` is lower hemicontinuous at `x₀`, `y₀ ∈ f x₀`, `𝓝 y₀` is countably generated, and
`x : ℕ → α` tends to `x₀`, then there is a companion sequence `y : ℕ → β` that tends to `y₀` with
`y n ∈ f (x n)` for all sufficiently large `n`.

This is a partial converse of `LowerHemicontinuousAt.of_sequences`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee84c9d5f5382fab06ddb8d836d53157701446cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
