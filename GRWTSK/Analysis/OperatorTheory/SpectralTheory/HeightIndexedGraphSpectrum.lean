/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.AlgebraicGraphTheory.FiniteWeightedLaplacian
import Mathlib.LinearAlgebra.Eigenspace.Charpoly
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas

set_option autoImplicit false

noncomputable section

/-!
# Complete finite spectra for height-indexed graph Laplacians

This module records complete finite spectral data for a declared finite family
of graph Laplacians. Completeness is relative to that family and is certified
by both a characteristic-polynomial factorization and an exact description of
all values in the matrix spectrum.

Each spectral atom records algebraic multiplicity, an exact eigenspace
submodule, a nonzero eigenvector witness, and geometric multiplicity. Tensor
observations retain graph height, sandwich layer, operator identity, and
provenance.

No automatic diagonalization is attempted. No graph inclusion implies
spectral ordering. No graph height is identified with a zeta-zero coordinate.
No heat-semigroup, arithmetic cancellation, or compression theorem is proved.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

universe u v

namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.HeightIndexedGraphSpectrum

open Matrix Polynomial Module
open GRWTSK.GraphSandwichDiffusion
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.AlgebraicGraphTheory.FiniteWeightedLaplacian

variable {Vertex : Type u} [Fintype Vertex] [DecidableEq Vertex]

/-- The monic linear factor associated to a real spectral value. -/
def linearFactor (eigenvalue : ℝ) : Polynomial ℝ :=
  Polynomial.X - Polynomial.C eigenvalue

/-- One fully typed spectral observation for a fixed graph Laplacian. -/
structure SpectralAtom (operator : FiniteSimpleGraphOperator Vertex) where
  eigenvalue : ℝ
  algebraicMultiplicity : ℕ
  algebraicMultiplicity_pos : 0 < algebraicMultiplicity
  eigenspace : Submodule ℝ (Vertex → ℝ)
  eigenspace_spec : ∀ x : Vertex → ℝ,
    x ∈ eigenspace ↔
      operator.laplacian.mulVec x = eigenvalue • x
  nonzeroEigenvector : ∃ x : Vertex → ℝ,
    x ∈ eigenspace ∧ x ≠ 0
  geometricMultiplicity : ℕ
  geometricMultiplicity_eq :
    Module.finrank ℝ eigenspace = geometricMultiplicity

namespace SpectralAtom

/-- Polynomial factor contributed by one atom with its algebraic multiplicity. -/
def factor
    {operator : FiniteSimpleGraphOperator Vertex}
    (atom : SpectralAtom operator) : Polynomial ℝ :=
  (linearFactor atom.eigenvalue) ^ atom.algebraicMultiplicity

/-- Every recorded eigenspace contains a nonzero eigenvector satisfying the
exact matrix equation. -/
theorem exists_nonzero_eigenvector
    {operator : FiniteSimpleGraphOperator Vertex}
    (atom : SpectralAtom operator) :
    ∃ x : Vertex → ℝ,
      x ≠ 0 ∧
        operator.laplacian.mulVec x = atom.eigenvalue • x := by
  rcases atom.nonzeroEigenvector with ⟨x, member, nonzero⟩
  exact ⟨x, nonzero, (atom.eigenspace_spec x).1 member⟩

end SpectralAtom

/-- Product of the spectral factors in one declared finite list. -/
def characteristicProduct
    {operator : FiniteSimpleGraphOperator Vertex}
    (atoms : List (SpectralAtom operator)) : Polynomial ℝ :=
  atoms.foldr (fun atom product => atom.factor * product) 1

/-- Complete finite spectral data for one graph Laplacian. -/
structure FiniteSpectrumCertificate
    (operator : FiniteSimpleGraphOperator Vertex) where
  atoms : List (SpectralAtom operator)
  pairwiseDistinct :
    atoms.Pairwise
      (fun left right => left.eigenvalue ≠ right.eigenvalue)
  charpoly_eq :
    operator.laplacian.charpoly = characteristicProduct atoms
  totalAlgebraicMultiplicity :
    (atoms.map (fun atom => atom.algebraicMultiplicity)).sum =
      Fintype.card Vertex
  spectrum_iff : ∀ eigenvalue : ℝ,
    eigenvalue ∈ spectrum ℝ operator.laplacian ↔
      ∃ atom ∈ atoms, atom.eigenvalue = eigenvalue

namespace FiniteSpectrumCertificate

/-- Every listed atom is an actual spectral value. -/
theorem atom_mem_spectrum
    {operator : FiniteSimpleGraphOperator Vertex}
    (certificate : FiniteSpectrumCertificate operator)
    {atom : SpectralAtom operator}
    (member : atom ∈ certificate.atoms) :
    atom.eigenvalue ∈ spectrum ℝ operator.laplacian :=
  (certificate.spectrum_iff atom.eigenvalue).2
    ⟨atom, member, rfl⟩

/-- Every spectral value occurs in the declared atom list. -/
theorem exists_atom_of_mem_spectrum
    {operator : FiniteSimpleGraphOperator Vertex}
    (certificate : FiniteSpectrumCertificate operator)
    {eigenvalue : ℝ}
    (member : eigenvalue ∈ spectrum ℝ operator.laplacian) :
    ∃ atom ∈ certificate.atoms,
      atom.eigenvalue = eigenvalue :=
  (certificate.spectrum_iff eigenvalue).1 member

/-- For nonempty finite graphs, the zero Laplacian value appears in every
complete certificate. -/
theorem zero_represented
    [Nonempty Vertex]
    {operator : FiniteSimpleGraphOperator Vertex}
    (certificate : FiniteSpectrumCertificate operator) :
    ∃ atom ∈ certificate.atoms, atom.eigenvalue = 0 := by
  apply certificate.exists_atom_of_mem_spectrum
  exact operator.zero_mem_laplacian_spectrum

/-- The certificate exposes an exact eigenspace for every listed atom. -/
theorem eigenspace_available
    {operator : FiniteSimpleGraphOperator Vertex}
    (certificate : FiniteSpectrumCertificate operator)
    {atom : SpectralAtom operator}
    (member : atom ∈ certificate.atoms) :
    ∃ eigenspace : Submodule ℝ (Vertex → ℝ),
      (∀ x : Vertex → ℝ,
        x ∈ eigenspace ↔
          operator.laplacian.mulVec x = atom.eigenvalue • x) ∧
      Module.finrank ℝ eigenspace = atom.geometricMultiplicity := by
  exact ⟨atom.eigenspace, atom.eigenspace_spec,
    atom.geometricMultiplicity_eq⟩

end FiniteSpectrumCertificate

/-- Independent tensor row for display, search, and comparison. The exact
source graph and eigenspace remain available through the dependent certificate. -/
structure SpectralObservation where
  coordinate : OperatorCoordinate
  eigenvalue : ℝ
  algebraicMultiplicity : ℕ
  geometricMultiplicity : ℕ
  provenance : List SourceIdentity
  deriving Repr

/-- Convert one dependent atom to an independent tensor observation. -/
def SpectralAtom.toObservation
    {operator : FiniteSimpleGraphOperator Vertex}
    (atom : SpectralAtom operator) : SpectralObservation where
  coordinate := operator.coordinate
  eigenvalue := atom.eigenvalue
  algebraicMultiplicity := atom.algebraicMultiplicity
  geometricMultiplicity := atom.geometricMultiplicity
  provenance := operator.provenance

/-- Independent observation rows for one complete finite spectrum. -/
def FiniteSpectrumCertificate.observations
    {operator : FiniteSimpleGraphOperator Vertex}
    (certificate : FiniteSpectrumCertificate operator) :
    List SpectralObservation :=
  certificate.atoms.map SpectralAtom.toObservation

/-- A complete spectrum certificate for every operator in a declared finite
height-indexed family. -/
structure HeightIndexedSpectrumTensor
    (Index : Type v) (Vertex : Type u)
    [Fintype Index] [Fintype Vertex] [DecidableEq Vertex] where
  operators : HeightIndexedOperatorFamily Index Vertex
  spectrum : (index : Index) →
    FiniteSpectrumCertificate (operators.operator index)

namespace HeightIndexedSpectrumTensor

/-- Exact source graph for one tensor coordinate. -/
def sourceGraph
    {Index : Type v} [Fintype Index]
    (tensor : HeightIndexedSpectrumTensor Index Vertex)
    (index : Index) : SimpleGraph Vertex :=
  (tensor.operators.operator index).graph

/-- Every declared operator coordinate has a complete spectrum certificate. -/
theorem spectrum_covered
    {Index : Type v} [Fintype Index]
    (tensor : HeightIndexedSpectrumTensor Index Vertex)
    (index : Index) :
    ∃ certificate :
        FiniteSpectrumCertificate (tensor.operators.operator index),
      tensor.spectrum index = certificate :=
  ⟨tensor.spectrum index, rfl⟩

/-- Relative spectral completeness for one tensor coordinate. -/
theorem spectrum_iff_atom
    {Index : Type v} [Fintype Index]
    (tensor : HeightIndexedSpectrumTensor Index Vertex)
    (index : Index) (eigenvalue : ℝ) :
    eigenvalue ∈
        spectrum ℝ (tensor.operators.operator index).laplacian ↔
      ∃ atom ∈ (tensor.spectrum index).atoms,
        atom.eigenvalue = eigenvalue :=
  (tensor.spectrum index).spectrum_iff eigenvalue

/-- Independent rows at one graph-height/operator coordinate. -/
def observationsAt
    {Index : Type v} [Fintype Index]
    (tensor : HeightIndexedSpectrumTensor Index Vertex)
    (index : Index) : List SpectralObservation :=
  (tensor.spectrum index).observations

/-- Every observation row at an index retains the index's graph height, layer,
and operator name. -/
theorem observation_coordinate
    {Index : Type v} [Fintype Index]
    (tensor : HeightIndexedSpectrumTensor Index Vertex)
    (index : Index) {observation : SpectralObservation}
    (member : observation ∈ tensor.observationsAt index) :
    observation.coordinate =
      (tensor.operators.operator index).coordinate := by
  unfold observationsAt FiniteSpectrumCertificate.observations at member
  rcases List.mem_map.1 member with ⟨atom, _, rfl⟩
  rfl

end HeightIndexedSpectrumTensor

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.HeightIndexedGraphSpectrum
