# χ_pullback_obj_mk_truth_arrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9df28092-e566-523a-e860-4e8ae41ec754",
  "kind": "lemma",
  "lexical_name": "χ_pullback_obj_mk_truth_arrow",
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
  "slug": "pullback-obj-mk-truth-arrow--8b07799ec955f2448709be8a",
  "source": {
    "blob": "cba0db2064d48506716fd883ff835164b66e2b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 227,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Variant0365a8bc9bb504e4d9fefc9752a50a80fff0e55b7587c7a88e1820085e35457b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b07799ec955f2448709be8a331eed43d5b7ffe7726d36bdb16282db91407ecb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Variant0365a8bc9bb504e4d9fefc9752a50a80fff0e55b7587c7a88e1820085e35457b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9df28092-e566-523a-e860-4e8ae41ec754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma χ_pullback_obj_mk_truth_arrow {X : C} (φ : X ⟶ 𝒞.Ω) :
    𝒞.χ ((Subobject.pullback φ).obj (.mk 𝒞.truth)).arrow = φ := by
  obtain ⟨Z, i, _, rfl⟩ := 𝒞.surjective_χ φ
  refine (𝒞.uniq _ _ ?_).symm
  refine (IsPullback.of_hasPullback 𝒞.truth (𝒞.χ i)).flip.of_iso
    (underlyingIso _).symm (Iso.refl _) (Iso.refl _) (Iso.refl _)
    ?_ (Subsingleton.elim _ _) (by simp) (by simp)
  dsimp
  rw [Iso.eq_inv_comp, comp_id, underlyingIso_hom_comp_eq_mk]
  rfl

/-- Any subobject classifier `Ω` represents the subobjects functor `Subobject.presheaf`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Variant0365a8bc9bb504e4d9fefc9752a50a80fff0e55b7587c7a88e1820085e35457b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Classifier/Variant0365a8bc9bb504e4d9fefc9752a50a80fff0e55b7587c7a88e1820085e35457b.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cba0db2064d48506716fd883ff835164b66e2b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
