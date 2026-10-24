# of_equivalence_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "acf2bade256672a3aea8912bfb9343557234ad43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5b47937-e7b1-d68c-f523-86ceae879b85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c262567-ff6f-e7b2-567f-9e6c26a5c2de",
  "kind": "theorem",
  "lexical_name": "of_equivalence_target",
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
  "slug": "of-equivalence-target--c4fcbbb41f13c47b4bd54750",
  "source": {
    "blob": "acf2bade256672a3aea8912bfb9343557234ad43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 399,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4fcbbb41f13c47b4bd54750802798b5d66b9c0e5140d8af1006bc940d6e76ad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c262567-ff6f-e7b2-567f-9e6c26a5c2de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_equivalence_target {E : Type*} [Category E] (L' : C ⥤ E) (eq : D ≌ E)
    [L.IsLocalization W] (e : L ⋙ eq.functor ≅ L') : L'.IsLocalization W := by
  have h : W.IsInvertedBy L' := by
    rw [← MorphismProperty.IsInvertedBy.iff_of_iso W e]
    exact MorphismProperty.IsInvertedBy.of_comp W L (Localization.inverts L W) eq.functor
  let F₁ := Localization.Construction.lift L (Localization.inverts L W)
  let F₂ := Localization.Construction.lift L' h
  let e' : F₁ ⋙ eq.functor ≅ F₂ := liftNatIso W.Q W (L ⋙ eq.functor) L' _ _ e
  exact
    { inverts := h
      isEquivalence := Functor.isEquivalence_of_iso e' }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acf2bade256672a3aea8912bfb9343557234ad43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
