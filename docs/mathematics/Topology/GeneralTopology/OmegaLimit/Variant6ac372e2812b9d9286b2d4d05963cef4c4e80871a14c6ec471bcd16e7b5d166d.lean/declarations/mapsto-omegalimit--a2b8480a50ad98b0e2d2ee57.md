# mapsTo_omegaLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cab206f722db59a1d6fdee404ce3b4d80e6eec0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e52bf9a1-febc-614e-d457-b3e453363f2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31fa06c1-60e8-af8b-0d9f-e019b943bae2",
  "kind": "theorem",
  "lexical_name": "mapsTo_omegaLimit",
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
  "slug": "mapsto-omegalimit--a2b8480a50ad98b0e2d2ee57",
  "source": {
    "blob": "cab206f722db59a1d6fdee404ce3b4d80e6eec0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2b8480a50ad98b0e2d2ee5791942b303ccc224e9229b45f9a593ff6066be333",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31fa06c1-60e8-af8b-0d9f-e019b943bae2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapsTo_omegaLimit {α' β' : Type*} [TopologicalSpace β'] {f : Filter τ} {ϕ : τ → α → β}
    {ϕ' : τ → α' → β'} {ga : α → α'} {s' : Set α'} (hs : MapsTo ga s s') {gb : β → β'}
    (hg : ∀ t x, gb (ϕ t x) = ϕ' t (ga x)) (hgc : Continuous gb) :
    MapsTo gb (ω f ϕ s) (ω f ϕ' s') :=
  mapsTo_omegaLimit' _ hs (eventually_of_forall fun t x _hx ↦ hg t x) hgc
#align maps_to_omega_limit mapsTo_omegaLimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OmegaLimit/Variant6ac372e2812b9d9286b2d4d05963cef4c4e80871a14c6ec471bcd16e7b5d166d.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab206f722db59a1d6fdee404ce3b4d80e6eec0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
