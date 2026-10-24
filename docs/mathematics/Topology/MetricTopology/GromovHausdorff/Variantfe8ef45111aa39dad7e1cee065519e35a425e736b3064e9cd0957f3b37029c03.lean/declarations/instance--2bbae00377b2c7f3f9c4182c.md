# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc758e73f42c786de179eddc617a8833f98475d95118f7767f96881bb2c1a233",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2bbae00377b2c7f3f9c4182c",
  "source": {
    "blob": "a323bb14830c522f7d8a6648634b1b5304b913ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 417,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bbae00377b2c7f3f9c4182c965b77e231df5a518883d5765daea05638203aff",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc758e73f42c786de179eddc617a8833f98475d95118f7767f96881bb2c1a233`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MetricSpace GHSpace where
  dist := dist
  -- porting note: why does Lean 4 want this?
  edist_dist _ _ := by exact ENNReal.coe_nnreal_eq _
  dist_self x := by
    rcases exists_rep x with ⟨y, hy⟩
    refine' le_antisymm _ _
    · apply csInf_le
      · exact ⟨0, by rintro b ⟨⟨u, v⟩, -, rfl⟩; exact hausdorffDist_nonneg⟩
      · simp only [mem_image, mem_prod, mem_setOf_eq, Prod.exists]
        exists y, y
        simpa only [and_self_iff, hausdorffDist_self_zero, eq_self_iff_true, and_true_iff]
    · apply le_csInf
      · exact Set.Nonempty.image _ <| Set.Nonempty.prod ⟨y, hy⟩ ⟨y, hy⟩
      · rintro b ⟨⟨u, v⟩, -, rfl⟩; exact hausdorffDist_nonneg
  dist_comm x y := by
    have A :
      (fun p : NonemptyCompacts ℓ_infty_ℝ × NonemptyCompacts ℓ_infty_ℝ =>
            hausdorffDist (p.1 : Set ℓ_infty_ℝ) p.2) ''
          { a | ⟦a⟧ = x } ×ˢ { b | ⟦b⟧ = y } =
        (fun p : NonemptyCompacts ℓ_infty_ℝ × NonemptyCompacts ℓ_infty_ℝ =>
              hausdorffDist (p.1 : Set ℓ_infty_ℝ) p.2) ∘
            Prod.swap ''
          { a | ⟦a⟧ = x } ×ˢ { b | ⟦b⟧ = y } := by
      congr
      funext
      simp only [comp_apply, Prod.fst_swap, Prod.snd_swap]
      congr
      simp (config := { singlePass := true }) only [hausdorffDist_comm]
    simp only [dist, A, image_comp, image_swap_prod]
  eq_of_dist_eq_zero {x} {y} hxy := by
    /- To show that two spaces at zero distance are isometric,
       we argue that the distance is realized by some coupling.
        In this coupling, the two spaces are at zero Hausdorff distance,
        i.e., they coincide. Therefore, the original spaces are isometric. -/
    rcases ghDist_eq_hausdorffDist x.Rep y.Rep with ⟨Φ, Ψ, Φisom, Ψisom, DΦΨ⟩
    rw [← dist_ghDist] at DΦΨ
    simp_rw [hxy] at DΦΨ -- porting note: I have no idea why this needed `simp_rw` versus `rw`
    have : range Φ = range Ψ := by
      have hΦ : IsCompact (range Φ) := isCompact_range Φisom.continuous
      have hΨ : IsCompact (range Ψ) := isCompact_range Ψisom.continuous
      apply (IsClosed.hausdorffDist_zero_iff_eq _ _ _).1 DΦΨ.symm
      · exact hΦ.isClosed
      · exact hΨ.isClosed
      · exact hausdorffEdist_ne_top_of_nonempty_of_bounded (range_nonempty _) (range_nonempty _)
          hΦ.bounded hΨ.bounded
    have T : (range Ψ ≃ᵢ y.Rep) = (range Φ ≃ᵢ y.Rep) := by rw [this]
    have eΨ := cast T Ψisom.isometryEquivOnRange.symm
    have e := Φisom.isometryEquivOnRange.trans eΨ
    rw [← x.toGHSpace_rep, ← y.toGHSpace_rep, toGHSpace_eq_toGHSpace_iff_isometryEquiv]
    exact ⟨e⟩
  dist_triangle x y z := by
    /- To show the triangular inequality between `X`, `Y` and `Z`,
        realize an optimal coupling between `X` and `Y` in a space `γ1`,
        and an optimal coupling between `Y` and `Z` in a space `γ2`.
        Then, glue these metric spaces along `Y`. We get a new space `γ`
        in which `X` and `Y` are optimally coupled, as well as `Y` and `Z`.
        Apply the triangle inequality for the Hausdorff distance in `γ`
        to conclude. -/
    let X := x.Rep
    let Y := y.Rep
    let Z := z.Rep
    let γ1 := OptimalGHCoupling X Y
    let γ2 := OptimalGHCoupling Y Z
    let Φ : Y → γ1 := optimalGHInjr X Y
    have hΦ : Isometry Φ := isometry_optimalGHInjr X Y
    let Ψ : Y → γ2 := optimalGHInjl Y Z
    have hΨ : Isometry Ψ := isometry_optimalGHInjl Y Z
    have Comm : toGlueL hΦ hΨ ∘ optimalGHInjr X Y = toGlueR hΦ hΨ ∘ optimalGHInjl Y Z :=
      toGlue_commute hΦ hΨ
    calc
      dist x z = dist (toGHSpace X) (toGHSpace Z) := by
        rw [x.toGHSpace_rep, z.toGHSpace_rep]
      _ ≤ hausdorffDist (range (toGlueL hΦ hΨ ∘ optimalGHInjl X Y))
            (range (toGlueR hΦ hΨ ∘ optimalGHInjr Y Z)) :=
        (ghDist_le_hausdorffDist ((toGlueL_isometry hΦ hΨ).comp (isometry_optimalGHInjl X Y))
          ((toGlueR_isometry hΦ hΨ).comp (isometry_optimalGHInjr Y Z)))
      _ ≤ hausdorffDist (range (toGlueL hΦ hΨ ∘ optimalGHInjl X Y))
              (range (toGlueL hΦ hΨ ∘ optimalGHInjr X Y)) +
            hausdorffDist (range (toGlueL hΦ hΨ ∘ optimalGHInjr X Y))
              (range (toGlueR hΦ hΨ ∘ optimalGHInjr Y Z)) := by
        refine' hausdorffDist_triangle <| hausdorffEdist_ne_top_of_nonempty_of_bounded
          (range_nonempty _) (range_nonempty _) _ _
        · exact (isCompact_range (Isometry.continuous
            ((toGlueL_isometry hΦ hΨ).comp (isometry_optimalGHInjl X Y)))).bounded
        · exact (isCompact_range (Isometry.continuous
            ((toGlueL_isometry hΦ hΨ).comp (isometry_optimalGHInjr X Y)))).bounded
      _ = hausdorffDist (toGlueL hΦ hΨ '' range (optimalGHInjl X Y))
              (toGlueL hΦ hΨ '' range (optimalGHInjr X Y)) +
            hausdorffDist (toGlueR hΦ hΨ '' range (optimalGHInjl Y Z))
              (toGlueR hΦ hΨ '' range (optimalGHInjr Y Z)) := by
        simp only [← range_comp, Comm, eq_self_iff_true, add_right_inj]
      _ = hausdorffDist (range (optimalGHInjl X Y)) (range (optimalGHInjr X Y)) +
            hausdorffDist (range (optimalGHInjl Y Z)) (range (optimalGHInjr Y Z)) := by
        rw [hausdorffDist_image (toGlueL_isometry hΦ hΨ),
          hausdorffDist_image (toGlueR_isometry hΦ hΨ)]
      _ = dist (toGHSpace X) (toGHSpace Y) + dist (toGHSpace Y) (toGHSpace Z) := by
        rw [hausdorffDist_optimal, hausdorffDist_optimal, ghDist, ghDist]
      _ = dist x y + dist y z := by rw [x.toGHSpace_rep, y.toGHSpace_rep, z.toGHSpace_rep]


end GHSpace

--section
end GromovHausdorff

/-- In particular, nonempty compacts of a metric space map to `GHSpace`.
    We register this in the topological_space namespace to take advantage
    of the notation `p.toGHSpace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a323bb14830c522f7d8a6648634b1b5304b913ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
