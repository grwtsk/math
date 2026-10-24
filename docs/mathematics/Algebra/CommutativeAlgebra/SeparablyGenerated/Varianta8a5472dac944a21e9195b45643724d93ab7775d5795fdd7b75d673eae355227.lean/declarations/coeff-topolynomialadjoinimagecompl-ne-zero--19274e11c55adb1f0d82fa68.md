# coeff_toPolynomialAdjoinImageCompl_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b43df4fcbf568c96076d936680befd256dcaef5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f932585d-2f82-5800-f216-827d079636a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c9c3269-7a4e-d987-512c-63ed4b34c88c",
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
  "slug": "coeff-topolynomialadjoinimagecompl-ne-zero--19274e11c55adb1f0d82fa68",
  "source": {
    "blob": "3b43df4fcbf568c96076d936680befd256dcaef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 101,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19274e11c55adb1f0d82fa68066beeaf890cbb3518449be68f520d88f4358210",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c9c3269-7a4e-d987-512c-63ed4b34c88c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–129.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparablyGenerated/Varianta8a5472dac944a21e9195b45643724d93ab7775d5795fdd7b75d673eae355227.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b43df4fcbf568c96076d936680befd256dcaef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
