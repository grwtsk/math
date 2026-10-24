# map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7788721b3919655f7cc54f275fbe1166422a576e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 620,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bf42284-8ae2-3e6b-f755-62b63c442200",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edbac4db-8972-c4b9-9a36-3e86a7cae31e",
  "kind": "theorem",
  "lexical_name": "map_comp",
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
  "slug": "map-comp--5b391a615ae2e374d08b3b7c",
  "source": {
    "blob": "7788721b3919655f7cc54f275fbe1166422a576e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 620,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b391a615ae2e374d08b3b7ce9808ebcf7e3b0d469bb76a4a0e71807d66a21d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edbac4db-8972-c4b9-9a36-3e86a7cae31e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp {g : β → γ} {f : α → β} (hg : UniformContinuous g) (hf : UniformContinuous f) :
    Completion.map g ∘ Completion.map f = Completion.map (g ∘ f) :=
  extension_map ((uniformContinuous_coe _).comp hg) hf
#align uniform_space.completion.map_comp UniformSpace.Completion.map_comp

end Map

/- In this section we construct isomorphisms between the completion of a uniform space and the
completion of its separation quotient -/
section SeparationQuotientCompletion

/-- The isomorphism between the completion of a uniform space and the completion of its separation
quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantd19443a3b28cfd3497a65e2c150821bf05da88aa353712e47fe82686d94ecf7e.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7788721b3919655f7cc54f275fbe1166422a576e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
