# pullback_lift_diagonal_isPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46855b87-016a-204e-aa28-24bf7bc5f196",
  "kind": "lemma",
  "lexical_name": "pullback_lift_diagonal_isPullback",
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
  "slug": "pullback-lift-diagonal-ispullback--fce2074bdf579c49571ddeae",
  "source": {
    "blob": "8003fbd15489cd5aa93c9dc48e864453a98e0d65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 375,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fce2074bdf579c49571ddeae0040ecf3ac7cadaa6b6206f5e615ec8afb31b73f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46855b87-016a-204e-aa28-24bf7bc5f196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma pullback_lift_diagonal_isPullback (g : Y ⟶ X) (f : X ⟶ S) :
    IsPullback g (pullback.lift (𝟙 Y) g (by simp)) (diagonal f)
      (pullback.map (g ≫ f) f f f g (𝟙 X) (𝟙 S) (by simp) (by simp)) := by
  let i : pullback (g ≫ f) f ≅ pullback (g ≫ f) (𝟙 X ≫ f) := congrHom rfl (by simp)
  let e : pullback (diagonal f) (map (g ≫ f) f f f g (𝟙 X) (𝟙 S) (by simp) (by simp)) ≅
      pullback (diagonal f) (map (g ≫ f) (𝟙 X ≫ f) f f g (𝟙 X) (𝟙 S) (by simp) (by simp)) :=
    (asIso (map _ _ _ _ (𝟙 _) i.inv (𝟙 _) (by simp) (by ext <;> simp [i]))).symm
  apply IsPullback.of_iso_pullback _
      (e ≪≫ pullbackDiagonalMapIdIso (T := X) (S := S) g (𝟙 X) f ≪≫ asIso (pullback.fst _ _)).symm
  · simp [e]
  · ext <;> simp [e, i]
  · constructor
    ext <;> simp [condition]

end

/-- Given the following diagram with `S ⟶ S'` a monomorphism,

```
    X ⟶ X'
      ↘      ↘
        S ⟶ S'
      ↗      ↗
    Y ⟶ Y'
```

This iso witnesses the fact that

```
      X ×[S] Y ⟶ (X' ×[S'] Y') ×[Y'] Y
          |                  |
          |                  |
          ↓                  ↓
(X' ×[S'] Y') ×[X'] X ⟶ X' ×[S'] Y'
```

is a pullback square. The diagonal map of this square is `pullback.map`.
Also see `pullback_lift_map_is_pullback`.
-/
@[simps]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Diagonal/Variant34013e9a40b055428e1547b94d5bd423b732a336d6907219acb42f9f89821b0b.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8003fbd15489cd5aa93c9dc48e864453a98e0d65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
