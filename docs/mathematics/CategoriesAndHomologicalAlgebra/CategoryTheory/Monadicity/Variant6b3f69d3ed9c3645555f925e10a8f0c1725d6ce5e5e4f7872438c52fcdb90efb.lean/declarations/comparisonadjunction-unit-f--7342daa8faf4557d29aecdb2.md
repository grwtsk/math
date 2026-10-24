# comparisonAdjunction_unit_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec1f6df1-3beb-4e9e-de8e-0c9cf3445c13",
  "kind": "theorem",
  "lexical_name": "comparisonAdjunction_unit_f",
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
  "slug": "comparisonadjunction-unit-f--7342daa8faf4557d29aecdb2",
  "source": {
    "blob": "0535b7b71c31e325854e07e2d481ce8932b40d54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 192,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7342daa8faf4557d29aecdb2f77fcf824c3b7cc09aace034ecaaa55c6bfbe3c2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec1f6df1-3beb-4e9e-de8e-0c9cf3445c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparisonAdjunction_unit_f
    [∀ A : (adj).toMonad.Algebra, HasCoequalizer ((F).map A.a)
      ((adj).counit.app ((F).obj A.A))]
    (A : (adj).toMonad.Algebra) :
    (comparisonAdjunction.unit.app A).f = (beckCoequalizer A).desc (unitCofork A) := by
  apply Limits.Cofork.IsColimit.hom_ext (beckCoequalizer A)
  rw [Cofork.IsColimit.π_desc]
  dsimp only [beckCofork_π, unitCofork_π]
  rw [comparisonAdjunction_unit_f_aux, ← (adj).homEquiv_naturality_left A.a, coequalizer.condition,
    (adj).homEquiv_naturality_right, (adj).homEquiv_unit, Category.assoc]
  apply (adj).right_triangle_components_assoc
#align category_theory.monad.monadicity_internal.comparison_adjunction_unit_f CategoryTheory.Monad.MonadicityInternal.comparisonAdjunction_unit_f

/-- The cofork which describes the counit of the adjunction: the morphism from the coequalizer of
this pair to this morphism is the counit.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant6b3f69d3ed9c3645555f925e10a8f0c1725d6ce5e5e4f7872438c52fcdb90efb.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0535b7b71c31e325854e07e2d481ce8932b40d54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
