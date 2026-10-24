# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BinaryMatrixHomology.Variant72cdd22184525b81df74afdec465b55e0e8d41ed6240d2ebbc9cb6924c23e5bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd30f5817ecf77000f4beb83322433840ed75a49` · SHA-256 `93d55967473ed5c50a5f131935f2ae9b823770db3b2b437a7764bf3bab5b69d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BinaryClosureKind.Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BinaryClosureKind.Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/DiscreteGeometry/BinaryMatrixHomology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib
import Folder.Carrier.BinaryMatrixStream
import Folder.Rebuild.DiscreteGeometry.BinaryRicciFlow

/-!
# Folder.Rebuild.DiscreteGeometry.BinaryMatrixHomology

Finite cell-complex and defect-index scaffolding for closed `BinaryMatrix`
patches.

This module keeps the carrier finite and combinatorial:

`BinaryMatrix -> chosen closure -> ZMod 2 chain complex -> homology ranks ->
directional splitting data -> defect-index obstruction`.

The Poincare-Hopf-style statement is not asserted globally. It is an explicit
input for a concrete discrete directional model. Scalar and isotropic heat-flow
layers do not use this obstruction.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BinaryClosureKind.Variant7ca81984ce532a56878ea5ebea139f7f9a0ec244b29cf6f8dbe4b9740ac3a049

namespace Folder
namespace Rebuild
namespace DiscreteGeometry

noncomputable section

open scoped BigOperators

abbrev BinaryMatrix :=
  Carrier.BinaryMatrix

/--
Closure is not padding. It is the topological rule used after the finite
`BinaryMatrix` carrier has been interpreted as a cell patch.
-/
inductive BinaryClosureKind where
  | planar
  | periodic
  | spherical
deriving DecidableEq, Repr

/-- Chains with ZMod 2 coefficients, the first coefficient field for unoriented
binary cell data. -/
abbrev Z2Chain
    (α : Type) :=
  α → ZMod 2

/--
A finite 2-dimensional cellular closure of a `BinaryMatrix`.

`C0` = vertices, `C1` = edges, `C2` = faces. The actual incidence data is
supplied by `d1` and `d2`; `d1_d2_zero` is the chain-complex condition
`boundary after boundary is zero`.
-/
structure BinaryCellComplex where
  matrix : BinaryMatrix
  closureKind : BinaryClosureKind
  C0 : Type
  C1 : Type
  C2 : Type
  fintype0 : Fintype C0
  fintype1 : Fintype C1
  fintype2 : Fintype C2
  decEq0 : DecidableEq C0
  decEq1 : DecidableEq C1
  decEq2 : DecidableEq C2
  /-- Each original matrix cell is assigned to a 2-cell/face. -/
  matrixFace : Fin matrix.m → Fin matrix.n → C2
  /-- Boundary C1 -> C0. -/
  d1 : Z2Chain C1 → Z2Chain C0
  /-- Boundary C2 -> C1. -/
  d2 : Z2Chain C2 → Z2Chain C1
  /-- Boundary of a boundary is zero. -/
  d1_d2_zero : ∀ c : Z2Chain C2, d1 (d2 c) = 0

namespace BinaryCellComplex

instance instFintypeC0
    (X : BinaryCellComplex) : Fintype X.C0 :=
  X.fintype0

instance instFintypeC1
    (X : BinaryCellComplex) : Fintype X.C1 :=
  X.fintype1

instance instFintypeC2
    (X : BinaryCellComplex) : Fintype X.C2 :=
  X.fintype2

instance instDecEqC0
    (X : BinaryCellComplex) : DecidableEq X.C0 :=
  X.decEq0

instance instDecEqC1
    (X : BinaryCellComplex) : DecidableEq X.C1 :=
  X.decEq1

instance instDecEqC2
    (X : BinaryCellComplex) : DecidableEq X.C2 :=
  X.decEq2

/-- Cellular Euler characteristic from the chosen closure. -/
def euler
    (X : BinaryCellComplex) : ℤ :=
  letI := X.fintype0
  letI := X.fintype1
  letI := X.fintype2
  (Fintype.card X.C0 : ℤ)
    - (Fintype.card X.C1 : ℤ)
    + (Fintype.card X.C2 : ℤ)

def IsOneCycle
    (X : BinaryCellComplex)
    (c : Z2Chain X.C1) : Prop :=
  X.d1 c = 0

def IsOneBoundary
    (X : BinaryCellComplex)
    (c : Z2Chain X.C1) : Prop :=
  ∃ b : Z2Chain X.C2, X.d2 b = c

def IsTwoCycle
    (X : BinaryCellComplex)
    (c : Z2Chain X.C2) : Prop :=
  X.d2 c = 0

theorem boundary_boundary_zero
    (X : BinaryCellComplex)
    (c : Z2Chain X.C2) :
    X.d1 (X.d2 c) = 0 :=
  X.d1_d2_zero c

end BinaryCellComplex

/--
Betti-rank data. This is deliberately separated from the chain complex:
computing ranks of kernels and images can be added later. For now this is the
formal place where homology enters.
-/
structure HomologyRanks where
  beta0 : Nat
  beta1 : Nat
  beta2 : Nat
deriving DecidableEq, Repr

namespace HomologyRanks

def euler
    (H : HomologyRanks) : ℤ :=
  (H.beta0 : ℤ) - (H.beta1 : ℤ) + (H.beta2 : ℤ)

end HomologyRanks

/-- Homology realization certificate for a chosen closed binary cell complex. -/
structure HomologyRealization
    (X : BinaryCellComplex) where
  ranks : HomologyRanks
  euler_matches : ranks.euler = X.euler

/-- S2 has Betti ranks beta0 = 1, beta1 = 0, beta2 = 1. -/
def sphereHomologyRanks : HomologyRanks where
  beta0 := 1
  beta1 := 0
  beta2 := 1

theorem sphereHomologyRanks_euler :
    sphereHomologyRanks.euler = 2 := by
  norm_num [sphereHomologyRanks, HomologyRanks.euler]

/--
A spherical closure certificate.

This is the homology-level version of saying that the `BinaryMatrix` patch has
been closed as a combinatorial sphere.
-/
structure SphereLikeClosure
    (X : BinaryCellComplex) where
  homology : HomologyRealization X
  homology_is_sphere : homology.ranks = sphereHomologyRanks

theorem sphereLike_euler_eq_two
    {X : BinaryCellComplex}
    (S : SphereLikeClosure X) :
    X.euler = 2 := by
  calc
    X.euler = S.homology.ranks.euler := by
      exact S.homology.euler_matches.symm
    _ = sphereHomologyRanks.euler := by
      rw [S.homology_is_sphere]
    _ = 2 := sphereHomologyRanks_euler

/--
A finite cell-count signature. This is useful for the intuitive two-face sphere
picture: four boundary vertices, four boundary edges, one inside face, one
outside face.
-/
structure CellCountSignature where
  vertices : Nat
  edges : Nat
  faces : Nat
deriving DecidableEq, Repr

namespace CellCountSignature

def euler
    (C : CellCountSignature) : ℤ :=
  (C.vertices : ℤ) - (C.edges : ℤ) + (C.faces : ℤ)

end CellCountSignature

/-- The minimal "one active face plus one exterior face" sphere count. -/
def twoFaceSphereCounts : CellCountSignature where
  vertices := 4
  edges := 4
  faces := 2

theorem twoFaceSphereCounts_euler :
    twoFaceSphereCounts.euler = 2 := by
  norm_num [twoFaceSphereCounts, CellCountSignature.euler]

/--
A homology-preserving refinement between two closed `BinaryMatrix` complexes.

This is where padding/refinement belongs: refinement may change the matrix and
the cell decomposition, but a true topological refinement preserves Euler data
and, eventually, Betti data.
-/
structure HomologyPreservingRefinement
    (coarse fine : BinaryCellComplex) where
  matrixRefinement : BinaryMatrix → BinaryMatrix
  matrix_refines : matrixRefinement coarse.matrix = fine.matrix
  euler_preserved : fine.euler = coarse.euler
  coarseRanks : HomologyRanks
  fineRanks : HomologyRanks
  ranks_preserved : fineRanks = coarseRanks

theorem refinement_preserves_euler
    {coarse fine : BinaryCellComplex}
    (R : HomologyPreservingRefinement coarse fine) :
    fine.euler = coarse.euler :=
  R.euler_preserved

theorem refinement_preserves_sphere_euler
    {coarse fine : BinaryCellComplex}
    (R : HomologyPreservingRefinement coarse fine)
    (S : SphereLikeClosure coarse) :
    fine.euler = 2 := by
  calc
    fine.euler = coarse.euler := R.euler_preserved
    _ = 2 := sphereLike_euler_eq_two S

/--
A directional splitting field.

This represents the choice of local splitting direction/spin-direction on the
closed `BinaryMatrix` complex. Scalar/isotropic refinement does not need this.
Directional refinement does.
-/
structure DirectionalSplittingField
    (X : BinaryCellComplex) where
  Direction : Type
  directionAtFace : X.C2 → Direction
  globallyNonzero : Prop

/--
Defect data for a directional splitting field.

The `index` field is the discrete analogue of the local index of a zero or
singularity of a vector field.
-/
structure DefectIndexData
    (X : BinaryCellComplex) where
  Defect : Type
  defectFintype : Fintype Defect
  defectCell : Defect → X.C2
  index : Defect → ℤ

namespace DefectIndexData

instance instFintypeDefect
    {X : BinaryCellComplex}
    (D : DefectIndexData X) :
    Fintype D.Defect :=
  D.defectFintype

def totalIndex
    {X : BinaryCellComplex}
    (D : DefectIndexData X) : ℤ :=
  letI := D.defectFintype
  ∑ d : D.Defect, D.index d

/-- "No net defect" means total defect index zero. -/
def Defectless
    {X : BinaryCellComplex}
    (D : DefectIndexData X) : Prop :=
  D.totalIndex = 0

end DefectIndexData

/--
Discrete Poincare-Hopf input.

This is the precise homology connection to the hairy-ball intuition: the total
defect index of a directional field equals the Euler characteristic. This is
not asserted globally as a theorem here; it is a certificate/input for a
particular discrete model of direction fields and defects.
-/
structure DiscretePoincareHopfInput
    (X : BinaryCellComplex)
    (V : DirectionalSplittingField X) where
  defects : DefectIndexData X
  total_index_eq_euler : defects.totalIndex = X.euler

theorem total_defect_index_eq_euler
    {X : BinaryCellComplex}
    {V : DirectionalSplittingField X}
    (P : DiscretePoincareHopfInput X V) :
    P.defects.totalIndex = X.euler :=
  P.total_index_eq_euler

/--
Hairy-ball-type consequence for a sphere-like `BinaryMatrix` closure: a
directional splitting field satisfying Poincare-Hopf cannot have zero total
defect index.
-/
theorem no_defectless_directional_split_on_sphere
    {X : BinaryCellComplex}
    {V : DirectionalSplittingField X}
    (S : SphereLikeClosure X)
    (P : DiscretePoincareHopfInput X V) :
    ¬ DefectIndexData.Defectless P.defects := by
  intro h0
  have hbad : (0 : ℤ) = 2 := by
    calc
      (0 : ℤ) = P.defects.totalIndex := h0.symm
      _ = X.euler := P.total_index_eq_euler
      _ = 2 := sphereLike_euler_eq_two S
  norm_num at hbad

/--
If a fine refinement is homology-preserving and the fine directional field
satisfies discrete Poincare-Hopf, its total defect index computes the coarse
Euler characteristic.
-/
theorem refined_defect_index_eq_coarse_euler
    {coarse fine : BinaryCellComplex}
    (R : HomologyPreservingRefinement coarse fine)
    {V : DirectionalSplittingField fine}
    (P : DiscretePoincareHopfInput fine V) :
    P.defects.totalIndex = coarse.euler := by
  calc
    P.defects.totalIndex = fine.euler := P.total_index_eq_euler
    _ = coarse.euler := R.euler_preserved

/-- Sphere-like obstruction survives homology-preserving `BinaryMatrix`
refinement. -/
theorem refined_no_defectless_directional_split_on_sphere
    {coarse fine : BinaryCellComplex}
    (R : HomologyPreservingRefinement coarse fine)
    (S : SphereLikeClosure coarse)
    {V : DirectionalSplittingField fine}
    (P : DiscretePoincareHopfInput fine V) :
    ¬ DefectIndexData.Defectless P.defects := by
  intro h0
  have hbad : (0 : ℤ) = 2 := by
    calc
      (0 : ℤ) = P.defects.totalIndex := h0.symm
      _ = fine.euler := P.total_index_eq_euler
      _ = coarse.euler := R.euler_preserved
      _ = 2 := sphereLike_euler_eq_two S
  norm_num at hbad

section BinaryCellFlows

/--
A flow through closed `BinaryMatrix` cell complexes.

This is the bare flow: it may change the matrix and subdivision. It does not,
by itself, carry topology-preservation data.
-/
structure BinaryCellFlow where
  Time : Type
  complex : Time → BinaryCellComplex

/--
A homology-preserving flow.

This preserves Betti-rank data, hence Euler characteristic.
-/
structure HomologyPreservingFlow
    (F : BinaryCellFlow) where
  ranks : F.Time → HomologyRanks
  realized :
    ∀ t : F.Time, (ranks t).euler = (F.complex t).euler
  ranks_preserved :
    ∀ t s : F.Time, ranks t = ranks s

namespace HomologyPreservingFlow

theorem euler_preserved
    {F : BinaryCellFlow}
    (H : HomologyPreservingFlow F)
    (t s : F.Time) :
    (F.complex t).euler = (F.complex s).euler := by
  calc
    (F.complex t).euler = (H.ranks t).euler := (H.realized t).symm
    _ = (H.ranks s).euler := by
      rw [H.ranks_preserved t s]
    _ = (F.complex s).euler := H.realized s

end HomologyPreservingFlow

/--
A directional `BinaryMatrix` flow.

In this development, a directional flow is automatically homology-preserving.
It carries:
1. an underlying `BinaryCellFlow`,
2. preserved homology-rank data,
3. a directional splitting field at every time,
4. a Poincare-Hopf defect-index law at every time.
-/
structure DirectionalBinaryCellFlow where
  base : BinaryCellFlow
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

namespace DirectionalBinaryCellFlow

/--
All directional flows are homology-preserving.

This is true by definition: the directional-flow structure bundles the
homology-preserving rank data. This is a data projection, so it is a `def`
rather than a `theorem`.
-/
def all_directional_flows_are_homology_preserving
    (D : DirectionalBinaryCellFlow) :
    HomologyPreservingFlow D.base := by
  exact
    { ranks := D.ranks
      realized := D.realized
      ranks_preserved := D.ranks_preserved }

/-- Euler characteristic is constant along every directional flow. -/
theorem euler_preserved
    (D : DirectionalBinaryCellFlow)
    (t s : D.base.Time) :
    (D.base.complex t).euler = (D.base.complex s).euler := by
  exact
    HomologyPreservingFlow.euler_preserved
      (all_directional_flows_are_homology_preserving D) t s

/--
Main invariant:

Every directional `BinaryMatrix` flow preserves total defect index.
-/
theorem total_defect_index_constant
    (D : DirectionalBinaryCellFlow)
    (t s : D.base.Time) :
    (D.poincare_hopf t).defects.totalIndex =
      (D.poincare_hopf s).defects.totalIndex := by
  calc
    (D.poincare_hopf t).defects.totalIndex
        = (D.base.complex t).euler :=
          (D.poincare_hopf t).total_index_eq_euler
    _ = (D.base.complex s).euler :=
          D.euler_preserved t s
    _ = (D.poincare_hopf s).defects.totalIndex :=
          (D.poincare_hopf s).total_index_eq_euler.symm

/--
Sphere-like corollary:

If one time-slice is sphere-like, then every time-slice has total defect index
`2`.
-/
theorem total_defect_index_eq_two_of_sphere_like_slice
    (D : DirectionalBinaryCellFlow)
    (t0 : D.base.Time)
    (S0 : SphereLikeClosure (D.base.complex t0))
    (t : D.base.Time) :
    (D.poincare_hopf t).defects.totalIndex = 2 := by
  calc
    (D.poincare_hopf t).defects.totalIndex
        = (D.base.complex t).euler :=
          (D.poincare_hopf t).total_index_eq_euler
    _ = (D.base.complex t0).euler :=
          D.euler_preserved t t0
    _ = 2 :=
          sphereLike_euler_eq_two S0

/--
Hairy-ball-style obstruction along every directional flow:

If one time-slice is sphere-like, then no time-slice can be defectless.
-/
theorem no_defectless_slice_of_sphere_like_slice
    (D : DirectionalBinaryCellFlow)
    (t0 : D.base.Time)
    (S0 : SphereLikeClosure (D.base.complex t0))
    (t : D.base.Time) :
    ¬ (D.poincare_hopf t).defects.Defectless := by
  intro h0

  have hidx :
      (D.poincare_hopf t).defects.totalIndex = 2 :=
    D.total_defect_index_eq_two_of_sphere_like_slice t0 S0 t

  have hbad : (0 : ℤ) = 2 := by
    calc
      (0 : ℤ) = (D.poincare_hopf t).defects.totalIndex := h0.symm
      _ = 2 := hidx

  norm_num at hbad

end DirectionalBinaryCellFlow

/--
Matrix-only adapter for a homology-preserving directional flow.

The semantic directional-flow and defect-index data remain as boundary facts;
the internal proof evolution is represented by a matrix theorem and a temporal
`BinaryMatrixStream`.
-/
structure DirectionalFlowMatrixAdapter where
  source : DirectionalBinaryCellFlow
  timeFrame : source.base.Time → Carrier.BinaryMatrix
  proofTrace : Carrier.BinaryMatrixStream
  defectFrame : source.base.Time → Carrier.BinaryMatrix
  homologyFrame : source.base.Time → Carrier.BinaryMatrix
  matrixTheorem :
    Carrier.BinaryMatrixStream.MatrixInternalTheorem
  preservesDefectIndexAsMatrixFlow : Prop
  preservesDefectIndexAsMatrixFlow_certified :
    preservesDefectIndexAsMatrixFlow

/-- A flow may be finite-time if its time type is equivalent to `Fin k`. -/
def BinaryCellFlow.IsFiniteTime
    (F : BinaryCellFlow) : Prop :=
  ∃ k : Nat, Nonempty (F.Time ≃ Fin k)

/-- A flow may be infinite discrete-time if its time type is equivalent to `Nat`. -/
def BinaryCellFlow.IsNatTime
    (F : BinaryCellFlow) : Prop :=
  Nonempty (F.Time ≃ Nat)

def DirectionalBinaryCellFlow.IsFiniteTime
    (D : DirectionalBinaryCellFlow) : Prop :=
  D.base.IsFiniteTime

def DirectionalBinaryCellFlow.IsNatTime
    (D : DirectionalBinaryCellFlow) : Prop :=
  D.base.IsNatTime

/--
Local mode at a face/cell.

`relaxed` means no local flow. `radial` means scalar outward/inward radius
mode. `directional d` means a genuine local directional residual.
-/
inductive LocalFlowMode
    (Dir : Type) where
  | relaxed : LocalFlowMode Dir
  | radial : LocalFlowMode Dir
  | directional : Dir → LocalFlowMode Dir
deriving Repr

namespace LocalFlowMode

def IsRelaxed {Dir : Type} : LocalFlowMode Dir → Prop
  | relaxed => True
  | _ => False

def IsRadial {Dir : Type} : LocalFlowMode Dir → Prop
  | radial => True
  | _ => False

def IsDirectional {Dir : Type} : LocalFlowMode Dir → Prop
  | directional _ => True
  | _ => False

theorem trichotomy
    {Dir : Type}
    (m : LocalFlowMode Dir) :
    m.IsRelaxed ∨ m.IsRadial ∨ m.IsDirectional := by
  cases m <;> simp [IsRelaxed, IsRadial, IsDirectional]

end LocalFlowMode

/--
A mixed local flow field on a `BinaryMatrix` cell complex.

This permits mixtures: some cells relaxed, some radial, some truly directional.
-/
structure MixedDirectionalSplittingField
    (X : BinaryCellComplex) where
  Direction : Type
  modeAtFace : X.C2 → LocalFlowMode Direction

namespace MixedDirectionalSplittingField

def AllRelaxed
    {X : BinaryCellComplex}
    (M : MixedDirectionalSplittingField X) : Prop :=
  ∀ c : X.C2, (M.modeAtFace c).IsRelaxed

def AllRadial
    {X : BinaryCellComplex}
    (M : MixedDirectionalSplittingField X) : Prop :=
  ∀ c : X.C2, (M.modeAtFace c).IsRadial

def HasDirectionalCell
    {X : BinaryCellComplex}
    (M : MixedDirectionalSplittingField X) : Prop :=
  ∃ c : X.C2, (M.modeAtFace c).IsDirectional

/--
Directional residual means: not globally relaxed and not globally uniform
radial.

This intentionally classifies mixed relaxed/radial patterns as residual,
because they are not the pure uniform spherical radius mode.
-/
def HasDirectionalResidual
    {X : BinaryCellComplex}
    (M : MixedDirectionalSplittingField X) : Prop :=
  ¬ M.AllRelaxed ∧ ¬ M.AllRadial

theorem global_trichotomy
    {X : BinaryCellComplex}
    (M : MixedDirectionalSplittingField X) :
    M.AllRelaxed ∨ M.AllRadial ∨ M.HasDirectionalResidual := by
  classical
  by_cases hrel : M.AllRelaxed
  · exact Or.inl hrel
  · by_cases hrad : M.AllRadial
    · exact Or.inr (Or.inl hrad)
    · exact Or.inr (Or.inr ⟨hrel, hrad⟩)

theorem directional_cell_forces_residual
    {X : BinaryCellComplex}
    (M : MixedDirectionalSplittingField X)
    (h : M.HasDirectionalCell) :
    M.HasDirectionalResidual := by
  rcases h with ⟨c, hc⟩
  constructor
  · intro hrel
    have hcRel := hrel c
    cases hm : M.modeAtFace c <;>
      simp [LocalFlowMode.IsRelaxed, LocalFlowMode.IsDirectional, hm] at hc hcRel
  · intro hrad
    have hcRad := hrad c
    cases hm : M.modeAtFace c <;>
      simp [LocalFlowMode.IsRadial, LocalFlowMode.IsDirectional, hm] at hc hcRad

end MixedDirectionalSplittingField

/--
A directional flow with local mixed modes.

This extends the existing homology-preserving directional flow with an explicit
per-face mode field.
-/
structure MixedDirectionalBinaryCellFlow extends DirectionalBinaryCellFlow where
  mixedField :
    ∀ t : base.Time, MixedDirectionalSplittingField (base.complex t)

namespace MixedDirectionalBinaryCellFlow

def AllRelaxedAt
    (D : MixedDirectionalBinaryCellFlow)
    (t : D.base.Time) : Prop :=
  (D.mixedField t).AllRelaxed

def AllRadialAt
    (D : MixedDirectionalBinaryCellFlow)
    (t : D.base.Time) : Prop :=
  (D.mixedField t).AllRadial

def HasDirectionalResidualAt
    (D : MixedDirectionalBinaryCellFlow)
    (t : D.base.Time) : Prop :=
  (D.mixedField t).HasDirectionalResidual

theorem local_global_trichotomy
    (D : MixedDirectionalBinaryCellFlow)
    (t : D.base.Time) :
    D.AllRelaxedAt t ∨ D.AllRadialAt t ∨ D.HasDirectionalResidualAt t := by
  exact MixedDirectionalSplittingField.global_trichotomy (D.mixedField t)

/-- The homology-preserving invariant remains inherited from `DirectionalBinaryCellFlow`. -/
theorem total_defect_index_constant
    (D : MixedDirectionalBinaryCellFlow)
    (t s : D.base.Time) :
    (D.poincare_hopf t).defects.totalIndex =
      (D.poincare_hopf s).defects.totalIndex := by
  exact
    DirectionalBinaryCellFlow.total_defect_index_constant
      D.toDirectionalBinaryCellFlow t s

end MixedDirectionalBinaryCellFlow

end BinaryCellFlows

end

end DiscreteGeometry
end Rebuild
end Folder
```
