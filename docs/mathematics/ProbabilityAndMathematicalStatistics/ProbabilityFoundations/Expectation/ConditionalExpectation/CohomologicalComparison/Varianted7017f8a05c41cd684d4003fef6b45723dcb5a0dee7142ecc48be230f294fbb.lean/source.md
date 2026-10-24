# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.CohomologicalComparison.Varianted7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84c77d34cb68961611dc54cefae1bb0eb77bdf1a` · SHA-256 `ed7017f8a05c41cd684d4003fef6b45723dcb5a0dee7142ecc48be230f294fbb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.Cohomology
import AnalyticNumber.Certificate
import Authority.BoundaryCalculus

/-!
# Analytic cohomological comparison authority

This file provides the certificate-gated cohomological comparison layer above
`Number.Cohomology`.

Finite cohomology shadows — ranks, torsion flags, Frobenius traces, finite
filtrations, barcode data, and comparison-map hashes — live in `Number`. The
comparison claims among prismatic, crystalline, de Rham, étale, Hodge–Tate,
Betti, and motivic cohomology — theory construction, comparison maps,
comparison isomorphisms, and the named comparison theorems — are usable only
through explicit authority records, and each authority record converts into a
generic `AnalyticCertificate` routed by `Authority.BoundaryKind`.

A comparison isomorphism enters only as a certificate: the isomorphism
authority carries its comparison-map authority as an explicit field, and the
specialized comparison authorities wrap the isomorphism authority again.

No comparison theorem is proved here, and the existing prismatic authority
declarations are unchanged.
-/

namespace AnalyticNumber
namespace CohomologicalComparison

/-- Formal cohomology theory symbol. -/
structure CohomologyTheorySymbol where
  theory : _root_.Number.Cohomology.CohomologyTheoryLabel
  label : String
  theoryHash : Nat

/-- Formal cohomology object symbol. -/
structure CohomologyObjectSymbol where
  objectLabel : String
  objectHash : Nat
  baseLabel : String
  baseHash : Nat

/-- Formal cohomology group symbol. -/
structure CohomologyGroupSymbol where
  theory : CohomologyTheorySymbol
  object : CohomologyObjectSymbol
  degree : Nat
  groupLabel : String
  groupHash : Nat

/-- Formal comparison map symbol. -/
structure ComparisonMapSymbol where
  source : CohomologyGroupSymbol
  target : CohomologyGroupSymbol
  mapLabel : String
  mapHash : Nat

/-- Formal comparison isomorphism symbol. -/
structure ComparisonIsomorphismSymbol where
  source : CohomologyGroupSymbol
  target : CohomologyGroupSymbol
  forwardMapHash : Nat
  inverseMapHash : Nat
  isomorphismLabel : String

/-- Named family of a comparison. -/
inductive ComparisonFamily where
  | prismaticToCrystalline
  | prismaticToDeRham
  | prismaticToEtale
  | prismaticToHodgeTate
  | deRhamToBetti
  | bettiToEtale
  | crystallineToDeRham
  | motivicRealization
  | custom : String → ComparisonFamily
deriving Repr, DecidableEq

/--
Authority for the construction of a cohomology theory on a group symbol.

Theory construction is kept separate from finite shadows: a shadow never
constructs the theory.
-/
structure CohomologyTheoryAuthority where
  group : CohomologyGroupSymbol
  theoryConstructed : Prop
  theoryConstructedProof : theoryConstructed
  functorialitySound : Prop
  functorialityProof : functorialitySound

/-- Authority for a comparison map. -/
structure ComparisonMapAuthority where
  family : ComparisonFamily
  map : ComparisonMapSymbol
  sourceTheoryConstructed : Prop
  sourceTheoryConstructedProof : sourceTheoryConstructed
  targetTheoryConstructed : Prop
  targetTheoryConstructedProof : targetTheoryConstructed
  mapConstructed : Prop
  mapConstructedProof : mapConstructed
  mapFunctorialSound : Prop
  mapFunctorialProof : mapFunctorialSound

/--
Authority for a comparison isomorphism.

The isomorphism authority carries its comparison-map authority as an explicit
field: an isomorphism claim presupposes the map claim.
-/
structure ComparisonIsomorphismAuthority where
  family : ComparisonFamily
  iso : ComparisonIsomorphismSymbol
  comparisonMapAuthority : ComparisonMapAuthority
  inverseConstructed : Prop
  inverseConstructedProof : inverseConstructed
  leftInverseSound : Prop
  leftInverseProof : leftInverseSound
  rightInverseSound : Prop
  rightInverseProof : rightInverseSound
  isomorphismSound : Prop
  isomorphismProof : isomorphismSound

/-- Authority for the prismatic comparison, including site construction. -/
structure PrismaticComparisonAuthority where
  comparison : ComparisonIsomorphismAuthority
  prismaticSiteConstructed : Prop
  prismaticSiteConstructedProof : prismaticSiteConstructed
  comparisonSound : Prop
  comparisonProof : comparisonSound

/-- Authority for the crystalline comparison. -/
structure CrystallineComparisonAuthority where
  comparison : ComparisonIsomorphismAuthority
  crystallineComparisonSound : Prop
  crystallineComparisonProof : crystallineComparisonSound

/-- Authority for the de Rham comparison. -/
structure DeRhamComparisonAuthority where
  comparison : ComparisonIsomorphismAuthority
  deRhamComparisonSound : Prop
  deRhamComparisonProof : deRhamComparisonSound

/-- Authority for the étale comparison. -/
structure EtaleComparisonAuthority where
  comparison : ComparisonIsomorphismAuthority
  etaleComparisonSound : Prop
  etaleComparisonProof : etaleComparisonSound

/-- Authority for the Hodge–Tate comparison. -/
structure HodgeTateComparisonAuthority where
  comparison : ComparisonIsomorphismAuthority
  hodgeTateComparisonSound : Prop
  hodgeTateComparisonProof : hodgeTateComparisonSound

/-- Authority for the Betti comparison. -/
structure BettiComparisonAuthority where
  comparison : ComparisonIsomorphismAuthority
  bettiComparisonSound : Prop
  bettiComparisonProof : bettiComparisonSound

/-- Authority for the motivic comparison. -/
structure MotivicComparisonAuthority where
  comparison : ComparisonIsomorphismAuthority
  motivicComparisonSound : Prop
  motivicComparisonProof : motivicComparisonSound

theorem cohomology_theory_authorized
    (A : CohomologyTheoryAuthority) :
    A.theoryConstructed ∧ A.functorialitySound :=
  ⟨A.theoryConstructedProof, A.functorialityProof⟩

theorem comparison_map_authorized
    (A : ComparisonMapAuthority) :
    A.sourceTheoryConstructed ∧
      A.targetTheoryConstructed ∧
      A.mapConstructed ∧
      A.mapFunctorialSound :=
  ⟨A.sourceTheoryConstructedProof,
    A.targetTheoryConstructedProof,
    A.mapConstructedProof,
    A.mapFunctorialProof⟩

theorem comparison_isomorphism_authorized
    (A : ComparisonIsomorphismAuthority) :
    A.inverseConstructed ∧
      A.leftInverseSound ∧
      A.rightInverseSound ∧
      A.isomorphismSound :=
  ⟨A.inverseConstructedProof,
    A.leftInverseProof,
    A.rightInverseProof,
    A.isomorphismProof⟩

theorem prismatic_comparison_authorized
    (A : PrismaticComparisonAuthority) :
    A.prismaticSiteConstructed ∧ A.comparisonSound :=
  ⟨A.prismaticSiteConstructedProof, A.comparisonProof⟩

/--
The full authority gate required before a prismatic comparison may be used.

This exposes the nested obligations rather than letting a finite shadow, symbol,
or label stand in for them.
-/
theorem prismatic_comparison_authority_gate_sound
    (A : PrismaticComparisonAuthority) :
    A.prismaticSiteConstructed ∧
      A.comparisonSound ∧
      A.comparison.isomorphismSound ∧
      A.comparison.comparisonMapAuthority.mapConstructed ∧
      A.comparison.comparisonMapAuthority.sourceTheoryConstructed ∧
      A.comparison.comparisonMapAuthority.targetTheoryConstructed :=
  ⟨A.prismaticSiteConstructedProof,
    A.comparisonProof,
    A.comparison.isomorphismProof,
    A.comparison.comparisonMapAuthority.mapConstructedProof,
    A.comparison.comparisonMapAuthority.sourceTheoryConstructedProof,
    A.comparison.comparisonMapAuthority.targetTheoryConstructedProof⟩

theorem crystalline_comparison_authorized
    (A : CrystallineComparisonAuthority) :
    A.crystallineComparisonSound :=
  A.crystallineComparisonProof

theorem de_rham_comparison_authorized
    (A : DeRhamComparisonAuthority) :
    A.deRhamComparisonSound :=
  A.deRhamComparisonProof

theorem etale_comparison_authorized
    (A : EtaleComparisonAuthority) :
    A.etaleComparisonSound :=
  A.etaleComparisonProof

theorem hodge_tate_comparison_authorized
    (A : HodgeTateComparisonAuthority) :
    A.hodgeTateComparisonSound :=
  A.hodgeTateComparisonProof

theorem betti_comparison_authorized
    (A : BettiComparisonAuthority) :
    A.bettiComparisonSound :=
  A.bettiComparisonProof

theorem motivic_comparison_authorized
    (A : MotivicComparisonAuthority) :
    A.motivicComparisonSound :=
  A.motivicComparisonProof

/-- A cohomology group symbol alone does not own theory construction. -/
def CohomologyGroupSymbolOwnsTheoryConstruction
    (_G : CohomologyGroupSymbol) : Prop :=
  False

/-- A cohomology group symbol alone does not own a comparison map. -/
def CohomologyGroupSymbolOwnsComparisonMap
    (_G : CohomologyGroupSymbol) : Prop :=
  False

/-- A cohomology group symbol alone does not own a comparison isomorphism. -/
def CohomologyGroupSymbolOwnsComparisonIsomorphism
    (_G : CohomologyGroupSymbol) : Prop :=
  False

/-- A comparison map symbol alone does not own an isomorphism. -/
def ComparisonMapSymbolOwnsIsomorphism
    (_M : ComparisonMapSymbol) : Prop :=
  False

/-- A comparison isomorphism symbol alone does not own a comparison theorem. -/
def ComparisonIsomorphismSymbolOwnsComparisonTheorem
    (_I : ComparisonIsomorphismSymbol) : Prop :=
  False

theorem cohomology_group_symbol_not_theory_construction_authority
    (G : CohomologyGroupSymbol) :
    ¬ CohomologyGroupSymbolOwnsTheoryConstruction G := by
  intro h
  exact h

theorem cohomology_group_symbol_not_comparison_map_authority
    (G : CohomologyGroupSymbol) :
    ¬ CohomologyGroupSymbolOwnsComparisonMap G := by
  intro h
  exact h

theorem cohomology_group_symbol_not_comparison_isomorphism_authority
    (G : CohomologyGroupSymbol) :
    ¬ CohomologyGroupSymbolOwnsComparisonIsomorphism G := by
  intro h
  exact h

theorem comparison_map_symbol_not_isomorphism_authority
    (M : ComparisonMapSymbol) :
    ¬ ComparisonMapSymbolOwnsIsomorphism M := by
  intro h
  exact h

theorem comparison_isomorphism_symbol_not_comparison_theorem_authority
    (I : ComparisonIsomorphismSymbol) :
    ¬ ComparisonIsomorphismSymbolOwnsComparisonTheorem I := by
  intro h
  exact h

/--
Boundary summary for the formal cohomological comparison symbol layer.

Formal group, map, and isomorphism symbols own none of the comparison
boundary claims.
-/
theorem cohomological_comparison_symbol_boundary_summary
    (G : CohomologyGroupSymbol)
    (M : ComparisonMapSymbol)
    (I : ComparisonIsomorphismSymbol) :
    ¬ CohomologyGroupSymbolOwnsTheoryConstruction G ∧
      ¬ CohomologyGroupSymbolOwnsComparisonMap G ∧
      ¬ CohomologyGroupSymbolOwnsComparisonIsomorphism G ∧
      ¬ ComparisonMapSymbolOwnsIsomorphism M ∧
      ¬ ComparisonIsomorphismSymbolOwnsComparisonTheorem I :=
  ⟨cohomology_group_symbol_not_theory_construction_authority G,
    cohomology_group_symbol_not_comparison_map_authority G,
    cohomology_group_symbol_not_comparison_isomorphism_authority G,
    comparison_map_symbol_not_isomorphism_authority M,
    comparison_isomorphism_symbol_not_comparison_theorem_authority I⟩

/-- Convert a cohomology theory authority into an analytic certificate. -/
def cohomologyTheoryCertificate
    (A : CohomologyTheoryAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.cohomologicalComparison
  label := "cohomology theory construction certificate"
  publicHash := 0
  sound := A.theoryConstructed ∧ A.functorialitySound
  soundProof := cohomology_theory_authorized A

/-- Convert a comparison map authority into an analytic certificate. -/
def comparisonMapCertificate
    (A : ComparisonMapAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.cohomologicalComparison
  label := "cohomological comparison map certificate"
  publicHash := 0
  sound :=
    A.sourceTheoryConstructed ∧
      A.targetTheoryConstructed ∧
      A.mapConstructed ∧
      A.mapFunctorialSound
  soundProof := comparison_map_authorized A

/-- Convert a comparison isomorphism authority into an analytic certificate. -/
def comparisonIsomorphismCertificate
    (A : ComparisonIsomorphismAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.comparisonIsomorphism
  label := "cohomological comparison isomorphism certificate"
  publicHash := 0
  sound :=
    A.inverseConstructed ∧
      A.leftInverseSound ∧
      A.rightInverseSound ∧
      A.isomorphismSound
  soundProof := comparison_isomorphism_authorized A

/-- Convert a prismatic comparison authority into an analytic certificate. -/
def prismaticComparisonCertificate
    (A : PrismaticComparisonAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.prismaticComparison
  label := "prismatic comparison certificate"
  publicHash := 0
  sound := A.prismaticSiteConstructed ∧ A.comparisonSound
  soundProof := prismatic_comparison_authorized A

/-- The only conversion from prismatic-comparison authority to certificate. -/
theorem prismatic_comparison_certificate_sound
    (A : PrismaticComparisonAuthority) :
    (prismaticComparisonCertificate A).sound :=
  (prismaticComparisonCertificate A).soundProof

/-- A finite cohomology shadow may not route directly to a prismatic theorem. -/
def FiniteShadowRoutesDirectlyToPrismaticTheorem
    (_S : _root_.Number.Cohomology.FiniteCohomologyShadow) : Prop :=
  False

/-- Direct finite-shadow to prismatic-theorem routes are rejected. -/
theorem finite_shadow_direct_prismatic_route_rejected
    (S : _root_.Number.Cohomology.FiniteCohomologyShadow) :
    ¬ FiniteShadowRoutesDirectlyToPrismaticTheorem S := by
  intro h
  exact h

/-- Convert a crystalline comparison authority into an analytic certificate. -/
def crystallineComparisonCertificate
    (A : CrystallineComparisonAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.crystallineComparison
  label := "crystalline comparison certificate"
  publicHash := 0
  sound := A.crystallineComparisonSound
  soundProof := crystalline_comparison_authorized A

/-- Convert a de Rham comparison authority into an analytic certificate. -/
def deRhamComparisonCertificate
    (A : DeRhamComparisonAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.deRhamComparison
  label := "de Rham comparison certificate"
  publicHash := 0
  sound := A.deRhamComparisonSound
  soundProof := de_rham_comparison_authorized A

/-- Convert an étale comparison authority into an analytic certificate. -/
def etaleComparisonCertificate
    (A : EtaleComparisonAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.etaleComparison
  label := "étale comparison certificate"
  publicHash := 0
  sound := A.etaleComparisonSound
  soundProof := etale_comparison_authorized A

/-- Convert a Hodge–Tate comparison authority into an analytic certificate. -/
def hodgeTateComparisonCertificate
    (A : HodgeTateComparisonAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.hodgeTateComparison
  label := "Hodge–Tate comparison certificate"
  publicHash := 0
  sound := A.hodgeTateComparisonSound
  soundProof := hodge_tate_comparison_authorized A

/-- Convert a Betti comparison authority into an analytic certificate. -/
def bettiComparisonCertificate
    (A : BettiComparisonAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.bettiComparison
  label := "Betti comparison certificate"
  publicHash := 0
  sound := A.bettiComparisonSound
  soundProof := betti_comparison_authorized A

/-- Convert a motivic comparison authority into an analytic certificate. -/
def motivicComparisonCertificate
    (A : MotivicComparisonAuthority) :
    AnalyticCertificate where
  kind := Authority.BoundaryKind.motivicComparison
  label := "motivic comparison certificate"
  publicHash := 0
  sound := A.motivicComparisonSound
  soundProof := motivic_comparison_authorized A

end CohomologicalComparison
end AnalyticNumber
```
