# generateFrom_latticeClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90d7077c2bb45c62317cf4eb6ffe777af477fd13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee2bc7e3-e489-a0b3-8a46-d8edeb620e93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd8e1c9d-6758-8638-9ad1-f6b1594f1e31",
  "kind": "lemma",
  "lexical_name": "generateFrom_latticeClosure",
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
  "slug": "generatefrom-latticeclosure--d96a28f5f852bf3da56c5494",
  "source": {
    "blob": "90d7077c2bb45c62317cf4eb6ffe777af477fd13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d96a28f5f852bf3da56c5494b071ec1757d568180910e566f5c8d7fceba6ce83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd8e1c9d-6758-8638-9ad1-f6b1594f1e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma generateFrom_latticeClosure {α : Type*} (s : Set (Set α)) :
    generateFrom (latticeClosure s) = generateFrom s := by
  let : TopologicalSpace α := generateFrom s
  refine le_antisymm (generateFrom_anti subset_latticeClosure) ?_
  refine le_generateFrom fun o hos => ?_
  induction hos using latticeClosure_sup_inf_induction with
  | mem _ has => exact isOpen_generateFrom_of_mem has
  | sup _ _ _ _ ha hb => exact ha.union hb
  | inf _ _ _ _ ha hb => exact ha.inter hb

variable (X) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstructibleTopology/Variantd5a4ed0b3981e71e3be3a8b4877c5b4cfdceeb9e9b5aa2f24db94382b0bd6f11.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90d7077c2bb45c62317cf4eb6ffe777af477fd13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
