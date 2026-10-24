# IsVirtuallyCyclic.exists_isCyclic_and_finiteIndex_and_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08a836104f9f47b5ae5f3d93b3d3c1640a1cb58c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5f25c82-17b5-4af5-7404-9a98166a2f39",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:669a0708-f7d2-7749-be0e-ff3a2dcca168",
  "kind": "theorem",
  "lexical_name": "IsVirtuallyCyclic.exists_isCyclic_and_finiteIndex_and_normal",
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
  "slug": "isvirtuallycyclic-exists-iscyclic-and-finiteindex-and-normal--6c475b77db314e9999c604a4",
  "source": {
    "blob": "08a836104f9f47b5ae5f3d93b3d3c1640a1cb58c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 65,
    "path": "GRWTSK/Algebra/GroupTheory/VirtuallyCyclic/Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c475b77db314e9999c604a4b07e32e608053a4d073c2c7e1b2d8f1df541649e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/VirtuallyCyclic/Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:669a0708-f7d2-7749-be0e-ff3a2dcca168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsVirtuallyCyclic.exists_isCyclic_and_finiteIndex_and_normal [IsVirtuallyCyclic G] :
    ∃ H : Subgroup G, IsCyclic H ∧ H.FiniteIndex ∧ H.Normal := by
  obtain ⟨H, hc, hfi⟩ := exists_isCyclic_and_finiteIndex G
  exact ⟨H.normalCore, Subgroup.isCyclic_of_le H.normalCore_le, inferInstance, inferInstance⟩

/-- A virtually cyclic group is virtually nilpotent. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/VirtuallyCyclic/Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/VirtuallyCyclic/Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08a836104f9f47b5ae5f3d93b3d3c1640a1cb58c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
