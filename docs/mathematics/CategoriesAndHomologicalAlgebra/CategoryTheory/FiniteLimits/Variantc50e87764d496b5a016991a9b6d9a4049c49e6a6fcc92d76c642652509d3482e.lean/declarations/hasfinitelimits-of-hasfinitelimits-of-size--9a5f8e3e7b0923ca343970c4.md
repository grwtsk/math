# hasFiniteLimits_of_hasFiniteLimits_of_size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3244988e8db0c240031f321d4025ded4ac4d7c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c50e87764d496b5a016991a9b6d9a4049c49e6a6fcc92d76c642652509d3482e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53f2c7c5-52d8-0880-aad0-c45cc6c5bbd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32057d44-6f79-7bb5-0b7c-3c2ef25e04b8",
  "kind": "theorem",
  "lexical_name": "hasFiniteLimits_of_hasFiniteLimits_of_size",
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
  "slug": "hasfinitelimits-of-hasfinitelimits-of-size--9a5f8e3e7b0923ca343970c4",
  "source": {
    "blob": "c3244988e8db0c240031f321d4025ded4ac4d7c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantc50e87764d496b5a016991a9b6d9a4049c49e6a6fcc92d76c642652509d3482e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a5f8e3e7b0923ca343970c40fe06994da7590b35374b12daff8fc4f62f3e8a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantc50e87764d496b5a016991a9b6d9a4049c49e6a6fcc92d76c642652509d3482e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32057d44-6f79-7bb5-0b7c-3c2ef25e04b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteLimits_of_hasFiniteLimits_of_size
    (h : ∀ (J : Type w) {𝒥 : SmallCategory J} (_ : @FinCategory J 𝒥), HasLimitsOfShape J C) :
    HasFiniteLimits C where
  out := fun J hJ hhJ => by
    haveI := h (ULiftHom.{w} (ULift.{w} J)) <| @CategoryTheory.finCategoryUlift J hJ hhJ
    have l :
      @Equivalence J (ULiftHom (ULift J)) hJ (@ULiftHom.category (ULift J) (@uliftCategory J hJ))
      := @ULiftHomULiftCategory.equiv J hJ
    apply @hasLimitsOfShape_of_equivalence (ULiftHom (ULift J))
      (@ULiftHom.category (ULift J) (@uliftCategory J hJ)) C _ J hJ
      (@Equivalence.symm J hJ (ULiftHom (ULift J))
      (@ULiftHom.category (ULift J) (@uliftCategory J hJ)) l) _
    /- Porting note: tried to factor out (@instCategoryULiftHom (ULift J) (@uliftCategory J hJ)
    but when doing that would then find the instance and say it was not definitionally equal to
    the provided one (the same thing factored out) -/
#align category_theory.limits.has_finite_limits_of_has_finite_limits_of_size CategoryTheory.Limits.hasFiniteLimits_of_hasFiniteLimits_of_size

/-- A category has all finite colimits if every functor `J ⥤ C` with a `FinCategory J`
instance and `J : Type` has a colimit.

This is often called 'finitely cocomplete'.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantc50e87764d496b5a016991a9b6d9a4049c49e6a6fcc92d76c642652509d3482e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantc50e87764d496b5a016991a9b6d9a4049c49e6a6fcc92d76c642652509d3482e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3244988e8db0c240031f321d4025ded4ac4d7c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
