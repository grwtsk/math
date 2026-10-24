# inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61e5baa3f4863848db42c9647027da754fed3b381fc0b56d03636a0e03fee635",
  "kind": "def",
  "lexical_name": "inverse",
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
  "slug": "inverse--adc1d88ec75869851c92df6b",
  "source": {
    "blob": "a39d0c8fd608a75eae797d0526e0020ee5d2a66f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 310,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant8b008c04998ee60b10462f628204324124cb002cdd64b2976bf2f17fd3b428fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adc1d88ec75869851c92df6b228ee48ecf3d0503f78f76a4bacbb5934cc43582",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant8b008c04998ee60b10462f628204324124cb002cdd64b2976bf2f17fd3b428fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61e5baa3f4863848db42c9647027da754fed3b381fc0b56d03636a0e03fee635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inverse : W.FunctorsInverting D ⥤ W.Localization ⥤ D where
  obj G := lift G.obj G.property
  map τ := natTransExtension (eqToHom (by rw [fac]) ≫ τ ≫ eqToHom (by rw [fac]))
  map_id G :=
    natTrans_hcomp_injective
      (by
        rw [natTransExtension_hcomp]
        ext X
        simp only [NatTrans.comp_app, eqToHom_app, eqToHom_refl, comp_id, id_comp,
          NatTrans.hcomp_id_app, NatTrans.id_app, Functor.map_id]
        rfl)
  map_comp τ₁ τ₂ :=
    natTrans_hcomp_injective
      (by
        ext X
        simp only [natTransExtension_hcomp, NatTrans.comp_app, eqToHom_app, eqToHom_refl,
          id_comp, comp_id, NatTrans.hcomp_app, NatTrans.id_app, Functor.map_id,
          natTransExtension_app, NatTransExtension.app_eq]
        rfl)

/-- The unit isomorphism of the equivalence of categories `whiskeringLeftEquivalence W D`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant8b008c04998ee60b10462f628204324124cb002cdd64b2976bf2f17fd3b428fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant8b008c04998ee60b10462f628204324124cb002cdd64b2976bf2f17fd3b428fd.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a39d0c8fd608a75eae797d0526e0020ee5d2a66f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
