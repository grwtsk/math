# preservesProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77208742e02be75338fa0122f21da72e3dc96d7bf131a0d60cf7bd8a97d03745",
  "kind": "def",
  "lexical_name": "preservesProduct",
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
  "slug": "preservesproduct--1d8a2cd645fc661b429e4640",
  "source": {
    "blob": "f3d83ec1bf215ce6a51633392eca341bd9b064c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d8a2cd645fc661b429e4640b00659555cbb7959706cc40dfadf9bb05799aec0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77208742e02be75338fa0122f21da72e3dc96d7bf131a0d60cf7bd8a97d03745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preservesProduct : Limits.PreservesLimit (Discrete.functor X) π := by
  -- Porting note: check universe parameters here
  apply Limits.preservesLimitOfPreservesLimitCone (TopCat.piFanIsLimit.{u,u} X)
  apply (Limits.IsLimit.ofConeEquiv (coneDiscreteComp X)).toFun
  simp only [coneDiscreteComp_obj_mapCone]
  apply Limits.IsLimit.ofIsoLimit _ (asIso (piTopToPiCone X)).symm
  exact Grpd.piLimitFanIsLimit _
#align fundamental_groupoid_functor.preserves_product FundamentalGroupoidFunctor.preservesProduct

end Preserves

end Pi

section Prod

variable (A B : TopCat.{u})

/-- The induced map of the left projection map X × Y → X -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3d83ec1bf215ce6a51633392eca341bd9b064c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
