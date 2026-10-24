# Generates.isSheaf_of_forall_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "039802f3a5ee2fb7124b312f1bacae671ed63930",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6edd50c4-2415-7804-ff83-4cb01d3cb942",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0910f28a-3a29-4407-8b2c-cd4a16b9fec9",
  "kind": "lemma",
  "lexical_name": "Generates.isSheaf_of_forall_aux",
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
  "slug": "generates-issheaf-of-forall-aux--00305e258a0b9a6ce5d0f0da",
  "source": {
    "blob": "039802f3a5ee2fb7124b312f1bacae671ed63930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00305e258a0b9a6ce5d0f0da37157795fddbbc40da64a3811ffede17b2ce332a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0910f28a-3a29-4407-8b2c-cd4a16b9fec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Generates.isSheaf_of_forall_aux (h : K.Generates J) (F : Cᵒᵖ ⥤ Type w)
    (H : ∀ ⦃X : C⦄, ∀ R ∈ K X, Presieve.IsSheafFor F R)
    [∀ (Z : C), _root_.Small.{max u v} (F.obj (.op Z))] :
    Presieve.IsSheaf J F := by
  intro X S hS
  let F' : Cᵒᵖ ⥤ Type max u v := FunctorToTypes.shrink F
  let e (X : C) : F.obj (.op X) ≃ F'.obj (.op X) := equivShrink _
  have he (X Y : C) (f : X ⟶ Y) (x : F.obj (.op Y)) :
      (e X) (F.map f.op x) = F'.map f.op (e Y x) := by
    simp [e, F']
  rw [Presieve.isSheafFor_iff_of_nat_equiv e he] at ⊢
  refine h.isSheaf_of_forall_max F' (fun X R hR ↦ ?_) _ hS
  rw [← Presieve.isSheafFor_iff_of_nat_equiv e he]
  exact H _ hR

/-- If `K` generates `J`, then any presheaf `Cᵒᵖ ⥤ Type w` that satisfies the sheaf
condition for all `K`-coverings, is a `J`-sheaf. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generates/Variantbc3d4400e11855ca5d070cf6cad10cc715052f098c4a88ad184c0a4e0289b2f0.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039802f3a5ee2fb7124b312f1bacae671ed63930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
