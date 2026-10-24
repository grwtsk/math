# Scheme.exists_isAffine_of_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1034,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e9c1376-6ffd-03b9-732d-4a515797b541",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c29403d7-feca-caba-7194-b5598c4e5535",
  "kind": "lemma",
  "lexical_name": "Scheme.exists_isAffine_of_isLimit",
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
  "slug": "scheme-exists-isaffine-of-islimit--cdfd4489c594dc6d182e0d1d",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1055,
    "line": 1034,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdfd4489c594dc6d182e0d1d6309d29a1f1ff4508ad4d462618e72faa4bc85c9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c29403d7-feca-caba-7194-b5598c4e5535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1034–1055.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.exists_isAffine_of_isLimit [IsCofiltered I]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)]
    [∀ (i : I), CompactSpace (D.obj i)]
    [∀ (i : I), QuasiSeparatedSpace (D.obj i)]
    [IsAffine c.pt] :
    ∃ i, IsAffine (D.obj i) := by
  have := isAffineHom_π_app _ _ hc
  obtain ⟨i, hi⟩ := Scheme.exists_isQuasiAffine_of_isLimit D c hc
  have : ∀ {i j : I} (f : i ⟶ j), IsAffineHom ((D ⋙ Γ.rightOp ⋙ Scheme.Spec).map f) := by
    dsimp; infer_instance
  have (j : _) : CompactSpace ((D ⋙ Γ.rightOp ⋙ Scheme.Spec).obj j) := by dsimp; infer_instance
  obtain ⟨j, fij, hj⟩ := exists_map_eq_top _ _
    (isLimitOfPreserves (Scheme.Γ.rightOp ⋙ Scheme.Spec) hc) (D.obj i).toSpecΓ.opensRange
    ((preimage_opensRange_toSpecΓ (X := c.pt) (c.π.app i)).trans
      (by simp [Hom.opensRange_of_isIso]))
  have := IsQuasiAffine.of_isAffineHom (D.map fij)
  exact ⟨j, ⟨isIso_of_isOpenImmersion_of_opensRange_eq_top _
    ((preimage_opensRange_toSpecΓ (D.map fij)).symm.trans hj)⟩⟩

set_option backward.defeqAttrib.useBackward true in
include hc in
@[stacks 01Z4 "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L1034).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
