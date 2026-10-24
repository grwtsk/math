# biproduct.whiskerEquiv_inv_eq_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cd4420f-2ed6-1ed5-8063-fec92788f548",
  "kind": "lemma",
  "lexical_name": "biproduct.whiskerEquiv_inv_eq_lift",
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
  "slug": "biproduct-whiskerequiv-inv-eq-lift--0eee07ccd58bdd9f98578535",
  "source": {
    "blob": "d01bcdd6cfe52972b0f74ead8243f88dc3db82fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 677,
    "line": 659,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eee07ccd58bdd9f98578535e075170763017be724c3ef98529960f8f7103b1e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cd4420f-2ed6-1ed5-8063-fec92788f548`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma biproduct.whiskerEquiv_inv_eq_lift {f : J → C} {g : K → C} (e : J ≃ K)
    (w : ∀ j, g (e j) ≅ f j) [HasBiproduct f] [HasBiproduct g] :
    (biproduct.whiskerEquiv e w).inv =
      biproduct.lift fun j => biproduct.π g (e j) ≫ (w j).hom := by
  simp only [whiskerEquiv_inv]
  ext j k
  by_cases h : k = e j
  · subst h
    simp only [ι_desc_assoc, ← eqToHom_iso_hom_naturality_assoc w (e.symm_apply_apply j).symm,
      Equiv.symm_apply_apply, eqToHom_comp_ι, Category.assoc, bicone_ι_π_self, Category.comp_id,
      lift_π, bicone_ι_π_self_assoc]
  · simp only [ι_desc_assoc, Category.assoc, ne_eq, lift_π]
    rw [biproduct.ι_π_ne, biproduct.ι_π_ne_assoc]
    · simp
    · exact h
    · rintro rfl
      simp at h

attribute [local simp] Sigma.forall in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantabafba1b88f58e1aa3b724e469c4a766a02d5af807f920e717a4a77ea31c681e.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d01bcdd6cfe52972b0f74ead8243f88dc3db82fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
