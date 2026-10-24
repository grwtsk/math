# coproductCoconeIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab609ead5120736c167615203a5f02e6b4ed10212ae497966df50a3dea5c6164",
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
  "slug": "coproductcoconeiscolimit--8cf4e54143c8df446a40085d",
  "source": {
    "blob": "a30e90735d040f735b2f224aecbe2b720a165fe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/Products/Variantfdfa446a15103b8911b89497bc4a56b6568a6413c1c4c9db725a2864d82da01f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cf4e54143c8df446a40085d751512496d58833f5de8f2e76bbc27ba3f233005",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Products/Variantfdfa446a15103b8911b89497bc4a56b6568a6413c1c4c9db725a2864d82da01f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab609ead5120736c167615203a5f02e6b4ed10212ae497966df50a3dea5c6164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–98.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Products/Variantfdfa446a15103b8911b89497bc4a56b6568a6413c1c4c9db725a2864d82da01f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Products/Variantfdfa446a15103b8911b89497bc4a56b6568a6413c1c4c9db725a2864d82da01f.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a30e90735d040f735b2f224aecbe2b720a165fe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
