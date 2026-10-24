# finiteSubproductsCocone_π_app_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cded552faa4e6f7e2a119fe0175c58e990dcbc7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2f506c0ac251d43b73bdb84369c789cff5144d7a273dcd33000318c46f1056c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f68592c-818f-04c1-911c-c90f172a041b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6043b89-da09-f593-f9c2-7e98ee49bc09",
  "kind": "theorem",
  "lexical_name": "finiteSubproductsCocone_π_app_eq_sum",
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
  "slug": "finitesubproductscocone-app-eq-sum--ba2bf355c9835c40be80ed21",
  "source": {
    "blob": "cded552faa4e6f7e2a119fe0175c58e990dcbc7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Varianta2f506c0ac251d43b73bdb84369c789cff5144d7a273dcd33000318c46f1056c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba2bf355c9835c40be80ed21c628274064cd277e3c9c47c3d548eac544852663",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Varianta2f506c0ac251d43b73bdb84369c789cff5144d7a273dcd33000318c46f1056c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6043b89-da09-f593-f9c2-7e98ee49bc09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSubproductsCocone_π_app_eq_sum {α : Type w} [DecidableEq α] (f : α → C) [HasProduct f]
    (S : (Finset (Discrete α))ᵒᵖ) :
    (finiteSubproductsCone f).π.app S =
      ∑ a ∈ S.unop.attach, Pi.π f a.1.as ≫ Pi.ι (fun a => f a.1.as) a := by
  dsimp only [finiteSubproductsCone_pt, Functor.const_obj_obj, liftToFinsetObj_obj,
    Discrete.functor_obj_eq_as, finiteSubproductsCone_π_app]
  ext v
  simp only [limit.lift_π, Fan.mk_pt, Fan.mk_π_app, Preadditive.sum_comp, Category.assoc]
  rw [Finset.sum_eq_single v]
  · simp
  · intro b hb hb₁
    rw [Pi.ι_π_of_ne _ hb₁, comp_zero]
  · simp

end ProductsFromFiniteCofiltered

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Varianta2f506c0ac251d43b73bdb84369c789cff5144d7a273dcd33000318c46f1056c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftToFinset/Varianta2f506c0ac251d43b73bdb84369c789cff5144d7a273dcd33000318c46f1056c.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cded552faa4e6f7e2a119fe0175c58e990dcbc7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
