# linearYonedaObjResolution_d_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85f8e138c2384aea266695f5c55cc59d39a6870a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d6d6d64-949e-6357-3369-5e691577b483",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e9f919f-079b-1892-c0fb-5354fc61f97b",
  "kind": "theorem",
  "lexical_name": "linearYonedaObjResolution_d_apply",
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
  "slug": "linearyonedaobjresolution-d-apply--ff90381eef14d0c6b90621b6",
  "source": {
    "blob": "85f8e138c2384aea266695f5c55cc59d39a6870a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff90381eef14d0c6b90621b65d3f082dfc4802094098b4da417dbf5b10fc28d8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e9f919f-079b-1892-c0fb-5354fc61f97b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearYonedaObjResolution_d_apply {A : Rep k G} (i j : ℕ) (x : (resolution k G).X i ⟶ A) :
    (linearYonedaObjResolution A).d i j x = (resolution k G).d j i ≫ x :=
  rfl
#align group_cohomology.linear_yoneda_obj_resolution_d_apply GroupCohomology.linearYonedaObjResolution_d_apply

end GroupCohomology

namespace InhomogeneousCochains

open Rep GroupCohomology

/-- The differential in the complex of inhomogeneous cochains used to
calculate group cohomology. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantd4ff7ec91d412cbe769933ba12a812e4d1d61cd40f904ec7a699fe5c19c0fd20.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85f8e138c2384aea266695f5c55cc59d39a6870a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
