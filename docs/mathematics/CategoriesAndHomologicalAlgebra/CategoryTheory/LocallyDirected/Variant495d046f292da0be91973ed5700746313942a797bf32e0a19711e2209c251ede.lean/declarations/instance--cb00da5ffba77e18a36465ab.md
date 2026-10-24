# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc4f7d03d94d050e7d7b2799acd5efd9437bbe9fe4ddc8459c24834cd972c5a8",
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
  "slug": "instance--cb00da5ffba77e18a36465ab",
  "source": {
    "blob": "fb41a710292be32c10324cdcd0fcd9b84f842c65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDirected/Variant495d046f292da0be91973ed5700746313942a797bf32e0a19711e2209c251ede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb00da5ffba77e18a36465ab48f439b77423e7ef78116b13390663a5d315266a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDirected/Variant495d046f292da0be91973ed5700746313942a797bf32e0a19711e2209c251ede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc4f7d03d94d050e7d7b2799acd5efd9437bbe9fe4ddc8459c24834cd972c5a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (F : WidePushoutShape J ⥤ Type*) [∀ i, Mono (F.map (.init i))] :
    F.IsLocallyDirected := by
  constructor
  rintro i j k (_ | i) (_ | j)
  · simpa using fun x ↦ ⟨_, 𝟙 _, 𝟙 _, x, by simp⟩
  · simp only [WidePushoutShape.hom_id, Functor.map_id, id_apply, forall_comm, forall_eq]
    exact fun x ↦ ⟨_, .init _, 𝟙 _, x, by simp⟩
  · simp only [WidePushoutShape.hom_id, Functor.map_id, id_apply, forall_eq']
    exact fun x ↦ ⟨_, 𝟙 _, .init _, x, by simp⟩
  · simp only [((CategoryTheory.mono_iff_injective (F.map (.init i))).mp inferInstance).eq_iff,
      forall_eq']
    exact fun x ↦ ⟨_, 𝟙 _, 𝟙 _, x, by simp⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDirected/Variant495d046f292da0be91973ed5700746313942a797bf32e0a19711e2209c251ede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDirected/Variant495d046f292da0be91973ed5700746313942a797bf32e0a19711e2209c251ede.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb41a710292be32c10324cdcd0fcd9b84f842c65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
