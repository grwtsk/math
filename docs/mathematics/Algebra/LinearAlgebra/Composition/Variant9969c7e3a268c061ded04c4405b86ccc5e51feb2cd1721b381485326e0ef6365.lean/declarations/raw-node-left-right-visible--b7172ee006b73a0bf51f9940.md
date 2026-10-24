# raw_node_left_right_visible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1806aa3e1f3eff8fdb1b34f619a0603e05829cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 13,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb97811d-e49e-9a4c-accd-269b4e68d606",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67612e0d-3727-3a77-e041-d10a037e3bba",
  "kind": "theorem",
  "lexical_name": "raw_node_left_right_visible",
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
  "slug": "raw-node-left-right-visible--b7172ee006b73a0bf51f9940",
  "source": {
    "blob": "a1806aa3e1f3eff8fdb1b34f619a0603e05829cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 13,
    "path": "GRWTSK/Algebra/LinearAlgebra/Composition/Variant9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7172ee006b73a0bf51f9940b1215aebe1284798e4350829ae54d9a490d68d34",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Composition/Variant9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67612e0d-3727-3a77-e041-d10a037e3bba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem raw_node_left_right_visible
    {A B C D : BinaryLogicTree}
    (h : BinaryLogicTree.node A B = BinaryLogicTree.node C D) :
    A = C ∧ B = D :=
  BinaryLogicTree.raw_node_left_right_visible h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Composition/Variant9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Composition/Variant9969c7e3a268c061ded04c4405b86ccc5e51feb2cd1721b381485326e0ef6365.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1806aa3e1f3eff8fdb1b34f619a0603e05829cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
