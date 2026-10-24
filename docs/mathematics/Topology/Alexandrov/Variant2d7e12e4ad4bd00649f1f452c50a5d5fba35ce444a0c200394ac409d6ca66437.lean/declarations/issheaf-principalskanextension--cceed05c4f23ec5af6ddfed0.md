# isSheaf_principalsKanExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7d584220c37ddce33bbd69a2cb6b88cf10e2b49",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc82fc8e-05ae-61ba-64c9-165c3a89982b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1c1e733-a627-5890-9e03-f73203dc1ad2",
  "kind": "theorem",
  "lexical_name": "isSheaf_principalsKanExtension",
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
  "slug": "issheaf-principalskanextension--cceed05c4f23ec5af6ddfed0",
  "source": {
    "blob": "a7d584220c37ddce33bbd69a2cb6b88cf10e2b49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 171,
    "path": "GRWTSK/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cceed05c4f23ec5af6ddfed02a90dcb7a3c207e11d5f5df3517e64e8370dc57b",
  "verification": {
    "reference": "docs/verification/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1c1e733-a627-5890-9e03-f73203dc1ad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_principalsKanExtension
    {X : TopCat.{v}} [Preorder X] [Topology.IsUpperSet X] (F : X ⥤ C) :
    Presheaf.IsSheaf (principalsKanExtension F) := by
  rw [isSheaf_iff_isSheafOpensLeCover]
  intro ι Us
  constructor
  apply isLimit

end Alexandrov

open Alexandrov

/--
The main theorem of this file.
If `X` is a topological space and preorder whose topology is the `UpperSet` topology associated
with the preorder, `F : X ⥤ C` is a functor into a complete category from the preorder category,
and `P : (Opens X)ᵒᵖ ⥤ C` denotes the right Kan extension of `F` along the
functor `X ⥤ (Open X)ᵒᵖ` which sends `x : X` to `{y | x ≤ y}`, then `P` is a sheaf.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Alexandrov/Variant2d7e12e4ad4bd00649f1f452c50a5d5fba35ce444a0c200394ac409d6ca66437.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d584220c37ddce33bbd69a2cb6b88cf10e2b49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
