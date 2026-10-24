# hasFiniteLimits_of_hasFiniteLimits_of_size

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2b1aca3-164f-1dcb-3338-29cd2090fdff",
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
  "slug": "hasfinitelimits-of-hasfinitelimits-of-size--29666619d3b35a10a01915ff",
  "source": {
    "blob": "c20b5f9293c7fb1cd5b4aba25db09ac7e8e0ee58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant0f7ad4a708fe292dbc5284e93807af215bd2807b3672a411779e191426751562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29666619d3b35a10a01915ff8a3eeadac10475ea2dc71c8c2c43dfd4722d272b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant0f7ad4a708fe292dbc5284e93807af215bd2807b3672a411779e191426751562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2b1aca3-164f-1dcb-3338-29cd2090fdff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFiniteLimits_of_hasFiniteLimits_of_size
    (h : ∀ (J : Type w) {𝒥 : SmallCategory J} (_ : @FinCategory J 𝒥), HasLimitsOfShape J C) :
    HasFiniteLimits C where
  out := fun J hJ hhJ => by
    have := h (ULiftHom.{w} (ULift.{w} J)) <| @CategoryTheory.finCategoryUlift J hJ hhJ
    have l : @Equivalence J (ULiftHom (ULift J)) hJ
                          (@ULiftHom.category (ULift J) (@uliftCategory J hJ)) :=
      @ULiftHomULiftCategory.equiv J hJ
    apply @hasLimitsOfShape_of_equivalence (ULiftHom (ULift J))
      (@ULiftHom.category (ULift J) (@uliftCategory J hJ)) C _ J hJ l.symm _

/-- A category has all finite colimits if every functor `J ⥤ C` with a `FinCategory J`
instance and `J : Type` has a colimit.

This is often called 'finitely cocomplete'.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant0f7ad4a708fe292dbc5284e93807af215bd2807b3672a411779e191426751562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variant0f7ad4a708fe292dbc5284e93807af215bd2807b3672a411779e191426751562.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c20b5f9293c7fb1cd5b4aba25db09ac7e8e0ee58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
