# hasInitial_of_weakly_initial_and_hasWideEqualizers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c91e4e9-4233-dafe-ce17-f6e87a84ef35",
  "kind": "theorem",
  "lexical_name": "hasInitial_of_weakly_initial_and_hasWideEqualizers",
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
  "slug": "hasinitial-of-weakly-initial-and-haswideequalizers--9fad3254405fe12bccecebc3",
  "source": {
    "blob": "7819afda28030841d1b706cb6933cde8503c0b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeaklyInitial/Variant3963b9d3f333b2f63bad2389613eb38ae8d3e16a52494c4a11cc2d6c38cd102f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fad3254405fe12bccecebc37cdabc84a7a1196d89f7db2674469d7b3d97cacd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeaklyInitial/Variant3963b9d3f333b2f63bad2389613eb38ae8d3e16a52494c4a11cc2d6c38cd102f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c91e4e9-4233-dafe-ce17-f6e87a84ef35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasInitial_of_weakly_initial_and_hasWideEqualizers [HasWideEqualizers.{w} C] {T : C}
    [LocallySmall.{w} C]
    (hT : ∀ X, Nonempty (T ⟶ X)) : HasInitial C := by
  let endos := T ⟶ T
  have : HasLimitsOfShape (WalkingParallelFamily endos) C :=
    hasLimitsOfShape_of_equivalence
      (WalkingParallelFamily.equivalenceOfEquiv (equivShrink.{w} endos).symm)
  let i := wideEqualizer.ι (id : endos → endos)
  have : Nonempty endos := ⟨𝟙 _⟩
  have : ∀ X : C, Unique (wideEqualizer (id : endos → endos) ⟶ X) := by
    intro X
    refine ⟨⟨i ≫ Classical.choice (hT X)⟩, fun a => ?_⟩
    let E := equalizer a (i ≫ Classical.choice (hT _))
    let e : E ⟶ wideEqualizer id := equalizer.ι _ _
    let h : T ⟶ E := Classical.choice (hT E)
    have : ((i ≫ h) ≫ e) ≫ i = i ≫ 𝟙 _ := by
      rw [Category.assoc, Category.assoc]
      apply wideEqualizer.condition (id : endos → endos) (h ≫ e ≫ i)
    rw [Category.comp_id, cancel_mono_id i] at this
    have : IsSplitEpi e := IsSplitEpi.mk' ⟨i ≫ h, this⟩
    rw [← cancel_epi e]
    apply equalizer.condition
  exact hasInitial_of_unique (wideEqualizer (id : endos → endos))

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WeaklyInitial/Variant3963b9d3f333b2f63bad2389613eb38ae8d3e16a52494c4a11cc2d6c38cd102f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeaklyInitial/Variant3963b9d3f333b2f63bad2389613eb38ae8d3e16a52494c4a11cc2d6c38cd102f.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7819afda28030841d1b706cb6933cde8503c0b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
