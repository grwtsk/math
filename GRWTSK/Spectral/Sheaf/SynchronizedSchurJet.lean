/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.GraphTheory.RelationSandwich
import GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors
import GRWTSK.LinearAlgebra.Matrix.SchurFeshbachJet

set_option autoImplicit false

open scoped BigOperators Matrix

/-!
# Involution-synchronized Schur jets and graph descent

This file keeps the analytic Schur-jet certificate and its four symmetry labels synchronized.
Two commuting involution matrices act on every retained `P` component. The effective pencil
and every certified jet coefficient commute with both actions. An explicit four-block
determinant factorization then recovers the effective zero set sectorwise.

A graph sheaf stores rectangular restriction matrices between retained components. Every
restriction intertwines the effective pencils, every jet coefficient, and both involutions.
The same identities are proved for transport along arbitrary nonempty directed paths.

Differentiation is not reconstructed from samples here: the jet coefficients and their
intertwining identities are certificate data. A producer claiming that they are derivatives
must separately provide the analytic derivative and remainder certificate.
-/

namespace GRWTSK.Spectral.Sheaf.SynchronizedSchurJet

open GRWTSK.Combinatorics.GraphTheory.RelationSandwich
open GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors
open GRWTSK.LinearAlgebra.Matrix.SchurFeshbachJet

noncomputable section

/-- Two commuting involution matrices on a finite complex coordinate space. -/
structure MatrixInvolutions (ι : Type*) [Fintype ι] [DecidableEq ι] where
  sigma : Matrix ι ι ℂ
  tau : Matrix ι ι ℂ
  sigma_involutive : sigma * sigma = 1
  tau_involutive : tau * tau = 1
  commute : sigma * tau = tau * sigma

/-- Matrix commutation. -/
def Commutes {ι : Type*} [Fintype ι]
    (left right : Matrix ι ι ℂ) : Prop :=
  left * right = right * left

/-- A Schur jet whose effective matrix and every derivative coefficient preserve both
involution labels. -/
structure SynchronizedJet
    (ι : Type*) [Fintype ι] [DecidableEq ι]
    (order : ℕ) (jet : JetCertificate ι order) where
  actions : MatrixInvolutions ι
  effective_sigma : ∀ z, Commutes (jet.effective z) actions.sigma
  effective_tau : ∀ z, Commutes (jet.effective z) actions.tau
  coefficient_sigma : ∀ j, Commutes (jet.coefficient j) actions.sigma
  coefficient_tau : ∀ j, Commutes (jet.coefficient j) actions.tau

/-- Four explicit effective blocks and their exact determinant factorization. -/
structure SectorResolution
    (ι : Type*) [Fintype ι] [DecidableEq ι]
    (order : ℕ) (jet : JetCertificate ι order) where
  sectorDimension : Sector → ℕ
  sectorMatrix : ∀ sector, ℂ →
    Matrix (Fin (sectorDimension sector)) (Fin (sectorDimension sector)) ℂ
  determinant_factorization : ∀ z,
    (jet.effective z).det = ∏ sector, (sectorMatrix sector z).det

namespace SectorResolution

variable {ι : Type*} [Fintype ι] [DecidableEq ι]
  {order : ℕ} {jet : JetCertificate ι order}

/-- The effective determinant vanishes exactly when one synchronized sector block vanishes. -/
theorem determinant_eq_zero_iff_sector
    (resolution : SectorResolution ι order jet) (z : ℂ) :
    (jet.effective z).det = 0 ↔
      ∃ sector, (resolution.sectorMatrix sector z).det = 0 := by
  classical
  rw [resolution.determinant_factorization]
  constructor
  · intro h
    rw [Finset.prod_eq_zero_iff] at h
    rcases h with ⟨sector, _, hsector⟩
    exact ⟨sector, hsector⟩
  · rintro ⟨sector, hsector⟩
    exact Finset.prod_eq_zero (Finset.mem_univ sector) hsector

/-- Sectorwise recovery of the effective zero set. -/
theorem zeroSet_eq_iUnion
    (resolution : SectorResolution ι order jet) :
    {z | (jet.effective z).det = 0} =
      ⋃ sector, {z | (resolution.sectorMatrix sector z).det = 0} := by
  ext z
  simp [resolution.determinant_eq_zero_iff_sector z]

end SectorResolution

/-- A certified Schur jet together with synchronized involutions and four sector blocks. -/
structure ResolvedSchurJet
    {P Q : Type*}
    [Fintype P] [DecidableEq P]
    [Fintype Q] [DecidableEq Q]
    (pencil : BlockPencil ℂ P Q ℂ)
    (region : InvertibleRegion pencil)
    (order : ℕ) where
  certificate : CertifiedSchurJet pencil region order
  synchronization : SynchronizedJet P order certificate.jet
  sectors : SectorResolution P order certificate.jet

namespace ResolvedSchurJet

variable {P Q : Type*}
  [Fintype P] [DecidableEq P]
  [Fintype Q] [DecidableEq Q]
  {pencil : BlockPencil ℂ P Q ℂ}
  {region : InvertibleRegion pencil}
  {order : ℕ}

/-- The full block pencil is singular exactly when one synchronized effective sector is
singular. -/
theorem full_zero_iff_sector
    (resolved : ResolvedSchurJet pencil region order)
    (z : ℂ) (hz : z ∈ region.carrier) :
    (pencil.full z).det = 0 ↔
      ∃ sector, (resolved.sectors.sectorMatrix sector z).det = 0 := by
  rw [resolved.certificate.full_zero_iff_jet_zero z hz]
  exact resolved.sectors.determinant_eq_zero_iff_sector z

end ResolvedSchurJet

/-- A frequency-ordered graph sheaf of synchronized effective jets. -/
structure JetSheaf
    (Vertex : Type*) (P : Vertex → Type*) (order : ℕ)
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, Fintype (P vertex)]
    [∀ vertex, DecidableEq (P vertex)] where
  edge : EdgeRelation Vertex
  frequency : Vertex → ℚ
  ordered : OrderedBy frequency edge
  jet : ∀ vertex, JetCertificate (P vertex) order
  synchronized : ∀ vertex, SynchronizedJet (P vertex) order (jet vertex)
  resolution : ∀ vertex, SectorResolution (P vertex) order (jet vertex)
  restrict : ∀ {source target}, edge source target →
    Matrix (P target) (P source) ℂ
  effective_intertwines : ∀ {source target}
      (arrow : edge source target) (z : ℂ),
    restrict arrow * (jet source).effective z =
      (jet target).effective z * restrict arrow
  coefficient_intertwines : ∀ {source target}
      (arrow : edge source target) (j : Fin (order + 1)),
    restrict arrow * (jet source).coefficient j =
      (jet target).coefficient j * restrict arrow
  sigma_intertwines : ∀ {source target}
      (arrow : edge source target),
    restrict arrow * ((synchronized source).actions).sigma =
      ((synchronized target).actions).sigma * restrict arrow
  tau_intertwines : ∀ {source target}
      (arrow : edge source target),
    restrict arrow * ((synchronized source).actions).tau =
      ((synchronized target).actions).tau * restrict arrow

namespace JetSheaf

variable {Vertex : Type*} {P : Vertex → Type*} {order : ℕ}
  [Fintype Vertex] [DecidableEq Vertex]
  [∀ vertex, Fintype (P vertex)]
  [∀ vertex, DecidableEq (P vertex)]

/-- Matrix transport along a nonempty graph path. -/
def transport (sheaf : JetSheaf Vertex P order) :
    ∀ {source target}, Path sheaf.edge source target →
      Matrix (P target) (P source) ℂ
  | _, _, Path.single arrow => sheaf.restrict arrow
  | _, _, Path.tail path arrow => sheaf.restrict arrow * transport sheaf path

/-- Every graph path strictly increases the declared rational frequency. -/
theorem path_frequency_lt
    (sheaf : JetSheaf Vertex P order)
    {source target : Vertex} (path : Path sheaf.edge source target) :
    sheaf.frequency source < sheaf.frequency target :=
  Path.rank_lt sheaf.frequency sheaf.ordered path

/-- Effective pencils intertwine along an arbitrary descent path. -/
theorem transport_effective_intertwines
    (sheaf : JetSheaf Vertex P order)
    {source target : Vertex} (path : Path sheaf.edge source target)
    (z : ℂ) :
    sheaf.transport path * (sheaf.jet source).effective z =
      (sheaf.jet target).effective z * sheaf.transport path := by
  induction path with
  | single arrow =>
      simpa [transport] using sheaf.effective_intertwines arrow z
  | tail path arrow inductionHypothesis =>
      simp only [transport]
      rw [Matrix.mul_assoc, inductionHypothesis, ← Matrix.mul_assoc,
        sheaf.effective_intertwines arrow z, Matrix.mul_assoc]

/-- Every certified derivative coefficient intertwines along an arbitrary descent path. -/
theorem transport_coefficient_intertwines
    (sheaf : JetSheaf Vertex P order)
    {source target : Vertex} (path : Path sheaf.edge source target)
    (j : Fin (order + 1)) :
    sheaf.transport path * (sheaf.jet source).coefficient j =
      (sheaf.jet target).coefficient j * sheaf.transport path := by
  induction path with
  | single arrow =>
      simpa [transport] using sheaf.coefficient_intertwines arrow j
  | tail path arrow inductionHypothesis =>
      simp only [transport]
      rw [Matrix.mul_assoc, inductionHypothesis, ← Matrix.mul_assoc,
        sheaf.coefficient_intertwines arrow j, Matrix.mul_assoc]

/-- The first involution label is synchronized along an arbitrary descent path. -/
theorem transport_sigma_intertwines
    (sheaf : JetSheaf Vertex P order)
    {source target : Vertex} (path : Path sheaf.edge source target) :
    sheaf.transport path * ((sheaf.synchronized source).actions).sigma =
      ((sheaf.synchronized target).actions).sigma * sheaf.transport path := by
  induction path with
  | single arrow =>
      simpa [transport] using sheaf.sigma_intertwines arrow
  | tail path arrow inductionHypothesis =>
      simp only [transport]
      rw [Matrix.mul_assoc, inductionHypothesis, ← Matrix.mul_assoc,
        sheaf.sigma_intertwines arrow, Matrix.mul_assoc]

/-- The second involution label is synchronized along an arbitrary descent path. -/
theorem transport_tau_intertwines
    (sheaf : JetSheaf Vertex P order)
    {source target : Vertex} (path : Path sheaf.edge source target) :
    sheaf.transport path * ((sheaf.synchronized source).actions).tau =
      ((sheaf.synchronized target).actions).tau * sheaf.transport path := by
  induction path with
  | single arrow =>
      simpa [transport] using sheaf.tau_intertwines arrow
  | tail path arrow inductionHypothesis =>
      simp only [transport]
      rw [Matrix.mul_assoc, inductionHypothesis, ← Matrix.mul_assoc,
        sheaf.tau_intertwines arrow, Matrix.mul_assoc]

end JetSheaf

-- Retain the named edge witness in the sector-compatibility interface.
set_option linter.unusedVariables false in
/-- One parameter value carrying a compatible sector label and a sector singularity at every
vertex. The sheaf itself already certifies transport of the effective pencil and all jets. -/
structure CompatibleSectorZero
    {Vertex : Type*} {P : Vertex → Type*} {order : ℕ}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, Fintype (P vertex)]
    [∀ vertex, DecidableEq (P vertex)]
    (sheaf : JetSheaf Vertex P order) (z : ℂ) where
  sector : Vertex → Sector
  sector_edge : ∀ {source target} (arrow : sheaf.edge source target),
    sector source = sector target
  local_zero : ∀ vertex,
    ((sheaf.resolution vertex).sectorMatrix (sector vertex) z).det = 0

/-- Support of the globally synchronized Schur-jet zero data. -/
def globalSchurZeroSupport
    {Vertex : Type*} {P : Vertex → Type*} {order : ℕ}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, Fintype (P vertex)]
    [∀ vertex, DecidableEq (P vertex)]
    (sheaf : JetSheaf Vertex P order) : Set ℂ :=
  {z | Nonempty (CompatibleSectorZero sheaf z)}

/-- Compatible sectorwise singularity data glue by construction to the global support. -/
theorem glue
    {Vertex : Type*} {P : Vertex → Type*} {order : ℕ}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, Fintype (P vertex)]
    [∀ vertex, DecidableEq (P vertex)]
    {sheaf : JetSheaf Vertex P order} {z : ℂ}
    (data : CompatibleSectorZero sheaf z) :
    z ∈ globalSchurZeroSupport sheaf :=
  ⟨data⟩

end

end GRWTSK.Spectral.Sheaf.SynchronizedSchurJet
