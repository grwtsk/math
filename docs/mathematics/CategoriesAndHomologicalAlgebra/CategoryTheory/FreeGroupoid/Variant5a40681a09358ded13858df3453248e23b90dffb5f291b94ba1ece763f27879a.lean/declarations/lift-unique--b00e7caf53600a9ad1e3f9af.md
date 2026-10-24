# lift_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbce35a0-9e86-14b0-9d38-0369fbe29419",
  "kind": "theorem",
  "lexical_name": "lift_unique",
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
  "slug": "lift-unique--b00e7caf53600a9ad1e3f9af",
  "source": {
    "blob": "6087fd5d30face0b19acda4ca1c9b0ce64851b12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant5a40681a09358ded13858df3453248e23b90dffb5f291b94ba1ece763f27879a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b00e7caf53600a9ad1e3f9af86c1d6f16bb4bad9b13ea82c6c79bde2e8aac65c",
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

Occurrence: `result:dbce35a0-9e86-14b0-9d38-0369fbe29419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_unique (φ : V ⥤q V') (Φ : FreeGroupoid V ⥤ V') (hΦ : of V ⋙q Φ.toPrefunctor = φ) :
    Φ = lift φ := by
  apply Quotient.lift_unique
  apply Paths.lift_unique
  fapply @Quiver.Symmetrify.lift_unique _ _ _ _ _ _ _ _ _
  · rw [← Functor.toPrefunctor_comp]
    exact hΦ
  · rintro X Y f
    simp only [← Functor.toPrefunctor_comp, Prefunctor.comp_map, Paths.of_map, inv_eq_inv]
    change Φ.map (inv ((Quotient.functor redStep).toPrefunctor.map f.toPath)) =
      inv (Φ.map ((Quotient.functor redStep).toPrefunctor.map f.toPath))
    have := Functor.map_inv Φ ((Quotient.functor redStep).toPrefunctor.map f.toPath)
    convert this <;> simp only [inv_eq_inv]

end UniversalProperty

section Functoriality

variable {V' : Type u'} [Quiver.{v' + 1} V'] {V'' : Type u''} [Quiver.{v'' + 1} V'']

/-- The functor of free groupoid induced by a prefunctor of quivers -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant5a40681a09358ded13858df3453248e23b90dffb5f291b94ba1ece763f27879a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant5a40681a09358ded13858df3453248e23b90dffb5f291b94ba1ece763f27879a.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6087fd5d30face0b19acda4ca1c9b0ce64851b12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
