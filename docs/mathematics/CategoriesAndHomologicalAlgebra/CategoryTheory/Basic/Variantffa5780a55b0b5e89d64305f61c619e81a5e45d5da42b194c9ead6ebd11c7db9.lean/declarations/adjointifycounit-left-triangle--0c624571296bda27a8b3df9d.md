# adjointifyCounit_left_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22fd2c14-7438-cbaa-fe6c-a8460780bb5f",
  "kind": "theorem",
  "lexical_name": "adjointifyCounit_left_triangle",
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
  "slug": "adjointifycounit-left-triangle--0c624571296bda27a8b3df9d",
  "source": {
    "blob": "fe80e119efa8005fd9c96f26ec6b401224da47e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 221,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c624571296bda27a8b3df9d5fb92748e05c9a5662048946f0a38a4d21c62d80",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22fd2c14-7438-cbaa-fe6c-a8460780bb5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjointifyCounit_left_triangle (η : 𝟙 a ≅ f ≫ g) (ε : g ≫ f ≅ 𝟙 b) :
    leftZigzagIso η (adjointifyCounit η ε) = λ_ f ≪≫ (ρ_ f).symm := by
  apply Iso.ext
  dsimp [adjointifyCounit, bicategoricalIsoComp]
  calc
    _ = 𝟙 _ ⊗≫ (η.hom ▷ (f ≫ 𝟙 b) ≫ (f ≫ g) ◁ f ◁ ε.inv) ⊗≫
          f ◁ g ◁ η.inv ▷ f ⊗≫ f ◁ ε.hom := by
      bicategory
    _ = 𝟙 _ ⊗≫ f ◁ ε.inv ⊗≫ (η.hom ▷ (f ≫ g) ≫ (f ≫ g) ◁ η.inv) ▷ f ⊗≫ f ◁ ε.hom := by
      rw [← whisker_exchange η.hom (f ◁ ε.inv)]; bicategory
    _ = 𝟙 _ ⊗≫ f ◁ ε.inv ⊗≫ (η.inv ≫ η.hom) ▷ f ⊗≫ f ◁ ε.hom := by
      rw [← whisker_exchange η.hom η.inv]; bicategory
    _ = 𝟙 _ ⊗≫ f ◁ (ε.inv ≫ ε.hom) := by
      rw [Iso.inv_hom_id]; bicategory
    _ = _ := by
      rw [Iso.inv_hom_id]; bicategory

/-- Adjoint equivalences between two objects. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantffa5780a55b0b5e89d64305f61c619e81a5e45d5da42b194c9ead6ebd11c7db9.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe80e119efa8005fd9c96f26ec6b401224da47e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
