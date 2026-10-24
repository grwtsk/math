# diag_eq_diag2n_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d914df37d8f5cc56decaa61e4c4d66345ce4c4a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 679,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6c47538-1f5c-8ff5-d836-fabcfacf544d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71cc1847-59ea-5185-da55-dcdfdd23b3e6",
  "kind": "lemma",
  "lexical_name": "diag_eq_diag2n_prod",
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
  "slug": "diag-eq-diag2n-prod--1ae018d478a1517f15d8d4da",
  "source": {
    "blob": "d914df37d8f5cc56decaa61e4c4d66345ce4c4a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 679,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ae018d478a1517f15d8d4da0021aef986c624907dfc54a55b59484284c47c79",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71cc1847-59ea-5185-da55-dcdfdd23b3e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 679–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma diag_eq_diag2n_prod (i₀ : ι) (D : ι → F) (hD : det (diagonal D) = 1) :
    (⟨diagonal D, hD⟩ : SpecialLinearGroup ι F) =
      Finset.noncommProd {i : ι | i ≠ i₀} (fun i ↦ if hi : i ≠ i₀ then
      diag2n hi (D i) (diagonal_neZero D hD i) else 1) (diag_commute i₀ D hD) := by
  set g : ι → ι → F := fun i k ↦ if k = i then D i else if k = i₀ then (D i)⁻¹ else 1 with hg_def
  apply coeMonoidHom_injective
  rw [Finset.map_noncommProd]
  simp_rw [coeMonoidHom_apply, apply_dite, coe_one]
  rw [Finset.noncommProd_congr (s₂ := {i | i ≠ i₀}) rfl (fun i hi ↦
      (dite_eq_left (Finset.mem_filter.1 hi).2 : _ = (diag2n (Finset.mem_filter.1 hi).2 _ _).1))]
  convert_to! _ = Finset.noncommProd {i | i ≠ i₀} (fun x ↦ diagonal (g x)) _
  simp_rw [← diagonalRingHom_apply]
  rw [← Finset.map_noncommProd _ _ (fun _ _ _ _ _ ↦ Commute.all _ _), Finset.noncommProd_eq_prod]
  rw [diag_decompose i₀ D hD]

set_option backward.isDefEq.respectTransparency.types false in
/-- The `SpecialLinearGroup` analogue of
  `Matrix.Pivot.exists_list_transvec_mul_diagonal_mul_list_transvec`:
  every element of `SL(ι, F)` is a product of transvections,
  a diagonal matrix of determinant `1`, and transvections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variant599adc0a91fd1a4751e5064f8a6104be942c11270d2029449440851e1018e2aa.lean#L679).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d914df37d8f5cc56decaa61e4c4d66345ce4c4a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
