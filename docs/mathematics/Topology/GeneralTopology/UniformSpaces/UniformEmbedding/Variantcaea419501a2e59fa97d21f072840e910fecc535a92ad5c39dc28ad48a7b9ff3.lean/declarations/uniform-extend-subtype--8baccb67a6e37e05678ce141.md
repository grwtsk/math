# uniform_extend_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf237123-4b01-c00a-70c5-ace101b401cd",
  "kind": "theorem",
  "lexical_name": "uniform_extend_subtype",
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
  "slug": "uniform-extend-subtype--8baccb67a6e37e05678ce141",
  "source": {
    "blob": "07cce3462a92c1f6d444f9cb117ead8f1101703b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 449,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantcaea419501a2e59fa97d21f072840e910fecc535a92ad5c39dc28ad48a7b9ff3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8baccb67a6e37e05678ce141e7bba1464a94d2a3d3dc23fe83960fb136f4573a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantcaea419501a2e59fa97d21f072840e910fecc535a92ad5c39dc28ad48a7b9ff3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf237123-4b01-c00a-70c5-ace101b401cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_extend_subtype [CompleteSpace γ] {p : α → Prop} {e : α → β} {f : α → γ} {b : β}
    {s : Set α} (hf : UniformContinuous fun x : Subtype p => f x.val) (he : UniformEmbedding e)
    (hd : ∀ x : β, x ∈ closure (range e)) (hb : closure (e '' s) ∈ 𝓝 b) (hs : IsClosed s)
    (hp : ∀ x ∈ s, p x) : ∃ c, Tendsto f (comap e (𝓝 b)) (𝓝 c) := by
  have de : DenseEmbedding e := he.denseEmbedding hd
  have de' : DenseEmbedding (DenseEmbedding.subtypeEmb p e) := de.subtype p
  have ue' : UniformEmbedding (DenseEmbedding.subtypeEmb p e) := uniformEmbedding_subtypeEmb _ he de
  have : b ∈ closure (e '' { x | p x }) :=
    (closure_mono <| monotone_image <| hp) (mem_of_mem_nhds hb)
  let ⟨c, hc⟩ := uniformly_extend_exists ue'.toUniformInducing de'.dense hf ⟨b, this⟩
  replace hc : Tendsto (f ∘ Subtype.val) (((𝓝 b).comap e).comap Subtype.val) (𝓝 c) := by
    simpa only [nhds_subtype_eq_comap, comap_comap, DenseEmbedding.subtypeEmb_coe] using hc
  refine ⟨c, (tendsto_comap'_iff ?_).1 hc⟩
  rw [Subtype.range_coe_subtype]
  exact ⟨_, hb, by rwa [← de.toInducing.closure_eq_preimage_closure_image, hs.closure_eq]⟩
#align uniform_extend_subtype uniform_extend_subtype

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantcaea419501a2e59fa97d21f072840e910fecc535a92ad5c39dc28ad48a7b9ff3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformEmbedding/Variantcaea419501a2e59fa97d21f072840e910fecc535a92ad5c39dc28ad48a7b9ff3.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07cce3462a92c1f6d444f9cb117ead8f1101703b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
