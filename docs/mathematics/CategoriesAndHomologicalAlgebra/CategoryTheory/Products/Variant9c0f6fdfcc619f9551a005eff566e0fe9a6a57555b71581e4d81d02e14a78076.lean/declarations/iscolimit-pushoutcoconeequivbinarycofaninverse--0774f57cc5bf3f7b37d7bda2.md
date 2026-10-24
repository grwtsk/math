# IsColimit.pushoutCoconeEquivBinaryCofanInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8397a6965290845e0ca537be037f5e41cffaa2f31100301675d628d244f9664",
  "kind": "def",
  "lexical_name": "IsColimit.pushoutCoconeEquivBinaryCofanInverse",
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
  "slug": "iscolimit-pushoutcoconeequivbinarycofaninverse--0774f57cc5bf3f7b37d7bda2",
  "source": {
    "blob": "889956f476b6ce70bcee65f8a5dd540d4050a287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 162,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0774f57cc5bf3f7b37d7bda233bf3b81f67d2447c044d502006a6ed03a20e8dc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8397a6965290845e0ca537be037f5e41cffaa2f31100301675d628d244f9664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsColimit.pushoutCoconeEquivBinaryCofanInverse {c : BinaryCofan (Under.mk f) (.mk g)}
    (hc : IsColimit c) : IsColimit <| pushoutCoconeEquivBinaryCofan.inverse.obj c :=
  PushoutCocone.IsColimit.mk
    (c.inl.w.symm.trans c.inr.w)
    (fun s ↦ (hc.desc <| pushoutCoconeEquivBinaryCofan.functor.obj s).right)
    (fun s ↦ by simpa only using congr($(hc.fac _ _).right))
    (fun s ↦ by simpa only using congr($(hc.fac _ _).right))
    <| fun s m hm₁ hm₂ ↦ by
      change PushoutCocone f g at s
      have := hc.uniq (pushoutCoconeEquivBinaryCofan.functor.obj s) (Under.homMk m <| by
        have := c.inl.w
        simp only [pair_obj_left, Functor.const_obj_obj, Functor.id_obj, StructuredArrow.left_eq_id,
          Discrete.functor_map_id, Category.id_comp, Under.mk_right, Under.mk_hom, Functor.id_map,
          pair_obj_right] at this hm₁
        simp [← hm₁, ← Category.assoc, ← this])
        (by rintro (_ | _) <;> ext <;> simpa)
      exact congr(($this).right)

end Under
end Limits

namespace Over
section BinaryProduct
variable {X : C} {Y Z : Over X}

open Limits

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `889956f476b6ce70bcee65f8a5dd540d4050a287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
