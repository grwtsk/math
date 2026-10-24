# IsSeparable.iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79932e5e520be2ae0c5be72c0139c6522e7f5bb2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 429,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:916c110a-ef91-b675-5dbd-92e1f4985d48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca01f7ff-7809-8943-057f-b4d0f400472e",
  "kind": "theorem",
  "lexical_name": "IsSeparable.iUnion",
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
  "slug": "isseparable-iunion--49f0f9c8707e175103370d82",
  "source": {
    "blob": "79932e5e520be2ae0c5be72c0139c6522e7f5bb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 429,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49f0f9c8707e175103370d82f3e7f12ff62a5c085051dfb2f7f5fc2581b2adba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca01f7ff-7809-8943-057f-b4d0f400472e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSeparable.iUnion {ι : Sort*} [Countable ι] {s : ι → Set α}
    (hs : ∀ i, IsSeparable (s i)) : IsSeparable (⋃ i, s i) := by
  choose c hc h'c using hs
  refine ⟨⋃ i, c i, countable_iUnion hc, iUnion_subset_iff.2 fun i => ?_⟩
  exact (h'c i).trans (closure_mono (subset_iUnion _ i))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variant8248c2afb37d9e8e5e5680cec4c46e1c1fd625517b72e8cd812d2cc935e25f99.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79932e5e520be2ae0c5be72c0139c6522e7f5bb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
