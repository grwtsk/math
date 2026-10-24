# LeftLift.IsKan.adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:635598f0870bfc5df42173bc657f6705135dc450081443a388ea5f871f34cb33",
  "kind": "def",
  "lexical_name": "LeftLift.IsKan.adjunction",
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
  "slug": "leftlift-iskan-adjunction--050de66085bbe7a6491ae17d",
  "source": {
    "blob": "99316716f3e6287db40df966675e5f2cc40e1671",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:050de66085bbe7a6491ae17dccbd4ce6f70c44ce14bed521ffde34cfec3a8ddc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:635598f0870bfc5df42173bc657f6705135dc450081443a388ea5f871f34cb33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeftLift.IsKan.adjunction {u : b ⟶ a} {t : LeftLift u (𝟙 a)}
    (H : IsKan t) (H' : IsKan (t.whisker u)) :
      t.lift ⊣ u :=
  let ε : u ≫ t.lift ⟶ 𝟙 b := H'.desc <| .mk _ <| (ρ_ u).hom ≫ (λ_ u).inv
  have Hε : rightZigzag t.unit ε = (ρ_ u).hom ≫ (λ_ u).inv := by
    simpa [rightZigzag, bicategoricalComp] using H'.fac <| .mk _ <| (ρ_ u).hom ≫ (λ_ u).inv
  { unit := t.unit
    counit := ε
    left_triangle := by
      apply (cancel_epi (λ_ _).inv).mp
      apply H.hom_ext
      calc _
        _ = 𝟙 _ ⊗≫ t.unit ⊗≫ leftZigzag t.unit ε ▷ u ⊗≫ 𝟙 _ := by
          bicategory
        _ = 𝟙 _ ⊗≫ (_ ◁ t.unit ≫ t.unit ▷ _) ⊗≫ t.lift ◁ ε ▷ u ⊗≫ 𝟙 _ := by
          rw [leftZigzag]; bicategory
        _ = 𝟙 _ ⊗≫ t.unit ⊗≫ t.lift ◁ (u ◁ t.unit ⊗≫ ε ▷ u) ⊗≫ 𝟙 _ := by
          rw [whisker_exchange]; bicategory
        _ = _ := by
          rw [← rightZigzag, Hε]; bicategory
    right_triangle := Hε }

/-- For an adjuntion `f ⊣ u`, `f` is a left Kan lift of the identity along `u`.
The unit of this Kan lift is given by the unit of the adjunction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant73e83bdc8a084b35cff7ddb57cc35ee2cda2f964cb4f9efa2eb14bad63ad3cdb.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99316716f3e6287db40df966675e5f2cc40e1671` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
