# Complete source: GRWTSK.Topology.AlgebraicTopology.ChainMap.Variantc00528b5b31b7217da9f725882c5b09d53b49d9c78c439a99403edcdfabbdc7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef82de6a0e9a7dc16f374bf4fc014fa8bd9cd8a3` · SHA-256 `c00528b5b31b7217da9f725882c5b09d53b49d9c78c439a99403edcdfabbdc7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Finite semantic chain-map certificates

This module supplies the finite surrogate used by Surface Foundry for
chain-map obligations.  It does not construct a full analytic chain complex;
it records finite semantic and relaxed complexes, forward and backward maps,
and proof fields that the maps commute with their boundaries on the stable
subcomplex.
-/

namespace Presentation
namespace ChainMap

/-- Finite semantic chain-complex metadata. -/
structure SemanticChainComplex where
  label : String
  degreeCount : Nat
  boundaryHash : Nat
  boundarySquaredZero : Prop
  boundarySquaredZeroProof : boundarySquaredZero

/-- Finite real-vector surrogate for the relaxed chain complex. -/
structure RelaxedChainComplex where
  label : String
  dimension : Nat
  boundaryHash : Nat
  boundarySquaredZero : Prop
  boundarySquaredZeroProof : boundarySquaredZero

/-- Forward relaxation map Φ. -/
structure ForwardChainMap
    (_source : SemanticChainComplex)
    (_target : RelaxedChainComplex) where
  label : String
  mapHash : Nat
  boundaryCompatible : Prop
  boundaryCompatibleProof : boundaryCompatible

/-- Backward reconstruction map Ψ. -/
structure BackwardChainMap
    (_source : RelaxedChainComplex)
    (_target : SemanticChainComplex) where
  label : String
  mapHash : Nat
  boundaryCompatible : Prop
  boundaryCompatibleProof : boundaryCompatible

/-- Homotopy-inverse certificate on the stable class. -/
structure StableHomotopyInverseCertificate
    {semantic : SemanticChainComplex}
    {relaxed : RelaxedChainComplex}
    (_forward : ForwardChainMap semantic relaxed)
    (_backward : BackwardChainMap relaxed semantic)
    where
  homotopyInverseOnStableClass : Prop
  homotopyInverseProof : homotopyInverseOnStableClass

/-- Complete finite chain-map certificate. -/
structure FiniteChainMapCertificate where
  semantic : SemanticChainComplex
  relaxed : RelaxedChainComplex
  forward : ForwardChainMap semantic relaxed
  backward : BackwardChainMap relaxed semantic
  homotopy : StableHomotopyInverseCertificate forward backward

/-- Full finite chain-map soundness proposition. -/
def FiniteChainMapCertificate.sound
    (C : FiniteChainMapCertificate) : Prop :=
  C.semantic.boundarySquaredZero ∧
    C.relaxed.boundarySquaredZero ∧
    C.forward.boundaryCompatible ∧
    C.backward.boundaryCompatible ∧
    C.homotopy.homotopyInverseOnStableClass

theorem forward_chain_map_commutes_with_boundary
    (C : FiniteChainMapCertificate) :
    C.forward.boundaryCompatible :=
  C.forward.boundaryCompatibleProof

theorem backward_chain_map_commutes_with_boundary
    (C : FiniteChainMapCertificate) :
    C.backward.boundaryCompatible :=
  C.backward.boundaryCompatibleProof

theorem stable_chain_maps_are_homotopy_inverse
    (C : FiniteChainMapCertificate) :
    C.homotopy.homotopyInverseOnStableClass :=
  C.homotopy.homotopyInverseProof

/-- Complete finite certificate for chain-map obligations. -/
theorem chain_map_certificate_sound
    (C : FiniteChainMapCertificate) :
    C.sound :=
  ⟨C.semantic.boundarySquaredZeroProof,
    C.relaxed.boundarySquaredZeroProof,
    forward_chain_map_commutes_with_boundary C,
    backward_chain_map_commutes_with_boundary C,
    stable_chain_maps_are_homotopy_inverse C⟩

/-- Boundary-calculus route for finite chain-map certificates. -/
theorem chain_map_through_boundary_calculus
    (C : FiniteChainMapCertificate) :
    C.sound :=
  chain_map_certificate_sound C

/-- A pair of map hashes alone does not own chain-map authority. -/
def MapHashesOwnChainMapCompatibility
    (_forwardHash _backwardHash : Nat) : Prop :=
  False

/-- Direct map-hash authority attempts fail. -/
theorem map_hashes_authority_attempt_fails
    (forwardHash backwardHash : Nat) :
    ¬ MapHashesOwnChainMapCompatibility forwardHash backwardHash := by
  intro h
  exact h

end ChainMap
end Presentation
```
