# isSheaf_iff_isSheafPreservesLimitPairwiseIntersections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fafb2fec95bd776622e5ee315127cf8d3cb54cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:017f8c30-6cb0-a248-db9f-f76e45666b0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d73f3533-ea6f-1ead-6b19-b989cae384a0",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isSheafPreservesLimitPairwiseIntersections",
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
  "slug": "issheaf-iff-issheafpreserveslimitpairwiseintersections--88941481baa02106cef710ba",
  "source": {
    "blob": "8fafb2fec95bd776622e5ee315127cf8d3cb54cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 290,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88941481baa02106cef710ba0546effd7eaebf6853a35677db33d8f22c8def55",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d73f3533-ea6f-1ead-6b19-b989cae384a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isSheafPreservesLimitPairwiseIntersections :
    F.IsSheaf ↔ F.IsSheafPreservesLimitPairwiseIntersections := by
  rw [isSheaf_iff_isSheafPairwiseIntersections]
  constructor
  · intro h ι U
    exact ⟨preservesLimitOfPreservesLimitCone (Pairwise.coconeIsColimit U).op (h U).some⟩
  · intro h ι U
    haveI := (h U).some
    exact ⟨PreservesLimit.preserves (Pairwise.coconeIsColimit U).op⟩
set_option linter.uppercaseLean3 false in
#align Top.presheaf.is_sheaf_iff_is_sheaf_preserves_limit_pairwise_intersections TopCat.Presheaf.isSheaf_iff_isSheafPreservesLimitPairwiseIntersections

end TopCat.Presheaf

namespace TopCat.Sheaf

variable (F : X.Sheaf C) (U V : Opens X)

open CategoryTheory.Limits

/-- For a sheaf `F`, `F(U ⊔ V)` is the pullback of `F(U) ⟶ F(U ⊓ V)` and `F(V) ⟶ F(U ⊓ V)`.
This is the pullback cone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantc85be7b99cedf89abcd1d2a62a934df5dc70c9c199a3dd836df8d5064d61b570.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fafb2fec95bd776622e5ee315127cf8d3cb54cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
