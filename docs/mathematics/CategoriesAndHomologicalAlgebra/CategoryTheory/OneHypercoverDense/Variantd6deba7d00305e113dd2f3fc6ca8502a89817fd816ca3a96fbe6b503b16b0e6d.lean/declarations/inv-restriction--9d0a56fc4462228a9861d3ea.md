# inv_restriction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "382ea4478ab53131c06e22ee23b4703e6f50cdec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 735,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be151604-0304-425c-12b1-5738c11d1005",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d86ff965-709a-f78f-17e2-99c6f0bba5de",
  "kind": "lemma",
  "lexical_name": "inv_restriction",
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
  "slug": "inv-restriction--9d0a56fc4462228a9861d3ea",
  "source": {
    "blob": "382ea4478ab53131c06e22ee23b4703e6f50cdec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 756,
    "line": 735,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d0a56fc4462228a9861d3ea3e8d74a9c4c41d38dd1520ff4c57520136814449",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d86ff965-709a-f78f-17e2-99c6f0bba5de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–756.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inv_restriction {Y₀ : C₀} (f : F.obj Y₀ ⟶ F.obj X₀) :
    inv data G₀ X₀ ≫ restriction data G₀ f =
      IsDenseSubsite.mapPreimage J F G₀ f := by
  refine Presheaf.IsSheaf.hom_ext G₀.property
    ⟨_, IsDenseSubsite.imageSieve_mem J₀ J F f⟩ _ _ ?_
  rintro ⟨W₀, a, b, fac₁⟩
  refine Presheaf.IsSheaf.hom_ext G₀.property
    ⟨_, J₀.pullback_stable b (cover_lift F J₀ _ (data (F.obj X₀)).mem₀)⟩ _ _ ?_
  rintro ⟨T₀, c, _, d, _, ⟨i⟩, fac₂⟩
  dsimp at i d fac₂ ⊢
  simp only [assoc, ← Functor.map_comp, ← op_comp]
  rw [restriction_map data G₀ f (c ≫ a) d
    (by rw [fac₂, map_comp, map_comp_assoc, fac₁]), inv_π_assoc,
    ← IsDenseSubsite.mapPreimage_comp, fac₂,
    IsDenseSubsite.mapPreimage_comp_map J F G₀, map_comp,
      map_comp_assoc, fac₁]

end presheafObjObjIso

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The presheaf `presheaf data G₀` extends `G₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OneHypercoverDense/Variantd6deba7d00305e113dd2f3fc6ca8502a89817fd816ca3a96fbe6b503b16b0e6d.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `382ea4478ab53131c06e22ee23b4703e6f50cdec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
