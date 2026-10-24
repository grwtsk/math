# colimitOfRepresentable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:829f04718b48a04515fe91ca681b05970d1975ab007db3634c97af2c9b4b710b",
  "kind": "def",
  "lexical_name": "colimitOfRepresentable",
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
  "slug": "colimitofrepresentable--e30c9d5e731c96ae17a73e37",
  "source": {
    "blob": "ac43a287dad7b1a0e1b11331b070f3c64e45d0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 222,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e30c9d5e731c96ae17a73e375998d7725cfdbf0c7a5dc3013f15ca72cd552ee3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:829f04718b48a04515fe91ca681b05970d1975ab007db3634c97af2c9b4b710b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def colimitOfRepresentable (P : Cᵒᵖ ⥤ Type v₁) :
    IsColimit (coconeOfRepresentable P) where
  desc s :=
    { app := fun X x => (s.ι.app (Opposite.op (Functor.elementsMk P X x))).app X (𝟙 _)
      naturality := fun X Y f => by
        ext x
        have eq₁ := congr_fun (congr_app (s.w (CategoryOfElements.homMk (P.elementsMk X x)
          (P.elementsMk Y (P.map f x)) f rfl).op) Y) (𝟙 _)
        dsimp at eq₁ ⊢
        simpa [← eq₁, id_comp] using
          congr_fun ((s.ι.app (Opposite.op (P.elementsMk X x))).naturality f) (𝟙 _) }
  fac s j := by
    ext X x
    let φ : j.unop ⟶ Functor.elementsMk P X ((yonedaEquiv.symm j.unop.2).app X x) := ⟨x.op, rfl⟩
    simpa using congr_fun (congr_app (s.ι.naturality φ.op).symm X) (𝟙 _)
  uniq s m hm := by
    ext X x
    dsimp
    rw [← hm]
    apply congr_arg
    simp [coconeOfRepresentable_ι_app, yonedaEquiv]

variable {A : C ⥤ ℰ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant29d8cd1d54b5d0e4a122dc5f8d6b8742235e9fbd61a2e47e5c60b81027dc5584.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac43a287dad7b1a0e1b11331b070f3c64e45d0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
