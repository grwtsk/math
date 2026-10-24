# intermediate_value_univ₂

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
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b33ab370-9f17-bbad-6f37-90ab285a18e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6067145-5454-60bc-6aa6-9cc7444fefc6",
  "kind": "theorem",
  "lexical_name": "intermediate_value_univ₂",
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
  "slug": "intermediate-value-univ--43413ee9954f96f26bea5ae6",
  "source": {
    "blob": "9815678598a7e8bdb10cb9f67f9778c32c651f10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43413ee9954f96f26bea5ae6d82bf5bd7a67ee28c7ad2b8be1a1a8cd76924612",
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

Occurrence: `result:c6067145-5454-60bc-6aa6-9cc7444fefc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intermediate_value_univ₂ [PreconnectedSpace X] {a b : X} {f g : X → α} (hf : Continuous f)
    (hg : Continuous g) (ha : f a ≤ g a) (hb : g b ≤ f b) : ∃ x, f x = g x := by
  obtain ⟨x, _, hfg, hgf⟩ : (univ ∩ { x | f x ≤ g x ∧ g x ≤ f x }).Nonempty :=
    isPreconnected_closed_iff.1 PreconnectedSpace.isPreconnected_univ _ _ (isClosed_le hf hg)
      (isClosed_le hg hf) (fun _ _ => le_total _ _) ⟨a, trivial, ha⟩ ⟨b, trivial, hb⟩
  exact ⟨x, le_antisymm hfg hgf⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant6f02fee3d690cca7341cf6e242f94390c237d1314fa817c917ae539ea8bc44fb.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9815678598a7e8bdb10cb9f67f9778c32c651f10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
