# EIsoH_hom_opcyclesIsoH_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38e5039fe04a8009e8f6cf3db2214f912b9023f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 827,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5df0ea1b-80c2-8fb0-8299-0b04ad640030",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26126a79-28b6-b695-f24e-0eaa628a4c33",
  "kind": "lemma",
  "lexical_name": "EIsoH_hom_opcyclesIsoH_inv",
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
  "slug": "eisoh-hom-opcyclesisoh-inv--3b5ed173ad3506e7d09da185",
  "source": {
    "blob": "38e5039fe04a8009e8f6cf3db2214f912b9023f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 858,
    "line": 827,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b5ed173ad3506e7d09da185d74acff37da7860b87b6bf7f7a04d8be5fe15bb0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26126a79-28b6-b695-f24e-0eaa628a4c33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 827–858.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma EIsoH_hom_opcyclesIsoH_inv :
    (X.EIsoH f n₀ n₁ n₂ hn₁ hn₂).hom ≫ (X.opcyclesIsoH f n₀ n₁ hn₁).inv =
      X.ιE (𝟙 i) f (𝟙 j) n₀ n₁ n₂ hn₁ hn₂ := by
  let h := (X.homologyDataIdId f n₀ n₁ n₂ hn₁ hn₂)
  have : h.right.opcyclesIso.hom =
      (X.opcyclesIso (𝟙 i) f (𝟙 j) n₀ n₁ n₂ hn₁ hn₂).hom ≫
        X.fromOpcycles f (𝟙 j) f (by simp) n₁ := by
    rw [← cancel_epi (X.opcyclesIso ..).inv, Iso.inv_hom_id_assoc,
      ← cancel_epi (X.pOpcycles ..), p_opcyclesIso_inv_assoc ..,
      h.right.pOpcycles_comp_opcyclesIso_hom, p_fromOpcycles]
    dsimp [h]
    rw [← Functor.map_id]
    congr 1
    cat_disch
  obtain rfl : n₂ = n₁ + 1 := by lia
  rw [← cancel_mono (X.opcyclesIsoH f n₀ n₁ hn₁).hom, Category.assoc,
    opcyclesIsoH_hom .., opcyclesIsoH_inv_hom_id ..]
  dsimp [EIsoH, ιE]
  rw [Category.assoc, ← this,
    h.left_homologyIso_eq_right_homologyIso_trans_iso_symm,
    ← ShortComplex.RightHomologyData.homologyIso_hom_comp_ι]
  simp [h]

end

section

variable {i₀ i₁ i₂ i₃ : ι} (f₁ : i₀ ⟶ i₁) (f₂ : i₁ ⟶ i₂) (f₃ : i₂ ⟶ i₃)
    (f₁₂ : i₀ ⟶ i₂) (f₂₃ : i₁ ⟶ i₃)
    (h₁₂ : f₁ ≫ f₂ = f₁₂) (h₂₃ : f₂ ≫ f₃ = f₂₃)

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variant53ba1a8f46c69a8e5106e2906f53f686bd904dbb4c9296359d89e5a6e0f3a0c4.lean#L827).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38e5039fe04a8009e8f6cf3db2214f912b9023f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
