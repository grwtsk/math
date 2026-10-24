# map_ciInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "763e5694c58be5e5b17403bc92dbad747982b3ea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28923acd-ed1e-0dd0-62be-882246be0cd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1a53bf0-47d5-84ba-4ea8-4e4b1d0a96f3",
  "kind": "theorem",
  "lexical_name": "map_ciInf",
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
  "slug": "map-ciinf--7ce0f5efc4236ca1310aeec0",
  "source": {
    "blob": "763e5694c58be5e5b17403bc92dbad747982b3ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ce0f5efc4236ca1310aeec0c4348c4c237218f4a781a6584f63056f7d39982a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1a53bf0-47d5-84ba-4ea8-4e4b1d0a96f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_ciInf (hf : RightOrdContinuous f) {g : ι → α} (hg : BddBelow (range g)) :
    f (⨅ i, g i) = ⨅ i, f (g i) :=
  hf.orderDual.map_ciSup hg
#align right_ord_continuous.map_cinfi RightOrdContinuous.map_ciInf

end ConditionallyCompleteLattice

end RightOrdContinuous

namespace OrderIso

section Preorder

variable [Preorder α] [Preorder β] (e : α ≃o β) {s : Set α} {x : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7a8152c1da0fa3bda003869281a7c415b1a41d557e05b202ebbaa35b09a9fa06.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `763e5694c58be5e5b17403bc92dbad747982b3ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
