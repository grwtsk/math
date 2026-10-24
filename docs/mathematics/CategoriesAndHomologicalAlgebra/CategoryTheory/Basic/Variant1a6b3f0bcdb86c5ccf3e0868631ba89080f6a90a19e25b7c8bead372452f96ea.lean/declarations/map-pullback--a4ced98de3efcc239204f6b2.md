# map_pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78b30571-9e0b-ac5a-6141-16c072168c82",
  "kind": "theorem",
  "lexical_name": "map_pullback",
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
  "slug": "map-pullback--a4ced98de3efcc239204f6b2",
  "source": {
    "blob": "de190f825e76cf7d4a33e92e1272b700d9ea882d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 687,
    "line": 653,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4ced98de3efcc239204f6b2d65ac6b7565fc2de803be6a02da036f2a5bdfdc4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78b30571-9e0b-ac5a-6141-16c072168c82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–687.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_pullback [HasPullbacks C] {X Y Z W : C} {f : X ⟶ Y} {g : X ⟶ Z} {h : Y ⟶ W} {k : Z ⟶ W}
    [Mono h] [Mono g] (comm : f ≫ h = g ≫ k) (t : IsLimit (PullbackCone.mk f g comm))
    (p : Subobject Y) : (map g).obj ((pullback f).obj p) = (pullback k).obj ((map h).obj p) := by
  revert p
  apply Quotient.ind'
  intro a
  apply Quotient.sound
  apply ThinSkeleton.equiv_of_both_ways
  · refine' MonoOver.homMk (pullback.lift pullback.fst _ _) (pullback.lift_snd _ _ _)
    change _ ≫ a.arrow ≫ h = (pullback.snd ≫ g) ≫ _
    rw [assoc, ← comm, pullback.condition_assoc]
  · refine' MonoOver.homMk (pullback.lift pullback.fst
      (PullbackCone.IsLimit.lift t (pullback.fst ≫ a.arrow) pullback.snd _)
      (PullbackCone.IsLimit.lift_fst _ _ _ _).symm) _
    · rw [← pullback.condition, assoc]
      rfl
    · dsimp
      rw [pullback.lift_snd_assoc]
      apply PullbackCone.IsLimit.lift_snd
#align category_theory.subobject.map_pullback CategoryTheory.Subobject.map_pullback

end Map

section Exists

variable [HasImages C]

/-- The functor from subobjects of `X` to subobjects of `Y` given by
sending the subobject `S` to its "image" under `f`, usually denoted $\exists_f$.
For instance, when `C` is the category of types,
viewing `Subobject X` as `Set X` this is just `Set.image f`.

This functor is left adjoint to the `pullback f` functor (shown in `existsPullbackAdj`)
provided both are defined, and generalises the `map f` functor, again provided it is defined.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1a6b3f0bcdb86c5ccf3e0868631ba89080f6a90a19e25b7c8bead372452f96ea.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de190f825e76cf7d4a33e92e1272b700d9ea882d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
