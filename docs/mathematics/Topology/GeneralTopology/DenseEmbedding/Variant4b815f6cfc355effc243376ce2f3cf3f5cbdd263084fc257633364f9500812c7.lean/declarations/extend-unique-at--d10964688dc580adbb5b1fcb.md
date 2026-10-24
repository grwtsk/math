# extend_unique_at

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f53248911aebd2f41301f950b54bf30b28721a06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc7f8545-add7-25a2-21a3-9c0ef6b9a632",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:437d4715-f28c-3e33-af9c-edace39c39d8",
  "kind": "theorem",
  "lexical_name": "extend_unique_at",
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
  "slug": "extend-unique-at--d10964688dc580adbb5b1fcb",
  "source": {
    "blob": "f53248911aebd2f41301f950b54bf30b28721a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d10964688dc580adbb5b1fcbe756faaf584c754705ed06248cea3e4cfe577494",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:437d4715-f28c-3e33-af9c-edace39c39d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_unique_at [T2Space γ] {b : β} {f : α → γ} {g : β → γ} (di : IsDenseInducing i)
    (hf : ∀ᶠ x in comap i (𝓝 b), g (i x) = f x) (hg : ContinuousAt g b) : di.extend f b = g b := by
  refine di.extend_eq_of_tendsto fun s hs => mem_map.2 ?_
  suffices ∀ᶠ x : α in comap i (𝓝 b), g (i x) ∈ s from
    hf.mp (this.mono fun x hgx hfx => hfx ▸ hgx)
  clear hf f
  refine eventually_comap.2 ((hg.eventually hs).mono ?_)
  rintro _ hxs x rfl
  exact hxs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant4b815f6cfc355effc243376ce2f3cf3f5cbdd263084fc257633364f9500812c7.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f53248911aebd2f41301f950b54bf30b28721a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
