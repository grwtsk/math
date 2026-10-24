# isBinaryCoproductOfIsInitialIsPushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b9bdb0cd3eee30246b733db5e29d1e855b3f899cf3be9452ba95ffca22b8ef2",
  "kind": "def",
  "lexical_name": "isBinaryCoproductOfIsInitialIsPushout",
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
  "slug": "isbinarycoproductofisinitialispushout--84a6135a2a0378ce75dc6a03",
  "source": {
    "blob": "5521a1cab6bad0e8cfdec54efa4913f0c3dc771b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84a6135a2a0378ce75dc6a03115fab0bc5bccf32e6deccf2ea246d1336568331",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b9bdb0cd3eee30246b733db5e29d1e855b3f899cf3be9452ba95ffca22b8ef2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isBinaryCoproductOfIsInitialIsPushout (F : Discrete WalkingPair ⥤ C) (c : Cocone F) {X : C}
    (hX : IsInitial X) (f : X ⟶ F.obj ⟨WalkingPair.left⟩) (g : X ⟶ F.obj ⟨WalkingPair.right⟩)
    (hc :
      IsColimit
        (PushoutCocone.mk (c.ι.app ⟨WalkingPair.left⟩) (c.ι.app ⟨WalkingPair.right⟩ :) <|
          hX.hom_ext (f ≫ _) (g ≫ _))) :
    IsColimit c where
  desc s :=
    hc.desc
      (PushoutCocone.mk (s.ι.app ⟨WalkingPair.left⟩) (s.ι.app ⟨WalkingPair.right⟩) (hX.hom_ext _ _))
  fac _ j :=
    Discrete.casesOn j fun j =>
      WalkingPair.casesOn j (hc.fac _ WalkingSpan.left) (hc.fac _ WalkingSpan.right)
  uniq s m J := by
    let c' :=
      PushoutCocone.mk (c.ι.app ⟨WalkingPair.left⟩ ≫ m) (c.ι.app ⟨WalkingPair.right⟩ ≫ m)
        (hX.hom_ext (f ≫ _) (g ≫ _))
    dsimp; rw [← J, ← J]
    apply hc.hom_ext
    rintro (_ | (_ | _)) <;>
      simp only [PushoutCocone.mk_ι_app_zero, PushoutCocone.mk_ι_app, Category.assoc]
    on_goal 1 => congr 1
    exacts [(hc.fac c' WalkingSpan.left).symm, (hc.fac c' WalkingSpan.left).symm,
      (hc.fac c' WalkingSpan.right).symm]

/-- The pushout under the initial object is the coproduct -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant408d1889f805a40cacf850adf98a6334a3ef1fd56972331a8011c80c354e6cf5.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5521a1cab6bad0e8cfdec54efa4913f0c3dc771b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
