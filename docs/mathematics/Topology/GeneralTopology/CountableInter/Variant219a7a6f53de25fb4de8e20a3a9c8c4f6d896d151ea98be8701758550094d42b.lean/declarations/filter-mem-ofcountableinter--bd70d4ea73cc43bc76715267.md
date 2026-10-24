# Filter.mem_ofCountableInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2d546b66ef10c39d56219bc09a6b1ded967991e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65fca949-e591-0985-9c6a-1aac47641b87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0244edf4-8ba0-9f08-d042-28e37785bd77",
  "kind": "theorem",
  "lexical_name": "Filter.mem_ofCountableInter",
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
  "slug": "filter-mem-ofcountableinter--bd70d4ea73cc43bc76715267",
  "source": {
    "blob": "c2d546b66ef10c39d56219bc09a6b1ded967991e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 133,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd70d4ea73cc43bc76715267ae97787a91d2d6fbd94f5e1aacda100bdb029b27",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0244edf4-8ba0-9f08-d042-28e37785bd77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.mem_ofCountableInter {l : Set (Set α)}
    (hl : ∀ S : Set (Set α), S.Countable → S ⊆ l → ⋂₀ S ∈ l) (h_mono : ∀ s t, s ∈ l → s ⊆ t → t ∈ l)
    {s : Set α} : s ∈ Filter.ofCountableInter l hl h_mono ↔ s ∈ l :=
  Iff.rfl

/-- Construct a filter with countable intersection property.
Similarly to `Filter.comk`, a set belongs to this filter if its complement satisfies the property.
Similarly to `Filter.ofCountableInter`,
this constructor deduces some properties from the countable intersection property
which becomes the countable union property because we take complements of all sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2d546b66ef10c39d56219bc09a6b1ded967991e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
