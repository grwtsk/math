# IsPreconnected.transGen_of_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb5d1940-98c2-702c-fffa-fb53a68d1cdf",
  "kind": "lemma",
  "lexical_name": "IsPreconnected.transGen_of_iUnion",
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
  "slug": "ispreconnected-transgen-of-iunion--b9e845232fe19744bfa049e4",
  "source": {
    "blob": "5fa17d82b172a666f3d23997cd0dc5251cd09238",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 211,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9e845232fe19744bfa049e4f18c90dbc0d461ea5afd3e778e4c96b33e29b974",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb5d1940-98c2-702c-fffa-fb53a68d1cdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPreconnected.transGen_of_iUnion {ι : Type*} {s : ι → Set α}
    (hs : IsPreconnected (⋃ n, s n)) (hs' : ∀ i, IsOpen (s i)) (i j : ι) (hi : (s i).Nonempty)
    (hj : (s j).Nonempty) : TransGen (fun a b ↦ (s a ∩ s b).Nonempty) i j := by
  by_contra hij
  let S : Set ι := {k | TransGen (fun a b ↦ (s a ∩ s b).Nonempty) i k}
  let U : Set α := ⋃ k ∈ S, s k
  let V : Set α := ⋃ k ∈ Sᶜ, s k
  have hsplit : (⋃ n, s n) = U ∪ V := iSup_split s (· ∈ S)
  obtain ⟨a, ha⟩ := hi
  obtain ⟨b, hb⟩ := hj
  let hi_S : i ∈ S := Relation.TransGen.single ⟨a, ha, ha⟩
  have hUne : ((⋃ n, s n) ∩ U).Nonempty := ⟨a, mem_iUnion_of_mem i ha, mem_iUnion₂_of_mem hi_S ha⟩
  have hVne : ((⋃ n, s n) ∩ V).Nonempty := ⟨b, mem_iUnion_of_mem j hb, mem_iUnion₂_of_mem hij hb⟩
  obtain ⟨x, -, hxU, hxV⟩ := hs U V (isOpen_biUnion fun i a ↦ hs' i)
    (isOpen_biUnion fun i a ↦ hs' i) hsplit.le hUne hVne
  simp only [mem_iUnion, exists_prop, mem_compl_iff, U, V] at hxU hxV
  obtain ⟨k, hk, hxk⟩ := hxU
  obtain ⟨l, hl, hxl⟩ := hxV
  exact hl (hk.tail ⟨x, hxk, hxl⟩)

section SuccOrder

open Order

variable [LinearOrder β] [SuccOrder β] [IsSuccArchimedean β]

/-- The iUnion of connected sets indexed by a type with an archimedean successor (like `ℕ` or `ℤ`)
  such that any two neighboring sets meet is preconnected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1c4f093897d2ab484bbc6dc9c79a8d3dffb2cb6073033096e11b6a8082d19fd4.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa17d82b172a666f3d23997cd0dc5251cd09238` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
