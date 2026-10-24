# toNormedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56a2a818cfde2f25500e10e115514833fdcc1557f79c5a547b96caa365cf2967",
  "kind": "def",
  "lexical_name": "toNormedField",
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
  "slug": "tonormedfield--024eb9d4cbf922f58e3dd1af",
  "source": {
    "blob": "32fda1c81a41ab614cfbde738da5aaf5874bd9a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 157,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantbf88745a1271f249e5bd79a98162ac5a9a051721055929ceb29b1611aaf86bd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:024eb9d4cbf922f58e3dd1afc6db56cf2025ace5f927c1a51b1c3b40cc1e9e79",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantbf88745a1271f249e5bd79a98162ac5a9a051721055929ceb29b1611aaf86bd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56a2a818cfde2f25500e10e115514833fdcc1557f79c5a547b96caa365cf2967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toNormedField : NormedField L :=
  { (inferInstance : Field L) with
    norm := val.v.norm
    dist := fun x y => val.v.norm (x - y)
    dist_self := fun x => by
      simp only [sub_self, Valuation.norm, Valuation.map_zero, hv.hom.map_zero, NNReal.coe_zero]
    dist_comm := fun x y => by simp only [Valuation.norm]; rw [← neg_sub, Valuation.map_neg]
    dist_triangle := fun x y z => by
      simp only [← sub_add_sub_cancel x y z]
      exact le_trans (val.v.norm_add_le _ _)
        (max_le_add_of_nonneg (val.v.norm_nonneg _) (val.v.norm_nonneg _))
    eq_of_dist_eq_zero := fun hxy => eq_of_sub_eq_zero (val.v.norm_eq_zero hxy)
    dist_eq := fun x y => by
      simp only [Valuation.norm]
      rw [← v.restrict.map_neg, neg_sub, sub_eq_add_neg, add_comm]
    norm_mul := fun x y => by simp only [Valuation.norm, ← NNReal.coe_mul, map_mul]
    toUniformSpace := Valued.toUniformSpace
    uniformity_dist := by
      have : Nonempty { ε : ℝ // ε > 0 } := nonempty_Ioi_subtype
      ext U
      rw [hasBasis_iff.mp (Valued.hasBasis_uniformity L Γ₀), iInf_subtype', mem_iInf_of_directed]
      · simp only [true_and, mem_principal, Subtype.exists, gt_iff_lt, exists_prop]
        refine ⟨fun ⟨ε, hε⟩ => ?_, fun ⟨r, hr_pos, hr⟩ => ?_⟩
        · set δ : ℝ≥0 := hv.hom _ ε with hδ
          have hδ_pos : 0 < δ := by
            rw [hδ, ← map_zero hv.hom]
            exact hv.strictMono _ (Units.zero_lt ε)
          use δ, hδ_pos
          apply subset_trans _ hε
          intro x hx
          simp only [mem_ofPred_eq, Valuation.norm, hδ, NNReal.coe_lt_coe] at hx
          rw [mem_ofPred, ← neg_sub, Valuation.map_neg]
          exact (RankOne.strictMono Valued.v).lt_iff_lt.mp hx
        · have : Nontrivial Γ₀ˣ := (nontrivial_iff_exists_ne (1 : Γ₀ˣ)).mpr
            ⟨RankOne.unit val.v, RankOne.unit_ne_one val.v⟩
          obtain ⟨u, hu⟩ := Real.exists_lt_of_strictMono hv.strictMono hr_pos
          use u
          apply subset_trans _ hr
          intro x hx
          simp only [Valuation.norm, mem_ofPred_eq]
          apply lt_trans _ hu
          rw [NNReal.coe_lt_coe, ← neg_sub, Valuation.map_neg]
          exact (RankOne.strictMono Valued.v).lt_iff_lt.mpr hx
      · simp only [Directed]
        intro x y
        use min x y
        simp only [le_principal_iff, mem_principal, ofPred_subset_ofPred, Prod.forall]
        exact ⟨fun a b hab => lt_of_lt_of_le hab (min_le_left _ _), fun a b hab =>
            lt_of_lt_of_le hab (min_le_right _ _)⟩ }

-- When a field is valued, one inherits a `NormedField`.
-- Scoped instance to avoid a typeclass loop or non-defeq topology or norms.
scoped[Valued] attribute [instance] Valued.toNormedField
scoped[NormedField] attribute [instance] NormedField.toValued

section NormedField

open scoped Valued

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantbf88745a1271f249e5bd79a98162ac5a9a051721055929ceb29b1611aaf86bd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variantbf88745a1271f249e5bd79a98162ac5a9a051721055929ceb29b1611aaf86bd8.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fda1c81a41ab614cfbde738da5aaf5874bd9a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
