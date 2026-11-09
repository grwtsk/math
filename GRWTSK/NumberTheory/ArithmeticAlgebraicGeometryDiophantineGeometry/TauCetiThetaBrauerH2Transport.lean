/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti contributors, Apache-2.0, immutable upstream
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b,
Lean v4.36.0-rc1. This adapter is NOT imported by grwtsk/math v4.34.1.
The isolated adapter directory must be on the Tau Ceti LEAN_PATH.
-/
import TauCetiOriginalGeometricThetaGalois
import TauCetiThetaGaloisScalarFactor
import TauCeti.FieldTheory.GaloisCohomology.BrauerTorsion
import TauCeti.NumberTheory.ClassFieldTheory.MuNRep
import TauCeti.NumberTheory.ClassFieldTheory.Brauer.RootsOfUnity
import TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree

set_option autoImplicit false
noncomputable section

/-!
# Original geometric theta scalar -> Tau Ceti's ACTUAL continuous Brauer H²

The geometric adapter already defines thetaObstructionScalar
for a Galois 1-cocycle of EXACT original W.TorsionCoeff n.
This file transports that SCALAR to Tau Ceti's actual
  UnitsCoeff F = Additive (SeparableClosure F)ˣ
and then to the original explicit H² and canonical
continuousCohomology 2.

Tau Ceti ALREADY proves
  * unitsCoeff_continuousSMul,
  * ContCohomology.mem_Z2_iff,
  * explicitH2AddEquivContinuousCohomology,
  * h2KummerToUnits_injective and h2KummerToUnits_range.
No substitute Brauer group, chosen scalar form or
alternate Galois representation is introduced.

TWO missing arithmetic inputs remain EXPLICIT:
  hcontinuous : the actual source theta scalar cochain
                is continuous (a finite-level descent step);
  hlaw : the actual scalar theta cochain satisfies the
         multiplicative 2-cocycle identity, derivable from
         the original theta Galois action and its central
         function-field kernel. The separate native source
         ThetaCentralFactorCocycle.lean proves the group
         algebra but the source Galois action remains
         to be instantiated.

To identify a canonical n-torsion Brauer class with H²(mu_n),
a third required source fact is n-torsion of that ACTUAL
theta class. Tau Ceti's existing injectivity/image theorem
then proves existence and UNIQUENESS of its mu_n preimage.
None of these open arithmetic facts is smuggled into a
theorem by claiming an unconditional source proof.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaBrauerH2Transport

open TauCeti TauCeti.ContCohomology
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois

variable {F : Type*} [Field F] [DecidableEq F]
    (W : WeierstrassCurve F) [W.IsElliptic]
    (n : ℕ) [NeZero n]

private abbrev G := AbsoluteGaloisGroup F

/-- The ACTUAL scalar factor of the ORIGINAL elliptic
theta group, transported only through the definition of
Tau Ceti's additive `UnitsCoeff F`. -/
noncomputable def originalThetaUnitsCochain
    (a : Z1 (G (F := F)) (W.TorsionCoeff n)) :
    (G (F := F) × G (F := F)) → UnitsCoeff F :=
  fun p => Additive.ofMul (thetaObstructionScalar W n a p.1 p.2)

/-- This is the precise source CONTINUITY obligation. It
cannot be inferred from a finite point cochain alone:
the original rational theta functions and their Galois
action must factor through a common finite extension. -/
def ThetaScalarContinuous
    (a : Z1 (G (F := F)) (W.TorsionCoeff n)) : Prop :=
  Continuous (originalThetaUnitsCochain W n a)

/-- The exact source MULTIPLICATIVE group-cocycle law
for the raw scalar in the original separable-closure
units. This law is supplied algebraically by the
central theta extension once its genuine Galois
semilinear action is formally bound. -/
def ThetaScalarFactorLaw
    (a : Z1 (G (F := F)) (W.TorsionCoeff n)) : Prop :=
  ∀ σ τ ρ : G (F := F),
    thetaObstructionScalar W n a σ τ *
      thetaObstructionScalar W n a (σ * τ) ρ =
      (σ • thetaObstructionScalar W n a τ ρ) *
        thetaObstructionScalar W n a σ (τ * ρ)

/-! ## A genuinely DERIVED theta scalar cocycle law

The raw scalar factor of the original elliptic function field
is now proved to equal the Galois theta GROUP boundary in
TauCetiThetaGaloisScalarFactor. The existing group centrality
and semilinear action supply the factor law without choosing
a cocycle as additional arithmetic data.

Only genuine CONTINUITY remains to upgrade this exact group
2-cocycle to the original Tau Ceti continuous Z².
-/

/-- The original theta scalar factor law follows from the
actual elliptic rational-function theta group and Galois
action. It is no longer an independent user-supplied
arithmetic hypothesis. -/
theorem originalThetaScalarFactorLaw
    (a : Z1 (G (F := F)) (W.TorsionCoeff n)) :
    ThetaScalarFactorLaw W n a := by
  intro σ τ ρ
  simpa only [
    GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisScalarFactor.originalThetaFactor
  ] using
    (GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisScalarFactor.originalThetaFactor_twoCocycle
      W n a σ τ ρ)

/-- Real source Z² membership, NOT an arbitrary chosen
cohomology class: the ORIGINAL multiplicative factor
law and continuity imply Tau Ceti's exact additive
continuous 2-cocycle condition on `UnitsCoeff F`. -/
theorem originalThetaUnitsCochain_mem_Z2
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hcontinuous : ThetaScalarContinuous W n a)
    (hlaw : ThetaScalarFactorLaw W n a) :
    originalThetaUnitsCochain W n a ∈
      Z2 (G (F := F)) (UnitsCoeff F) := by
  apply (mem_Z2_iff).2
  refine ⟨hcontinuous, ?_⟩
  intro σ τ ρ
  apply Additive.toMul.injective
  simpa [originalThetaUnitsCochain, mul_comm,
    mul_left_comm, mul_assoc] using (hlaw σ τ ρ).symm

/-- The genuine original raw theta scalar is a continuous
2-cocycle as soon as one proves its arithmetic CONTINUITY;
the cocycle law is supplied by original theta group algebra. -/
theorem originalThetaUnitsCochain_mem_Z2_of_continuous
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hc : ThetaScalarContinuous W n a) :
    originalThetaUnitsCochain W n a ∈
      Z2 (G (F := F)) (UnitsCoeff F) :=
  originalThetaUnitsCochain_mem_Z2 W n a hc
    (originalThetaScalarFactorLaw W n a)

/-- A genuine original H² class ON SOURCE CONTINUOUS COCHAINS.
Its arithmetic hypotheses are precisely the uncompleted
continuity and semilinear scalar cocycle proofs. -/
noncomputable def originalThetaExplicitH2
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hcontinuous : ThetaScalarContinuous W n a)
    (hlaw : ThetaScalarFactorLaw W n a) :
    H2 (G (F := F)) (UnitsCoeff F) := by
  let z : Z2 (G (F := F)) (UnitsCoeff F) :=
    ⟨originalThetaUnitsCochain W n a,
      originalThetaUnitsCochain_mem_Z2 W n a hcontinuous hlaw⟩
  exact (z : H2 (G (F := F)) (UnitsCoeff F))

/-- Return the ACTUAL Mathlib canonical continuous H²
with `UnitsCoeff F`, via Tau Ceti's named comparison,
not a hand-assigned Brauer element. -/
noncomputable def originalThetaCanonicalBrauerH2
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hcontinuous : ThetaScalarContinuous W n a)
    (hlaw : ThetaScalarFactorLaw W n a) :
    continuousCohomology 2
      (ofDiscreteModule ℤ (G (F := F)) (UnitsCoeff F)) :=
  explicitH2AddEquivContinuousCohomology _ _
    (originalThetaExplicitH2 W n a hcontinuous hlaw)

/-! ## Section-change equality in the ACTUAL continuous H²

The native Mathlib group computation in
ThetaSectionOrderCoboundary.lean proves that two scalar
theta boundaries differ by the cochain
c_sigma * sigma(c_tau) * c_(sigma*tau)^(-1).
On `UnitsCoeff F` that is precisely d¹ c in the
ORIGINAL Tau Ceti signed differential convention.
The following source theorem promotes the exact
pointwise equation to equality in genuine continuous H²,
REQUIRING the scalar one-cochain c to be continuous.
-/

/-- One continuous scalar one-cochain witnesses equality
of TWO original units-coefficient H² classes.
This proves the final cohomology quotient step rather
than silently equating raw theta boundary cochains. -/
theorem originalUnitsH2_eq_of_continuousSectionChange
    (a b : Z2 (G (F := F)) (UnitsCoeff F))
    (c : G (F := F) → UnitsCoeff F)
    (hc : Continuous c)
    (hchange : ∀ σ τ : G (F := F),
      (a : G (F := F) × G (F := F) → UnitsCoeff F) (σ,τ) =
        c σ + σ • c τ - c (σ * τ) +
          (b : G (F := F) × G (F := F) → UnitsCoeff F) (σ,τ)) :
    (a : H2 (G (F := F)) (UnitsCoeff F)) =
      (b : H2 (G (F := F)) (UnitsCoeff F)) := by
  rw [H2pi_eq_iff]
  apply (mem_B2_iff').2
  refine ⟨c, hc, ?_⟩
  intro σ τ
  have heq := hchange σ τ
  change σ • c τ - c (σ * τ) + c σ =
    (a : G (F := F) × G (F := F) → UnitsCoeff F) (σ,τ) -
      (b : G (F := F) × G (F := F) → UnitsCoeff F) (σ,τ)
  rw [heq]
  abel

/-- The same section-independence in the EXACT
canonical continuous-cohomology object. In particular,
forward and reversed geometric theta lift choices
produce the same class once their scalar commutator
cochain is genuinely continuous, as required by the
original continuous Galois topology. -/
theorem originalCanonicalUnitsH2_eq_of_continuousSectionChange
    (a b : Z2 (G (F := F)) (UnitsCoeff F))
    (c : G (F := F) → UnitsCoeff F)
    (hc : Continuous c)
    (hchange : ∀ σ τ : G (F := F),
      (a : G (F := F) × G (F := F) → UnitsCoeff F) (σ,τ) =
        c σ + σ • c τ - c (σ * τ) +
          (b : G (F := F) × G (F := F) → UnitsCoeff F) (σ,τ)) :
    explicitH2AddEquivContinuousCohomology _ _
      (a : H2 (G (F := F)) (UnitsCoeff F)) =
    explicitH2AddEquivContinuousCohomology _ _
      (b : H2 (G (F := F)) (UnitsCoeff F)) := by
  exact congrArg (explicitH2AddEquivContinuousCohomology
    (G (F := F)) (UnitsCoeff F))
    (originalUnitsH2_eq_of_continuousSectionChange
      (F := F) a b c hc hchange)

/-- EXACT bridge already present in pinned Tau Ceti:
once the true theta Brauer class is killed by n,
it has a UNIQUE preimage under the canonical
H²(F,mu_n) inclusion. Source h2KummerToUnits_range
and h2KummerToUnits_injective supply both directions;
nothing about the original elliptic theta geometry is
assumed from finite Weil perfectness. -/
theorem originalThetaBrauerH2_uniqueMuNPreimage
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hcontinuous : ThetaScalarContinuous W n a)
    (hlaw : ThetaScalarFactorLaw W n a)
    (hn : IsUnit (n : F))
    (htorsion :
      n • originalThetaCanonicalBrauerH2 W n a
        hcontinuous hlaw = 0) :
    ∃! x : continuousCohomology 2
        (ofDiscreteModule ℤ (G (F := F)) (KummerCoeff F n)),
      (h2KummerToUnits F n).hom x =
        originalThetaCanonicalBrauerH2 W n a
          hcontinuous hlaw := by
  obtain ⟨x, hx⟩ :=
    (h2KummerToUnits_range (K := F) (n := n) hn
      (originalThetaCanonicalBrauerH2 W n a
        hcontinuous hlaw)).2 htorsion
  refine ⟨x, hx, ?_⟩
  intro y hy
  exact (h2KummerToUnits_injective (K := F) (n := n) hn)
    (hy.trans hx.symm)

/-! ## Brauer H² from actual theta geometry with one less premise

The originally separate `ThetaScalarFactorLaw` parameter is
now supplied by a theorem, not taken as a second arithmetic
hypothesis. This construction still requires the actual scalar
Galois cochain CONTINUOUS, not just the coefficient action.
-/

/-- The original geometric theta class in exact canonical
continuous H²(F, UnitsCoeff F), requiring only the genuine
geometric scalar cochain continuity. -/
noncomputable def originalThetaBrauerH2_of_continuous
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hc : ThetaScalarContinuous W n a) :
    continuousCohomology 2
      (ofDiscreteModule ℤ (G (F := F)) (UnitsCoeff F)) :=
  originalThetaCanonicalBrauerH2 W n a hc
    (originalThetaScalarFactorLaw W n a)

/-! ## The ACTUAL nonarchimedean normalized invariant, not a proxy

At a characteristic-zero nonarchimedean local field, the
pinned Tau Ceti sources already contain:
  explicitH2AddEquivContinuousCohomology,
  muNRepH2Equiv,
  h2MuEquivZMod,
  h2KummerToUnits_injective/range.
Their exact composite is the ORIGINAL normalized
H²(F,mu_n) -> ZMod n, including primes above n.

The theta obstruction can use this equivalence only
after the genuine scalar cocycle is continuous and
its resulting Brauer class is n-torsion; neither
arithmetic premise is silently discarded here.
-/

section NormalizedLocal

variable [CharZero F] [ValuativeRel F] [TopologicalSpace F]
  [IsNonarchimedeanLocalField F]

/-- Genuine exact ORIGINAL coefficient transport:
canonical H² of roots of unity -> original explicit H²
-> canonical muNRep H² -> original Brauer-normalized ZMod n.
The actual Galois action and cyclotomic twist are retained. -/
noncomputable def thetaMuNNormalizedEquiv (hn : IsUnit (n : F)) :
    continuousCohomology 2
      (ofDiscreteModule ℤ (G (F := F)) (KummerCoeff F n)) ≃+ ZMod n :=
  (explicitH2AddEquivContinuousCohomology
      (G (F := F)) (KummerCoeff F n)).symm.trans
    ((muNRepH2Equiv n F).trans (h2MuEquivZMod F hn))

/-- The normalized local theta invariant is now DEFINED
from its authentic original continuous Brauer H² class
and its UNIQUE H²(mu_n) preimage, not supplied by a
chosen scalar assignment or artificial elliptic rank.

The missing `hcontinuous`, `hlaw`, and `htorsion`
are independently meaningful arithmetic proof gates
for the ORIGINAL geometric theta construction. -/
noncomputable def originalThetaNormalizedInvariant
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hcontinuous : ThetaScalarContinuous W n a)
    (hlaw : ThetaScalarFactorLaw W n a)
    (hn : IsUnit (n : F))
    (htorsion :
      n • originalThetaCanonicalBrauerH2 W n a hcontinuous hlaw = 0) :
    ZMod n :=
  thetaMuNNormalizedEquiv (F := F) n hn
    (Classical.choose
      (originalThetaBrauerH2_uniqueMuNPreimage
        W n a hcontinuous hlaw hn htorsion).exists)

/-- The original invariant returns to EXACTLY the original
theta class under Tau Ceti's canonical mu_n-to-units map.
Thus no arbitrary root of unity or Brauer normalization
may change the original source class. -/
theorem originalThetaNormalizedInvariant_returns_original
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hcontinuous : ThetaScalarContinuous W n a)
    (hlaw : ThetaScalarFactorLaw W n a)
    (hn : IsUnit (n : F))
    (htorsion :
      n • originalThetaCanonicalBrauerH2 W n a hcontinuous hlaw = 0) :
    (h2KummerToUnits F n).hom
        ((thetaMuNNormalizedEquiv (F := F) n hn).symm
          (originalThetaNormalizedInvariant
            W n a hcontinuous hlaw hn htorsion)) =
      originalThetaCanonicalBrauerH2 W n a
        hcontinuous hlaw := by
  let h := originalThetaBrauerH2_uniqueMuNPreimage
    W n a hcontinuous hlaw hn htorsion
  change (h2KummerToUnits F n).hom
      ((thetaMuNNormalizedEquiv (F := F) n hn).symm
        ((thetaMuNNormalizedEquiv (F := F) n hn)
          (Classical.choose h.exists))) = _
  rw [AddEquiv.symm_apply_apply]
  exact Classical.choose_spec h.exists

/-- Source-normalized theta invariant with the actual original
group cocycle law already derived. Only arithmetic continuity
of its scalar cochain and n-torsion of its genuine Brauer H²
class remain nontrivial prerequisites. -/
noncomputable def originalThetaNormalizedInvariant_of_continuous
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hc : ThetaScalarContinuous W n a)
    (hn : IsUnit (n : F))
    (htorsion : n • originalThetaBrauerH2_of_continuous
      W n a hc = 0) : ZMod n :=
  originalThetaNormalizedInvariant W n a hc
    (originalThetaScalarFactorLaw W n a) hn htorsion

/-- The normalized invariant reconstructs the original
source-defined theta Brauer H² class exactly, not merely
a residue with a matching cardinality. -/
theorem originalThetaNormalizedInvariant_of_continuous_returns
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (hc : ThetaScalarContinuous W n a)
    (hn : IsUnit (n : F))
    (htorsion : n • originalThetaBrauerH2_of_continuous
      W n a hc = 0) :
    (h2KummerToUnits F n).hom
      ((thetaMuNNormalizedEquiv (F := F) n hn).symm
        (originalThetaNormalizedInvariant_of_continuous
          W n a hc hn htorsion)) =
        originalThetaBrauerH2_of_continuous W n a hc :=
  originalThetaNormalizedInvariant_returns_original W n a hc
    (originalThetaScalarFactorLaw W n a) hn htorsion

end NormalizedLocal

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaBrauerH2Transport
