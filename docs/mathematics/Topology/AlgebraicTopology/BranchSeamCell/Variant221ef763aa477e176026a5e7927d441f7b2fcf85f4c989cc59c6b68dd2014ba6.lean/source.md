# Complete source: GRWTSK.Topology.AlgebraicTopology.BranchSeamCell.Variant221ef763aa477e176026a5e7927d441f7b2fcf85f4c989cc59c6b68dd2014ba6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1a6e64c9252bd21f11ae25ddde29eebe1ed3a47` · SHA-256 `69ce0adc017df6e892f92bb34f77409543c67dc4ab0317061c434050e6254d88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.AlgebraicTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.AlgebraicTopology.FourSeamCellsCancel.Variant7f8fe41ae2720f6cfd0f4089d8232a82389ce5db08f8caf05c9f665c6cf5fe15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f8fe41ae2720f6cfd0f4089d8232a82389ce5db08f8caf05c9f665c6cf5fe15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.AlgebraicTopology.SourceCorpus.FourSeamCellsCancel.Variant7f8fe41ae2720f6cfd0f4089d8232a82389ce5db08f8caf05c9f665c6cf5fe15","mathematical_subject":"Topology.AlgebraicTopology","original_sha256":"7f8fe41ae2720f6cfd0f4089d8232a82389ce5db08f8caf05c9f665c6cf5fe15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0cb06e24995cca5bf2ef0366/workspace/tmp/ca03/BranchSeamCell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import tmp.ca03.SharedStatement
import tmp.ca03.BranchHomotopy
import tmp.ca03.BranchSubdivision

/-!
# CA-03 branch F2/F3b: seam-cell bridge

This scratch branch isolates the exact algebra needed to pass from four smooth
side-to-arc homotopies to an equality of the two complete contour integrals.
It deliberately does not introduce a canonical theorem.

The intended geometry is a centered axis-aligned square and four circular
arcs.  For each cell, the Poincare homotopy theorem retains the two radial
connector integrals.  Consecutive cells use the same connector with the same
orientation on opposite sides of their equations.  The theorem below proves
that these four seam terms cancel exactly.
-/


namespace GRWTSK.Topology.AlgebraicTopology.FourSeamCellsCancel.Variant7f8fe41ae2720f6cfd0f4089d8232a82389ce5db08f8caf05c9f665c6cf5fe15

namespace Surface.Core.ComplexAnalysis.CA03Scratch.BranchSeamCell

noncomputable section

open Filter Set Complex
open scoped Interval Pointwise Topology unitInterval

open Surface.Core.ComplexAnalysis.CA03Scratch.BranchHomotopy

/-- Four `C²` side-to-arc homotopies cancel their transverse seam paths.

The outer paths `o₀,...,o₃` and inner paths `i₀,...,i₃` are cyclically
oriented in the same direction.  Thus `φk.evalAt 1` is the outgoing radial
seam of cell `k`, while `φ(k+1).evalAt 0` is the same seam as the incoming
edge of the next cell.  The four `hseam` hypotheses are path-integral
identifications; in a concrete radial construction they follow by path
extensionality.

This theorem is the analytic-and-algebraic core of the proposed F2 bridge:
each cell is discharged by the checked Poincare theorem, not by a certificate
or a geometric-homology assertion. -/
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
  abel

/-! ## Concrete normalization probes

Straight square sides are already supported by `curveIntegral_segment`.
The following checked identity is the normalization formula used for each
outer side.  It makes the remaining work explicit: one must prove the sum of
these four normalized segment integrals is `rectangleBoundaryIntegral`, and
the sum of the four standard arc integrals is `circleIntegral`.
-/

theorem coefficientOneForm_curveIntegral_segment (f : ℂ → ℂ) (a b : ℂ) :
    curveIntegral (coefficientOneForm f) (.segment a b) =
      ∫ u : ℝ in 0..1, f (AffineMap.lineMap a b u) * (b - a) := by
  rw [curveIntegral_segment]
  apply intervalIntegral.integral_congr
  intro u _
  simp [coefficientOneForm, mul_comm]

/-!
## Exact remaining goal

`four_seam_cells_cancel` closes the Poincare stack and all radial-seam
obligations.  The circular CA-03 target is not closed in this branch because
the concrete geometry still needs three kernel proofs:

1. construct four `C²` radial homotopies from the oriented square segments to
   four standard quarter-circle paths, with the open homotopy image outside
   the deleted closed disk;
2. identify the four shared radial connectors by path extensionality; and
3. normalize the four segment integrals to `rectangleBoundaryIntegral` and
   the four standard arc integrals to `circleIntegral`.

The last normalization is not available as a named curve-integral
reparameterization theorem in the pinned library.  It must be proved from
`curveIntegral_eq_intervalIntegral_deriv` and interval-integral substitution.
Accordingly this scratch file does **not** inhabit
`SingleHoleExcisionStatement` and makes no homology or homeomorphism claim.
-/

#print axioms four_seam_cells_cancel
#print axioms coefficientOneForm_curveIntegral_segment

end

end Surface.Core.ComplexAnalysis.CA03Scratch.BranchSeamCell
```
