# isSigmaCompact_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2888288cd6b3c863dea49c6f454c696e745b8e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c58ae761-cabf-e8bb-c813-171c98c31af0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17f52e1b-0d11-f6b8-7c23-47490a3a0a62",
  "kind": "lemma",
  "lexical_name": "isSigmaCompact_biUnion",
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
  "slug": "issigmacompact-biunion--cb672e2fe572a0bad3976ae2",
  "source": {
    "blob": "e2888288cd6b3c863dea49c6f454c696e745b8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb672e2fe572a0bad3976ae24f21d3eb079b8f38afc6f8ad32cd101eadf6bd32",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17f52e1b-0d11-f6b8-7c23-47490a3a0a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSigmaCompact_biUnion {s : Set ι} {S : ι → Set X} (hc : Set.Countable s)
    (hcomp : ∀ (i : ι), i ∈ s → IsSigmaCompact (S i)) :
    IsSigmaCompact (⋃ (i : ι) (_ : i ∈ s), S i) := by
  have : Countable ↑s := countable_coe_iff.mpr hc
  rw [biUnion_eq_iUnion]
  exact isSigmaCompact_iUnion _ (fun ⟨i', hi'⟩ ↦ hcomp i' hi')

/-- A closed subset of a σ-compact set is σ-compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaCompact/Variant1028464e8ef013517b6fc22e013df2e4d15b63c379b263145f74565d1444eabb.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2888288cd6b3c863dea49c6f454c696e745b8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
