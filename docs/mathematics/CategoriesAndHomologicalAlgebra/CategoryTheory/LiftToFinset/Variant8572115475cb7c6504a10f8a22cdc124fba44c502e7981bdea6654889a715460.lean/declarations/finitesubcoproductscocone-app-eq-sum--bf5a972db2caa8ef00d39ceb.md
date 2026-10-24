# finiteSubcoproductsCocone_ι_app_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0808ff0e-c9d8-d458-f157-c509ec83c56c",
  "kind": "theorem",
  "lexical_name": "finiteSubcoproductsCocone_ι_app_eq_sum",
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
  "slug": "finitesubcoproductscocone-app-eq-sum--bf5a972db2caa8ef00d39ceb",
  "source": {
    "blob": "26c20449810caac3cdc1bf72796dca5e8330a6cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant8572115475cb7c6504a10f8a22cdc124fba44c502e7981bdea6654889a715460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf5a972db2caa8ef00d39cebd8ca3dfc463c7950adbc4608b6ec3e9c0ec2aa7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant8572115475cb7c6504a10f8a22cdc124fba44c502e7981bdea6654889a715460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0808ff0e-c9d8-d458-f157-c509ec83c56c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSubcoproductsCocone_ι_app_eq_sum {α : Type w} [DecidableEq α] (f : α → C)
    [HasCoproduct f] (S : Finset (Discrete α)) :
    (finiteSubcoproductsCocone f).ι.app S = ∑ a ∈ S.attach, Sigma.π _ a ≫ Sigma.ι _ a.1.as := by
  dsimp only [liftToFinsetObj_obj, Discrete.functor_obj_eq_as, finiteSubcoproductsCocone_pt,
    Functor.const_obj_obj, finiteSubcoproductsCocone_ι_app]
  ext v
  simp only [colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app, Preadditive.comp_sum]
  rw [Finset.sum_eq_single v]
  · simp
  · intro b hb hb₁
    rw [Sigma.ι_π_of_ne_assoc _ (Ne.symm hb₁), zero_comp]
  · simp

end CoproductsFromFiniteFiltered

namespace ProductsFromFiniteCofiltered

variable [HasFiniteProducts C]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant8572115475cb7c6504a10f8a22cdc124fba44c502e7981bdea6654889a715460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Variant8572115475cb7c6504a10f8a22cdc124fba44c502e7981bdea6654889a715460.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26c20449810caac3cdc1bf72796dca5e8330a6cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
