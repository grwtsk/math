# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BinaryMatrixSurfaceFlow.Variant92306c0c0be539e45bd3ca7896d998abb6fae65ef3eaed4db12bda9c06350dba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f734857e60865c76676aea25405e1600d842212a` · SHA-256 `e4c40a63fdedda5468377c5bbfac94183024b8252a8cb2b150e3105d81182712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BinarySurfaceFlow.Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.BinarySurfaceFlow.Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6","mathematical_subject":"Logic.Foundations","original_sha256":"2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/DiscreteGeometry/BinaryMatrixSurfaceFlow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.DiscreteGeometry.BinaryMatrixHomology

/-!
# Folder.Rebuild.DiscreteGeometry.BinaryMatrixSurfaceFlow

Surface-flow classification for closed `BinaryMatrix` cell complexes.

Every interpreted surface flow is decomposed into a scalar radial mode and a
directional residual. The trichotomy here is kinematic: relaxed, uniform
radial, or directional. Homological defect-index consequences are attached only
by the `HomologicalBinarySurfaceFlow` refinement.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BinarySurfaceFlow.Variant2d2f0cfdbb8d8789dd3a347d79a8ee0987d8e39d58dad219244b10aab54c08f6

namespace Folder
namespace Rebuild
namespace DiscreteGeometry

noncomputable section

/--
A `BinaryMatrix` surface flow after choosing a closed cell-complex
interpretation.

The `radialSpeed` is the scalar uniform outward/inward mode. The
`directionalResidualZero` predicate says whether any non-uniform local
splitting/transport direction remains after subtracting the uniform radial
mode.
-/
structure BinarySurfaceFlow where
  base : BinaryCellFlow
  /-- Radius of the sphere-like closure, when a radial interpretation exists. -/
  radius : base.Time → ℝ
  /-- Scalar outward speed. Positive = expansion, negative = contraction. -/
  radialSpeed : base.Time → ℝ
  /-- No non-uniform local directional component remains. -/
  directionalResidualZero : base.Time → Prop
  /-- Decidability is useful for classification theorems. -/
  directionalResidualZero_decidable :
    ∀ t, Decidable (directionalResidualZero t)

namespace BinarySurfaceFlow

def NonFlowingAt
    (F : BinarySurfaceFlow)
    (t : F.base.Time) : Prop :=
  F.radialSpeed t = 0 ∧ F.directionalResidualZero t

def RelaxedAt
    (F : BinarySurfaceFlow)
    (t : F.base.Time) : Prop :=
  F.NonFlowingAt t

def UniformRadialAt
    (F : BinarySurfaceFlow)
    (t : F.base.Time) : Prop :=
  F.radialSpeed t ≠ 0 ∧ F.directionalResidualZero t

def DirectionalAt
    (F : BinarySurfaceFlow)
    (t : F.base.Time) : Prop :=
  ¬ F.directionalResidualZero t

/--
Every surface-flow state is relaxed, uniform radial, or directional.
-/
theorem all_flows_trichotomy
    (F : BinarySurfaceFlow)
    (t : F.base.Time) :
    F.RelaxedAt t ∨ F.UniformRadialAt t ∨ F.DirectionalAt t := by
  classical
  by_cases hdir : F.directionalResidualZero t
  · by_cases hspeed : F.radialSpeed t = 0
    · left
      exact ⟨hspeed, hdir⟩
    · right
      left
      exact ⟨hspeed, hdir⟩
  · right
    right
    exact hdir

theorem nonflowing_iff_relaxed
    (F : BinarySurfaceFlow)
    (t : F.base.Time) :
    F.NonFlowingAt t ↔ F.RelaxedAt t := by
  rfl

theorem nonrelaxed_nondirectional_is_uniform_radial
    (F : BinarySurfaceFlow)
    (t : F.base.Time)
    (hNotRelaxed : ¬ F.RelaxedAt t)
    (hNotDirectional : ¬ F.DirectionalAt t) :
    F.UniformRadialAt t := by
  have hres : F.directionalResidualZero t := by
    by_contra h
    exact hNotDirectional h
  have hspeed : F.radialSpeed t ≠ 0 := by
    intro hzero
    exact hNotRelaxed ⟨hzero, hres⟩
  exact ⟨hspeed, hres⟩

theorem otherwise_directional
    (F : BinarySurfaceFlow)
    (t : F.base.Time)
    (hNotRelaxed : ¬ F.RelaxedAt t)
    (hNotUniformRadial : ¬ F.UniformRadialAt t) :
    F.DirectionalAt t := by
  classical
  by_cases hdir : F.DirectionalAt t
  · exact hdir
  · have hrad :
        F.UniformRadialAt t :=
      nonrelaxed_nondirectional_is_uniform_radial
        F t hNotRelaxed hdir
    exact False.elim (hNotUniformRadial hrad)

end BinarySurfaceFlow

/--
A directional surface flow is a `BinarySurfaceFlow` whose directional branch is
backed by homological defect accounting.
-/
structure HomologicalBinarySurfaceFlow extends BinarySurfaceFlow where
  ranks : base.Time → HomologyRanks
  realized :
    ∀ t : base.Time, (ranks t).euler = (base.complex t).euler
  ranks_preserved :
    ∀ t s : base.Time, ranks t = ranks s
  field :
    ∀ t : base.Time, DirectionalSplittingField (base.complex t)
  poincare_hopf :
    ∀ t : base.Time,
      DiscretePoincareHopfInput (base.complex t) (field t)

namespace HomologicalBinarySurfaceFlow

def toDirectionalBinaryCellFlow
    (F : HomologicalBinarySurfaceFlow) :
    DirectionalBinaryCellFlow where
  base := F.base
  ranks := F.ranks
  realized := F.realized
  ranks_preserved := F.ranks_preserved
  field := F.field
  poincare_hopf := F.poincare_hopf

theorem total_defect_index_constant
    (F : HomologicalBinarySurfaceFlow)
    (t s : F.base.Time) :
    (F.poincare_hopf t).defects.totalIndex =
      (F.poincare_hopf s).defects.totalIndex := by
  exact
    DirectionalBinaryCellFlow.total_defect_index_constant
      F.toDirectionalBinaryCellFlow t s

theorem sphere_like_directional_branch_not_defectless
    (F : HomologicalBinarySurfaceFlow)
    (t0 : F.base.Time)
    (S0 : SphereLikeClosure (F.base.complex t0))
    (t : F.base.Time)
    (_hDirectional : F.DirectionalAt t) :
    ¬ (F.poincare_hopf t).defects.Defectless := by
  exact
    DirectionalBinaryCellFlow.no_defectless_slice_of_sphere_like_slice
      F.toDirectionalBinaryCellFlow t0 S0 t

end HomologicalBinarySurfaceFlow

end

end DiscreteGeometry
end Rebuild
end Folder
```
