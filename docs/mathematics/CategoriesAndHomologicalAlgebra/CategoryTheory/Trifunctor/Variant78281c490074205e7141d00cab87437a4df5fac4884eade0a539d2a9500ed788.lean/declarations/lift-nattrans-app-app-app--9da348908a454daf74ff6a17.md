# lift₃NatTrans_app_app_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "782b08c753808783d23dc27ffd4bd5b1f6deeb1b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b76dd067-3669-2437-431b-6ad1611c3e42",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90af5541-641a-607a-4694-ed185e05e45d",
  "kind": "theorem",
  "lexical_name": "lift₃NatTrans_app_app_app",
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
  "slug": "lift-nattrans-app-app-app--9da348908a454daf74ff6a17",
  "source": {
    "blob": "782b08c753808783d23dc27ffd4bd5b1f6deeb1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9da348908a454daf74ff6a176947ba4477f42969111be1e64cdaa31310d34a44",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90af5541-641a-607a-4694-ed185e05e45d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift₃NatTrans_app_app_app (X₁ : C₁) (X₂ : C₂) (X₃ : C₃) :
    (((lift₃NatTrans L₁ L₂ L₃ W₁ W₂ W₃ F₁ F₂ F₁' F₂' τ).app
        (L₁.obj X₁)).app (L₂.obj X₂)).app (L₃.obj X₃) =
      (((Lifting₃.iso L₁ L₂ L₃ W₁ W₂ W₃ F₁ F₁').hom.app X₁).app X₂).app X₃ ≫
        ((τ.app X₁).app X₂).app X₃ ≫
        (((Lifting₃.iso L₁ L₂ L₃ W₁ W₂ W₃ F₂ F₂').inv.app X₁).app X₂).app X₃ := by
  dsimp [lift₃NatTrans, fullyFaithfulUncurry₃, Equivalence.fullyFaithfulFunctor]
  simp only [currying₃_unitIso_hom_app_app_app_app, Functor.id_obj,
    currying₃_unitIso_inv_app_app_app_app, Functor.comp_obj,
    Category.comp_id, Category.id_comp]
  exact liftNatTrans_app _ _ _ _ (uncurry₃.obj F₁') (uncurry₃.obj F₂') (uncurry₃.map τ) ⟨X₁, X₂, X₃⟩

variable {F₁' F₂'} in
include W₁ W₂ W₃ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variant78281c490074205e7141d00cab87437a4df5fac4884eade0a539d2a9500ed788.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `782b08c753808783d23dc27ffd4bd5b1f6deeb1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
