# congr_comp_reverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af63b28d-9f11-b18d-ebed-ade99775739b",
  "kind": "theorem",
  "lexical_name": "congr_comp_reverse",
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
  "slug": "congr-comp-reverse--b3c4b15b6aaba3279dcec18d",
  "source": {
    "blob": "6087fd5d30face0b19acda4ca1c9b0ce64851b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant5a40681a09358ded13858df3453248e23b90dffb5f291b94ba1ece763f27879a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3c4b15b6aaba3279dcec18d8d3dd31cac2143abbe3fcead63b332090570500a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant5a40681a09358ded13858df3453248e23b90dffb5f291b94ba1ece763f27879a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af63b28d-9f11-b18d-ebed-ade99775739b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem congr_comp_reverse {X Y : Paths <| Quiver.Symmetrify V} (p : X ⟶ Y) :
    Quot.mk (@Quotient.CompClosure _ _ redStep _ _) (p ≫ p.reverse) =
      Quot.mk (@Quotient.CompClosure _ _ redStep _ _) (𝟙 X) := by
  apply Quot.eqvGen_sound
  induction p with
  | nil => apply EqvGen.refl
  | cons q f ih =>
    simp only [Quiver.Path.reverse]
    fapply EqvGen.trans
    -- Porting note: `Quiver.Path.*` and `Quiver.Hom.*` notation not working
    · exact q ≫ Quiver.Path.reverse q
    · apply EqvGen.symm
      apply EqvGen.rel
      have : Quotient.CompClosure redStep (q ≫ 𝟙 _ ≫ Quiver.Path.reverse q)
          (q ≫ (Quiver.Hom.toPath f ≫ Quiver.Hom.toPath (Quiver.reverse f)) ≫
            Quiver.Path.reverse q) := by
        apply Quotient.CompClosure.intro
        apply redStep.step
      simp only [Category.assoc, Category.id_comp] at this ⊢
      -- Porting note: `simp` cannot see how `Quiver.Path.comp_assoc` is relevant, so change to
      -- category notation
      change Quotient.CompClosure redStep (q ≫ Quiver.Path.reverse q)
        (Quiver.Path.cons q f ≫ (Quiver.Hom.toPath (Quiver.reverse f)) ≫ (Quiver.Path.reverse q))
      simp only [← Category.assoc] at this ⊢
      exact this
    · exact ih

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant5a40681a09358ded13858df3453248e23b90dffb5f291b94ba1ece763f27879a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant5a40681a09358ded13858df3453248e23b90dffb5f291b94ba1ece763f27879a.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6087fd5d30face0b19acda4ca1c9b0ce64851b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
