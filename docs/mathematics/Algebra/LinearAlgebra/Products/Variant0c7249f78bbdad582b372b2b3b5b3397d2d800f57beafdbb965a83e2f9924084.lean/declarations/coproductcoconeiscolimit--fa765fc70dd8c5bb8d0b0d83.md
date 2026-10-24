# coproductCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4bce39ea772299a217cf380757d3fc62519475ae75d3ac92367ef326a357e1a",
  "kind": "def",
  "lexical_name": "coproductCoconeIsColimit",
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
  "slug": "coproductcoconeiscolimit--fa765fc70dd8c5bb8d0b0d83",
  "source": {
    "blob": "821c6e647a6bb798078e2aafa1ae2b22c10475e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/Products/Variant0c7249f78bbdad582b372b2b3b5b3397d2d800f57beafdbb965a83e2f9924084.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa765fc70dd8c5bb8d0b0d83d554dd83f8797db1a44dcfd78dc964e9cc5bf77e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Products/Variant0c7249f78bbdad582b372b2b3b5b3397d2d800f57beafdbb965a83e2f9924084.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4bce39ea772299a217cf380757d3fc62519475ae75d3ac92367ef326a357e1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coproductCoconeIsColimit : IsColimit (coproductCocone Z) where
  desc s := ofHom <| DirectSum.toModule R ι _ fun i ↦ (s.ι.app ⟨i⟩).hom
  fac := by
    rintro s ⟨i⟩
    ext (x : Z i)
    simpa only [Discrete.functor_obj_eq_as, coproductCocone, Cofan.mk_pt, Functor.const_obj_obj,
      Cofan.mk_ι_app, hom_comp, LinearMap.coe_comp, Function.comp_apply] using!
      DirectSum.toModule_lof (ι := ι) R (M := fun i ↦ Z i) i x
  uniq := by
    rintro s f h
    ext : 1
    refine DirectSum.linearMap_ext _ fun i ↦ ?_
    ext x
    simpa only [LinearMap.coe_comp, Function.comp_apply, hom_ofHom, toModule_lof] using!
      congr($(h ⟨i⟩) x)

variable [HasCoproduct Z]

/-- The categorical coproduct of a family of objects in `ModuleCat`
agrees with direct sum.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Products/Variant0c7249f78bbdad582b372b2b3b5b3397d2d800f57beafdbb965a83e2f9924084.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Products/Variant0c7249f78bbdad582b372b2b3b5b3397d2d800f57beafdbb965a83e2f9924084.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `821c6e647a6bb798078e2aafa1ae2b22c10475e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
