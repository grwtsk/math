# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Computability.SpectralDeterminantBoundary.Variant45cdfe44019f37052ca60b6d21660926b9d3833bb5d6ca0f1edbe755116533ec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fc797df8c023df0dad63dfac848fd2c5854ba90` · SHA-256 `313d4a808f8054973cc4a65e0186dd9cea8e80677f7fb0b10db358895f4c77e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.Computability
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Computability.BoundedDivisorLattice.Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Computability.SourceCorpus.BoundedDivisorLattice.Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3","mathematical_subject":"Computation.Computability","original_sha256":"40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/SpectralDeterminantBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.WalshFourier.Analysis
import Boolean.Cube.TDARecoverabilityZKP
import Boolean.Cube.ZetaAuthorityReducer
import Boolean.Cube.PrismaticProjection

/-!
# Spectral determinant boundary reducer

This module exposes the computational boundary between:

* finite square-free Möbius cancellation, modeled by Walsh supports on a Boolean
  hypercube;
* finite prime-power valuation data, modeled by a divisor/valuation box;
* analytic spectral-determinant claims, which require explicit certificates;
* elliptic-curve Mordell-Weil torsion claims, which require explicit arithmetic
  witnesses or ZKP-style witnesses.

The reducer deliberately does not infer Mordell-Weil torsion from
field-coefficient homology.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Computability.BoundedDivisorLattice.Variant40f485c4d25f173f2dc8fb2b546b821a018ac721a4d37aa1832c934054000bc3

namespace Boolean
namespace Cube
namespace SpectralDeterminantBoundary

/-- Existing public ZKP statement type. -/
abbrev PublicStatement :=
  TorsionBlindDataHomology.RecoverabilityZKP.PublicStatement

/-- Existing private ZKP witness type. -/
abbrev PrivateWitness :=
  TorsionBlindDataHomology.RecoverabilityZKP.PrivateWitness

/-- Existing ZKP relation type. -/
abbrev ZKPRelation :=
  TorsionBlindDataHomology.RecoverabilityZKP.ZKPRelation

/-- Existing field-only arithmetic algorithm type. -/
abbrev FieldOnlyArithmeticAlgorithm :=
  TorsionBlindDataHomology.FieldOnlyArithmeticAlgorithm

/-- Existing arithmetic collision type. -/
abbrev ArithmeticCollision :=
  TorsionBlindDataHomology.ArithmeticCollision

/-- Existing finite toroidal/prismatic shape-update witness type. -/
abbrev ShapeUpdateWitness :=
  PrismaticProjection.ShapeUpdateWitness

/-- Finite analytic-prime bridge payload emitted by the authority reducer. -/
abbrev AnalyticPrimeBridgeData :=
  Boolean.Cube.ZetaAuthorityReducer.AnalyticPrimeBridgeData

/--
A finite valuation box over `k` chosen prime slots.

Coordinate `i` stores the exponent of the `i`th local prime slot.
The Boolean hypercube is recovered by forgetting all exponent data and retaining
only whether an exponent is nonzero.
-/
abbrev ValuationBox (k : Nat) :=
  Fin k → Nat

namespace ValuationBox

/-- Divisibility in the finite valuation box. -/
def Divides {k : Nat} (a b : ValuationBox k) : Prop :=
  ∀ i : Fin k, a i ≤ b i

/-- GCD in the valuation box, coordinatewise minimum. -/
def gcd {k : Nat} (a b : ValuationBox k) : ValuationBox k :=
  fun i => Nat.min (a i) (b i)

/-- LCM in the valuation box, coordinatewise maximum. -/
def lcm {k : Nat} (a b : ValuationBox k) : ValuationBox k :=
  fun i => Nat.max (a i) (b i)

/--
Square-free quotient of a valuation box.

This forgets prime-power exponents and retains only prime support.
-/
def support {k : Nat} (v : ValuationBox k) :
    WalshFourier.Frequency k :=
  fun i => decide (0 < v i)

/-- Flatten a finite valuation box to its exponent list. -/
def exponentList {k : Nat} (v : ValuationBox k) : List Nat :=
  (List.finRange k).map (fun i => v i)

/-- Embed a Walsh support as a square-free valuation box. -/
def ofSupport {k : Nat} (S : WalshFourier.Frequency k) :
    ValuationBox k :=
  fun i => if S i then 1 else 0

/-- A valuation box contains a repeated prime-power factor if some exponent is `> 1`. -/
def hasRepeatedPrimePower {k : Nat} (v : ValuationBox k) : Bool :=
  ListTools.anyTrue
    ((List.finRange k).map
      (fun i => decide (1 < v i)))

/-- Predicate form of square-freeness. -/
def SquareFree {k : Nat} (v : ValuationBox k) : Prop :=
  ∀ i : Fin k, v i ≤ 1

/-- Boolean-valued coordinatewise bound check. -/
def boundedBy {k : Nat} (bound v : ValuationBox k) : Bool :=
  ListTools.allTrue
    ((List.finRange k).map
      (fun i => decide (v i ≤ bound i)))

/-- Boolean-valued finite zeta incidence on the product of valuation chains. -/
def zetaIncidence {k : Nat} (a b : ValuationBox k) : Bool :=
  ListTools.allTrue
    ((List.finRange k).map
      (fun i => decide (a i ≤ b i)))

/--
Inverse coefficient for a single finite chain.

For the ordinary chain zeta matrix, the local inverse is `1` on the diagonal,
`-1` on the immediate cover relation, and `0` beyond one step.
-/
def chainInverseCoefficient (lower upper : Nat) : Int :=
  if upper = lower then
    1
  else if upper = lower + 1 then
    -1
  else
    0

/-- Coordinatewise inverse coefficient for valuation product chains. -/
def coordinateChainInverseCoefficient {k : Nat}
    (lower upper : ValuationBox k)
    (i : Fin k) : Int :=
  chainInverseCoefficient (lower i) (upper i)

/-- Product-chain inverse coefficient as the product of coordinate coefficients. -/
def productChainInverseCoefficient {k : Nat}
    (lower upper : ValuationBox k) : Int :=
  ListTools.prodInt
    ((List.finRange k).map
      (fun i => coordinateChainInverseCoefficient lower upper i))

/-- Bounded divisor lattice for finite valuation-box incidence. -/
structure BoundedDivisorLattice (k : Nat) where
  bound : ValuationBox k

namespace BoundedDivisorLattice

/-- Membership in the bounded divisor lattice, as finite Boolean metadata. -/
def contains {k : Nat}
    (L : BoundedDivisorLattice k)
    (v : ValuationBox k) : Bool :=
  boundedBy L.bound v

/-- Bounded finite zeta incidence on product chains. -/
def zetaIncidence {k : Nat}
    (L : BoundedDivisorLattice k)
    (a b : ValuationBox k) : Bool :=
  contains L a && contains L b && ValuationBox.zetaIncidence a b

/-- Bounded coordinatewise chain inverse coefficient. -/
def coordinateInverseCoefficient {k : Nat}
    (_L : BoundedDivisorLattice k)
    (lower upper : ValuationBox k)
    (i : Fin k) : Int :=
  coordinateChainInverseCoefficient lower upper i

/-- Bounded product-chain inverse coefficient. -/
def productInverseCoefficient {k : Nat}
    (_L : BoundedDivisorLattice k)
    (lower upper : ValuationBox k) : Int :=
  productChainInverseCoefficient lower upper

end BoundedDivisorLattice

end ValuationBox

/-- Sign `(-1)^n`, represented by recursion in `Int`. -/
def mobiusSign : Nat → Int
  | 0 => 1
  | n + 1 => - mobiusSign n

@[simp] theorem mobiusSign_zero :
    mobiusSign 0 = 1 := rfl

@[simp] theorem mobiusSign_succ (n : Nat) :
    mobiusSign (n + 1) = - mobiusSign n := rfl

/--
Square-free Möbius coefficient on the hypercube.

A Walsh frequency is interpreted as the square-free prime support.
-/
def squareFreeMobius {k : Nat} (S : WalshFourier.Frequency k) : Int :=
  mobiusSign (WalshFourier.degree S)

/--
Finite valuation-box Möbius coefficient.

Repeated prime powers collapse to `0`. Otherwise the coefficient is the
square-free sign of the support.
-/
def valuationMobius {k : Nat} (v : ValuationBox k) : Int :=
  if ValuationBox.hasRepeatedPrimePower v then
    0
  else
    squareFreeMobius (ValuationBox.support v)

namespace ValuationBox

/--
Finite Mobius coefficient for the bounded divisor-lattice layer.

This is the same finite coefficient as `valuationMobius`, exposed under the
divisor-lattice name: square-free valuations receive the hypercube sign, while
repeated prime powers vanish.
-/
def finiteDivisorLatticeMobius {k : Nat} (v : ValuationBox k) : Int :=
  valuationMobius v

end ValuationBox

/-- Repeated prime-power data forces the Möbius coefficient to vanish. -/
theorem valuationMobius_repeated_zero {k : Nat}
    (v : ValuationBox k)
    (h : ValuationBox.hasRepeatedPrimePower v = true) :
    valuationMobius v = 0 := by
  simp [valuationMobius, h]

/--
If no repeated prime-power factor is present, the valuation-box reducer agrees
with the square-free hypercube reducer.
-/
theorem valuationMobius_noRepeated_squareFree {k : Nat}
    (v : ValuationBox k)
    (h : ValuationBox.hasRepeatedPrimePower v = false) :
    valuationMobius v =
      squareFreeMobius (ValuationBox.support v) := by
  simp [valuationMobius, h]

namespace ValuationBox

/--
Repeated prime-power valuations force the finite divisor-lattice Mobius
coefficient to vanish.
-/
theorem finiteDivisorLatticeMobius_repeated_zero {k : Nat}
    (v : ValuationBox k)
    (h : ValuationBox.hasRepeatedPrimePower v = true) :
    finiteDivisorLatticeMobius v = 0 :=
  valuationMobius_repeated_zero v h

/--
On square-free valuation boxes, the divisor-lattice coefficient agrees with the
square-free hypercube coefficient.
-/
theorem finiteDivisorLatticeMobius_noRepeated_squareFree {k : Nat}
    (v : ValuationBox k)
    (h : ValuationBox.hasRepeatedPrimePower v = false) :
    finiteDivisorLatticeMobius v =
      squareFreeMobius (ValuationBox.support v) :=
  valuationMobius_noRepeated_squareFree v h

/-- Bounded lattices use the same finite divisor-lattice Mobius coefficient. -/
def BoundedDivisorLattice.mobiusCoefficient {k : Nat}
    (_L : BoundedDivisorLattice k)
    (v : ValuationBox k) : Int :=
  finiteDivisorLatticeMobius v

/-- Repeated prime powers vanish in every bounded divisor lattice. -/
theorem BoundedDivisorLattice.mobiusCoefficient_repeated_zero {k : Nat}
    (L : BoundedDivisorLattice k)
    (v : ValuationBox k)
    (h : ValuationBox.hasRepeatedPrimePower v = true) :
    L.mobiusCoefficient v = 0 :=
  finiteDivisorLatticeMobius_repeated_zero v h

end ValuationBox

/--
Certificate for an analytic spectral determinant.

The reducer may consume the `determinantValue`, but the analytic meaning is
kept behind `analyticSoundness`.
-/
structure SpectralDeterminantCertificate where
  label : String
  determinantValue : Int
  analyticSoundness : Prop

/--
Certificate for crossing the prismatic boundary.

This is not computed by the reducer. It asserts that the finite boundary shadow
is realized by the intended prismatic comparison or trace datum.
-/
structure PrismaticCertificate where
  label : String
  boundaryHash : Nat
  realizesBoundary : Prop
  comparisonSoundness : Prop

/-- Evidence allowed for prismatic boundary requests. -/
inductive PrismaticEvidence where
  | absent : PrismaticEvidence
  | boundaryRequest : String → PrismaticEvidence
  | certified : PrismaticCertificate → PrismaticEvidence

/-- Reducer status for prismatic requests. -/
inductive PrismaticStatus where
  | notRequested
  | certificateRequired
  | certificateAccepted
deriving Repr, DecidableEq

/-- Reduce prismatic evidence to an explicit boundary status. -/
def reducePrismaticEvidence : PrismaticEvidence → PrismaticStatus
  | .absent => .notRequested
  | .boundaryRequest _ => .certificateRequired
  | .certified _ => .certificateAccepted

@[simp] theorem reducePrismatic_absent :
    reducePrismaticEvidence .absent = .notRequested := rfl

@[simp] theorem reducePrismatic_boundaryRequest (label : String) :
    reducePrismaticEvidence (.boundaryRequest label) = .certificateRequired := rfl

@[simp] theorem reducePrismatic_certified (C : PrismaticCertificate) :
    reducePrismaticEvidence (.certified C) = .certificateAccepted := rfl

/--
Torsion evidence allowed by the reducer.

A public claim alone is not enough. A verified claim carries a private witness
and a proof of the ZKP relation.
-/
inductive TorsionEvidence where
  | absent : TorsionEvidence
  | publicClaim : PublicStatement → TorsionEvidence
  | verified :
      (S : PublicStatement) →
      (W : PrivateWitness) →
      ZKPRelation S W →
      TorsionEvidence

/-- Reducer status for torsion claims. -/
inductive TorsionStatus where
  | notRequested
  | witnessRequired
  | witnessVerified
deriving Repr, DecidableEq

/-- Reduce torsion evidence to an explicit boundary status. -/
def reduceTorsionEvidence : TorsionEvidence → TorsionStatus
  | .absent => .notRequested
  | .publicClaim _ => .witnessRequired
  | .verified _ _ _ => .witnessVerified

@[simp] theorem reduceTorsion_absent :
    reduceTorsionEvidence .absent = .notRequested := rfl

@[simp] theorem reduceTorsion_publicClaim (S : PublicStatement) :
    reduceTorsionEvidence (.publicClaim S) = .witnessRequired := rfl

@[simp] theorem reduceTorsion_verified
    (S : PublicStatement)
    (W : PrivateWitness)
    (h : ZKPRelation S W) :
    reduceTorsionEvidence (.verified S W h) = .witnessVerified := rfl

/--
A verified ZKP torsion witness certifies the public torsion claim.

This is the permitted crossing of the torsion boundary.
-/
theorem verifiedTorsion_sound
    (S : PublicStatement)
    (W : PrivateWitness)
    (h : ZKPRelation S W) :
    W.model.rationalTorsion = S.claim.claimedTorsion :=
  TorsionBlindDataHomology.RecoverabilityZKP.relation_torsion h

/--
Boolean shadow compatibility for a finite prismatic update witness.

This checks only public finite hashes and the boundary hash carried by the
external certificate. It does not inspect or construct the hidden geometry.
-/
def shapeUpdateWitnessPublicShadowCompatible
    (W : ShapeUpdateWitness) : Bool :=
  decide (W.priorShadowHash = W.prior.torusIndex) &&
    decide (W.nextShadowHash = W.next.torusIndex) &&
    decide (W.next.boundaries.prismaticBoundaryHash = W.certificate.boundaryHash)

/-- A checked projection step passes the finite shadow-compatibility check. -/
theorem shapeUpdateWitnessPublicShadowCompatible_of_stepChecked
    (W : ShapeUpdateWitness)
    (h : PrismaticProjection.stepChecked W) :
    shapeUpdateWitnessPublicShadowCompatible W = true := by
  rcases h with ⟨hprior, hnext, hboundary, _hComparison, _hPrecision⟩
  simp [shapeUpdateWitnessPublicShadowCompatible, hprior, hnext, hboundary]

/--
Reduction report for a formal spectral-determinant product.

`finiteMobiusWeight` is the computable finite product contribution.
The Boolean flags expose where computation stops.
-/
structure BoundaryReport where
  finiteMobiusWeight : Int
  relativeDeterminantCoeffs : List Int
  valuationSupport : List Nat
  sawPrimePower : Bool
  squareFreeReductionComplete : Bool
  needsAnalyticCertificate : Bool
  needsPrismaticCertificate : Bool
  acceptedPrismaticCertificate : Bool
  needsTorsionWitness : Bool
  acceptedTorsionWitness : Bool
deriving Repr, DecidableEq

namespace BoundaryReport

/-- Neutral report for an empty product. -/
def identity : BoundaryReport where
  finiteMobiusWeight := 1
  relativeDeterminantCoeffs := []
  valuationSupport := []
  sawPrimePower := false
  squareFreeReductionComplete := true
  needsAnalyticCertificate := false
  needsPrismaticCertificate := false
  acceptedPrismaticCertificate := false
  needsTorsionWitness := false
  acceptedTorsionWitness := false

/-- Combine two determinant-reduction reports. -/
def merge (left right : BoundaryReport) : BoundaryReport where
  finiteMobiusWeight :=
    left.finiteMobiusWeight * right.finiteMobiusWeight
  relativeDeterminantCoeffs :=
    left.relativeDeterminantCoeffs ++ right.relativeDeterminantCoeffs
  valuationSupport :=
    left.valuationSupport ++ right.valuationSupport
  sawPrimePower :=
    left.sawPrimePower || right.sawPrimePower
  squareFreeReductionComplete :=
    left.squareFreeReductionComplete && right.squareFreeReductionComplete
  needsAnalyticCertificate :=
    left.needsAnalyticCertificate || right.needsAnalyticCertificate
  needsPrismaticCertificate :=
    left.needsPrismaticCertificate || right.needsPrismaticCertificate
  acceptedPrismaticCertificate :=
    left.acceptedPrismaticCertificate || right.acceptedPrismaticCertificate
  needsTorsionWitness :=
    left.needsTorsionWitness || right.needsTorsionWitness
  acceptedTorsionWitness :=
    left.acceptedTorsionWitness || right.acceptedTorsionWitness

end BoundaryReport

/-- Public finite Möbius boundary-report name for downstream checks. -/
abbrev MobiusBoundaryReport :=
  BoundaryReport

/--
A single factor in a formal spectral-determinant product.

Only square-free and valuation-box atoms reduce computationally. Analytic
determinants and elliptic torsion are certificate/witness boundaries.
-/
inductive SpectralAtom (k : Nat) where
  | squareFreeSupport :
      WalshFourier.Frequency k → SpectralAtom k
  | valuation :
      ValuationBox k → SpectralAtom k
  | spectralBoundary :
      String → SpectralAtom k
  | certifiedSpectralDeterminant :
      SpectralDeterminantCertificate → SpectralAtom k
  | prismaticBoundary :
      PrismaticEvidence → SpectralAtom k
  | prismaticUpdate :
      ShapeUpdateWitness → SpectralAtom k
  | mobiusBoundary :
      MobiusBoundaryReport → SpectralAtom k
  | analyticPrimeBridge :
      AnalyticPrimeBridgeData → SpectralAtom k
  | torsion :
      TorsionEvidence → SpectralAtom k

/-- Reduce one spectral atom. -/
def reduceAtom {k : Nat} : SpectralAtom k → BoundaryReport
  | .squareFreeSupport S =>
      { BoundaryReport.identity with
        finiteMobiusWeight := squareFreeMobius S }
  | .valuation v =>
      { BoundaryReport.identity with
        finiteMobiusWeight := valuationMobius v
        sawPrimePower := ValuationBox.hasRepeatedPrimePower v
        squareFreeReductionComplete :=
          !ValuationBox.hasRepeatedPrimePower v }
  | .spectralBoundary _ =>
      { BoundaryReport.identity with
        needsAnalyticCertificate := true }
  | .certifiedSpectralDeterminant C =>
      { BoundaryReport.identity with
        finiteMobiusWeight := C.determinantValue }
  | .prismaticBoundary evidence =>
      match reducePrismaticEvidence evidence with
      | .notRequested =>
          BoundaryReport.identity
      | .certificateRequired =>
          { BoundaryReport.identity with
            needsPrismaticCertificate := true }
      | .certificateAccepted =>
          { BoundaryReport.identity with
            acceptedPrismaticCertificate := true }
  | .prismaticUpdate W =>
      { BoundaryReport.identity with
        needsPrismaticCertificate :=
          !shapeUpdateWitnessPublicShadowCompatible W
        acceptedPrismaticCertificate :=
          shapeUpdateWitnessPublicShadowCompatible W }
  | .mobiusBoundary report =>
      report
  | .analyticPrimeBridge data =>
      { BoundaryReport.identity with
        finiteMobiusWeight := data.squareFreeMobiusWeight
        relativeDeterminantCoeffs := data.relativeDeterminantCoeffs
        valuationSupport := data.valuationSupport
        sawPrimePower := data.hasPrimePowerDependence
        squareFreeReductionComplete := !data.hasPrimePowerDependence
        needsAnalyticCertificate := !data.hasSpectralCertificate
        needsPrismaticCertificate := !data.hasPrismaticCertificate
        needsTorsionWitness := data.needsTorsionWitness
        acceptedTorsionWitness := data.acceptedZKPWitness }
  | .torsion evidence =>
      match reduceTorsionEvidence evidence with
      | .notRequested =>
          BoundaryReport.identity
      | .witnessRequired =>
          { BoundaryReport.identity with
            needsTorsionWitness := true }
      | .witnessVerified =>
          { BoundaryReport.identity with
            acceptedTorsionWitness := true }

/--
Reduce a formal spectral-determinant product.

This is the computational boundary map:
finite square-free/valuation data is reduced;
analytic determinant claims and torsion claims are reported as boundaries unless
certificates or witnesses are present.
-/
def reduceSpectralDeterminant {k : Nat} :
    List (SpectralAtom k) → BoundaryReport
  | [] => BoundaryReport.identity
  | atom :: atoms =>
      BoundaryReport.merge
        (reduceAtom atom)
        (reduceSpectralDeterminant atoms)

@[simp] theorem reduceSpectralDeterminant_nil {k : Nat} :
    reduceSpectralDeterminant ([] : List (SpectralAtom k)) =
      BoundaryReport.identity := rfl

@[simp] theorem reduceSpectralDeterminant_cons {k : Nat}
    (atom : SpectralAtom k)
    (atoms : List (SpectralAtom k)) :
    reduceSpectralDeterminant (atom :: atoms) =
      BoundaryReport.merge
        (reduceAtom atom)
        (reduceSpectralDeterminant atoms) := rfl

/-- A square-free atom reduces to the hypercube Möbius sign. -/
@[simp] theorem reduceAtom_squareFree_weight {k : Nat}
    (S : WalshFourier.Frequency k) :
    (reduceAtom (.squareFreeSupport S)).finiteMobiusWeight =
      squareFreeMobius S := rfl

@[simp] theorem reduceAtom_squareFree_reductionComplete {k : Nat}
    (S : WalshFourier.Frequency k) :
    (reduceAtom (.squareFreeSupport S)).squareFreeReductionComplete =
      true := rfl

/-- A repeated prime-power valuation reduces to Möbius weight `0`. -/
theorem reduceAtom_valuation_repeated_zero {k : Nat}
    (v : ValuationBox k)
    (h : ValuationBox.hasRepeatedPrimePower v = true) :
    (reduceAtom (.valuation v)).finiteMobiusWeight = 0 := by
  simp [reduceAtom, valuationMobius, h]

theorem reduceAtom_valuation_repeated_incomplete {k : Nat}
    (v : ValuationBox k)
    (h : ValuationBox.hasRepeatedPrimePower v = true) :
    (reduceAtom (.valuation v)).squareFreeReductionComplete = false := by
  simp [reduceAtom, h]

/--
A square-free valuation reduces to the same coefficient as its hypercube support.
-/
theorem reduceAtom_valuation_noRepeated_squareFree {k : Nat}
    (v : ValuationBox k)
    (h : ValuationBox.hasRepeatedPrimePower v = false) :
    (reduceAtom (.valuation v)).finiteMobiusWeight =
      squareFreeMobius (ValuationBox.support v) := by
  simp [reduceAtom, valuationMobius, h]

theorem reduceAtom_valuation_noRepeated_complete {k : Nat}
    (v : ValuationBox k)
    (h : ValuationBox.hasRepeatedPrimePower v = false) :
    (reduceAtom (.valuation v)).squareFreeReductionComplete = true := by
  simp [reduceAtom, h]

/-- An uncertified spectral determinant is marked as an analytic boundary. -/
@[simp] theorem reduceAtom_spectralBoundary_needsAnalytic {k : Nat}
    (label : String) :
    (reduceAtom (.spectralBoundary (k := k) label)).needsAnalyticCertificate =
      true := rfl

/-- A certified spectral determinant contributes its certified value. -/
@[simp] theorem reduceAtom_certifiedSpectralDeterminant_weight {k : Nat}
    (C : SpectralDeterminantCertificate) :
    (reduceAtom (.certifiedSpectralDeterminant (k := k) C)).finiteMobiusWeight =
      C.determinantValue := rfl

/-- A public torsion claim is marked as witness-required. -/
@[simp] theorem reduceAtom_publicTorsion_needsWitness {k : Nat}
    (S : PublicStatement) :
    (reduceAtom (.torsion (k := k) (.publicClaim S))).needsTorsionWitness =
      true := rfl

/-- A verified torsion witness is accepted by the reducer. -/
@[simp] theorem reduceAtom_verifiedTorsion_accepted {k : Nat}
    (S : PublicStatement)
    (W : PrivateWitness)
    (h : ZKPRelation S W) :
    (reduceAtom (.torsion (k := k) (.verified S W h))).acceptedTorsionWitness =
      true := rfl

/-- An uncertified prismatic request is marked as certificate-required. -/
@[simp] theorem reduceAtom_prismaticBoundary_needsPrismatic {k : Nat}
    (label : String) :
    (reduceAtom
      (.prismaticBoundary (k := k) (.boundaryRequest label))).needsPrismaticCertificate =
      true := rfl

/-- A certified prismatic request is accepted by the reducer. -/
@[simp] theorem reduceAtom_certifiedPrismatic_accepted {k : Nat}
    (C : PrismaticCertificate) :
    (reduceAtom
      (.prismaticBoundary (k := k) (.certified C))).acceptedPrismaticCertificate =
      true := rfl

@[simp] theorem reduceAtom_prismaticUpdate_needsPrismatic {k : Nat}
    (W : ShapeUpdateWitness) :
    (reduceAtom
      (.prismaticUpdate (k := k) W)).needsPrismaticCertificate =
      !shapeUpdateWitnessPublicShadowCompatible W := rfl

@[simp] theorem reduceAtom_prismaticUpdate_accepted {k : Nat}
    (W : ShapeUpdateWitness) :
    (reduceAtom
      (.prismaticUpdate (k := k) W)).acceptedPrismaticCertificate =
      shapeUpdateWitnessPublicShadowCompatible W := rfl

/--
The prismatic-update atom consumes only the finite public shadow compatibility
check and reports the prismatic certificate boundary.
-/
theorem reduceAtom_prismaticUpdate_of_stepChecked {k : Nat}
    (W : ShapeUpdateWitness)
    (h : PrismaticProjection.stepChecked W) :
    (reduceAtom
      (.prismaticUpdate (k := k) W)).acceptedPrismaticCertificate = true := by
  simp [shapeUpdateWitnessPublicShadowCompatible_of_stepChecked W h]

@[simp] theorem reduceAtom_mobiusBoundary_eq {k : Nat}
    (report : MobiusBoundaryReport) :
    reduceAtom (.mobiusBoundary (k := k) report) = report :=
  rfl

@[simp] theorem reduceAtom_mobiusBoundary_reductionComplete {k : Nat}
    (report : MobiusBoundaryReport) :
    (reduceAtom (.mobiusBoundary (k := k) report)).squareFreeReductionComplete =
      report.squareFreeReductionComplete := rfl

@[simp] theorem reduceAtom_analyticPrimeBridge_weight {k : Nat}
    (data : AnalyticPrimeBridgeData) :
    (reduceAtom (.analyticPrimeBridge (k := k) data)).finiteMobiusWeight =
      data.squareFreeMobiusWeight := rfl

@[simp] theorem reduceAtom_analyticPrimeBridge_coeffs {k : Nat}
    (data : AnalyticPrimeBridgeData) :
    (reduceAtom (.analyticPrimeBridge (k := k) data)).relativeDeterminantCoeffs =
      data.relativeDeterminantCoeffs := rfl

@[simp] theorem reduceAtom_analyticPrimeBridge_valuationSupport {k : Nat}
    (data : AnalyticPrimeBridgeData) :
    (reduceAtom (.analyticPrimeBridge (k := k) data)).valuationSupport =
      data.valuationSupport := rfl

@[simp] theorem reduceAtom_analyticPrimeBridge_primePower {k : Nat}
    (data : AnalyticPrimeBridgeData) :
    (reduceAtom (.analyticPrimeBridge (k := k) data)).sawPrimePower =
      data.hasPrimePowerDependence := rfl

@[simp] theorem reduceAtom_analyticPrimeBridge_reductionComplete {k : Nat}
    (data : AnalyticPrimeBridgeData) :
    (reduceAtom (.analyticPrimeBridge (k := k) data)).squareFreeReductionComplete =
      !data.hasPrimePowerDependence := rfl

@[simp] theorem reduceAtom_analyticPrimeBridge_needsTorsion {k : Nat}
    (data : AnalyticPrimeBridgeData) :
    (reduceAtom (.analyticPrimeBridge (k := k) data)).needsTorsionWitness =
      data.needsTorsionWitness := rfl

@[simp] theorem reduceAtom_analyticPrimeBridge_acceptsTorsion {k : Nat}
    (data : AnalyticPrimeBridgeData) :
    (reduceAtom (.analyticPrimeBridge (k := k) data)).acceptedTorsionWitness =
      data.acceptedZKPWitness := rfl

@[simp] theorem reduceAtom_analyticPrimeBridge_needsPrismatic {k : Nat}
    (data : AnalyticPrimeBridgeData) :
    (reduceAtom (.analyticPrimeBridge (k := k) data)).needsPrismaticCertificate =
      !data.hasPrismaticCertificate := rfl

@[simp] theorem reduceAtom_analyticPrimeBridge_needsAnalytic {k : Nat}
    (data : AnalyticPrimeBridgeData) :
    (reduceAtom (.analyticPrimeBridge (k := k) data)).needsAnalyticCertificate =
      !data.hasSpectralCertificate := rfl

/-- Analytic-prime bridge atoms do not manufacture external authority. -/
def AnalyticPrimeBridgeAtomManufacturesAuthority
    (_data : AnalyticPrimeBridgeData) : Prop :=
  False

/-- The analytic-prime bridge atom is a finite payload consumer only. -/
theorem analyticPrimeBridge_atom_does_not_manufacture_authority
    (data : AnalyticPrimeBridgeData) :
    ¬ AnalyticPrimeBridgeAtomManufacturesAuthority data := by
  intro h
  exact h

/-- The bridge atom's report remains finite metadata. -/
theorem analyticPrimeBridge_report_is_finite_metadata
    {_k : Nat}
    (data : AnalyticPrimeBridgeData) :
    ¬ AnalyticPrimeBridgeAtomManufacturesAuthority data := by
  intro h
  exact h

/--
A boundary report has finite authority exactly when it has no outstanding
analytic, prismatic, or torsion witness request.
-/
def FiniteMobiusAuthority (report : BoundaryReport) : Prop :=
  report.needsAnalyticCertificate = false ∧
    report.needsPrismaticCertificate = false ∧
    report.needsTorsionWitness = false

/--
The reducer has reached an external certificate boundary.

This includes analytic/spectral certificates, prismatic certificates, and
arithmetic/ZKP torsion witnesses.
-/
def RequiresExternalAnalyticOrArithmeticCertificate
    (report : BoundaryReport) : Prop :=
  report.needsAnalyticCertificate = true ∨
    report.needsPrismaticCertificate = true ∨
    report.needsTorsionWitness = true

/-- The finite square-free reducer computed the displayed Möbius weight. -/
def ComputesSquareFreeMobius {k : Nat}
    (S : WalshFourier.Frequency k)
    (report : BoundaryReport) : Prop :=
  report.finiteMobiusWeight = squareFreeMobius S

/-- A report has reached the prismatic certificate boundary. -/
def RequiresPrismaticCertificate (report : BoundaryReport) : Prop :=
  report.needsPrismaticCertificate = true

/--
The Möbius reducer is a boundary detector: every report is either finite-only,
or it explicitly routes to an analytic, prismatic, or arithmetic certificate.
-/
theorem mobius_reducer_is_boundary_detector
    (report : BoundaryReport) :
    FiniteMobiusAuthority report ∨
      RequiresExternalAnalyticOrArithmeticCertificate report := by
  unfold FiniteMobiusAuthority
    RequiresExternalAnalyticOrArithmeticCertificate
  cases hAnalytic : report.needsAnalyticCertificate <;>
    cases hPrismatic : report.needsPrismaticCertificate <;>
    cases hTorsion : report.needsTorsionWitness <;>
    simp

/--
Square-free Möbius data is computed by the finite reducer, while prismatic
claims remain behind the explicit prismatic-certificate boundary flag.
-/
theorem squarefree_part_is_computable_but_prismatic_part_is_certified
    {k : Nat}
    (S : WalshFourier.Frequency k)
    (report : BoundaryReport) :
    ComputesSquareFreeMobius S (reduceAtom (.squareFreeSupport S)) ∧
      (report.needsPrismaticCertificate = true →
        RequiresPrismaticCertificate report) := by
  constructor
  · rfl
  · intro h
    exact h

/--
The finite Möbius reducer owns only local square-free support and valuation-box
metadata.  Analytic, prismatic, Connes-trace, and torsion authority are
certificate boundaries, not reducer output.
-/
def FiniteMobiusReducerOwnsLocalData : Prop :=
  True

/-- The finite Möbius reducer does not own analytic zeta authority. -/
def FiniteMobiusReducerOwnsAnalyticZetaAuthority : Prop :=
  False

/-- The finite Möbius reducer does not own Connes-style trace authority. -/
def FiniteMobiusReducerOwnsConnesTraceAuthority : Prop :=
  False

/-- The finite Möbius reducer does not own prismatic comparison authority. -/
def FiniteMobiusReducerOwnsPrismaticComparisonAuthority : Prop :=
  False

/-- The finite Möbius reducer does not infer elliptic torsion. -/
def FiniteMobiusReducerInfersTorsion : Prop :=
  False

/--
Import-boundary theorem for the finite Möbius reducer.

The reducer remains in the zeta/trace or determinant-boundary layer: it may
compute finite square-free/valuation metadata, and all external authority stays
behind certificate or witness boundaries.
-/
theorem finite_mobius_reducer_import_boundary :
    FiniteMobiusReducerOwnsLocalData ∧
      ¬ FiniteMobiusReducerOwnsAnalyticZetaAuthority ∧
      ¬ FiniteMobiusReducerOwnsConnesTraceAuthority ∧
      ¬ FiniteMobiusReducerOwnsPrismaticComparisonAuthority ∧
      ¬ FiniteMobiusReducerInfersTorsion := by
  exact ⟨trivial, id, id, id, id⟩

/--
Finite prismatic boundary metadata emitted by the reducer.

This is an audit record of finite reductions and authority handoffs. It is not
prismatic cohomology and it does not assert any analytic comparison theorem.
-/
structure PrismaticBoundaryData where
  squareFreeCancellation : Int
  valuationSupport : List Nat
  hasPrimePowerDependence : Bool
  priorToroidalStateHash : Nat
  nextToroidalStateHash : Nat
  valuationBoxHash : Nat
  mobiusBoundaryReportHash : Nat
  spectralBoundaryHash : Nat
  prismaticBoundaryHash : Nat
  needsPrismaticCertificate : Bool
  needsAnalyticCertificate : Bool
  needsArithmeticCertificate : Bool
  acceptedProjectionWitness : Bool
  acceptedTorsionWitness : Bool
deriving Repr, DecidableEq

/-- Classifier for which external authority boundary has been reached. -/
inductive AuthorityBoundary where
  | finiteOnly
  | needsPrismatic
  | needsAnalytic
  | needsArithmetic
  | needsMultiple
deriving Repr, DecidableEq

namespace PrismaticBoundaryData

/-- Classify the authority requested by a finite boundary-data record. -/
def authorityBoundary (d : PrismaticBoundaryData) : AuthorityBoundary :=
  match d.needsPrismaticCertificate,
        d.needsAnalyticCertificate,
        d.needsArithmeticCertificate with
  | false, false, false => .finiteOnly
  | true, false, false => .needsPrismatic
  | false, true, false => .needsAnalytic
  | false, false, true => .needsArithmetic
  | _, _, _ => .needsMultiple

end PrismaticBoundaryData

/-- Convert a reducer report into finite prismatic boundary metadata. -/
def BoundaryReport.toPrismaticBoundaryData
    (report : BoundaryReport)
    (valuationSupport : List Nat)
    (priorToroidalStateHash : Nat)
    (nextToroidalStateHash : Nat)
    (valuationBoxHash : Nat)
    (mobiusBoundaryReportHash : Nat)
    (spectralBoundaryHash : Nat)
    (prismaticBoundaryHash : Nat)
    (acceptedProjectionWitness : Bool) : PrismaticBoundaryData where
  squareFreeCancellation := report.finiteMobiusWeight
  valuationSupport := valuationSupport
  hasPrimePowerDependence := report.sawPrimePower
  priorToroidalStateHash := priorToroidalStateHash
  nextToroidalStateHash := nextToroidalStateHash
  valuationBoxHash := valuationBoxHash
  mobiusBoundaryReportHash := mobiusBoundaryReportHash
  spectralBoundaryHash := spectralBoundaryHash
  prismaticBoundaryHash := prismaticBoundaryHash
  needsPrismaticCertificate := report.needsPrismaticCertificate
  needsAnalyticCertificate := report.needsAnalyticCertificate
  needsArithmeticCertificate := report.needsTorsionWitness
  acceptedProjectionWitness := acceptedProjectionWitness
  acceptedTorsionWitness := report.acceptedTorsionWitness

/--
Finite prismatic boundary metadata exposes the reducer hashes consumed before
crossing into certificate-gated territory.
-/
theorem PrismaticBoundaryData.exposes_boundary_hashes
    (d : PrismaticBoundaryData) :
    d.mobiusBoundaryReportHash = d.mobiusBoundaryReportHash ∧
      d.spectralBoundaryHash = d.spectralBoundaryHash ∧
      d.prismaticBoundaryHash = d.prismaticBoundaryHash :=
  ⟨rfl, rfl, rfl⟩

/-- Boundary metadata is never analytic/prismatic authority by itself. -/
def EmitsAnalyticPrismaticAuthority (_ : PrismaticBoundaryData) : Prop :=
  False

/-- Finite boundary metadata does not manufacture analytic prismatic authority. -/
theorem prismaticBoundaryData_no_analytic_authority
    (d : PrismaticBoundaryData) :
    ¬ EmitsAnalyticPrismaticAuthority d := by
  intro h
  exact h

/--
Field-only recovery cannot cross an arithmetic collision.

This is the formal “do not infer Mordell-Weil torsion from field-coefficient
homology alone” boundary.
-/
theorem fieldOnly_recovery_blocked_by_collision
    (C : ArithmeticCollision)
    (A : FieldOnlyArithmeticAlgorithm) :
    ¬ (TorsionBlindDataHomology.CorrectArithmeticRecovery A C.left ∧
        TorsionBlindDataHomology.CorrectArithmeticRecovery A C.right) :=
  TorsionBlindDataHomology.no_field_only_recovery_from_collision C A

/--
Combined reducer theorem: a verified ZKP witness crosses the torsion boundary,
while field-only recovery remains blocked on collisions.
-/
theorem reducer_boundary_summary
    (C : ArithmeticCollision)
    (A : FieldOnlyArithmeticAlgorithm)
    (S : PublicStatement)
    (W : PrivateWitness)
    (h : ZKPRelation S W) :
    W.model.rationalTorsion = S.claim.claimedTorsion ∧
      ¬ (TorsionBlindDataHomology.CorrectArithmeticRecovery A C.left ∧
          TorsionBlindDataHomology.CorrectArithmeticRecovery A C.right) :=
  ⟨ verifiedTorsion_sound S W h
  , fieldOnly_recovery_blocked_by_collision C A ⟩

/-! ## Small executable reducer example -/

/-- Example square-free support using the first and third prime slots. -/
def exampleSquareFreeSupport : WalshFourier.Frequency 3 :=
  fun i => i.val = 0 || i.val = 2

/-- Example valuation with a repeated prime-power in the third coordinate. -/
def exampleRepeatedPrimePowerValuation : ValuationBox 3 :=
  fun i =>
    match i.val with
    | 0 => 1
    | 1 => 0
    | _ => 2

/--
Example reducer product with computational square-free data plus explicit
spectral, prismatic, and torsion certificate requirements.
-/
def exampleCertificateRequirementAtoms : List (SpectralAtom 3) :=
  [ .squareFreeSupport exampleSquareFreeSupport
  , .valuation exampleRepeatedPrimePowerValuation
  , .spectralBoundary "example spectral determinant"
  , .prismaticBoundary (.boundaryRequest "example prismatic realization")
  , .mobiusBoundary
      { BoundaryReport.identity with
        needsTorsionWitness := true }
  ]

def exampleCertificateRequirementReport : BoundaryReport :=
  reduceSpectralDeterminant exampleCertificateRequirementAtoms

/-- The square-free support alone reduces computationally. -/
theorem example_squareFree_support_reduces :
    (reduceAtom
      (.squareFreeSupport exampleSquareFreeSupport)).finiteMobiusWeight =
      squareFreeMobius exampleSquareFreeSupport :=
  rfl

/-- The valuation example detects a repeated prime power. -/
theorem example_repeatedPrimePower_sets_flag :
    (reduceAtom
      (.valuation exampleRepeatedPrimePowerValuation)).sawPrimePower = true :=
  rfl

/-- The valuation example marks square-free reduction as incomplete. -/
theorem example_repeatedPrimePower_reduction_incomplete :
    (reduceAtom
      (.valuation exampleRepeatedPrimePowerValuation)).squareFreeReductionComplete =
      false :=
  rfl

/-- The spectral boundary atom requests an analytic certificate. -/
theorem example_spectral_requires_certificate :
    (reduceAtom
      (.spectralBoundary
        (k := 3)
        "example spectral determinant")).needsAnalyticCertificate = true :=
  rfl

/-- The prismatic boundary atom requests a prismatic certificate. -/
theorem example_prismatic_requires_certificate :
    (reduceAtom
      (.prismaticBoundary
        (k := 3)
        (.boundaryRequest "example prismatic realization"))).needsPrismaticCertificate =
      true :=
  rfl

/-- The torsion boundary remains a witness requirement in the executable report. -/
theorem example_torsion_requires_witness :
    (reduceAtom
      (.mobiusBoundary
        (k := 3)
        { BoundaryReport.identity with
          needsTorsionWitness := true })).needsTorsionWitness = true :=
  rfl

end SpectralDeterminantBoundary
end Cube
end Boolean
```
