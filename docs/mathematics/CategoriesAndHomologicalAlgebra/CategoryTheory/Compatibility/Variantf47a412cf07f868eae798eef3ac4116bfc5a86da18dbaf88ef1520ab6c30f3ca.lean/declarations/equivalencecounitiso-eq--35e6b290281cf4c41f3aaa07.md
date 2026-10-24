# equivalenceCounitIso_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a33870472448f4f31ddc6dac70c5e600dbe1f3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6cd0cac-4f18-89d0-31d3-422b67a77bba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cca57fd-7739-00bd-ca7e-108f294a6b85",
  "kind": "theorem",
  "lexical_name": "equivalenceCounitIso_eq",
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
  "slug": "equivalencecounitiso-eq--35e6b290281cf4c41f3aaa07",
  "source": {
    "blob": "2a33870472448f4f31ddc6dac70c5e600dbe1f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 195,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35e6b290281cf4c41f3aaa07347bd034d2e639021dfb248897402c92d15cbb89",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cca57fd-7739-00bd-ca7e-108f294a6b85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivalenceCounitIso_eq (hη : τ₀ = τ₁ hF hG η) :
    (equivalence hF hG).counitIso = equivalenceCounitIso η := by
  ext1; apply NatTrans.ext; ext Y
  dsimp [equivalence]
  simp only [comp_id, id_comp, Functor.map_comp, equivalence₂CounitIso_eq,
    equivalence₂CounitIso_hom_app, assoc, equivalenceCounitIso_hom_app]
  simp only [← eB.inverse.map_comp_assoc, ← τ₀_hom_app, hη, τ₁_hom_app, equivalence₂_inverse,
    Functor.comp_obj]
  rw [hF.inv.naturality_assoc, hF.inv.naturality_assoc]
  dsimp
  congr 2
  simp only [← e'.functor.map_comp_assoc, Equivalence.fun_inv_map, assoc,
    Iso.inv_hom_id_app_assoc, hG.inv_hom_id_app]
  dsimp
  rw [comp_id, eA.functor_unitIso_comp, e'.functor.map_id, id_comp, hF.inv_hom_id_app_assoc]

variable (hF)

/-- The isomorphism `eA.functor ≅ F ⋙ e'.inverse` deduced from the
unit isomorphism of `e'` and the isomorphism `hF : eA.functor ⋙ e'.functor ≅ F`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Compatibility/Variantf47a412cf07f868eae798eef3ac4116bfc5a86da18dbaf88ef1520ab6c30f3ca.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a33870472448f4f31ddc6dac70c5e600dbe1f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
