# UpperHemicontinuousAt.mem_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f107283-d79a-35ec-2694-c957a457960b",
  "kind": "lemma",
  "lexical_name": "UpperHemicontinuousAt.mem_of_tendsto",
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
  "slug": "upperhemicontinuousat-mem-of-tendsto--a6eb171c28b149c02ae33146",
  "source": {
    "blob": "ee84c9d5f5382fab06ddb8d836d53157701446cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 394,
    "path": "GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6eb171c28b149c02ae33146e1cdc5db37b29a4d2704a90e95a728b9bd3e6a52",
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

Occurrence: `result:2f107283-d79a-35ec-2694-c957a457960b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UpperHemicontinuousAt.mem_of_tendsto {ι : Type*} [RegularSpace β] {x₀ : α}
    {l : Filter ι} (hf : UpperHemicontinuousAt f x₀) (hf_closed : IsClosed (f x₀))
    {x : ι → α} (hx : Tendsto x l (𝓝 x₀))
    {y : ι → β} (hy : ∃ᶠ n in l, y n ∈ f (x n)) {y₀ : β} (hy₀ : Tendsto y l (𝓝 y₀)) :
    y₀ ∈ f x₀ := by
  by_contra
  obtain ⟨s, hs, t, ht, hst⟩ := Filter.disjoint_iff.mp <| RegularSpace.regular hf_closed this
  suffices ∃ᶠ n in l, y n ∈ s by
    apply this
    filter_upwards [hy₀ ht] with n hn hyn
    exact hst.notMem_of_mem_left hyn hn
  apply hy.mp
  filter_upwards [hx (hf s hs)] with n hn hyn
  simp only [← subset_interior_iff_mem_nhdsSet, preimage_ofPred_eq, mem_ofPred_eq] at hn
  exact interior_subset <| hn hyn

/-- **Sequential characterization of lower hemicontinuity**:
A set-valued function `f : α → Set β` is lower hemicontinuous at `x₀ : α` if for every sequence
`x : ℕ → α` tending to `x₀` and every `y₀ ∈ f x₀`, there exists a sequence `y : ℕ → β` with
`y n ∈ f (x n)` for all `n` that tends to `y₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hemicontinuity/Varianta08c4104be01bace75f69fdd1d13ecc4505c5f283ce63f392459eee13abde1bd.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee84c9d5f5382fab06ddb8d836d53157701446cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
