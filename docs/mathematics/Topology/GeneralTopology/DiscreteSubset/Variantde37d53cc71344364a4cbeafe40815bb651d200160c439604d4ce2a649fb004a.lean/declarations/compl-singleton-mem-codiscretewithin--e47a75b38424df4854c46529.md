# compl_singleton_mem_codiscreteWithin

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
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/de37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39155dda-4aa9-5919-4fbe-abace588e912",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:773c9f24-1f01-79e1-139f-37e7b3e62501",
  "kind": "theorem",
  "lexical_name": "compl_singleton_mem_codiscreteWithin",
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
  "slug": "compl-singleton-mem-codiscretewithin--e47a75b38424df4854c46529",
  "source": {
    "blob": "15098c5edd123ac4e36f0b866fb371160e89ca40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 392,
    "path": "GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e47a75b38424df4854c46529337d8b17b21db73afb23bf944fa659bcb17e32ec",
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

Occurrence: `result:773c9f24-1f01-79e1-139f-37e7b3e62501`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compl_singleton_mem_codiscreteWithin {X : Type*} [TopologicalSpace X] [T1Space X]
    {s : Set X} (x : X) :
    {x}ᶜ ∈ codiscreteWithin s := by
  rw [codiscreteWithin_iff_locallyEmptyComplementWithin]
  intro z hz
  use univ \ {x}
  exact ⟨nhdsNE_of_nhdsNE_sdiff_finite univ_mem Finite.of_subsingleton, by aesop⟩

/--
In a `T1Space`, complements of finite sets are codiscrete within any set.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DiscreteSubset/Variantde37d53cc71344364a4cbeafe40815bb651d200160c439604d4ce2a649fb004a.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15098c5edd123ac4e36f0b866fb371160e89ca40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
