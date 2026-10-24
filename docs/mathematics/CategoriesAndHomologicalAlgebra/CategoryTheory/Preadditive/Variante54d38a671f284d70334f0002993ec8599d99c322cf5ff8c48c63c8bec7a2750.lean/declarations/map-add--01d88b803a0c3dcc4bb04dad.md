# map_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48bfbdb9-896f-7220-dd99-0fb40167b147",
  "kind": "lemma",
  "lexical_name": "map_add",
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
  "slug": "map-add--01d88b803a0c3dcc4bb04dad",
  "source": {
    "blob": "f195bb716ca5dbb9b6e2a5f98175fe9485e86bb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 301,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01d88b803a0c3dcc4bb04dad9fee5230454b29d6e9bdc24e7bbe4e2db03aacb7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48bfbdb9-896f-7220-dd99-0fb40167b147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_add (f₁ f₂ : X ⟶ Y) :
    letI := addCommGroup L W (L.obj X) (L.obj Y)
    L.map (f₁ + f₂) = L.map f₁ + L.map f₂ := by
  rw [add_eq W (Iso.refl _) (Iso.refl _) (L.map f₁) (L.map f₂)]
  simp [add]

end ImplementationDetails

end Preadditive

variable [W.HasLeftCalculusOfFractions]

/-- The preadditive structure on `D`, when `L : C ⥤ D` is a localization
functor, `C` is preadditive and there is a left calculus of fractions. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variante54d38a671f284d70334f0002993ec8599d99c322cf5ff8c48c63c8bec7a2750.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f195bb716ca5dbb9b6e2a5f98175fe9485e86bb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
