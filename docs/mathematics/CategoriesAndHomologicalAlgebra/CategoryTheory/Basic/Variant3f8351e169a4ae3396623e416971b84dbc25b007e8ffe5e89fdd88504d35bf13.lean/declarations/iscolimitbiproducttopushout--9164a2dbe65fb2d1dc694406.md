# isColimitBiproductToPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd66f2d6a403f950eadf01662dd1de18cc389d2e250be67aa1da6f4893bb6f03",
  "kind": "def",
  "lexical_name": "isColimitBiproductToPushout",
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
  "slug": "iscolimitbiproducttopushout--9164a2dbe65fb2d1dc694406",
  "source": {
    "blob": "143fe964376d73bccb6a1e35b4c4f637e83256f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 632,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9164a2dbe65fb2d1dc6944069d144e9f228ff472dc760d6cc76cdf5fa7d9043c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd66f2d6a403f950eadf01662dd1de18cc389d2e250be67aa1da6f4893bb6f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitBiproductToPushout : IsColimit (biproductToPushoutCofork f g) :=
  Cofork.IsColimit.mk _
    (fun s =>
      pushout.desc (biprod.inl ≫ Cofork.π s) (biprod.inr ≫ Cofork.π s) <|
        sub_eq_zero.1 <| by
          rw [← Category.assoc, ← Category.assoc, ← sub_comp, sub_eq_add_neg, ← neg_comp, ←
            biprod.lift_eq, Cofork.condition s, zero_comp])
    (fun s => by apply biprod.hom_ext' <;> simp)
    fun s m h => by apply pushout.hom_ext <;> simp [← h]

end BiproductToPushoutIsCokernel

section EpiPullback

variable [Limits.HasPullbacks C] {W X Y Z : C} (f : X ⟶ Z) (g : Y ⟶ Z)

/-- In an abelian category, the pullback of an epimorphism is an epimorphism.
    Proof from [aluffi2016, IX.2.3], cf. [borceux-vol2, 1.7.6] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3f8351e169a4ae3396623e416971b84dbc25b007e8ffe5e89fdd88504d35bf13.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `143fe964376d73bccb6a1e35b4c4f637e83256f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
