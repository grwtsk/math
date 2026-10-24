# leftAdjointComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19c87f78a5bf3ef3fe82a24540064acaf2a5c52f18be44c26f4976c6a1fdcead",
  "kind": "def",
  "lexical_name": "leftAdjointComparison",
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
  "slug": "leftadjointcomparison--4505b133ce94e6a88d56b49a",
  "source": {
    "blob": "e48756e56c9f434a7856720037b671c3cdaaf346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4505b133ce94e6a88d56b49afbea621070d972013e6b8bfde64349feba0deddb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19c87f78a5bf3ef3fe82a24540064acaf2a5c52f18be44c26f4976c6a1fdcead`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftAdjointComparison
    [∀ A : adj.toMonad.Algebra, HasCoequalizer (F.map A.a)
      (adj.counit.app (F.obj A.A))] :
    adj.toMonad.Algebra ⥤ D := by
  refine
    Adjunction.leftAdjointOfEquiv (G := comparison adj)
      (F_obj := fun A => comparisonLeftAdjointObj adj A) (fun A B => ?_) ?_
  · apply comparisonLeftAdjointHomEquiv
  · intro A B B' g h
    ext1
    -- Porting note: the goal was previously closed by the following, which succeeds until
    -- `Category.assoc`.
    -- dsimp [comparisonLeftAdjointHomEquiv]
    -- rw [← adj.homEquiv_naturality_right, Category.assoc]
    simp [Cofork.IsColimit.homIso, Adjunction.homEquiv_unit]

/-- Provided we have the appropriate coequalizers, we have an adjunction to the comparison functor.
-/
@[simps! counit]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant08fd973a9f4ad6ea74f66c66b3c6df0629b770c45f46b051338f5c6d7a0f2939.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e48756e56c9f434a7856720037b671c3cdaaf346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
