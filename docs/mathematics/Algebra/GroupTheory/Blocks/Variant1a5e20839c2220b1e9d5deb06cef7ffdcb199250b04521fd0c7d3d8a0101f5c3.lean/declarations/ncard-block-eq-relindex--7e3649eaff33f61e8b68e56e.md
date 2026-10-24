# ncard_block_eq_relindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c39b201027103f3b37fd0e0f10338e7832e93933",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 672,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc645ded-1668-bcfb-acad-d027c1c38cf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d855ced-75c1-5fa8-9e6d-b84aab85eb80",
  "kind": "theorem",
  "lexical_name": "ncard_block_eq_relindex",
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
  "slug": "ncard-block-eq-relindex--7e3649eaff33f61e8b68e56e",
  "source": {
    "blob": "c39b201027103f3b37fd0e0f10338e7832e93933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 682,
    "line": 672,
    "path": "GRWTSK/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e3649eaff33f61e8b68e56e955583ac152f5ed4a008ad3059ec6b63672b0762",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d855ced-75c1-5fa8-9e6d-b84aab85eb80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 672–682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ncard_block_eq_relindex (hB : IsBlock G B) {x : X} (hx : x ∈ B) :
    B.ncard = (stabilizer G x).relindex (stabilizer G B) := by
  have key : (stabilizer G x).subgroupOf (stabilizer G B) = stabilizer (stabilizer G B) x := by
    ext; rfl
  rw [Subgroup.relindex, key, index_stabilizer, hB.orbit_stabilizer_eq hx]

/-- The cardinality of the ambient space is the product of the cardinality of a block
  by the cardinality of the set of translates of that block -/
@[to_additive
  "The cardinality of the ambient space is the product of the cardinality of a block
  by the cardinality of the set of translates of that block"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Blocks/Variant1a5e20839c2220b1e9d5deb06cef7ffdcb199250b04521fd0c7d3d8a0101f5c3.lean#L672).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39b201027103f3b37fd0e0f10338e7832e93933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
