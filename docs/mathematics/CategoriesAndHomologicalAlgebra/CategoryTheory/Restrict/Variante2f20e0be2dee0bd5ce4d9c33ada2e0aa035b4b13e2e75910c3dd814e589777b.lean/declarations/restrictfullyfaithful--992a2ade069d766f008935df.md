# restrictFullyFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64df3e8414b54ee660327ecd25b3c4a30c2a386de7ce3688e2f4e827bb1f1a89",
  "kind": "def",
  "lexical_name": "restrictFullyFaithful",
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
  "slug": "restrictfullyfaithful--992a2ade069d766f008935df",
  "source": {
    "blob": "b72adde9ebf9d742ea213260b5bfa03982e3f4ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:992a2ade069d766f008935df8720fe6c09281ccd43da7c5b92d874f9e2a24bae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64df3e8414b54ee660327ecd25b3c4a30c2a386de7ce3688e2f4e827bb1f1a89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def restrictFullyFaithful : L ⊣ R :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun X Y =>
        calc
          (L.obj X ⟶ Y) ≃ (iD.obj (L.obj X) ⟶ iD.obj Y) := hiD.homEquiv
          _ ≃ (L'.obj (iC.obj X) ⟶ iD.obj Y) := Iso.homCongr (comm1.symm.app X) (Iso.refl _)
          _ ≃ (iC.obj X ⟶ R'.obj (iD.obj Y)) := adj.homEquiv _ _
          _ ≃ (iC.obj X ⟶ iC.obj (R.obj Y)) := Iso.homCongr (Iso.refl _) (comm2.app Y)
          _ ≃ (X ⟶ R.obj Y) := hiC.homEquiv.symm

      homEquiv_naturality_left_symm := fun {X' X Y} f g => by
        apply hiD.map_injective
        simpa [Trans.trans] using (comm1.inv.naturality_assoc f _).symm
      homEquiv_naturality_right := fun {X Y' Y} f g => by
        apply hiC.map_injective
        suffices R'.map (iD.map g) ≫ comm2.hom.app Y = comm2.hom.app Y' ≫ iC.map (R.map g) by
          simp [Trans.trans, this]
        apply comm2.hom.naturality g }

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Restrict/Variante2f20e0be2dee0bd5ce4d9c33ada2e0aa035b4b13e2e75910c3dd814e589777b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72adde9ebf9d742ea213260b5bfa03982e3f4ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
