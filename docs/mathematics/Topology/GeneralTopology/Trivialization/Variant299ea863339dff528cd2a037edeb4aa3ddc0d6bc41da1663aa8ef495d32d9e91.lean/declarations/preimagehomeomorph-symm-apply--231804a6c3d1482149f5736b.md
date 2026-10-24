# preimageHomeomorph_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91b5e7139bf1f2d442ffa4a4297aab91a9cf0168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 556,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a41aaa6-9714-45d6-59cd-4ba913385794",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:265ff05c-c504-2718-f4c2-958c9fe44ca6",
  "kind": "theorem",
  "lexical_name": "preimageHomeomorph_symm_apply",
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
  "slug": "preimagehomeomorph-symm-apply--231804a6c3d1482149f5736b",
  "source": {
    "blob": "91b5e7139bf1f2d442ffa4a4297aab91a9cf0168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 556,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:231804a6c3d1482149f5736b2b2bd8e17fb5e4eedbf606c4886b02bf1d000d03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:265ff05c-c504-2718-f4c2-958c9fe44ca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimageHomeomorph_symm_apply {s : Set B} (hb : s ⊆ e.baseSet) (p : s × F) :
    (e.preimageHomeomorph hb).symm p =
      ⟨e.symm (p.1, p.2), ((preimageHomeomorph_symm_apply.aux e hb) p).2⟩ :=
  rfl

/-- The source is homeomorphic to the product of the base set with the fiber. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variant299ea863339dff528cd2a037edeb4aa3ddc0d6bc41da1663aa8ef495d32d9e91.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91b5e7139bf1f2d442ffa4a4297aab91a9cf0168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
