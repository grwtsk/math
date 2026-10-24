# four_seam_cells_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4797515f-381e-61cf-3864-dab2bb0431dc",
  "kind": "theorem",
  "lexical_name": "four_seam_cells_cancel",
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
  "slug": "four-seam-cells-cancel--6918ed86665ad18ce3a03253",
  "source": {
    "blob": "00fb58d92edc13e4630901d590a952ebc9eac70a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 87,
    "path": "GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variantda0959463c5b4c7a6e63652ebfd95c95b6d371f66b3e597ad47cd6f7639170ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6918ed86665ad18ce3a0325362dc97fbed329d744533b9f715b69b859b3e0517",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/BranchSeamCell/Variantda0959463c5b4c7a6e63652ebfd95c95b6d371f66b3e597ad47cd6f7639170ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4797515f-381e-61cf-3864-dab2bb0431dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_seam_cells_cancel
    {a₀ a₁ a₂ a₃ b₀ b₁ b₂ b₃ : ℂ}
    {o₀ : Path a₀ a₁} {o₁ : Path a₁ a₂}
    {o₂ : Path a₂ a₃} {o₃ : Path a₃ a₀}
    {i₀ : Path b₀ b₁} {i₁ : Path b₁ b₂}
    {i₂ : Path b₂ b₃} {i₃ : Path b₃ b₀}
    {t : Set ℂ} {f : ℂ → ℂ}
    (φ₀ : (o₀ : C(I, ℂ)).Homotopy i₀)
    (φ₁ : (o₁ : C(I, ℂ)).Homotopy i₁)
    (φ₂ : (o₂ : C(I, ℂ)).Homotopy i₂)
    (φ₃ : (o₃ : C(I, ℂ)).Homotopy i₃)
    (hφ₀t : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ₀ (x, y) ∈ t)
    (hφ₁t : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ₁ (x, y) ∈ t)
    (hφ₂t : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ₂ (x, y) ∈ t)
    (hφ₃t : ∀ x ∈ Ioo 0 1, ∀ y ∈ Ioo 0 1, φ₃ (x, y) ∈ t)
    (hd : DifferentiableOn ℂ f t)
    (hc : ContinuousOn f (closure t))
    (hφ₀smooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ IccExtend zero_le_one (φ₀.extend xy.1) xy.2)
      (Icc 0 1))
    (hφ₁smooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ IccExtend zero_le_one (φ₁.extend xy.1) xy.2)
      (Icc 0 1))
    (hφ₂smooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ IccExtend zero_le_one (φ₂.extend xy.1) xy.2)
      (Icc 0 1))
    (hφ₃smooth : ContDiffOn ℝ 2
      (fun xy : ℝ × ℝ ↦ IccExtend zero_le_one (φ₃.extend xy.1) xy.2)
      (Icc 0 1))
    (hseam₀₁ :
      curveIntegral (coefficientOneForm f) (φ₀.evalAt 1) =
        curveIntegral (coefficientOneForm f) (φ₁.evalAt 0))
    (hseam₁₂ :
      curveIntegral (coefficientOneForm f) (φ₁.evalAt 1) =
        curveIntegral (coefficientOneForm f) (φ₂.evalAt 0))
    (hseam₂₃ :
      curveIntegral (coefficientOneForm f) (φ₂.evalAt 1) =
        curveIntegral (coefficientOneForm f) (φ₃.evalAt 0))
    (hseam₃₀ :
      curveIntegral (coefficientOneForm f) (φ₃.evalAt 1) =
        curveIntegral (coefficientOneForm f) (φ₀.evalAt 0)) :
    curveIntegral (coefficientOneForm f) o₀ +
          curveIntegral (coefficientOneForm f) o₁ +
        curveIntegral (coefficientOneForm f) o₂ +
      curveIntegral (coefficientOneForm f) o₃ =
    curveIntegral (coefficientOneForm f) i₀ +
          curveIntegral (coefficientOneForm f) i₁ +
        curveIntegral (coefficientOneForm f) i₂ +
      curveIntegral (coefficientOneForm f) i₃ := by
  have h₀ := curveIntegral_coefficientOneForm_homotopy
    φ₀ hφ₀t hd hc hφ₀smooth
  have h₁ := curveIntegral_coefficientOneForm_homotopy
    φ₁ hφ₁t hd hc hφ₁smooth
  have h₂ := curveIntegral_coefficientOneForm_homotopy
    φ₂ hφ₂t hd hc hφ₂smooth
  have h₃ := curveIntegral_coefficientOneForm_homotopy
    φ₃ hφ₃t hd hc hφ₃smooth
  rw [hseam₀₁] at h₀
  rw [hseam₁₂] at h₁
  rw [hseam₂₃] at h₂
  rw [hseam₃₀] at h₃
  linear_combination h₀ + h₁ + h₂ + h₃

/-! ## Concrete normalization probes

Straight square sides are already supported by `curveIntegral_segment`.
The following checked identity is the normalization formula used for each
outer side.  It makes the remaining work explicit: one must prove the sum of
these four normalized segment integrals is `rectangleBoundaryIntegral`, and
the sum of the four standard arc integrals is `circleIntegral`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/BranchSeamCell/Variantda0959463c5b4c7a6e63652ebfd95c95b6d371f66b3e597ad47cd6f7639170ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variantda0959463c5b4c7a6e63652ebfd95c95b6d371f66b3e597ad47cd6f7639170ed.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00fb58d92edc13e4630901d590a952ebc9eac70a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
