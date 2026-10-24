# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:992bc7db569f69ddf447503122e9799544206856b64b10e47b3ba9c79498e38c",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--6cb5a3b8f364cdf9cc4e4289",
  "source": {
    "blob": "5dd0307d0ce3ab0a74454ac072cbf723f9482b83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 36,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant2c5d4d1ebb5f9238814a5d0b48a2deee3fe5dfa9016bda94bdc9e53c7a0eee15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cb5a3b8f364cdf9cc4e4289f94e618328acb685e1f8e673cef8412b0f473acc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant2c5d4d1ebb5f9238814a5d0b48a2deee3fe5dfa9016bda94bdc9e53c7a0eee15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:992bc7db569f69ddf447503122e9799544206856b64b10e47b3ba9c79498e38c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsFilteredOrEmpty C] [∀ c, IsFilteredOrEmpty (F.obj c)] :
    IsFilteredOrEmpty (Grothendieck F) := by
  refine ⟨?_, ?_⟩
  · rintro ⟨c, f⟩ ⟨d, g⟩
    exact ⟨⟨max c d, max ((F.map (leftToMax c d)).toFunctor.obj f)
      ((F.map (rightToMax c d)).toFunctor.obj g)⟩,
      ⟨leftToMax c d, leftToMax _ _⟩, ⟨rightToMax c d, rightToMax _ _⟩, trivial⟩
  · rintro ⟨c, f⟩ ⟨d, g⟩ ⟨u, x⟩ ⟨v, y⟩
    refine ⟨⟨coeq u v, coeq (eqToHom ?_ ≫
        (F.map (coeqHom u v)).toFunctor.map x) ((F.map (coeqHom u v)).toFunctor.map y)⟩,
          ⟨coeqHom u v, coeqHom _ _⟩, ?_⟩
    · conv_rhs => rw [← Cat.Hom.comp_obj, ← F.map_comp, coeq_condition, F.map_comp,
        Cat.Hom.comp_obj]
    · set_option backward.isDefEq.respectTransparency.types false in
      apply Grothendieck.ext _ _ (coeq_condition u v)
      refine Eq.trans ?_ (eqToHom _ ≫= coeq_condition _ _)
      simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant2c5d4d1ebb5f9238814a5d0b48a2deee3fe5dfa9016bda94bdc9e53c7a0eee15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant2c5d4d1ebb5f9238814a5d0b48a2deee3fe5dfa9016bda94bdc9e53c7a0eee15.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dd0307d0ce3ab0a74454ac072cbf723f9482b83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
