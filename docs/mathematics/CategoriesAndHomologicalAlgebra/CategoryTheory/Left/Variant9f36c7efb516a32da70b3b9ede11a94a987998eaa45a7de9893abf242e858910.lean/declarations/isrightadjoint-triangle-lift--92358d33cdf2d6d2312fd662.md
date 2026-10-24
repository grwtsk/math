# isRightAdjoint_triangle_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0105dd87-469d-584f-d8f8-3c543a6040c7",
  "kind": "lemma",
  "lexical_name": "isRightAdjoint_triangle_lift",
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
  "slug": "isrightadjoint-triangle-lift--92358d33cdf2d6d2312fd662",
  "source": {
    "blob": "5c7c97a260cd0c7a44526512b7724c257cd104bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 197,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92358d33cdf2d6d2312fd662563e16afb3e061d35656f4807f2a18335db262fd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0105dd87-469d-584f-d8f8-3c543a6040c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRightAdjoint_triangle_lift {U : B ⥤ C} {F : C ⥤ B} (R : A ⥤ B) (adj₁ : F ⊣ U)
    (h : ∀ X : B, RegularEpi (adj₁.counit.app X)) [HasReflexiveCoequalizers A]
    [(R ⋙ U).IsRightAdjoint] : R.IsRightAdjoint where
  exists_leftAdjoint :=
    ⟨LiftLeftAdjoint.constructLeftAdjoint R _ adj₁ (Adjunction.ofIsRightAdjoint _) h,
      ⟨Adjunction.adjunctionOfEquivLeft _ _⟩⟩

/-- If `R ⋙ U` has a left adjoint, the domain of `R` has reflexive coequalizers and `U` is a monadic
functor, then `R` has a left adjoint.
This is a special case of `isRightAdjoint_triangle_lift` which is often more useful in practice.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7c97a260cd0c7a44526512b7724c257cd104bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
