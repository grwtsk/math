# isDiscrete_of_codiscreteWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "15098c5edd123ac4e36f0b866fb371160e89ca40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e06018c8-9c26-fc23-a980-1b369929b63b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d58663f-9911-e49e-b5c3-c9baecd41cf7",
  "kind": "theorem",
  "lexical_name": "isDiscrete_of_codiscreteWithin",
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
  "slug": "isdiscrete-of-codiscretewithin--0182e71ae61378106bd85ac0",
  "source": {
    "blob": "15098c5edd123ac4e36f0b866fb371160e89ca40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 310,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0182e71ae61378106bd85ac0cfca0eb9b54f478290cfa34c9b71fc831122017b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d58663f-9911-e49e-b5c3-c9baecd41cf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isDiscrete_of_codiscreteWithin {U s : Set X} (h : sᶜ ∈ Filter.codiscreteWithin U) :
    IsDiscrete (s ∩ U) := by
  rw [(by simp : ((s ∩ U) : Set X) = ((sᶜ ∪ Uᶜ)ᶜ : Set X)), isDiscrete_iff_nhdsNE]
  simp_rw [← Filter.mem_iff_inf_principal_compl]
  simp_all [← Set.compl_sdiff, mem_codiscreteWithin]

/-- Helper lemma for `codiscreteWithin_iff_locallyFiniteComplementWithin`: A set `s` is
`codiscreteWithin U` iff every point `z ∈ U` has a punctured neighborhood that does not intersect
`U \ s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15098c5edd123ac4e36f0b866fb371160e89ca40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
