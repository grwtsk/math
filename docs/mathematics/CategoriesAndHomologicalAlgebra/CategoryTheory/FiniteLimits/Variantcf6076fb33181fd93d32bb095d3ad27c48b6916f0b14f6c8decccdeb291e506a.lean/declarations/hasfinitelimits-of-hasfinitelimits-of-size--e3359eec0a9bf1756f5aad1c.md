# hasFiniteLimits_of_hasFiniteLimits_of_size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f0c41ec162f192709ef989acff81dcbe61a0c92e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:effcf8df-f822-c9c6-1093-9ad4f2c13e4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:251764cc-d074-5bbc-5d2f-949ff45e7fb6",
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
  "slug": "hasfinitelimits-of-hasfinitelimits-of-size--e3359eec0a9bf1756f5aad1c",
  "source": {
    "blob": "f0c41ec162f192709ef989acff81dcbe61a0c92e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3359eec0a9bf1756f5aad1c2f2032a1b6b58fd0b50ade8dc31f1aeb49bb967b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:251764cc-d074-5bbc-5d2f-949ff45e7fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteLimits_of_hasFiniteLimits_of_size
    (h : ∀ (J : Type w) {𝒥 : SmallCategory J} (_ : @FinCategory J 𝒥), HasLimitsOfShape J C) :
    HasFiniteLimits C where
  out := fun J hJ hhJ => by
    haveI := h (ULiftHom.{w} (ULift.{w} J)) <| @CategoryTheory.finCategoryUlift J hJ hhJ
    have l : @Equivalence J (ULiftHom (ULift J)) hJ
                          (@ULiftHom.category (ULift J) (@uliftCategory J hJ)) :=
      @ULiftHomULiftCategory.equiv J hJ
    apply @hasLimitsOfShape_of_equivalence (ULiftHom (ULift J))
      (@ULiftHom.category (ULift J) (@uliftCategory J hJ)) C _ J hJ
      (@Equivalence.symm J hJ (ULiftHom (ULift J))
      (@ULiftHom.category (ULift J) (@uliftCategory J hJ)) l) _
    /- Porting note: tried to factor out (@instCategoryULiftHom (ULift J) (@uliftCategory J hJ)
    but when doing that would then find the instance and say it was not definitionally equal to
    the provided one (the same thing factored out) -/

/-- A category has all finite colimits if every functor `J ⥤ C` with a `FinCategory J`
instance and `J : Type` has a colimit.

This is often called 'finitely cocomplete'.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantcf6076fb33181fd93d32bb095d3ad27c48b6916f0b14f6c8decccdeb291e506a.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0c41ec162f192709ef989acff81dcbe61a0c92e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
