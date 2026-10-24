# isZero_object_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19c5de3ac030d9ccd983900c58f36499af67aa24",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d69c4388-3638-1059-882f-964ca8a85bca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d29af6d-52ba-898a-4b3d-3265b9f17865",
  "kind": "theorem",
  "lexical_name": "isZero_object_of_ne",
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
  "slug": "iszero-object-of-ne--d50a6646cd420079c9f7581d",
  "source": {
    "blob": "19c5de3ac030d9ccd983900c58f36499af67aa24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d50a6646cd420079c9f7581db6e779ed22e11f3c8a8ebe949727027c8ebe5d49",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d29af6d-52ba-898a-4b3d-3265b9f17865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isZero_object_of_ne
    (R : Type*) [CommRing R]
    (index k : Nat)
    (hk : k ≠ index) :
    IsZero ((complex R index).X k) :=
  HomologicalComplex.isZero_single_obj_X
    (ComplexShape.down Nat) index (coefficientModule R) k hk

/-- All differentials in the concentrated single-handle complex are zero. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHandleComplex/Varianta407591e369012376780e04a5b94d9b072e4d5d92be00dd84a13aec27600f9af.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19c5de3ac030d9ccd983900c58f36499af67aa24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
