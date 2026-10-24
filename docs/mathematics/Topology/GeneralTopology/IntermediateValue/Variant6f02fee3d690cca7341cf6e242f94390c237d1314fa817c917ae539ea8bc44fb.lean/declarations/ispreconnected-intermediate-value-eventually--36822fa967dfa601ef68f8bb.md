# IsPreconnected.intermediate_value₂_eventually₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9815678598a7e8bdb10cb9f67f9778c32c651f10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76da1e02-1746-2d06-99d5-ae150d2a180f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6c4b613-8dcd-bd31-3424-5ee04c6a6eba",
  "kind": "theorem",
  "lexical_name": "IsPreconnected.intermediate_value₂_eventually₁",
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
  "slug": "ispreconnected-intermediate-value-eventually--36822fa967dfa601ef68f8bb",
  "source": {
    "blob": "9815678598a7e8bdb10cb9f67f9778c32c651f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36822fa967dfa601ef68f8bbe0a5cade9bc99abb24e66be25634d53b0d79297e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6c4b613-8dcd-bd31-3424-5ee04c6a6eba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreconnected.intermediate_value₂_eventually₁ {s : Set X} (hs : IsPreconnected s) {a : X}
    {l : Filter X} (ha : a ∈ s) [NeBot l] (hl : l ≤ 𝓟 s) {f g : X → α} (hf : ContinuousOn f s)
    (hg : ContinuousOn g s) (ha' : f a ≤ g a) (he : g ≤ᶠ[l] f) : ∃ x ∈ s, f x = g x := by
  rw [continuousOn_iff_continuous_restrict] at hf hg
  obtain ⟨b, h⟩ :=
    @intermediate_value_univ₂_eventually₁ _ _ _ _ _ _ (Subtype.preconnectedSpace hs) ⟨a, ha⟩ _
      (comap_coe_neBot_of_le_principal hl) _ _ hf hg ha' (he.comap _)
  exact ⟨b, b.prop, h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9815678598a7e8bdb10cb9f67f9778c32c651f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
