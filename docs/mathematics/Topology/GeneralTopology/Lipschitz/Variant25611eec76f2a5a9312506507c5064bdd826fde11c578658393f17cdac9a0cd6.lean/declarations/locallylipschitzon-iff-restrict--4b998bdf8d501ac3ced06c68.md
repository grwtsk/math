# locallyLipschitzOn_iff_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5883d1d13cca4be08c41d70bc59b78f0bb2b057",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc1df0fd-b5a5-343b-8762-b5133ba2d6fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af29c989-505f-029f-7526-df3443faf2da",
  "kind": "lemma",
  "lexical_name": "locallyLipschitzOn_iff_restrict",
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
  "slug": "locallylipschitzon-iff-restrict--4b998bdf8d501ac3ced06c68",
  "source": {
    "blob": "a5883d1d13cca4be08c41d70bc59b78f0bb2b057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b998bdf8d501ac3ced06c680ef9c1d9877f05e6d7f5d20ae4a58c84953fd209",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af29c989-505f-029f-7526-df3443faf2da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma locallyLipschitzOn_iff_restrict :
    LocallyLipschitzOn s f ↔ LocallyLipschitz (s.domRestrict f) := by
  simp only [LocallyLipschitzOn, LocallyLipschitz, SetCoe.forall',
    lipschitzOnWith_restrict,
    nhds_subtype_eq_comap_nhdsWithin, mem_comap]
  congr! with x K
  constructor
  · rintro ⟨t, ht, hft⟩
    exact ⟨_, ⟨t, ht, Subset.rfl⟩, hft.mono <| inter_subset_right.trans <| image_preimage_subset ..⟩
  · rintro ⟨t, ⟨u, hu, hut⟩, hft⟩
    exact ⟨s ∩ u, Filter.inter_mem self_mem_nhdsWithin hu,
      hft.mono fun x hx ↦ ⟨hx.1, ⟨x, hx.1⟩, hut hx.2, rfl⟩⟩

alias ⟨LipschitzOnWith.to_restrict, _⟩ := lipschitzOnWith_iff_restrict
alias ⟨LocallyLipschitzOn.restrict, _⟩ := locallyLipschitzOn_iff_restrict

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5883d1d13cca4be08c41d70bc59b78f0bb2b057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
