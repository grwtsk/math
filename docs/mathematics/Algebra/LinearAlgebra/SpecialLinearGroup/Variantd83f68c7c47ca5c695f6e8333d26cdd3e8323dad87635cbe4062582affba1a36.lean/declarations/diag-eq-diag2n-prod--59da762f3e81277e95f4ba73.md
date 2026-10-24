# diag_eq_diag2n_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07f2e851-e33b-bcf3-4462-2c02b0ca8e01",
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
  "slug": "diag-eq-diag2n-prod--59da762f3e81277e95f4ba73",
  "source": {
    "blob": "2336b1615bef41d2a93efe72389be2b1f6172533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 687,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59da762f3e81277e95f4ba730711c554dd8c2819f44861aebb25a2b3c3cbd60d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07f2e851-e33b-bcf3-4462-2c02b0ca8e01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 687–706.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean#L687).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2336b1615bef41d2a93efe72389be2b1f6172533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
