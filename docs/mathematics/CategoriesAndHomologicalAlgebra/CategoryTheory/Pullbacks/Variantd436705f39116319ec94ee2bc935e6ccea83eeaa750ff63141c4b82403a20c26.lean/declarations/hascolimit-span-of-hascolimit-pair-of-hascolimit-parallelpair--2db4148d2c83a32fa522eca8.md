# hasColimit_span_of_hasColimit_pair_of_hasColimit_parallelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c516013-3fcb-d13a-dd1c-aeec177214ec",
  "kind": "theorem",
  "lexical_name": "hasColimit_span_of_hasColimit_pair_of_hasColimit_parallelPair",
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
  "slug": "hascolimit-span-of-hascolimit-pair-of-hascolimit-parallelpair--2db4148d2c83a32fa522eca8",
  "source": {
    "blob": "7868d262f09c8623654ac259f214c8c8aa6e59a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd436705f39116319ec94ee2bc935e6ccea83eeaa750ff63141c4b82403a20c26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2db4148d2c83a32fa522eca8debd9e64adc3a19263d8dfcfd4106cc219524d81",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd436705f39116319ec94ee2bc935e6ccea83eeaa750ff63141c4b82403a20c26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c516013-3fcb-d13a-dd1c-aeec177214ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasColimit_span_of_hasColimit_pair_of_hasColimit_parallelPair {C : Type u}
    [𝒞 : Category.{v} C] {X Y Z : C} (f : X ⟶ Y) (g : X ⟶ Z) [HasColimit (pair Y Z)]
    [HasColimit (parallelPair (f ≫ coprod.inl) (g ≫ coprod.inr))] : HasColimit (span f g) :=
  let ι₁ : Y ⟶ Y ⨿ Z := coprod.inl
  let ι₂ : Z ⟶ Y ⨿ Z := coprod.inr
  let c := coequalizer.π (f ≫ ι₁) (g ≫ ι₂)
  HasColimit.mk
    { cocone :=
        PushoutCocone.mk (ι₁ ≫ c) (ι₂ ≫ c) <| by
          rw [← Category.assoc, ← Category.assoc, coequalizer.condition]
      isColimit :=
        PushoutCocone.IsColimit.mk _
          (fun s => coequalizer.desc
              (coprod.desc (s.ι.app WalkingSpan.left) (s.ι.app WalkingSpan.right)) <| by
            rw [Category.assoc, colimit.ι_desc, Category.assoc, colimit.ι_desc]
            exact PushoutCocone.condition _)
          (by simp [ι₁, c]) (by simp [ι₂, c]) fun s m h₁ h₂ => by
          ext
          · simpa using h₁
          · simpa using h₂ }

section

attribute [local instance] hasColimit_span_of_hasColimit_pair_of_hasColimit_parallelPair

/-- If a category has all binary coproducts and all coequalizers, then it also has all pushouts.
As usual, this is not an instance, since there may be a more direct way to construct pushouts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd436705f39116319ec94ee2bc935e6ccea83eeaa750ff63141c4b82403a20c26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd436705f39116319ec94ee2bc935e6ccea83eeaa750ff63141c4b82403a20c26.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7868d262f09c8623654ac259f214c8c8aa6e59a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
