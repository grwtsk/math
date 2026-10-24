# coeff_toPolynomialAdjoinImageCompl_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec8249f1-12e7-6a81-63c4-fbc453abd011",
  "kind": "theorem",
  "lexical_name": "coeff_toPolynomialAdjoinImageCompl_ne_zero",
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
  "slug": "coeff-topolynomialadjoinimagecompl-ne-zero--bb004497ef7845a8ba08da7e",
  "source": {
    "blob": "6929c70a9a539c04177ddfd14817da438dde16c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 109,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb004497ef7845a8ba08da7ee2e19a75e95c21d4a9cdbc5e363648f9254b4b8a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec8249f1-12e7-6a81-63c4-fbc453abd011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_toPolynomialAdjoinImageCompl_ne_zero
    (σ : ι →₀ ℕ) (hσ : σ ∈ F.support) (i : ι) (hσi : σ i ≠ 0) :
    (toPolynomialAdjoinImageCompl F a i).coeff (σ i) ≠ 0 := by
  classical
  intro H
  let F₀ := optionEquivLeft k _ (renameEquiv k (Equiv.optionSubtypeNe i).symm F)
  have H := HF (rename (↑) (F₀.coeff (σ i))) ?_ ?_
  · have : (F₀.coeff (σ i)).totalDegree + σ i ≤ _ :=
      totalDegree_coeff_optionEquivLeft_add_le _ _ _ (σ i) <| by
        rw [totalDegree_renameEquiv]
        exact (Finsupp.le_degree ..).trans (le_totalDegree hσ)
    rw [totalDegree_renameEquiv] at this
    simpa [hσi] using (this.trans H).trans (totalDegree_rename_le _ _)
  · refine (map_eq_zero_iff _ (rename_injective _ Subtype.val_injective)).not.mpr fun H ↦ ?_
    let e := (Equiv.optionSubtypeNe i).symm
    have : (F₀.coeff _).coeff _ = _ :=
      optionEquivLeft_coeff_some_coeff_none _ _ (σ.equivMapDomain e) (renameEquiv k e F)
    dsimp only [F₀] at this
    rw [renameEquiv_apply, Finsupp.equivMapDomain_eq_mapDomain, coeff_rename_mapDomain _
      e.injective, Finsupp.mapDomain_equiv_apply, Equiv.symm_symm, Equiv.optionSubtypeNe_none,
      ← renameEquiv_apply, H, AddMonoidAlgebra.coeff_zero, Finsupp.zero_apply, eq_comm,
      ← notMem_support_iff] at this
    exact this hσ
  · apply_fun Subalgebra.val _ at H
    simp_rw [toPolynomialAdjoinImageCompl, Polynomial.coe_mapAlgHom, Polynomial.coeff_map,
      AlgHom.coe_toRingHom, map_zero] at H
    simp_rw [← H, ← AlgHom.comp_apply]
    congr; ext; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Variant31c512f1e39beae538e6cd99f7963f7788ead197b5bad167f2c8547df0844d8a.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6929c70a9a539c04177ddfd14817da438dde16c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
