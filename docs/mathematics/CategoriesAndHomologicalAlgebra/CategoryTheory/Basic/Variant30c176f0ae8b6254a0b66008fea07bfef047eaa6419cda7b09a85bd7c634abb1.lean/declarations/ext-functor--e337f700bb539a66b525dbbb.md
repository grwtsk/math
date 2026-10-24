# ext_functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:905d3bca-f9df-2875-6d6e-774ff56f9a86",
  "kind": "theorem",
  "lexical_name": "ext_functor",
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
  "slug": "ext-functor--e337f700bb539a66b525dbbb",
  "source": {
    "blob": "f06be9349e3ca960ac3af8536dc9d38c698cc1ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e337f700bb539a66b525dbbb0fbe801cbd134ab958c65f0cbbe64591bede5275",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:905d3bca-f9df-2875-6d6e-774ff56f9a86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_functor {C} [Category* C] {F G : Paths V ⥤ C} (h_obj : F.obj = G.obj)
    (h : ∀ (a b : V) (e : a ⟶ b), F.map e.toPath =
        eqToHom (congr_fun h_obj a) ≫ G.map e.toPath ≫ eqToHom (congr_fun h_obj.symm b)) :
    F = G := by
  fapply Functor.ext
  · intro X
    rw [h_obj]
  · intro X Y f
    induction f with
    | nil => erw [F.map_id, G.map_id, Category.id_comp, eqToHom_trans, eqToHom_refl]
    | cons g e ih =>
      erw [F.map_comp g (Quiver.Hom.toPath e), G.map_comp g (Quiver.Hom.toPath e), ih, h]
      simp only [Category.id_comp, eqToHom_refl, eqToHom_trans_assoc, Category.assoc]

end Paths

variable (W : Type u₂) [Quiver.{v₂} W]

-- A restatement of `Prefunctor.mapPath_comp` using `f ≫ g` instead of `f.comp g`.
set_option backward.isDefEq.respectTransparency.types false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30c176f0ae8b6254a0b66008fea07bfef047eaa6419cda7b09a85bd7c634abb1.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06be9349e3ca960ac3af8536dc9d38c698cc1ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
