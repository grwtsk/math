# isSheaf_iff_isSheaf_of_type

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43e22d50-9d12-98f8-1947-688194fdfc76",
  "kind": "theorem",
  "lexical_name": "isSheaf_iff_isSheaf_of_type",
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
  "slug": "issheaf-iff-issheaf-of-type--edf65771e2368235cfcb6e3b",
  "source": {
    "blob": "c26bbcbef902255c66f545f981ef9e8978922068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 406,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edf65771e2368235cfcb6e3b957ef1e17965538445dc974a324af04a5039a000",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43e22d50-9d12-98f8-1947-688194fdfc76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_iff_isSheaf_of_type (P : Cᵒᵖ ⥤ Type w) :
    Presheaf.IsSheaf J P ↔ Presieve.IsSheaf J P := by
  constructor
  · intro hP
    refine Presieve.isSheaf_iso J ?_ (hP (PUnit))
    exact Functor.isoWhiskerLeft _ Coyoneda.punitIso ≪≫ P.rightUnitor
  · intro hP X Y S hS z hz
    refine ⟨↾fun x => (hP S hS).amalgamate (fun Z f hf ↦
      (ConcreteCategory.hom (z f hf)) x) ?_, ?_, ?_⟩
    · intro Y₁ Y₂ Z g₁ g₂ f₁ f₂ hf₁ hf₂ h
      exact (ConcreteCategory.congr_hom (hz g₁ g₂ hf₁ hf₂ h)) x
    · intro Z f hf
      apply ConcreteCategory.hom_ext
      intro x
      simp only [Functor.comp_obj, Functor.flip_obj_obj, yoneda_obj_obj, Functor.comp_map,
        Functor.flip_obj_map, yoneda_map_app, ConcreteCategory.hom_ofHom, TypeCat.Fun.coe_mk,
        comp_apply]
      apply Presieve.IsSheafFor.valid_glue
    · intro y hy
      apply ConcreteCategory.hom_ext
      intro x
      apply (hP S hS).isSeparatedFor.ext
      intro Y' f hf
      simp [Presieve.IsSheafFor.valid_glue _ _ _ hf, ← hy _ hf]

/-- The sheaf of sections guaranteed by the sheaf condition. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variantb73009ea1789c5c130d58883150e5768401943114ba1ff013eee68ef1a157bdf.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c26bbcbef902255c66f545f981ef9e8978922068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
