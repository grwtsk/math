# yonedaSectionsSmall_inv_app_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d6efdaf-4166-6ce3-014a-b223c4e9086e",
  "kind": "theorem",
  "lexical_name": "yonedaSectionsSmall_inv_app_apply",
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
  "slug": "yonedasectionssmall-inv-app-apply--4fcf25f0c9fdbe6a26340293",
  "source": {
    "blob": "8992435f9413dbadbfedc8a572c84932a7b09a2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 465,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant16c42bb0e1380e6eb5d0fe8f546b9263751fc5d8cbb929f3bba11d4726604ebe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fcf25f0c9fdbe6a26340293cf3876020376aefa385ac563ee13389596b397aa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant16c42bb0e1380e6eb5d0fe8f546b9263751fc5d8cbb929f3bba11d4726604ebe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d6efdaf-4166-6ce3-014a-b223c4e9086e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem yonedaSectionsSmall_inv_app_apply {C : Type u₁} [SmallCategory C] (X : C)
    (F : Cᵒᵖ ⥤ Type u₁) (t : F.obj (op X)) (Y : Cᵒᵖ) (f : Y.unop ⟶ X) :
    ((yonedaSectionsSmall X F).inv t).app Y f = F.map f.op t :=
  rfl
#align category_theory.yoneda_sections_small_inv_app_apply CategoryTheory.yonedaSectionsSmall_inv_app_apply

attribute [local ext] Functor.ext

/- Porting note: this used to be two calls to `tidy` -/
/-- The curried version of yoneda lemma when `C` is small. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant16c42bb0e1380e6eb5d0fe8f546b9263751fc5d8cbb929f3bba11d4726604ebe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant16c42bb0e1380e6eb5d0fe8f546b9263751fc5d8cbb929f3bba11d4726604ebe.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8992435f9413dbadbfedc8a572c84932a7b09a2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
